# IYAI Bridge Server (PowerShell / no dependencies)
# Relays messages between iyai.html and the Roblox executor.
#
# Endpoints used by the web page:
#   GET  /ping              -- connection check
#   GET  /browser/events    -- SSE stream: bridge pushes results to browser
#   POST /browser/send      -- web sends a chat message to Roblox
#
# Endpoints used by IYAI_GUI.lua (executor side):
#   GET  /roblox/poll       -- long-poll: held until a message arrives (up to 15s)
#   POST /roblox/result     -- Roblox posts AI responses back to browser
#
# Run (as Administrator or after netsh ACL):
#   powershell -ExecutionPolicy Bypass -File iyai_bridge.ps1

$url  = "http://127.0.0.1:7402/"

$toRoblox      = [System.Collections.Concurrent.ConcurrentQueue[string]]::new()
$sseStream     = $null
$lastKeepalive = [DateTime]::MinValue

$listener = [System.Net.HttpListener]::new()
$listener.Prefixes.Add($url)

try {
    $listener.Start()
} catch {
    Write-Host "ERROR: Could not start listener on $url" -ForegroundColor Red
    Write-Host "Run this terminal as Administrator, or run once:" -ForegroundColor Yellow
    Write-Host "  netsh http add urlacl url=`"$url`" user=`"$env:USERDOMAIN\$env:USERNAME`"" -ForegroundColor Cyan
    exit 1
}

Write-Host "IYAI Bridge running on $($url.TrimEnd('/'))" -ForegroundColor Green
Write-Host "Open iyai.html and click Connect.  Press Ctrl+C to stop."

function Send-Response($ctx, [int]$status, [string]$ctype, [string]$body) {
    try {
        $bytes = [System.Text.Encoding]::UTF8.GetBytes($body)
        $ctx.Response.StatusCode      = $status
        $ctx.Response.ContentType     = $ctype
        $ctx.Response.ContentLength64 = $bytes.Length
        $ctx.Response.AddHeader("Access-Control-Allow-Origin", "*")
        $ctx.Response.OutputStream.Write($bytes, 0, $bytes.Length)
        $ctx.Response.Close()
    } catch {}
}

function Read-Body($ctx) {
    try {
        $reader = [System.IO.StreamReader]::new($ctx.Request.InputStream, [System.Text.Encoding]::UTF8)
        $body   = $reader.ReadToEnd()
        $reader.Close()
        return $body
    } catch { return "" }
}

# Deferred long-poll state
$pendingPollCtx   = $null
$pendingPollStart = [DateTime]::MinValue
$POLL_TIMEOUT_SEC = 2

function Flush-PendingPoll {
    if ($null -eq $script:pendingPollCtx) { return }
    $msg = $null
    if ($script:toRoblox.TryDequeue([ref]$msg)) {
        Send-Response $script:pendingPollCtx 200 "application/json" $msg
        $script:pendingPollCtx = $null
    } elseif (([DateTime]::UtcNow - $script:pendingPollStart).TotalSeconds -ge $script:POLL_TIMEOUT_SEC) {
        Send-Response $script:pendingPollCtx 200 "application/json" "null"
        $script:pendingPollCtx = $null
    }
}

function Push-ToSSE([string]$json) {
    if ($null -eq $script:sseStream) { return }
    try {
        $line = [System.Text.Encoding]::UTF8.GetBytes("data: $json`n`n")
        $script:sseStream.Write($line, 0, $line.Length)
        $script:sseStream.Flush()
    } catch {
        $script:sseStream = $null
    }
}

function Handle-Context($ctx) {
    $path   = $ctx.Request.Url.AbsolutePath
    $method = $ctx.Request.HttpMethod

    if ($method -eq "OPTIONS") {
        $ctx.Response.AddHeader("Access-Control-Allow-Origin",  "*")
        $ctx.Response.AddHeader("Access-Control-Allow-Methods", "GET, POST, OPTIONS")
        $ctx.Response.AddHeader("Access-Control-Allow-Headers", "Content-Type")
        $ctx.Response.StatusCode = 204
        $ctx.Response.Close()
        return
    }

    switch ("$method $path") {

        "GET /ping" {
            Send-Response $ctx 200 "text/plain" "ok"
        }

        "GET /status" {
            $browserAlive = $null -ne $script:sseStream
            $json = "{`"bridge`":true,`"browser`":$($browserAlive.ToString().ToLower())}"
            Send-Response $ctx 200 "application/json" $json
        }

        "GET /browser/events" {
            # Close any stale SSE connection
            if ($null -ne $script:sseStream) {
                try { $script:sseStream.Close() } catch {}
                $script:sseStream = $null
            }
            $ctx.Response.StatusCode = 200
            $ctx.Response.ContentType = "text/event-stream"
            $ctx.Response.AddHeader("Cache-Control", "no-cache")
            $ctx.Response.AddHeader("Access-Control-Allow-Origin", "*")
            $ctx.Response.SendChunked = $true
            $script:sseStream = $ctx.Response.OutputStream
            $kb = [System.Text.Encoding]::UTF8.GetBytes(": keepalive`n`n")
            $script:sseStream.Write($kb, 0, $kb.Length)
            $script:sseStream.Flush()
            $script:lastKeepalive = [DateTime]::UtcNow
            # Do NOT call $ctx.Response.Close() — stream stays open
        }

        "POST /browser/send" {
            $json = Read-Body $ctx
            try {
                $data    = $json | ConvertFrom-Json
                $allowed = @("chat","get_tree","get_children","get_props","get_state","settings_update","load_session")
                if ($data.type -and $allowed -contains $data.type) {
                    $script:toRoblox.Enqueue($json)
                    Flush-PendingPoll
                }
            } catch {}
            Send-Response $ctx 200 "text/plain" "ok"
        }

        "GET /roblox/poll" {
            $msg = $null
            if ($script:toRoblox.TryDequeue([ref]$msg)) {
                Send-Response $ctx 200 "application/json" $msg
            } else {
                if ($null -ne $script:pendingPollCtx) {
                    Send-Response $script:pendingPollCtx 200 "application/json" "null"
                }
                $script:pendingPollCtx   = $ctx
                $script:pendingPollStart = [DateTime]::UtcNow
            }
        }

        "POST /roblox/result" {
            $json = Read-Body $ctx
            if ($json -and $json.Trim() -ne "" -and $json.Trim() -ne "{}") {
                Push-ToSSE $json
            }
            Send-Response $ctx 200 "text/plain" "ok"
        }

        default {
            Send-Response $ctx 404 "text/plain" "not found"
        }
    }
}

# Event loop: async accept so SSE and long-poll contexts don't block each other
try {
    $acceptTask = $listener.GetContextAsync()
    while ($listener.IsListening) {
        Flush-PendingPoll

        # SSE keepalive
        if ($null -ne $script:sseStream -and ([DateTime]::UtcNow - $script:lastKeepalive).TotalSeconds -ge 15) {
            try {
                $kb = [System.Text.Encoding]::UTF8.GetBytes(": keepalive`n`n")
                $script:sseStream.Write($kb, 0, $kb.Length)
                $script:sseStream.Flush()
            } catch { $script:sseStream = $null }
            $script:lastKeepalive = [DateTime]::UtcNow
        }

        if ($acceptTask.IsCompleted) {
            try {
                $ctx = $acceptTask.Result
                Handle-Context $ctx
            } catch {}
            $acceptTask = $listener.GetContextAsync()
        } else {
            Start-Sleep -Milliseconds 10
        }
    }
} finally {
    $listener.Stop()
    Write-Host "Bridge stopped."
}
