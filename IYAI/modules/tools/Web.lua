-- tools/Web.lua  |  Web search and Roblox version tools
-- Returns function(Tools, Http) — call it to register web_search and roblox_version.

return function(Tools, Http)

	local HS = game:GetService("HttpService")


	local function urlencode(s)
		return (s:gsub("[^%w%-_%.~]", function(c)
			return string.format("%%%02X", string.byte(c))
		end))
	end

	local function buildForm(params)
		local parts = {}
		for k, v in pairs(params) do
			parts[#parts+1] = urlencode(tostring(k)) .. "=" .. urlencode(tostring(v))
		end
		return table.concat(parts, "&")
	end

	local function htmlDecode(s)
		return (s
			:gsub("&amp;",  "&")
			:gsub("&lt;",   "<")
			:gsub("&gt;",   ">")
			:gsub("&quot;", '"')
			:gsub("&#x27;", "'")
			:gsub("&#(%d+);", function(n) return string.char(tonumber(n)) end)
		)
	end

	-- ── web_search ────────────────────────────────────────────────────────────

	Tools.register({
		definition = {
			type = "function",
			["function"] = {
				name        = "web_search",
				description = "Search the web using DuckDuckGo. Returns titles, URLs, and snippets. Use for current events, documentation, or anything not in your training data.",
				parameters  = {
					type       = "object",
					properties = {
						query = { type = "string",  description = "Search query" },
						max   = { type = "integer", description = "Max results to return (default 5)" },
					},
					required = {"query"}
				}
			}
		},
		handler = function(args)
			if not Http then return "Error: Http module unavailable" end
			local query = tostring(args.query or "")
			local max   = tonumber(args.max) or 5
			if query == "" then return "Error: query is required" end

			-- POST to DDG HTML endpoint — same approach as the ddgs Python library
			local body = buildForm({ q = query, b = "", l = "us-en" })
			local res  = Http.request(
				"https://html.duckduckgo.com/html/",
				"POST",
				{
					["Content-Type"]  = "application/x-www-form-urlencoded",
					["User-Agent"]    = "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36",
					["Accept"]        = "text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8",
					["Accept-Language"] = "en-US,en;q=0.9",
				},
				body
			)

			if not res or res.StatusCode ~= 200 then
				return "Search error: could not reach DuckDuckGo (status " .. tostring(res and res.StatusCode or "none") .. ")"
			end

			local html = res.Body

			-- Collect titles + URLs from result__a anchors
			local results = {}
			for href, title in html:gmatch('<a[^>]+class="result__a"[^>]*href="([^"]*)"[^>]*>(.-)</a>') do
				if #results >= max then break end
				-- DDG wraps external URLs in redirect links; decode uddg param if present
				local direct = href:match("[?&]uddg=([^&]+)")
				if direct then
					direct = direct:gsub("%%(%x%x)", function(h) return string.char(tonumber(h, 16)) end)
				else
					direct = href
				end
				-- Skip internal DDG redirect anchors
				if not direct:find("^https://duckduckgo%.com/y%.js") then
					table.insert(results, { title = htmlDecode(title), url = direct })
				end
			end

			-- Also try alternate href pattern (class before href)
			if #results == 0 then
				for title, href in html:gmatch('<a[^>]+class="result__a"[^>]*>(.-)</a>') do
					if #results >= max then break end
					local url = href or ""
					table.insert(results, { title = htmlDecode(title), url = url })
				end
			end

			-- Pair snippets in order
			local si = 1
			for snippet in html:gmatch('<a[^>]+class="result__snippet"[^>]*>(.-)</a>') do
				if results[si] then
					results[si].snippet = htmlDecode(snippet):match("^%s*(.-)%s*$")
					si += 1
				end
			end

			if #results == 0 then return "No results found for: " .. query end

			local lines = {}
			for i, r in ipairs(results) do
				lines[#lines+1] = i .. ". " .. r.title
				lines[#lines+1] = "   " .. r.url
				if r.snippet and r.snippet ~= "" then
					lines[#lines+1] = "   " .. r.snippet:sub(1, 250)
				end
			end
			return table.concat(lines, "\n")
		end
	})

	-- ── roblox_version ────────────────────────────────────────────────────────

	Tools.register({
		definition = {
			type = "function",
			["function"] = {
				name        = "roblox_version",
				description = "Get the current live Roblox client version for Windows.",
				parameters  = { type = "object", properties = {}, required = {} }
			}
		},
		handler = function(_)
			if not Http then return "Error: Http module unavailable" end
			local res = Http.request("https://clientsettingscdn.roblox.com/v2/client-version/WindowsPlayer/channel/live", "GET", {})
			if not res or res.StatusCode ~= 200 then
				return "Error: could not fetch Roblox version (status " .. tostring(res and res.StatusCode or "none") .. ")"
			end
			local ok, data = pcall(HS.JSONDecode, HS, res.Body)
			if not ok or type(data) ~= "table" then
				return "Error: could not parse version response"
			end
			local lines = {}
			if data.version             then lines[#lines+1] = "Version: "      .. data.version end
			if data.clientVersionUpload then lines[#lines+1] = "Upload: "       .. data.clientVersionUpload end
			if data.bootstrapperVersion then lines[#lines+1] = "Bootstrapper: " .. data.bootstrapperVersion end
			return #lines > 0 and table.concat(lines, "\n") or "Version info unavailable"
		end
	})

end
