-- tools/Script.lua  |  Script-related tools
-- Returns function(Tools) — call it to register source and run.

return function(Tools)

	local Http = require(script.Parent.Parent:WaitForChild("Http"))

	-- Base64 Encoder Implementation
	local b64chars = 'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/'
	local function base64_encode(data)
		return ((data:gsub('.', function(x) 
			local r, byte = '', x:byte()
			for i = 8, 1, -1 do r = r .. (byte % 2^i - byte % 2^(i-1) > 0 and '1' or '0') end
			return r;
		end) .. '0000'):gsub('%d%d%d?%d?%d?%d?', function(x)
			if #x < 6 then return '' end
			local c = 0
			for i = 1, 6 do c = c + (x:sub(i,i) == '1' and 2^(6-i) or 0) end
			return b64chars:sub(c+1, c+1)
		end) .. ({ '', '==', '=' })[#data % 3 + 1])
	end

	local function resolvePath(path)
		if not path or path == "" or path == "game" then return game end
		local inst = game
		for part in path:gmatch("[^%.]+") do
			if part ~= "game" then
				local child = inst:FindFirstChild(part)
				if not child then return nil, "Not found: " .. part end
				inst = child
			end
		end
		return inst
	end

	-- source: read script source
	Tools.register({
		group = "Script",
		definition = {
			type = "function",
			["function"] = {
				name        = "source",
				description = "Get the Lua source of a Script, LocalScript, or ModuleScript.",
				parameters  = {
					type       = "object",
					properties = {
						path = { type = "string", description = "Full path to the script" },
					},
					required = { "path" }
				}
			}
		},
		handler = function(args)
			local inst, err = resolvePath(args.path)
			if not inst then return "Error: " .. tostring(err) end
			if not inst:IsA("LuaSourceContainer") then
				return "Error: not a script — " .. inst.ClassName
			end
			local src = ""
			pcall(function() src = inst.Source end)
			if src == "" then return "Source not accessible." end
			return #src > 4000
				and (src:sub(1, 4000) .. "\n...[truncated, " .. #src .. " total chars]")
				or  src
		end
	})

	-- decompile_luaexpert: decompile script using lua.expert API
	Tools.register({
		group = "Script",
		definition = {
			type = "function",
			["function"] = {
				name        = "decompile_luaexpert",
				description = "Decompile a Script, LocalScript, or ModuleScript using the lua.expert API.",
				parameters  = {
					type       = "object",
					properties = {
						path = { type = "string", description = "Full path to the script" },
					},
					required = { "path" }
				}
			}
		},
		handler = function(args)
			if not getscriptbytecode then
				return "Error: exploit does not support getscriptbytecode."
			end

			local inst, err = resolvePath(args.path)
			if not inst then return "Error: " .. tostring(err) end
			if not inst:IsA("LuaSourceContainer") then
				return "Error: not a script — " .. inst.ClassName
			end

			local ok, bytecode = pcall(getscriptbytecode, inst)
			if not ok then
				return "Error: failed to read script bytecode — " .. tostring(bytecode)
			end

			-- Use native environment encoder if present, otherwise fall back to our local one
			local encoder = _G.base64_encode or base64_encode
			local encoded = encoder(bytecode)
			
			local body = game:GetService("HttpService"):JSONEncode({
				script = encoded
			})

			local res = Http.request("https://api.lua.expert/decompile", "POST", {
				["content-type"] = "application/json"
			}, body)

			if not res or res.StatusCode ~= 200 then
				return "Error: API request failed — " .. (res and res.Body or "no response")
			end

			return res.Body
		end
	})

	-- run_once: execute dynamic code snippets
	Tools.register({
		group = "Script",
		definition = {
			type = "function",
			["function"] = {
				name        = "run_once",
				description = "Execute a one-time Lua snippet without touching the code editor.",
				parameters  = {
					type       = "object",
					properties = {
						code = { type = "string", description = "Lua code to execute." },
					},
					required = { "code" }
				}
			}
		},
		handler = function(args)
			local code = (args.code or ""):match("^```[%w]*\n?(.-)\n?```$") or (args.code or "")
			if code == "" then return "No code provided." end
			
			local fn, compErr = loadstring(code)
			if not fn then return "Compile error: " .. tostring(compErr) end
			
			local captured = {}
			local origPrint = print
			
			-- Sandboxed print hook
			print = function(...)
				local parts = {}
				for i = 1, select("#", ...) do parts[i] = tostring(select(i, ...)) end
				captured[#captured + 1] = table.concat(parts, "\t")
				origPrint(...)
			end
			
			local ok, runErr = pcall(fn)
			print = origPrint -- Immediate restoration
			
			if not ok then return "Runtime error: " .. tostring(runErr) end
			return #captured > 0 and table.concat(captured, "\n") or "Done. (no output)"
		end
	})

	-- unc_test: check exploit environment features
	Tools.register({
		group = "Script",
		definition = {
			type = "function",
			["function"] = {
				name        = "unc_test",
				description = "Run the UNC environment check and return a full status report.",
				parameters  = { type = "object", properties = {}, required = {} }
			}
		},
		handler = function(_args)
			if not readfile then return "Error: environment lacks readfile support." end
			
			local ok, src = pcall(readfile, "IYAI/modules/integrations/unc_test.lua")
			if not ok or not src or src == "" then
				return "Error: IYAI/modules/integrations/unc_test.lua not found in workspace."
			end

			_G.__unc_running_ref = nil
			local captured = {}
			local origPrint, origWarn = print, warn
			
			local function capture(...)
				local parts = {}
				for i = 1, select("#", ...) do parts[i] = tostring(select(i, ...)) end
				captured[#captured + 1] = table.concat(parts, "\t")
			end
			
			print = function(...) capture(...) origPrint(...) end
			warn  = function(...) capture(...) origWarn(...)  end

			local fn, compErr = loadstring(src)
			if not fn then
				print, warn = origPrint, origWarn
				return "Compile error: " .. tostring(compErr)
			end
			
			pcall(fn)

			-- Poll for test finish (Safely bounded loop)
			local deadline = tick() + 60
			while tick() < deadline do
				local ref = _G.__unc_running_ref
				if ref and pcall(ref) and ref() == 0 then break end
				task.wait(0.25)
			end
			
			_G.__unc_running_ref = nil
			print, warn = origPrint, origWarn

			local out = table.concat(captured, "\n")
			return out ~= "" and out or "Done. (no output captured)"
		end
	})

end
