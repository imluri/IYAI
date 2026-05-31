-- tools/SynapseDocs.lua  |  Synapse X V3 documentation lookup
-- Returns function(Tools, Http) — registers the synapse_docs tool.

return function(Tools, Http)

	local DOCS_URL   = "https://raw.githubusercontent.com/imluri/SynV3-docs/refs/heads/main/syn_v3.md"
	local CACHE_FILE = "iyai_data/syn_docs.md"
	local MAX_CHARS  = 4000

	-- ── Fetch at startup (mirrors Properties.lua pattern) ────────────────────

	local function fetchDocs()
		-- Try file cache first
		if readfile and isfile and isfile(CACHE_FILE) then
			local cached = readfile(CACHE_FILE)
			if cached and cached ~= "" then return cached end
		end
		-- Fetch from GitHub
		if not Http then return nil end
		local res = Http.request(DOCS_URL, "GET", {})
		if not res or res.StatusCode ~= 200 or not res.Body or res.Body == "" then return nil end
		-- Cache to file for future loads
		if writefile then
			if isfolder and makefolder and not isfolder("iyai_data") then pcall(makefolder, "iyai_data") end
			pcall(writefile, CACHE_FILE, res.Body)
		end
		return res.Body
	end

	-- ── Parser ────────────────────────────────────────────────────────────────

	local function buildIndex(md)
		local lines = {}
		for line in (md .. "\n"):gmatch("([^\n]*)\n") do
			lines[#lines + 1] = line
		end

		local headings = {}
		for i, line in ipairs(lines) do
			local hashes, text = line:match("^(#+)%s+(.+)$")
			if hashes then
				headings[#headings + 1] = { level = #hashes, text = text, line = i }
			end
		end

		local sections = {}
		for i, h in ipairs(headings) do
			local endLine = headings[i + 1] and (headings[i + 1].line - 1) or #lines
			local buf = {}
			for j = h.line, endLine do
				buf[#buf + 1] = lines[j]
			end
			sections[#sections + 1] = {
				level   = h.level,
				heading = h.text,
				content = table.concat(buf, "\n"),
			}
		end
		return sections
	end

	-- ── Search ────────────────────────────────────────────────────────────────

	local function search(index, query)
		local q = query:lower():match("^%s*(.-)%s*$")
		local exact, partial, content = {}, {}, {}

		for _, sec in ipairs(index) do
			local h = sec.heading:lower()
			if h == q then
				table.insert(exact, sec)
			elseif h:find(q, 1, true) or q:find(h, 1, true) then
				table.insert(partial, sec)
			elseif sec.content:lower():find(q, 1, true) then
				table.insert(content, sec)
			end
		end

		local results = {}
		local function add(list, cap)
			for _, sec in ipairs(list) do
				if #results >= cap then break end
				table.insert(results, sec)
			end
		end
		add(exact,   3)
		add(partial, 3)
		add(content, 2)
		return results
	end

	-- ── Formatter ─────────────────────────────────────────────────────────────

	local function buildTOC(index)
		local lines = { "Synapse V3 API — available functions/topics (call synapse_docs with a specific name for details):", "" }
		local currentTop = nil
		for _, sec in ipairs(index) do
			if sec.level == 1 then
				lines[#lines + 1] = "# " .. sec.heading
				currentTop = sec.heading
			elseif sec.level == 2 then
				lines[#lines + 1] = "  " .. sec.heading
			end
		end
		return table.concat(lines, "\n")
	end

	local function formatSection(sec)
		if sec.level <= 2 and #sec.content > MAX_CHARS then
			local lines = {}
			for line in (sec.content .. "\n"):gmatch("([^\n]*)\n") do
				local hashes, text = line:match("^(#+)%s+(.+)$")
				if hashes then
					lines[#lines + 1] = string.rep("  ", #hashes - 1) .. "- " .. text
				end
			end
			return "**" .. sec.heading .. "** (overview)\n" .. table.concat(lines, "\n")
		end
		return sec.content
	end

	local function formatResults(results, query)
		if #results == 0 then
			return "No Synapse V3 docs found for: " .. query
		end
		local parts = {}
		local total = 0
		for _, sec in ipairs(results) do
			local text = formatSection(sec)
			if total + #text > MAX_CHARS then
				text = text:sub(1, MAX_CHARS - total):match("^(.-)%s*$") .. "\n...(truncated)"
				table.insert(parts, text)
				break
			end
			table.insert(parts, text)
			total = total + #text
		end
		return table.concat(parts, "\n\n---\n\n")
	end

	-- ── Load at startup ───────────────────────────────────────────────────────

	local _index = nil
	task.spawn(function()
		local raw = fetchDocs()
		if raw then _index = buildIndex(raw) end
	end)

	-- ── Tool ──────────────────────────────────────────────────────────────────

	Tools.register({
		group = "Docs",
		definition = {
			type = "function",
			["function"] = {
				name        = "synapse_docs",
				description = "Look up Synapse X V3 API documentation. Use this whenever the user asks about Synapse-specific functions, classes, or namespaces (e.g. readfile, hookfunction, syn.request, Drawing, WebsocketClient, debug, etc.). Call with list=true (or no query) to get a compact index of all available function names first, then call again with a specific name for the full details.",
				parameters  = {
					type       = "object",
					properties = {
						query = {
							type        = "string",
							description = "Function name, class name, or topic to look up in detail (e.g. 'hookfunction', 'WebsocketClient', 'syn.crypto'). Omit to get the full index of available names.",
						},
						list = {
							type        = "boolean",
							description = "Set true to get a compact list of all function/topic names without full content. Useful for discovering what's available before drilling into specifics.",
						},
					},
					required = {}
				}
			}
		},
		handler = function(args)
			if not _index then return "Synapse docs not loaded yet — please try again in a moment." end
			local query = tostring(args.query or ""):match("^%s*(.-)%s*$")
			if query == "" or args.list then
				return buildTOC(_index)
			end
			local results = search(_index, query)
			return formatResults(results, query)
		end
	})

end
