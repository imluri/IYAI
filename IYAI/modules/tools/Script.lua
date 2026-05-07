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

	-- run: execute Lua with print() capture
	Tools.register({
		group = "Script",
		definition = {
			type = "function",
			["function"] = {
				name        = "run",
				description = "Execute a Lua snippet. Use print() to return values back.",
				parameters  = {
					type       = "object",
					properties = {
						code = { type = "string", description = "Lua code to execute. Use print() to return output." },
					},
					required = { "code" }
				}
			}
		},
		handler = function(args)
			local results = {}
			local env = setmetatable({
				print = function(...)
					local parts = {}
					for i = 1, select("#", ...) do
						parts[#parts + 1] = tostring(select(i, ...))
					end
					results[#results + 1] = table.concat(parts, "\t")
				end,
				tostring  = tostring,
				tonumber  = tonumber,
				pairs     = pairs,
				ipairs    = ipairs,
				type      = type,
				pcall     = pcall,
				xpcall    = xpcall,
				unpack    = unpack,
				table     = table,
				string    = string,
				math      = math,
				game      = game,
				workspace = workspace,
				Instance  = Instance,
				Vector3   = Vector3,
				CFrame    = CFrame,
				Color3    = Color3,
				UDim2     = UDim2,
			}, { __index = getfenv() })

			local code = (args.code or ""):match("^```[%w]*\n?(.-)\n?```$") or (args.code or "")
			local fn, compErr = loadstring(code)
			if not fn then return "Compile error: " .. tostring(compErr) end
			setfenv(fn, env)
			local ok, runErr = pcall(fn)
			if not ok then
				results[#results + 1] = "Runtime error: " .. tostring(runErr)
			end
			return #results > 0 and table.concat(results, "\n") or "Done (no output)."
		end
	})

end
