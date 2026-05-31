-- Memory.lua  |  Per-game persistent memory (Claude Code-style CLAUDE.md)
-- Each PlaceId gets its own iyai_data/memory/<placeId>.md file.
-- Content is auto-injected into the system prompt at conversation start, so
-- the AI remembers game-specific facts across sessions.

return function()
	local Memory = {}

	local function memDir() return "iyai_data/memory" end
	local function memFile() return memDir() .. "/" .. tostring(game.PlaceId) .. ".md" end

	local function ensureDir()
		if not (isfolder and makefolder) then return end
		if not isfolder("iyai_data") then pcall(makefolder, "iyai_data") end
		if not isfolder(memDir())     then pcall(makefolder, memDir()) end
	end

	function Memory.read()
		if not (readfile and isfile) then return "" end
		ensureDir()
		local f = memFile()
		if not isfile(f) then return "" end
		local ok, raw = pcall(readfile, f)
		return (ok and raw) or ""
	end

	function Memory.remember(fact)
		if not writefile or type(fact) ~= "string" or fact == "" then return false end
		ensureDir()
		local line = "- " .. os.date("%Y-%m-%d") .. ": " .. fact .. "\n"
		local f = memFile()
		if appendfile then
			pcall(appendfile, f, line)
		else
			local existing = Memory.read()
			pcall(writefile, f, existing .. line)
		end
		return true
	end

	function Memory.forget(query)
		if not writefile or type(query) ~= "string" or query == "" then return 0 end
		local existing = Memory.read()
		if existing == "" then return 0 end
		local q = query:lower()
		local kept, removed = {}, 0
		for line in (existing .. "\n"):gmatch("([^\n]*)\n") do
			if line ~= "" and line:lower():find(q, 1, true) then
				removed = removed + 1
			else
				kept[#kept+1] = line
			end
		end
		pcall(writefile, memFile(), table.concat(kept, "\n"))
		return removed
	end

	function Memory.clear()
		if writefile then pcall(writefile, memFile(), "") end
	end

	return Memory
end
