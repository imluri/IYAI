-- tools/Upvalue.lua  |  Upvalue scanning & editing tools
-- Returns function(Tools) — call it to register scan_upvalues, filter_upvalues, set_upvalue.
--
-- Cheat-Engine-style workflow for live Lua upvalues:
--   scan_upvalues  -> walk the GC, store every editable primitive upvalue in a snapshot
--   filter_upvalues-> narrow the snapshot by type/value/owning-function
--   set_upvalue    -> write a new value to a chosen upvalue by stable id
--
-- Executor-only: relies on getgc / getupvalues / setupvalue / debug.getinfo.
return function(Tools)

	-- ── Resolve executor APIs (both global and debug.* variants) ─────────────
	local getgc       = getgc
	local getupvalues = (debug and debug.getupvalues) or getupvalues
	local setupvalue  = (debug and debug.setupvalue) or setupvalue
	local getinfo     = (debug and debug.getinfo) or getinfo   -- table-returning variant
	local dinfo       = (debug and debug.info) or nil          -- format-string variant

	local COLLECT_CAP = 20000   -- safety cap on collected upvalues

	-- ── Snapshot: persists across tool calls for this session ────────────────
	-- entry = { type, value, fn, idx, fnName, source, line }; array index == id
	local snapshot = {}

	-- Owning-function metadata via debug.getinfo (table) or debug.info (format).
	local function funcMeta(fn)
		if getinfo then
			local ok, info = pcall(getinfo, fn)
			if ok and type(info) == "table" then
				local nm = info.name
				return {
					name   = (nm ~= nil and nm ~= "") and tostring(nm) or "?",
					source = tostring(info.short_src or info.source or info.chunkname or "?"),
					line   = info.linedefined or info.currentline or -1,
				}
			end
		end
		if dinfo then
			local ok, src, line, nm = pcall(dinfo, fn, "sln")
			if ok then
				return {
					name   = (nm ~= nil and nm ~= "") and tostring(nm) or "?",
					source = src and tostring(src) or "?",
					line   = line or -1,
				}
			end
		end
		return { name = "?", source = "?", line = -1 }
	end

	-- ── scan_upvalues ────────────────────────────────────────────────────────
	Tools.register({
		group = "Upvalue",
		definition = {
			type = "function",
			["function"] = {
				name        = "scan_upvalues",
				description = "Scan the live Lua garbage collector for every editable primitive upvalue (number, boolean, string) and store them in a snapshot with stable ids. Returns a summary only — use filter_upvalues to narrow, then set_upvalue to edit. Executor-only; may briefly hitch on large games. Run this first.",
				parameters  = { type = "object", properties = {} }
			}
		},
		handler = function()
			if not (getgc and getupvalues and setupvalue) then
				return "This executor doesn't support upvalue scanning (missing getgc/getupvalues/setupvalue)."
			end
			snapshot = {}
			local metaCache = {}
			local typeCounts = { number = 0, boolean = 0, string = 0 }
			local sources, srcCount = {}, 0
			local fnCount, truncated = 0, false

			for _, v in ipairs(getgc()) do
				if type(v) == "function" then
					fnCount += 1
					local ok, ups = pcall(getupvalues, v)
					if ok and type(ups) == "table" then
						local meta
						for idx, val in pairs(ups) do
							local t = type(val)
							if t == "number" or t == "boolean" or t == "string" then
								if not meta then
									meta = metaCache[v] or funcMeta(v)
									metaCache[v] = meta
								end
								snapshot[#snapshot + 1] = {
									type = t, value = val, fn = v, idx = idx,
									fnName = meta.name, source = meta.source, line = meta.line,
								}
								typeCounts[t] += 1
								if not sources[meta.source] then
									sources[meta.source] = true
									srcCount += 1
								end
								if #snapshot >= COLLECT_CAP then truncated = true; break end
							end
						end
					end
					if truncated then break end
				end
			end

			local lines = {
				("Scanned %d functions. Collected %d editable primitive upvalues."):format(fnCount, #snapshot),
				("Types: %d number, %d boolean, %d string."):format(typeCounts.number, typeCounts.boolean, typeCounts.string),
				("Across %d distinct source scripts."):format(srcCount),
			}
			if truncated then
				lines[#lines + 1] = ("Scan truncated at cap of %d entries — results incomplete."):format(COLLECT_CAP)
			end
			lines[#lines + 1] = "Use filter_upvalues to narrow by type/value/name, then set_upvalue by id."
			return table.concat(lines, "\n")
		end
	})

	-- ── filter_upvalues ──────────────────────────────────────────────────────
	Tools.register({
		group = "Upvalue",
		definition = {
			type = "function",
			["function"] = {
				name        = "filter_upvalues",
				description = "Filter the stored upvalue snapshot to find a target. All params optional and combinable. Returns matches as '#id type = value — fnName @ source:line'. Call scan_upvalues first.",
				parameters  = {
					type       = "object",
					properties = {
						type           = { type = "string", description = "Restrict to a value type: 'number', 'boolean', or 'string'." },
						value          = { description = "Exact value to match (number, boolean, or string)." },
						min            = { type = "number", description = "Minimum value (numbers only)." },
						max            = { type = "number", description = "Maximum value (numbers only)." },
						name_contains  = { type = "string", description = "Substring to match against the owning function's name." },
						source_contains= { type = "string", description = "Substring to match against the owning function's source script." },
						limit          = { type = "number", description = "Max results to return (default 50)." },
					},
				}
			}
		},
		handler = function(args)
			if #snapshot == 0 then return "No snapshot. Run scan_upvalues first." end
			args = args or {}
			local wantType = args.type
			local wantVal  = args.value
			local wantMin  = tonumber(args.min)
			local wantMax  = tonumber(args.max)
			local nameSub  = args.name_contains and tostring(args.name_contains):lower() or nil
			local srcSub   = args.source_contains and tostring(args.source_contains):lower() or nil
			local limit    = tonumber(args.limit) or 50

			local matches, total = {}, 0
			for id, e in ipairs(snapshot) do
				local ok = true
				if wantType and e.type ~= wantType then ok = false end
				if ok and wantVal ~= nil then
					if e.type == "number" then
						if e.value ~= tonumber(wantVal) then ok = false end
					elseif e.type == "boolean" then
						local b = (wantVal == true) or (wantVal == "true")
						if e.value ~= b then ok = false end
					else
						if tostring(e.value) ~= tostring(wantVal) then ok = false end
					end
				end
				if ok and wantMin and (e.type ~= "number" or e.value < wantMin) then ok = false end
				if ok and wantMax and (e.type ~= "number" or e.value > wantMax) then ok = false end
				if ok and nameSub and not tostring(e.fnName):lower():find(nameSub, 1, true) then ok = false end
				if ok and srcSub and not tostring(e.source):lower():find(srcSub, 1, true) then ok = false end
				if ok then
					total += 1
					if #matches < limit then
						matches[#matches + 1] = ("#%d %s = %s — %s @ %s:%s"):format(
							id, e.type, tostring(e.value), tostring(e.fnName), tostring(e.source), tostring(e.line))
					end
				end
			end

			if total == 0 then return "No matching upvalues." end
			local out = table.concat(matches, "\n")
			if total > #matches then
				out = out .. ("\n... %d more — narrow further (limit %d)."):format(total - #matches, limit)
			end
			return out
		end
	})

	-- ── set_upvalue ──────────────────────────────────────────────────────────
	Tools.register({
		group = "Upvalue",
		definition = {
			type = "function",
			["function"] = {
				name        = "set_upvalue",
				description = "Write a new value to an upvalue chosen by its snapshot id (from filter_upvalues). The value is coerced to the upvalue's stored type. Returns an old -> new confirmation.",
				parameters  = {
					type       = "object",
					properties = {
						id    = { type = "number", description = "The stable id of the upvalue (the #N from filter_upvalues)." },
						value = { description = "The new value (number, boolean, or string — coerced to the stored type)." },
					},
					required = { "id", "value" }
				}
			}
		},
		handler = function(args)
			if #snapshot == 0 then return "No snapshot. Run scan_upvalues first." end
			args = args or {}
			local id = tonumber(args.id)
			if not id or not snapshot[id] then
				return "Invalid id: " .. tostring(args.id) .. ". Use filter_upvalues to find a valid id."
			end
			local e = snapshot[id]
			local newVal = args.value

			if e.type == "number" then
				newVal = tonumber(newVal)
				if newVal == nil then return "Value must be a number for upvalue #" .. id .. "." end
			elseif e.type == "boolean" then
				if type(newVal) == "string" then
					newVal = (newVal:lower() == "true")
				elseif type(newVal) ~= "boolean" then
					return "Value must be a boolean for upvalue #" .. id .. "."
				end
			else
				newVal = tostring(newVal)
			end

			-- Read the live current value so the reported "old" is accurate.
			local oldVal = e.value
			local okRead, ups = pcall(getupvalues, e.fn)
			if okRead and type(ups) == "table" and ups[e.idx] ~= nil then
				oldVal = ups[e.idx]
			end

			local ok, err = pcall(setupvalue, e.fn, e.idx, newVal)
			if not ok then
				return "Failed to set upvalue #" .. id .. ": " .. tostring(err)
			end
			e.value = newVal
			return ("Set #%d (%s @ %s:%s): %s -> %s"):format(
				id, tostring(e.fnName), tostring(e.source), tostring(e.line), tostring(oldVal), tostring(newVal))
		end
	})

end
