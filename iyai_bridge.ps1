# IYAI Bridge Server (PowerShell / no dependencies)
# Relays messages between iyai.html and the Roblox executor.
#
# Endpoints used by the web page:
#   GET  /ping           -- connection check
#   GET  /browser/poll   -- web polls for messages from Roblox
#   POST /browser/send   -- web sends a chat message to Roblox
#
# Endpoints polled by IYAI_GUI.lua (executor side):
#   GET  /roblox/poll    -- Roblox polls for incoming web messages
#   POST /roblox/result  -- Roblox posts AI responses back to browser
#
# Run (as Administrator or after netsh ACL):
#   powershell -ExecutionPolicy Bypass -File iyai_bridge.ps1

$url  = "http://127.0.0.1:7402/"

$toRoblox       = [System.Collections.Generic.Queue[string]]::new()
$toBrowser      = [System.Collections.Generic.Queue[string]]::new()
$lastBrowserPoll = [DateTime]::MinValue

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
    $bytes = [System.Text.Encoding]::UTF8.GetBytes($body)
    $ctx.Response.StatusCode      = $status
    $ctx.Response.ContentType     = $ctype
    $ctx.Response.ContentLength64 = $bytes.Length
    $ctx.Response.AddHeader("Access-Control-Allow-Origin", "*")
    $ctx.Response.OutputStream.Write($bytes, 0, $bytes.Length)
    $ctx.Response.Close()
}

function Read-Body($ctx) {
    $reader = [System.IO.StreamReader]::new($ctx.Request.InputStream, [System.Text.Encoding]::UTF8)
    $body   = $reader.ReadToEnd()
    $reader.Close()
    return $body
}

try {
    while ($listener.IsListening) {
        $ctx    = $listener.GetContext()
        $path   = $ctx.Request.Url.AbsolutePath
        $method = $ctx.Request.HttpMethod

        # OPTIONS preflight (CORS)
        if ($method -eq "OPTIONS") {
            $ctx.Response.AddHeader("Access-Control-Allow-Origin",  "*")
            $ctx.Response.AddHeader("Access-Control-Allow-Methods", "GET, POST, OPTIONS")
            $ctx.Response.AddHeader("Access-Control-Allow-Headers", "Content-Type")
            $ctx.Response.StatusCode = 204
            $ctx.Response.Close()
            continue
        }

        switch ("$method $path") {

            "GET /ping" {
                Send-Response $ctx 200 "text/plain" "ok"
            }

            "GET /status" {
                $browserAlive = ([DateTime]::UtcNow - $lastBrowserPoll).TotalSeconds -lt 6
                $json = "{`"bridge`":true,`"browser`":$($browserAlive.ToString().ToLower())}"
                Send-Response $ctx 200 "application/json" $json
            }

            "GET /browser/poll" {
                $script:lastBrowserPoll = [DateTime]::UtcNow
                $parts = @()
                while ($toBrowser.Count -gt 0) { $parts += $toBrowser.Dequeue() }
                $json = if ($parts.Count -gt 0) { "[" + ($parts -join ",") + "]" } else { "[]" }
                Send-Response $ctx 200 "application/json" $json
            }

            "POST /browser/send" {
                $json = Read-Body $ctx
                try {
                    $data = $json | ConvertFrom-Json
                    $allowed = @("chat","get_tree","get_children","get_props","get_state","settings_update","load_session")
                    if ($data.type -and $allowed -contains $data.type) {
                        $toRoblox.Enqueue($json)
                    }
                } catch {}
                Send-Response $ctx 200 "text/plain" "ok"
            }

            "GET /roblox/poll" {
                $json = if ($toRoblox.Count -gt 0) { $toRoblox.Dequeue() } else { "null" }
                Send-Response $ctx 200 "application/json" $json
            }

            "POST /roblox/result" {
                $json = Read-Body $ctx
                if ($json -and $json.Trim() -ne "" -and $json.Trim() -ne "{}") {
                    $toBrowser.Enqueue($json)
                }
                Send-Response $ctx 200 "text/plain" "ok"
            }

            default {
                Send-Response $ctx 404 "text/plain" "not found"
            }
        }
    }
} finally {
    $listener.Stop()
    Write-Host "Bridge stopped."
}
