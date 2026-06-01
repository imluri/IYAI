-- Prompt.lua  |  System prompt builder + markdown stripper
-- Usage: local Prompt = loadMod("modules/Prompt.lua")(Http)
-- Accepts Http so it can branch tool list on Http.ENV.

return function(Http)

	local Prompt = {}

	local function getGameContext()
		local services = {
			"Workspace", "ReplicatedStorage", "StarterGui",
			"StarterPack", "StarterPlayer", "Lighting",
			"ServerScriptService", "ServerStorage"
		}
		local lines = {
			"Game: "    .. tostring(game.Name),
			"PlaceId: " .. tostring(game.PlaceId),
			"Players: " .. #game:GetService("Players"):GetChildren(),
		}
		for _, sname in ipairs(services) do
			local ok, svc = pcall(game.GetService, game, sname)
			if ok and svc then
				local ch = svc:GetChildren()
				lines[#lines+1] = sname .. " (" .. #ch .. " children)"
				for i, child in ipairs(ch) do
					if i > 6 then
						lines[#lines+1] = "  ...+" .. (#ch - 6) .. " more"
						break
					end
					lines[#lines+1] = "  " .. child.ClassName .. " " .. child.Name
				end
			end
		end
		return table.concat(lines, "\n")
	end

	local function buildRules(useOllamaDone)
		local rules = {
			"- Act on requests immediately — no confirmation needed.",
			"- Keep replies short. No filler, no repeating the user's message back.",
			"- Paths use dot notation: 'game.Workspace.Part'. Use local_player() for anything about the user's own character/stats.",
			"- Only take in-game actions when the user explicitly asks. Statements of fact ('its 6am') get a plain reply, not a tool call.",
			"- Before modifying an instance directly (set_property, etc.), scout first with tree()/props() to confirm it exists. For script-writing tasks, do NOT scout — just write the code.",
			"- If a property name, enum value, or Roblox API is uncertain, use web_search() to verify before acting.",
			"- set_property() over run() for property changes. For relative changes, call get_value() first.",
			"- NEVER include Lua code in your text replies. ALL code must go through write_code().",
			"- Code workflow: write_code(code) — syntax is auto-checked, fix any errors. Run only if the user asked to execute, or you need live data. Read run output, fix and rerun on errors.",
			"- For computation, comparison, iteration, or bulk changes, write a Lua script and run() with print() to get the result in one shot.",
			"- decompile() only when the user explicitly asks to read a script's source.",
			"- For game-specific facts and user preferences, call recall() at the start of substantive tasks. Skills are available via list_skills() / get_skill(name).",
			"- If unsure whether a function exists (firetouchinterest, hookfunction, etc.), use run_once('print(type(X))') before claiming it's unsupported.",
		}
		if useOllamaDone then
			-- Ollama models use a synthetic done() tool to signal end-of-turn.
			-- Other providers reply with text naturally — don't add a rule
			-- mentioning done() for them; it just confuses the model.
			table.insert(rules, 2, "- After any tool use, call done(message) with your final reply. For tool-free answers, reply directly.")
		end
		if Http.ENV == "syn" or Http.ENV == "executor" then
			rules[#rules+1] = "- run() captures print() output — use print() for any value you want returned."
			rules[#rules+1] = "- For IY commands: call iy_cmd() directly. Use list_iy_cmds(filter) first if the command name is unclear."
			rules[#rules+1] = "- Toggle IY commands off with 'no'/'un' prefix (noesp, unfly). Exception: noclip → clip."
		end
		return table.concat(rules, "\n")
	end

	function Prompt.build(includeContext, userPrompt, useOllamaDone)
		local lines = {
			"You are IYAI, an AI plugin by urluri for Roblox games and Infinite Yield (a Roblox executor tool).",
			"You help users inspect instances, run code, and modify the game world using live data from your tools.",
			"Your tone is professional and precise. No emoji, no filler. Deliver information directly.",
			"",
			"## Rules",
			buildRules(useOllamaDone),
		}
		if includeContext then
			lines[#lines+1] = ""
			lines[#lines+1] = "## Current game context"
			local ok, ctx = pcall(getGameContext)
			lines[#lines+1] = ok and ctx or "(context unavailable)"
		end
		if type(userPrompt) == "string" and userPrompt ~= "" then
			lines[#lines+1] = ""
			lines[#lines+1] = "---"
			lines[#lines+1] = "## User Instructions"
			lines[#lines+1] = "The following instructions were set by the user. Apply them in all responses while keeping your core identity, tools, and rules above intact."
			lines[#lines+1] = ""
			lines[#lines+1] = userPrompt
		end
		return table.concat(lines, "\n")
	end

	function Prompt.stripMarkdown(s)
		if type(s) ~= "string" then return tostring(s) end
		s = s:gsub("^#+%s+", ""):gsub("\n#+%s+", "\n")
		s = s:gsub("%*%*%*(.-)%*%*%*", "%1")
		s = s:gsub("%*%*(.-)%*%*",     "%1")
		s = s:gsub("%*(.-)%*",         "%1")
		s = s:gsub("__(.-)__",         "%1")
		s = s:gsub("_(.-)_",           "%1")
		s = s:gsub("```[^\n]*\n([^`]*)```", function(code) return code end)
		s = s:gsub("```[^\n]*```", "")
		s = s:gsub("`([^`\n]+)`", "%1")
		s = s:gsub("\n%-%-%-+\n", "\n")
		s = s:gsub("\n%*%*%*+\n", "\n")
		s = s:gsub("\n>%s*", "\n"):gsub("^>%s*", "")
		s = s:gsub("%[(.-)%]%(.-%)","  %1")
		s = s:gsub(" +\n", "\n")
		s = s:gsub("\n\n\n+", "\n\n")
		return s:match("^%s*(.-)%s*$")
	end

	return Prompt

end
