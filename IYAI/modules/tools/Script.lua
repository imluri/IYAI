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
			local captured = {}
			local origPrint = print
			print = function(...)
				local parts = {}
				for i = 1, select("#", ...) do parts[i] = tostring(select(i, ...)) end
				captured[#captured + 1] = table.concat(parts, "\t")
				origPrint(...)
			end
			local ok, runErr = pcall(fn)
			print = origPrint
			if not ok then return "Runtime error: " .. tostring(runErr) end
			return #captured > 0 and table.concat(captured, "\n") or "Done. (no output)"
		end
	})

	Tools.register({
		group = "Script",
		definition = {
			type = "function",
			["function"] = {
				name        = "unc_test",
				description = "Run the UNC environment check and return a full pass/fail/missing report so you know which executor globals are available.",
				parameters  = { type = "object", properties = {}, required = {} }
			}
		},
		handler = function(_args)
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

			-- unc_test.lua sets _G.__unc_running_ref; poll until running == 0 (max 60 s)
			local deadline = tick() + 60
			while tick() < deadline do
				local ref = _G.__unc_running_ref
				if ref and ref() == 0 then break end
				task.wait(0.25)
			end
			_G.__unc_running_ref = nil
			print, warn = origPrint, origWarn

			local out = table.concat(captured, "\n")
			return out ~= "" and out or "Done. (no output captured)"
		end
	})

end
