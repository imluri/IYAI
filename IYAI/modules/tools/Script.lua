-- tools/Script.lua  |  Script-related tools
-- Returns function(Tools) — call it to register source and run.

return function(Tools)

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

	Tools.register({
		group = "Script",
		definition = {
			type = "function",
			["function"] = {
				name        = "run_once",
				description = "Execute a one-time Lua snippet without touching the code editor. Use for quick checks or print() output. NEVER use for infinite loops.",
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
			local ok, runErr = pcall(fn)
			if not ok then return "Runtime error: " .. tostring(runErr) end
			return "Done."
		end
	})

end
