-- tools/IY.lua  |  Infinite Yield integration tools
-- Returns function(Tools) — call it to register iy_status, iy_cmd, list_iy_cmds.

-- Registers tools for interacting with Infinite Yield commands.
-- These only function in executor context where IY globals exist.
return function(Tools)

	local Players = game:GetService("Players")

	-- iy_status: detect whether IY is present
	Tools.register({
		group = "IY",
		definition = {
			type = "function",
			["function"] = {
				name        = "iy_status",
				description = "Check whether Infinite Yield is loaded. Call this before using iy_cmd or list_iy_cmds so you know what's available.",
				parameters  = { type = "object", properties = {} }
			}
		},
		handler = function()
			local loaded   = type(IY_LOADED) == "boolean" and IY_LOADED
			local hasExec  = type(execCmd) == "function"
			local hasCmds  = type(cmds) == "table"
			local cmdCount = hasCmds and #cmds or 0
			if loaded and hasExec then
				return "IY is loaded. execCmd available. " .. cmdCount .. " commands registered."
			elseif hasExec then
				return "execCmd found but IY_LOADED flag missing. Likely loaded. " .. cmdCount .. " commands."
			else
				return "IY is NOT loaded. iy_cmd will use direct Lua fallbacks for simple property changes only."
			end
		end
	})

	-- iy_cmd: execute an IY command
	Tools.register({
		group = "IY",
		definition = {
			type = "function",
			["function"] = {
				name        = "iy_cmd",
				description = "Execute an Infinite Yield command. E.g. 'speed 100', 'fly', 'noclip', 'tp [player]'. Use for any action the user asks that maps to an IY command.",
				parameters  = {
					type       = "object",
					properties = {
						command = { type = "string", description = "The IY command string, e.g. 'speed 100' or 'fly'" },
					},
					required = { "command" }
				}
			}
		},
		handler = function(args)
			local lp = Players.LocalPlayer

			-- IY available — use it directly
			if type(execCmd) == "function" then
				local ok, err = pcall(execCmd, args.command, lp, false)
				return ok and ("Executed: " .. args.command) or ("Error: " .. tostring(err))
			end

			-- IY not loaded — fallback: map simple commands to direct Lua
			local parts = args.command:split(" ")
			local name  = (parts[1] or ""):lower()
			local val   = tonumber(parts[2])

			local fallbacks = {
				speed     = function(n) lp.Character.Humanoid.WalkSpeed  = n end,
				walkspeed = function(n) lp.Character.Humanoid.WalkSpeed  = n end,
				jump      = function(n) lp.Character.Humanoid.JumpPower  = n end,
				jumppower = function(n) lp.Character.Humanoid.JumpPower  = n end,
				health    = function(n) lp.Character.Humanoid.Health     = n end,
				maxhealth = function(n) lp.Character.Humanoid.MaxHealth  = n end,
			}

			local fn = fallbacks[name]
			if fn and val then
				local ok, err = pcall(fn, val)
				return ok and ("Fallback executed: " .. args.command) or ("Error: " .. tostring(err))
			end

			return "IY not loaded and no fallback available for: " .. args.command
		end
	})

	-- list_iy_cmds: list available IY commands
	Tools.register({
		group = "IY",
		definition = {
			type = "function",
			["function"] = {
				name        = "list_iy_cmds",
				description = "List available Infinite Yield commands, optionally filtered by keyword or plugin name.",
				parameters  = {
					type       = "object",
					properties = {
						filter = { type = "string", description = "Optional keyword to filter by command name." },
						plugin = { type = "string", description = "Optional plugin name to list only commands from that plugin (e.g. 'emotemanager.iy')." },
					},
				}
			}
		},
		handler = function(args)
			if type(cmds) ~= "table" then
				return "Error: cmds not available — IY may not be loaded."
			end
			local filter     = args.filter and args.filter:lower() or ""
			local pluginFilter = args.plugin and args.plugin:lower() or ""
			local lines = {}
			for _, cmd in ipairs(cmds) do
				local name       = cmd.NAME or ""
				local cmdPlugin  = (cmd.PLUGIN or ""):lower()
				local nameMatch   = filter == "" or name:lower():find(filter, 1, true)
				local pluginMatch = pluginFilter == "" or cmdPlugin:find(pluginFilter, 1, true)
				if nameMatch and pluginMatch then
					local alias = #cmd.ALIAS > 0 and (" (alias: " .. table.concat(cmd.ALIAS, ", ") .. ")") or ""
					local plabel = cmd.PLUGIN and (" [" .. cmd.PLUGIN .. "]") or ""
					lines[#lines+1] = name .. alias .. plabel
				end
			end
			if #lines == 0 then return "No commands found." end
			return table.concat(lines, "\n")
		end
	})

	-- list_iy_plugins: list plugins registered in IY
	Tools.register({
		group = "IY",
		definition = {
			type = "function",
			["function"] = {
				name        = "list_iy_plugins",
				description = "List plugins registered in Infinite Yield, derived from the commands table. Shows each plugin name and how many commands it contributed.",
				parameters  = { type = "object", properties = {} }
			}
		},
		handler = function()
			if type(cmds) ~= "table" then
				return "Error: cmds not available — IY may not be loaded."
			end
			local counts = {}
			local order  = {}
			for _, cmd in ipairs(cmds) do
				local plugin = (cmd.PLUGIN and cmd.PLUGIN ~= "") and cmd.PLUGIN or "[base]"
				if not counts[plugin] then
					counts[plugin] = 0
					table.insert(order, plugin)
				end
				counts[plugin] += 1
			end
			if #order == 0 then return "No plugins found." end
			local lines = {}
			for _, name in ipairs(order) do
				lines[#lines+1] = name .. " (" .. counts[name] .. " command" .. (counts[name] == 1 and "" or "s") .. ")"
			end
			return table.concat(lines, "\n")
		end
	})

end
