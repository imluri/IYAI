-- IYAI_GUI.lua
-- Called by IYAI_Core.iy as: loadstring(src)(githubBaseUrl)

local BASE = ...
BASE = type(BASE) == "string" and BASE:gsub("/$", "") or ""

local function loadMod(relPath)
	local src
	if BASE ~= "" then
		local url = BASE .. "/" .. relPath
		local p   = { Url = url, Method = "GET" }
		local ok, res
		if syn and syn.request then ok, res = pcall(syn.request, p)
		elseif request          then ok, res = pcall(request, p) end
		if ok and res and res.StatusCode == 200 and res.Body and res.Body ~= "" then
			src = res.Body
		else
			warn("[IYAI] Remote module failed (" .. relPath .. "), trying local.")
		end
	end
	if not src then
		local localPath = "IYAI/" .. relPath
		if readfile and isfile and isfile(localPath) then
			local ok2, raw = pcall(readfile, localPath)
			if ok2 and raw and raw ~= "" then src = raw end
		end
	end
	if not src then error("[IYAI] Cannot load module: " .. relPath) end
	local fn, ce = loadstring(src)
	if not fn then error("[IYAI] Compile error in " .. relPath .. ": " .. tostring(ce)) end
	return fn()
end

local Http   = loadMod("modules/Http.lua")
local Config = loadMod("modules/Config.lua")
local Toast  = loadMod("modules/Toast.lua")
local Tools         = loadMod("modules/Tools.lua")
local propFns = loadMod("modules/Properties.lua")(Http)
loadMod("modules/tools/Explorer.lua")(Tools, propFns.getProperties, propFns.getMethods)
loadMod("modules/tools/Script.lua")(Tools)
loadMod("modules/tools/IY.lua")(Tools)
loadMod("modules/tools/Web.lua")(Tools, Http)
local Prompt = loadMod("modules/Prompt.lua")(Http)

local TS  = game:GetService("TweenService")
local UIS = game:GetService("UserInputService")
local HS  = game:GetService("HttpService")

-- ── Build GUI ─────────────────────────────────────────────────────────────────

local G2L = loadMod("modules/Layout.lua")

-- Destroy Studio-only LocalScripts before parenting — prevents executors running them
for _, key in ipairs({"db", "e6"}) do
	pcall(function() if G2L[key] then G2L[key]:Destroy() end end)
end

-- Hide before any frame renders — fade-in tween reveals it later
if G2L["2"] then G2L["2"].GroupTransparency = 1 end

-- Parent to a hidden container to avoid detection
local function getHiddenContainer()
	if gethui then return gethui() end
	local ok, cg = pcall(function() return cloneref(game:GetService("CoreGui")) end)
	if ok and cg then return cg end
	local ok2, cg2 = pcall(function() return game:GetService("CoreGui") end)
	if ok2 and cg2 then return cg2 end
	return game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui")
end
local _container = getHiddenContainer()
if syn and syn.protect_gui then pcall(syn.protect_gui, G2L["1"]) end
G2L["1"].Parent = _container

-- ── Named aliases ─────────────────────────────────────────────────────────────

local ScreenGui              = G2L["1"]
local IYAI                   = G2L["2"]
local ContentPages           = G2L["4"]
local AgentPage              = G2L["5"]
local ScrollingFrameMainChat = G2L["6"]
local ListLayout             = G2L["7"]
local ElementTemplate        = G2L["9"]
local TotalElements          = G2L["37"]
local isAssistantBusy        = G2L["38"]
local InputFrame             = G2L["3e"]
local TextBoxInput           = G2L["3f"]
local SendButton             = G2L["42"]
local StopButton             = G2L["44"]
local ActionsFrame           = G2L["47"]
local ClearButton            = G2L["49"]
local SettingsPage           = G2L["4a"]
local Settings_SF            = G2L["4b"]
local APIKeyFrame            = G2L["4c"]
local APIKeyLabel            = G2L["4f"]
local APIKeyBox              = G2L["50"]
local HostSelectFrame        = G2L["53"]
local HostFrame              = G2L["56"]
local HostButtons            = HostFrame:GetChildren()
local ModelSelectFrame       = G2L["64"]
local ModelFrame             = G2L["67"]
local ModelBox               = G2L["68"]
local DropdownButton         = G2L["6b"]
local DropdownList           = Instance.new("Frame")  -- dropdown disabled; detached dummy
local TestFrame              = G2L["6e"]
local ConnectionButton       = G2L["72"]
local CredentialButton       = G2L["74"]
local UnsavedChanges         = G2L["7e"]
local TextLabel              = G2L["80"]
local SaveButton             = G2L["82"]
local RevertButton           = G2L["84"]
local CodePage               = G2L["87"]
local CodeSF                 = G2L["8e"]
local LineLabel              = G2L["90"]
local CodeBox                = G2L["92"]
local CodeActionsFrame       = G2L["88"]
local CodeClearButton        = G2L["89"]
local CodeCopyButton         = G2L["8a"]
local RunButton              = G2L["8b"]
local LeftSidebar            = G2L["a7"]
local TopBar                 = G2L["ba"]
local CloseButton            = G2L["bc"]
local MinimizeButton         = G2L["bf"]
local Highlight              = G2L["c0"]
local IntroFrame             = G2L["d7"]
local IYAIToastContainer     = G2L["e7"]
local ToastTemplate          = G2L["e8"]
local CurrentPage            = G2L["f4"]
local ModalFrame             = G2L["c1"]
local ModalInner             = G2L["c3"]
local ModalCloseButton       = G2L["c5"]
local SearchModelModal       = G2L["c6"]
local ModalSearchBox         = G2L["c8"]
local ModalSF                = G2L["cc"]
local ExampleModelBtn        = G2L["cd"]
local ModalSearchButton      = G2L["cb"]
local ModalOpenButton        = G2L["6b"]
local MaxStepFrame           = G2L["77"]
local MaxStepBox             = G2L["8a"]
local ToolsPage              = G2L["94"]
local ToolsSF                = G2L["95"]
local ToolsElementTemplate   = G2L["98"]
local ToolsGroupFrame        = G2L["99"]  -- GroupFrame template
local ToolsGroupInner        = G2L["9a"]  -- inner card Frame
local ToolsGroupTitle        = G2L["9b"]  -- GroupTitle label
local ToolsToolFrame         = G2L["9c"]  -- ToolFrame template
local ToolsToolNameDesc      = G2L["a0"]  -- ToolNameDesc label
local ToolsTotalElements     = G2L["a5"]
local ToolResultViewModal    = G2L["d0"]
local ToolResultSF           = G2L["d2"]
local ToolResultTextBox      = G2L["d3"]
local ModalTitleLabel        = G2L["d5"]

-- ── Main logic ────────────────────────────────────────────────────────────────

local VERSION           = G2L["f5"] and G2L["f5"].Value or ""
local Tween             = TweenInfo.new(0.5, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut)
local DefaultIYAISize   = UDim2.new(0, 600, 0, 400)
local MinimizedIYAISize = UDim2.new(0, 100, 0, 25)
local Minimized         = false
local modelList         = {}
local _loading          = false
local ModelBox_ref      = ModelBox  -- forward ref used in fetchOpenRouterModels

ToastTemplate.Visible = false
Toast.init(ToastTemplate, IYAIToastContainer)

-- Version display + update detection
local versionLabel = TopBar:FindFirstChild("VersionLabel")
if versionLabel then versionLabel.Text = "v" .. VERSION end

local VERSION_FILE = "iyai_version.txt"
local savedVersion = ""
pcall(function()
	if isfile and isfile(VERSION_FILE) then
		savedVersion = readfile(VERSION_FILE) or ""
	end
end)
if savedVersion ~= "" and savedVersion ~= VERSION then
	task.delay(2, function()
		Toast.show("Updated!", "IYAI updated to v" .. VERSION, "ok", 5)
	end)
end
pcall(function()
	if writefile then writefile(VERSION_FILE, VERSION) end
end)

-- ── Model fetch ───────────────────────────────────────────────────────────────

local function fetchModelsFromOpenAIEndpoint(url, authKey)
	local headers = authKey ~= ""
		and { ["Authorization"] = "Bearer " .. authKey }
		or  {}
	local res = Http.request(url, "GET", headers)
	if not res or res.StatusCode ~= 200 then return end
	local ok, data = pcall(HS.JSONDecode, HS, res.Body)
	if not ok or not data.data then return end
	modelList = {}
	for _, m in ipairs(data.data) do
		table.insert(modelList, { name = m.id })
	end
	table.sort(modelList, function(a, b) return a.name < b.name end)
	if ModelBox.Text == "" and #modelList > 0 then
		_loading = true; ModelBox.Text = modelList[1].name; _loading = false
	end
end

local function fetchOpenRouterModels() fetchModelsFromOpenAIEndpoint("https://openrouter.ai/api/v1/models", "") end
local function fetchMistralModels()    fetchModelsFromOpenAIEndpoint("https://api.mistral.ai/v1/models",    Config.apiKey) end

local function autoTestOnStart()
	task.spawn(function()
		if Config.host == "Ollama" then
			local res = Http.request(Config.ollamaUrl .. "/api/tags", "GET", {})
			local ok, data = pcall(HS.JSONDecode, HS, res and res.Body or "")
			if ok and data and data.models then modelList = data.models end
		elseif Config.host == "Mistral" then
			fetchMistralModels()
		else
			fetchOpenRouterModels()
		end
	end)
	local key = Config.apiKey
	if key == "" and Config.host ~= "Ollama" then
		Toast.show("No API Key", "Set your API key in Settings", "err", 5)
		task.delay(1, function() CurrentPage.Value = "Settings" end)
		return
	end
	if Config.host == "Ollama" then
		local res = Http.request(Config.ollamaUrl .. "/api/tags", "GET", {})
		if res and res.StatusCode == 200 then
			Toast.show("Connected", "Ollama is reachable", "ok", 3)
		else
			Toast.show("Offline", "Cannot reach Ollama — check Settings", "err", 5)
			task.delay(1, function() CurrentPage.Value = "Settings" end)
		end
	elseif Config.host == "Mistral" then
		local res = Http.request("https://api.mistral.ai/v1/models", "GET", {
			["Authorization"] = "Bearer " .. key,
		})
		if res and res.StatusCode == 200 then
			Toast.show("Connected", "Mistral key is valid", "ok", 3)
		elseif res and res.StatusCode == 401 then
			Toast.show("Invalid Key", "Mistral key rejected — update in Settings", "err", 5)
			task.delay(1, function() CurrentPage.Value = "Settings" end)
		else
			Toast.show("Connection Failed", "Could not reach Mistral", "err", 5)
			task.delay(1, function() CurrentPage.Value = "Settings" end)
		end
	else
		local res = Http.request("https://openrouter.ai/api/v1/auth/key", "GET", {
			["Authorization"] = "Bearer " .. key,
		})
		if res and res.StatusCode == 200 then
			Toast.show("Connected", "OpenRouter key is valid", "ok", 3)
		elseif res and res.StatusCode == 401 then
			Toast.show("Invalid Key", "API key rejected — update in Settings", "err", 5)
			task.delay(1, function() CurrentPage.Value = "Settings" end)
		else
			Toast.show("Connection Failed", "Could not reach OpenRouter", "err", 5)
			task.delay(1, function() CurrentPage.Value = "Settings" end)
		end
	end
end

IYAI.GroupTransparency = 1
local fadeTween = TS:Create(IYAI, Tween, { GroupTransparency = 0 })
fadeTween.Completed:Connect(function() task.spawn(autoTestOnStart) end)
fadeTween:Play()

task.spawn(function()
	IntroFrame.Visible           = true
	IntroFrame.GroupTransparency = 0
	task.wait(2)
	TS:Create(IntroFrame, TweenInfo.new(1), { GroupTransparency = 1 }):Play()
	task.wait(1)
	IntroFrame.Visible = false
end)

-- ── Page routing ──────────────────────────────────────────────────────────────

local function updatePage(page)
	for _, v in pairs(ContentPages:GetChildren()) do
		v.Visible = (v.Name == page .. "Page")
	end
end

CurrentPage.Changed:Connect(function(page) updatePage(page) end)

local SIDEBAR_OPEN   = UDim2.new(0, 150, 1, 0)
local SIDEBAR_CLOSED = UDim2.new(0, 45,  1, 0)
local sidebarTween   = TweenInfo.new(0.2, Enum.EasingStyle.Quint, Enum.EasingDirection.Out)

LeftSidebar.MouseEnter:Connect(function()
	TS:Create(LeftSidebar, sidebarTween, { Size = SIDEBAR_OPEN }):Play()
end)
LeftSidebar.MouseLeave:Connect(function()
	TS:Create(LeftSidebar, sidebarTween, { Size = SIDEBAR_CLOSED }):Play()
end)

LeftSidebar.Size = SIDEBAR_CLOSED

for _, v in pairs(LeftSidebar:GetChildren()) do
	if not v:IsA("Frame") then continue end
	local Hitbox = v:FindFirstChild("Hitbox")
	if not Hitbox then continue end
	local label   = v:FindFirstChild("TextLabel")
	local tabName = label and label.Text or v.Name
	Hitbox.MouseButton1Click:Connect(function() CurrentPage.Value = tabName end)
end

Highlight.Position = UDim2.new(0, 0, 0, 0)
CurrentPage.Changed:Connect(function(page)
	local target = LeftSidebar:FindFirstChild(page .. "ButtonFrame")
	if not target then return end
	TS:Create(Highlight, TweenInfo.new(0.1), {
		Position = UDim2.new(0, 0, 0,
			target.AbsolutePosition.Y - LeftSidebar.AbsolutePosition.Y)
	}):Play()
end)

CurrentPage.Value = "Agent"

-- ── Greet frame ───────────────────────────────────────────────────────────────

local GreetFrame      = ScrollingFrameMainChat:FindFirstChild("GreetFrame")
local SetApiKeyButton = GreetFrame and GreetFrame:FindFirstChild("SetApiKeyButton")

if SetApiKeyButton then
	SetApiKeyButton.MouseButton1Click:Connect(function()
		CurrentPage.Value = "Settings"
	end)
end

-- ── Agent page ────────────────────────────────────────────────────────────────

ListLayout:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(function()
	ScrollingFrameMainChat.CanvasSize = UDim2.new(0, 0, 0, ListLayout.AbsoluteContentSize.Y)
end)

local function scrollBottom()
	task.defer(function()
		local h = ListLayout.AbsoluteContentSize.Y
		ScrollingFrameMainChat.CanvasSize     = UDim2.new(0, 0, 0, h)
		ScrollingFrameMainChat.CanvasPosition = Vector2.new(0, h)
	end)
end

local function addElement(templateName, text, isLabel)
	local clone = ElementTemplate:FindFirstChild(templateName):Clone()
	if isLabel then clone.Text = text end
	TotalElements.Value += 1
	clone.LayoutOrder = TotalElements.Value
	clone.Visible     = true
	clone.Parent      = ScrollingFrameMainChat
	scrollBottom()
	return clone
end

local function addChat(text)
	if text == "" or isAssistantBusy.Value then return end
	if GreetFrame then GreetFrame.Visible = false end
	local clone = ElementTemplate:FindFirstChild("UserMessageFrame"):Clone()
	clone.Frame.UserMessage.Text = text
	TotalElements.Value += 1
	clone.LayoutOrder = TotalElements.Value
	clone.Visible     = true
	clone.Parent      = ScrollingFrameMainChat
	scrollBottom()
end

local function addTaskFrame(kind)
	local name = kind == "busy"      and "AgentTaskFrame (Tool busy)"
		or kind == "succeeded" and "AgentTaskFrame (Tool succeeded)"
		or                          "AgentTaskFrame (Tool failed)"
	return addElement(name, nil, false)
end

local StepCount = 0
local function addStep()
	StepCount += 1
	addElement("StepN", "Step " .. StepCount, true)
end

local function addThinking(text) addElement("AssistantThinking", text, true) end

local TYPEWRITER_SPEED = 3

local function typewriteInto(element, text)
	local len = string.len(text)
	local i = 0
	while i < len do
		if not element or not element.Parent then break end
		i = math.min(i + TYPEWRITER_SPEED, len)
		element.Text = string.sub(text, 1, i)
		scrollBottom()
		task.wait()
	end
end

local function splitCodeBlocks(text)
	local segments = {}
	local pos = 1
	while true do
		local fenceStart = text:find("```", pos, true)
		if not fenceStart then break end
		if fenceStart > pos then
			table.insert(segments, { type = "text", content = text:sub(pos, fenceStart - 1) })
		end
		local nlPos = text:find("\n", fenceStart + 3, true)
		if not nlPos then break end
		local lang = text:sub(fenceStart + 3, nlPos - 1)
		local closeStart = text:find("```", nlPos + 1, true)
		if not closeStart then break end
		local code = text:sub(nlPos + 1, closeStart - 1):match("^(.-)%s*$")
		table.insert(segments, { type = "code", lang = lang, content = code })
		pos = closeStart + 3
	end
	if pos <= #text then
		table.insert(segments, { type = "text", content = text:sub(pos) })
	end
	return segments
end

local function addResponse(rawText, usage)
	local segments = splitCodeBlocks(rawText)
	local lastElem

	if #segments == 1 and segments[1].type == "text" then
		local elem = addElement("AssistantResponse", "", false)
		local textLabel = elem:IsA("TextLabel") and elem or elem:FindFirstChildWhichIsA("TextLabel", true)
		if textLabel then typewriteInto(textLabel, Prompt.stripMarkdown(segments[1].content) .. (usage and "\n" or "")) end
		lastElem = elem
	else
		for _, seg in ipairs(segments) do
			if seg.type == "text" then
				local stripped = Prompt.stripMarkdown(seg.content):match("^%s*(.-)%s*$")
				if stripped ~= "" then
					local elem = addElement("AssistantResponse", "", false)
					local textLabel = elem:IsA("TextLabel") and elem or elem:FindFirstChildWhichIsA("TextLabel", true)
					if textLabel then textLabel.Text = stripped end
					lastElem = elem
				end
			else
				local frame = ElementTemplate:FindFirstChild("CodeblockFrame"):Clone()
				local codeBox = frame:FindFirstChild("CodeBox", true)
				if codeBox then codeBox.Text = seg.content end
				local copyBtn = frame:FindFirstChild("CopyButton", true)
				if copyBtn then
					local capturedCode = seg.content
					copyBtn.MouseButton1Click:Connect(function()
						pcall(setclipboard, capturedCode)
					end)
				end
				TotalElements.Value += 1
				frame.LayoutOrder = TotalElements.Value
				frame.Visible = true
				frame.Parent = ScrollingFrameMainChat
				lastElem = frame
			end
		end
	end

	if lastElem then
		local tokenLabel = lastElem:FindFirstChild("TokenCount", true)
		if tokenLabel then
			if usage then
				local prompt     = usage.prompt_tokens     or 0
				local completion = usage.completion_tokens or 0
				tokenLabel.Text  = Config.model .. "  ↑ " .. prompt .. "  ↓ " .. completion
			else
				tokenLabel:Destroy()
			end
		end
	end
end

TextBoxInput:GetPropertyChangedSignal("Text"):Connect(function()
	SendButton.ImageTransparency = TextBoxInput.Text == "" and 0.7 or 0
end)

-- ── Code page ─────────────────────────────────────────────────────────────────

local function updateLineNumbers()
	local lines = select(2, CodeBox.Text:gsub("\n", "\n")) + 1
	local nums = table.create(lines)
	for i = 1, lines do nums[i] = tostring(i) end
	LineLabel.Text = table.concat(nums, "\n")
end

updateLineNumbers()
CodeBox:GetPropertyChangedSignal("Text"):Connect(function()
	updateLineNumbers()
	CodeSF.CanvasPosition = Vector2.new(0, CodeSF.AbsoluteCanvasSize.Y)
end)

CodeClearButton.MouseButton1Click:Connect(function()
	CodeBox.Text = ""
end)

CodeCopyButton.MouseButton1Click:Connect(function()
	if CodeBox.Text == "" then return end
	if type(setclipboard) == "function" then
		setclipboard(CodeBox.Text)
		Toast.show("Copied", "Code copied to clipboard", "info", 2)
	end
end)

RunButton.MouseButton1Click:Connect(function()
	local code = CodeBox.Text
	if code == "" then return end
	local fn, compErr = loadstring(code)
	if not fn then
		Toast.show("Syntax Error", compErr or "compile failed", "error", 5)
		return
	end
	local ok, runErr = pcall(fn)
	if not ok then
		Toast.show("Runtime Error", tostring(runErr), "error", 5)
	else
		Toast.show("Done", "Code ran successfully", "ok", 2)
	end
end)

-- Code tools registered here so they share CodeBox closure
local CODE_TOOL_GROUP = "Code"
local function unescapeCode(s)
	-- Models sometimes emit literal \n \t \r instead of real control chars
	return (s:gsub("\\n", "\n"):gsub("\\t", "\t"):gsub("\\r", ""))
end

Tools.register({
	group = CODE_TOOL_GROUP,
	definition = {
		type = "function",
		["function"] = {
			name        = "write_code",
			description = "Write or fully replace the code in the code editor. Use for initial generation or complete rewrites.",
			parameters  = { type = "object", properties = { code = { type = "string", description = "The full Lua code to write." } }, required = { "code" } }
		}
	},
	handler = function(args)
		local code = unescapeCode(args.code or "")
		CodeBox.Text = code
		local lines = select(2, code:gsub("\n", "\n")) + 1
		local _, syntaxErr = loadstring(code)
		if syntaxErr then
			return "Code written (" .. lines .. " lines) — Syntax error: " .. tostring(syntaxErr)
		end
		return "Code written (" .. lines .. " lines)"
	end
})

Tools.register({
	group = CODE_TOOL_GROUP,
	definition = {
		type = "function",
		["function"] = {
			name        = "edit_code",
			description = "Replace a specific block of text in the code editor. Use for targeted edits without rewriting everything.",
			parameters  = { type = "object", properties = { search = { type = "string" }, replace = { type = "string" } }, required = { "search", "replace" } }
		}
	},
	handler = function(args)
		local current = CodeBox.Text
		local search  = unescapeCode(args.search  or "")
		local replace = unescapeCode(args.replace or "")
		local escaped = search:gsub("([%(%)%.%%%+%-%*%?%[%^%$])", "%%%1")
		if not current:find(escaped, 1, true) then return "Error: search text not found in code." end
		local before = select(2, current:gsub("\n", "\n")) + 1
		CodeBox.Text  = current:gsub(escaped, replace:gsub("%%", "%%%%"), 1)
		local after   = select(2, CodeBox.Text:gsub("\n", "\n")) + 1
		local diff    = after - before
		return (diff >= 0 and "+" or "") .. diff .. " lines"
	end
})

Tools.register({
	group = CODE_TOOL_GROUP,
	definition = {
		type = "function",
		["function"] = {
			name        = "read_code",
			description = "Read the current code editor. Returns total line count so you know what range to fetch with get_lines.",
			parameters  = { type = "object", properties = {} }
		}
	},
	handler = function()
		local code = CodeBox.Text
		if code == "" then return "(editor is empty)" end
		return tostring(select(2, code:gsub("\n", "\n")) + 1) .. " lines total"
	end
})

Tools.register({
	group = CODE_TOOL_GROUP,
	definition = {
		type = "function",
		["function"] = {
			name        = "get_lines",
			description = "Fetch a range of lines from the code editor by line number. Use this to inspect a section without reading the whole file.",
			parameters  = { type = "object", properties = { start_line = { type = "number" }, end_line = { type = "number" } }, required = { "start_line", "end_line" } }
		}
	},
	handler = function(args)
		local lines = CodeBox.Text:split("\n")
		local s = math.max(1, math.floor(args.start_line))
		local e = math.min(#lines, math.floor(args.end_line))
		if s > #lines then return "Error: start_line out of range (total " .. #lines .. " lines)" end
		local result = {}
		for i = s, e do result[#result+1] = i .. ": " .. lines[i] end
		return table.concat(result, "\n")
	end
})

Tools.register({
	group = CODE_TOOL_GROUP,
	definition = {
		type = "function",
		["function"] = {
			name        = "replace_lines",
			description = "Replace a range of lines in the code editor. Prefer this over edit_code for large files — you only need to know the line numbers.",
			parameters  = { type = "object", properties = { start_line = { type = "number" }, end_line = { type = "number" }, replacement = { type = "string" } }, required = { "start_line", "end_line", "replacement" } }
		}
	},
	handler = function(args)
		local lines = CodeBox.Text:split("\n")
		local s = math.max(1, math.floor(args.start_line))
		local e = math.min(#lines, math.floor(args.end_line))
		if s > #lines then return "Error: start_line out of range (total " .. #lines .. " lines)" end
		local before = #lines
		local newLines = unescapeCode(args.replacement or ""):split("\n")
		local result = {}
		for i = 1, s - 1            do result[#result+1] = lines[i] end
		for _, l in ipairs(newLines) do result[#result+1] = l end
		for i = e + 1, #lines       do result[#result+1] = lines[i] end
		CodeBox.Text = table.concat(result, "\n")
		local diff = (select(2, CodeBox.Text:gsub("\n", "\n")) + 1) - before
		return "Replaced lines " .. s .. "-" .. e .. " (" .. (diff >= 0 and "+" or "") .. diff .. " lines)"
	end
})

Tools.register({
	group = CODE_TOOL_GROUP,
	definition = {
		type = "function",
		["function"] = {
			name        = "find_in_code",
			description = "Search for a string in the code editor. Returns matching line numbers and their content so you can target get_lines or replace_lines precisely.",
			parameters  = { type = "object", properties = { query = { type = "string", description = "Plain text to search for." } }, required = { "query" } }
		}
	},
	handler = function(args)
		local lines = CodeBox.Text:split("\n")
		local matches = {}
		for i, line in ipairs(lines) do
			if line:find(args.query, 1, true) then matches[#matches+1] = i .. ": " .. line end
		end
		if #matches == 0 then return "No matches found." end
		return #matches .. " match(es):\n" .. table.concat(matches, "\n")
	end
})

-- ── Tools page ────────────────────────────────────────────────────────────────

local _toolsPopulated = false

local function populateToolsPage()
	if _toolsPopulated then return end
	_toolsPopulated = true

	-- Group tools by their registered group field
	local groups = {}
	local groupOrder = {}
	for _, entry in ipairs(Tools.getDefinitions()) do
		local fn    = entry.definition and entry.definition["function"]
		local name  = fn and fn.name
		local desc  = fn and fn.description or ""
		local group = entry.group or "Other"
		if name and name ~= "done" then
			if not groups[group] then
				groups[group] = {}
				table.insert(groupOrder, group)
			end
			table.insert(groups[group], { name = name, desc = desc })
		end
	end

	for _, groupName in ipairs(groupOrder) do
		local tools = groups[groupName]
		local gf    = ToolsGroupFrame:Clone()
		local inner = gf:FindFirstChild("Frame") or gf:FindFirstChildWhichIsA("Frame")
		local title = inner and inner:FindFirstChild("GroupTitle")
		local tf    = inner and inner:FindFirstChild("ToolFrame")

		if title then title.Text = groupName end

		for _, tool in ipairs(tools) do
			local row = tf:Clone()
			local lbl = row:FindFirstChild("ToolNameDesc")
			if lbl then
				lbl.Text = '<font weight="bold">' .. tool.name .. '</font>\n<font transparency="0.4">' .. tool.desc .. '</font>'
			end
			row.Visible = true
			row.Parent  = inner
		end

		if tf then tf:Destroy() end
		gf.Visible = true
		gf.Parent  = ToolsSF
	end

	task.defer(function()
		local h = 0
		for _, c in ipairs(ToolsSF:GetChildren()) do
			if c:IsA("GuiObject") and c ~= ToolsElementTemplate then
				h = h + c.AbsoluteSize.Y + 8
			end
		end
		ToolsSF.CanvasSize = UDim2.new(0, 0, 0, h)
	end)
end

CurrentPage.Changed:Connect(function(page)
	if page == "Tools" then populateToolsPage() end
end)

-- ── Settings page ─────────────────────────────────────────────────────────────

local selectedHost = Config.host
local dropdownOpen = false

UnsavedChanges.Visible = false
DropdownList.Visible   = false

local function maskKey(key)
	if key == "" then return "" end
	local visible = math.min(4, #key)
	return string.rep("•", #key - visible) .. key:sub(-visible)
end

local _loadingKey = true

APIKeyBox.Text             = Config.apiKey
APIKeyBox.TextTransparency = 1
APIKeyLabel.Text           = maskKey(Config.apiKey)
ModelBox.Text              = Config.model
MaxStepBox.Text            = tostring(Config.maxSteps)
selectedHost               = Config.host

for _, b in pairs(HostButtons) do
	if b:IsA("TextButton") then
		b.BackgroundTransparency = b.Text == selectedHost and 0.7 or 1
	end
end

_loading    = false
_loadingKey = false

local _apiKeyFocused = false

APIKeyBox.Focused:Connect(function()
	_apiKeyFocused   = true
	APIKeyLabel.Text = string.rep("•", #APIKeyBox.Text)
end)

APIKeyBox.FocusLost:Connect(function()
	_apiKeyFocused   = false
	APIKeyLabel.Text = maskKey(APIKeyBox.Text)
	if not _loadingKey then UnsavedChanges.Visible = true end
end)

APIKeyBox:GetPropertyChangedSignal("Text"):Connect(function()
	if _loadingKey then return end
	UnsavedChanges.Visible = true
	if _apiKeyFocused then APIKeyLabel.Text = string.rep("•", #APIKeyBox.Text) end
end)

local filteredList = {}

local function closeDropdown()
	dropdownOpen         = false
	DropdownList.Visible = false
end

local function populateDropdown(models)
	for _, c in pairs(DropdownList:GetChildren()) do
		if c:IsA("TextButton") then c:Destroy() end
	end
	if #models == 0 then closeDropdown() return end
	for i, m in ipairs(models) do
		local btn = Instance.new("TextButton")
		btn.Text                   = m.name
		btn.TextSize               = 12
		btn.Font                   = Enum.Font.SourceSans
		btn.TextColor3             = Color3.fromRGB(161, 161, 170)
		btn.BackgroundColor3       = Color3.fromRGB(17, 17, 20)
		btn.BackgroundTransparency = 0
		btn.BorderSizePixel        = 0
		btn.Size                   = UDim2.new(1, 0, 0, 28)
		btn.LayoutOrder            = i
		btn.TextXAlignment         = Enum.TextXAlignment.Left
		btn.Parent                 = DropdownList
		local pad = Instance.new("UIPadding", btn); pad.PaddingLeft = UDim.new(0, 10)
		btn.MouseButton1Down:Connect(function()
			ModelBox.Text          = m.name
			UnsavedChanges.Visible = true
			closeDropdown()
		end)
		btn.MouseEnter:Connect(function() btn.TextColor3 = Color3.fromRGB(250, 250, 250) end)
		btn.MouseLeave:Connect(function() btn.TextColor3 = Color3.fromRGB(161, 161, 170) end)
	end
	dropdownOpen         = true
	DropdownList.Visible = true
end

local function filterDropdown(query)
	local q = query:lower()
	filteredList = {}
	for _, m in ipairs(modelList) do
		if m.name:lower():find(q, 1, true) then table.insert(filteredList, m) end
	end
	populateDropdown(filteredList)
end

ModelBox:GetPropertyChangedSignal("Text"):Connect(function()
	if _loading then return end
	UnsavedChanges.Visible = true
	if #modelList > 0 then filterDropdown(ModelBox.Text) end
end)

MaxStepBox:GetPropertyChangedSignal("Text"):Connect(function()
	if _loading then return end
	UnsavedChanges.Visible = true
end)

DropdownButton.MouseButton1Click:Connect(function()
	if dropdownOpen then closeDropdown() else filterDropdown(ModelBox.Text) end
end)

ModelBox.Focused:Connect(function()
	if #modelList > 0 then filterDropdown("") end
end)

ModelBox.FocusLost:Connect(function()
	task.wait(0.15)
	closeDropdown()
end)

local _uisBegan = UIS.InputBegan:Connect(function(input)
	if input.UserInputType ~= Enum.UserInputType.MouseButton1 then return end
	if not dropdownOpen then return end
	local mousePos = UIS:GetMouseLocation()
	local function inside(gui)
		local pos = gui.AbsolutePosition; local size = gui.AbsoluteSize
		return mousePos.X >= pos.X and mousePos.X <= pos.X + size.X
			and mousePos.Y >= pos.Y and mousePos.Y <= pos.Y + size.Y
	end
	if not inside(DropdownList) and not inside(ModelFrame) then closeDropdown() end
end)

local function updateApiKeyVisibility(host)
	if APIKeyFrame then
		APIKeyFrame.Visible = host ~= "Ollama"
	end
end

updateApiKeyVisibility(selectedHost)

for _, btn in pairs(HostButtons) do
	if not btn:IsA("TextButton") then continue end
	btn.MouseButton1Click:Connect(function()
		selectedHost = btn.Text
		for _, b in pairs(HostButtons) do
			if b:IsA("TextButton") then
				b.BackgroundTransparency = b.Text == selectedHost and 0.7 or 1
			end
		end
		updateApiKeyVisibility(selectedHost)
		UnsavedChanges.Visible = true
	end)
end

ConnectionButton.MouseButton1Click:Connect(function()
	ConnectionButton.Text = "Testing..."
	local res
	if selectedHost == "Ollama" then
		res = Http.request(Config.ollamaUrl .. "/api/tags", "GET", {})
	elseif selectedHost == "Mistral" then
		res = Http.request("https://api.mistral.ai/v1/models", "GET", {
			["Authorization"] = "Bearer " .. APIKeyBox.Text,
		})
	else
		res = Http.request("https://openrouter.ai/api/v1/models", "GET", {
			["Authorization"] = "Bearer " .. APIKeyBox.Text,
		})
	end
	ConnectionButton.Text = "Connection"
	if not res or res.StatusCode ~= 200 then
		Toast.show("Failed", "Could not reach " .. selectedHost, "err", 4)
		return
	end
	Toast.show("Connected", selectedHost .. " is reachable", "ok", 3)
	local ok, data = pcall(HS.JSONDecode, HS, res.Body)
	if not ok then return end
	if selectedHost == "Ollama" and data.models then
		modelList = data.models
		populateDropdown(data.models)
		if ModelBox.Text == "" and #data.models > 0 then
			_loading = true; ModelBox.Text = data.models[1].name; _loading = false
		end
	elseif selectedHost ~= "Ollama" and data.data then
		modelList = {}
		for _, m in ipairs(data.data) do table.insert(modelList, { name = m.id }) end
		table.sort(modelList, function(a, b) return a.name < b.name end)
		populateDropdown(modelList)
		if ModelBox.Text == "" and #modelList > 0 then
			_loading = true; ModelBox.Text = modelList[1].name; _loading = false
		end
	end
end)

CredentialButton.MouseButton1Click:Connect(function()
	local key = APIKeyBox.Text
	if key == "" then Toast.show("No API Key", "Enter an API key first", "err", 3) return end
	CredentialButton.Text = "Testing..."
	if selectedHost == "Ollama" then
		local res = Http.request(Config.ollamaUrl .. "/api/tags", "GET", {})
		CredentialButton.Text = "Credential"
		if res and res.StatusCode == 200 then
			Toast.show("OK", "Ollama has no auth — connection is fine", "ok", 3)
		else
			Toast.show("Failed", "Could not reach Ollama", "err", 4)
		end
	elseif selectedHost == "Mistral" then
		local res = Http.request("https://api.mistral.ai/v1/models", "GET", {
			["Authorization"] = "Bearer " .. key,
		})
		CredentialButton.Text = "Credential"
		if not res then
			Toast.show("Failed", "No response from Mistral", "err", 4)
		elseif res.StatusCode == 200 then
			Toast.show("Valid Key", "Mistral key accepted", "ok", 3)
		elseif res.StatusCode == 401 then
			Toast.show("Invalid Key", "Mistral key rejected (401)", "err", 4)
		else
			Toast.show("Failed", "Status " .. res.StatusCode, "err", 4)
		end
	else
		local res = Http.request("https://openrouter.ai/api/v1/auth/key", "GET", {
			["Authorization"] = "Bearer " .. key,
		})
		CredentialButton.Text = "Credential"
		if not res then
			Toast.show("Failed", "No response from server", "err", 4)
		elseif res.StatusCode == 200 then
			local ok, data = pcall(HS.JSONDecode, HS, res.Body)
			if ok and data.data then
				local label = data.data.label or "unknown"
				local usage = data.data.usage or 0
				local limit = data.data.limit
				local info  = limit
					and string.format("$%.4f / $%.2f limit", usage, limit)
					or  string.format("$%.4f used (no limit)", usage)
				Toast.show("Valid Key", label .. " — " .. info, "ok", 5)
			else
				Toast.show("Valid Key", "Credential accepted", "ok", 3)
			end
		elseif res.StatusCode == 401 then
			Toast.show("Invalid Key", "API key rejected (401)", "err", 4)
		else
			Toast.show("Failed", "Status " .. res.StatusCode, "err", 4)
		end
	end
end)

local function saveSettings()
	Config.apiKey   = APIKeyBox.Text
	Config.model    = ModelBox.Text
	Config.host     = selectedHost
	Config.maxSteps = math.max(1, tonumber(MaxStepBox.Text) or 100)
	MaxStepBox.Text = tostring(Config.maxSteps)
	Config.save()
	UnsavedChanges.Visible = false
	Toast.show("Saved", "Settings saved successfully", "ok", 2)
end

local function revertSettings()
	_loading = true; _loadingKey = true
	APIKeyBox.Text             = Config.apiKey
	APIKeyBox.TextTransparency = 1
	APIKeyLabel.Text           = maskKey(Config.apiKey)
	ModelBox.Text              = Config.model
	MaxStepBox.Text            = tostring(Config.maxSteps)
	selectedHost               = Config.host
	for _, b in pairs(HostButtons) do
		if b:IsA("TextButton") then
			b.BackgroundTransparency = b.Text == selectedHost and 0.7 or 1
		end
	end
	_loading = false; _loadingKey = false
	UnsavedChanges.Visible = false
end

SaveButton.MouseButton1Click:Connect(saveSettings)
RevertButton.MouseButton1Click:Connect(revertSettings)

-- ── Model Select Modal ────────────────────────────────────────────────────────

local MODAL_CHUNK    = 40
local modalAllModels = {}
local modalFiltered  = {}
local modalRendered  = 0

ModalFrame.Visible      = false
ExampleModelBtn.Visible = false

local function modalClearButtons()
	for _, c in ipairs(ModalSF:GetChildren()) do
		if c ~= ExampleModelBtn and not c:IsA("UIGridLayout") and not c:IsA("UIPadding") then
			c:Destroy()
		end
	end
end

local function modalRenderChunk()
	local startIdx = modalRendered + 1
	local endIdx   = math.min(modalRendered + MODAL_CHUNK, #modalFiltered)
	for i = startIdx, endIdx do
		local m   = modalFiltered[i]
		local btn = ExampleModelBtn:Clone()
		btn.Text    = m.name
		btn.Visible = true
		btn.Parent  = ModalSF
		btn.MouseButton1Click:Connect(function()
			_loading = true; ModelBox.Text = m.name; _loading = false
			UnsavedChanges.Visible = true
			ModalFrame.Visible = false
		end)
	end
	modalRendered = endIdx
end

local function modalApplyFilter(query)
	query = (query or ""):lower()
	modalFiltered = {}
	for _, m in ipairs(modalAllModels) do
		if query == "" or m.name:lower():find(query, 1, true) then
			table.insert(modalFiltered, m)
		end
	end
	modalRendered = 0
	modalClearButtons()
	modalRenderChunk()
	ModalSF.CanvasPosition = Vector2.zero
end

ModalSF:GetPropertyChangedSignal("CanvasPosition"):Connect(function()
	if modalRendered >= #modalFiltered then return end
	local pos      = ModalSF.CanvasPosition.Y
	local viewH    = ModalSF.AbsoluteSize.Y
	local contentH = ModalSF.AbsoluteCanvasSize.Y
	if pos + viewH >= contentH - 80 then
		modalRenderChunk()
	end
end)

local function modalFetch()
	modalAllModels = {}
	local host = selectedHost
	if host == "Ollama" then
		local res = Http.request(Config.ollamaUrl .. "/api/tags", "GET", {})
		local ok, data = pcall(HS.JSONDecode, HS, res and res.Body or "")
		if ok and data and data.models then
			for _, m in ipairs(data.models) do
				table.insert(modalAllModels, { name = m.name })
			end
		end
	else
		local url = host == "Mistral"
			and "https://api.mistral.ai/v1/models"
			or  "https://openrouter.ai/api/v1/models"
		local res = Http.request(url, "GET", {
			["Authorization"] = "Bearer " .. APIKeyBox.Text,
		})
		local ok, data = pcall(HS.JSONDecode, HS, res and res.Body or "")
		if ok and data and data.data then
			for _, m in ipairs(data.data) do
				table.insert(modalAllModels, { name = m.id })
			end
			table.sort(modalAllModels, function(a, b) return a.name < b.name end)
		end
	end
	modalFiltered = { table.unpack(modalAllModels) }
	modalRendered = 0
	modalClearButtons()
	modalRenderChunk()
end

local function openModal()
	if ModalTitleLabel then ModalTitleLabel.Text = "Select Model" end
	SearchModelModal.Visible    = true
	ToolResultViewModal.Visible = false
	ModalFrame.Visible = true
	if ModalSearchBox then ModalSearchBox.Text = "" end
	modalClearButtons()
	task.spawn(modalFetch)
end

local function openToolResultModal(fullText)
	if ModalTitleLabel then ModalTitleLabel.Text = "Tool Output" end
	SearchModelModal.Visible    = false
	ToolResultViewModal.Visible = true
	ToolResultTextBox.Text      = fullText
	ToolResultSF.CanvasPosition = Vector2.new(0, 0)
	ModalFrame.Visible          = true
	task.defer(function()
		ToolResultSF.CanvasSize = UDim2.new(0, 0, 0, ToolResultTextBox.AbsoluteSize.Y + 20)
	end)
end

ModalOpenButton.MouseButton1Click:Connect(openModal)
ModalCloseButton.MouseButton1Click:Connect(function()
	ModalFrame.Visible          = false
	SearchModelModal.Visible    = true
	ToolResultViewModal.Visible = false
end)

if ModalSearchBox then
	ModalSearchBox:GetPropertyChangedSignal("Text"):Connect(function()
		modalApplyFilter(ModalSearchBox.Text)
	end)
end
if ModalSearchButton then
	ModalSearchButton.MouseButton1Click:Connect(function()
		modalApplyFilter(ModalSearchBox and ModalSearchBox.Text or "")
	end)
end

-- ── Window controls ───────────────────────────────────────────────────────────

MinimizeButton.MouseButton1Click:Connect(function()
	Minimized = not Minimized
	local authorLabel = TopBar:FindFirstChild("AuthorLabel")
	local versionLabel = TopBar:FindFirstChild("VersionLabel")
	if Minimized then
		TS:Create(IYAI, Tween, { Size = MinimizedIYAISize }):Play()
		if authorLabel  then TS:Create(authorLabel,  Tween, { TextTransparency = 1 }):Play() end
		if versionLabel then TS:Create(versionLabel, Tween, { TextTransparency = 1 }):Play() end
	else
		TS:Create(IYAI, Tween, { Size = DefaultIYAISize }):Play()
		if authorLabel  then TS:Create(authorLabel,  Tween, { TextTransparency = 0.5 }):Play() end
		if versionLabel then TS:Create(versionLabel, Tween, { TextTransparency = 0.5 }):Play() end
	end
end)

local _uisChanged, _uisEnded

CloseButton.MouseButton1Click:Connect(function()
	if _uisBegan  then _uisBegan:Disconnect()  end
	if _uisChanged then _uisChanged:Disconnect() end
	if _uisEnded   then _uisEnded:Disconnect()   end
	TS:Create(IYAI, Tween, { GroupTransparency = 1 }):Play()
	task.delay(0.5, function()
		if ScreenGui and ScreenGui.Parent then ScreenGui:Destroy() end
	end)
end)

-- ── AI core ───────────────────────────────────────────────────────────────────

local conversationHistory = {}

local function buildUrl()
	if Config.host == "Ollama"  then return Config.ollamaUrl .. "/api/chat" end
	if Config.host == "Mistral" then return "https://api.mistral.ai/v1/chat/completions" end
	return "https://openrouter.ai/api/v1/chat/completions"
end

local function buildHeaders()
	if Config.host == "Ollama" then return { ["Content-Type"] = "application/json" } end
	return {
		["Content-Type"]  = "application/json",
		["Authorization"] = "Bearer " .. Config.apiKey,
	}
end

local RETRY_ATTEMPTS = 3
local RETRY_DELAY    = 4

local function requestWithRetry(url, method, headers, body)
	local res
	for attempt = 1, RETRY_ATTEMPTS do
		res = Http.request(url, method, headers, body)
		if res and res.StatusCode ~= 429 then break end
		if attempt < RETRY_ATTEMPTS then
			Toast.show("Rate limited", "Retrying in " .. RETRY_DELAY .. "s… (" .. attempt .. "/" .. (RETRY_ATTEMPTS - 1) .. ")", "warn", RETRY_DELAY)
			task.wait(RETRY_DELAY)
		end
	end
	return res
end

local function trimHistory(history)
	local keepLast = math.ceil(#history / 2)
	local start = #history - keepLast + 1
	while start <= #history and history[start].role ~= "user" do start += 1 end
	local trimmed = {}
	for i = start, #history do trimmed[#trimmed + 1] = history[i] end
	return trimmed
end

local function isContextError(res)
	if not res then return false end
	if res.StatusCode == 400 or res.StatusCode == 413 then
		local body = res.Body or ""
		return body:find("context") or body:find("token") or body:find("length") or body:find("too long") or body:find("max_tokens")
	end
	return false
end

local function buildMessages(history)
	local msgs = {{ role = "system", content = Prompt.build(true) }}
	for _, m in ipairs(history or conversationHistory) do table.insert(msgs, m) end
	return msgs
end

local function buildBody(history)
	local body = {
		model    = Config.model,
		messages = buildMessages(history),
		stream   = false,
	}
	local defs = Tools.getDefinitions()
	if #defs > 0 then
		local toolDefs = {}
		for _, e in ipairs(defs) do toolDefs[#toolDefs+1] = e.definition end
		body.tools       = toolDefs
		body.tool_choice = "auto"
	end
	local json = HS:JSONEncode(body)
	json = json:gsub('"properties":%[%]', '"properties":{}')
	return json
end

local function parseMessage(responseBody)
	local ok, data = pcall(HS.JSONDecode, HS, responseBody)
	if not ok then return nil, nil, "JSON decode failed: " .. tostring(data) end
	local msg = Config.host == "Ollama"
		and data.message
		or  (data.choices and data.choices[1] and data.choices[1].message)
	if not msg then return nil, nil, "Unexpected response shape: " .. responseBody end
	return msg, data.usage, nil
end

-- ── UI helpers ────────────────────────────────────────────────────────────────

local agentAborted = false

local function setBusy(state)
	isAssistantBusy.Value        = state
	SendButton.Visible           = not state
	SendButton.ImageTransparency = TextBoxInput.Text == "" and 0.7 or 0
	StopButton.Visible           = state == true
end

StopButton.Visible = false
StopButton.MouseButton1Click:Connect(function() agentAborted = true end)

local function plural(n, word, suffix)
	return n .. " " .. word .. (n == 1 and "" or (suffix or "s"))
end

local function formatToolName(name)
	return (name:gsub("_(%a)", function(c) return " " .. c:upper() end):gsub("^%a", string.upper))
end

local function summarizeResult(toolName, result)
	local label = formatToolName(toolName)
	local function fmt(s) return label .. " - " .. s end
	if result:find("^Tool error") or result:find("^Unknown tool") or result:find("^Error") then
		local msg = result:match("^([^\n]+)") or result
		return fmt(#msg > 80 and msg:sub(1, 77) .. "…" or msg)
	end
	if toolName == "write_code"    then return fmt(result) end
	if toolName == "edit_code"     then return fmt(result) end
	if toolName == "replace_lines" then return fmt(result) end
	if toolName == "read_code"     then return fmt(result) end
	if toolName == "get_lines" then
		return fmt(plural(select(2, result:gsub("\n", "\n")) + 1, "line") .. " fetched")
	end
	if toolName == "find_in_code" then
		local m = tonumber(result:match("^(%d+) match"))
		return fmt(m and (plural(m, "match", "es") .. " found") or result)
	end
	if toolName == "iy_status" or toolName == "iy_cmd" then return fmt(result) end
	if toolName == "run" then
		return fmt(plural(select(2, result:gsub("\n", "\n")) + 1, "line") .. " of output")
	end
	return fmt(plural(select(2, result:gsub("\n", "\n")) + 1, "line") .. " of output")
end

local function updateTaskFrame(frame, kind, result, toolName)
	local order = frame.LayoutOrder
	frame:Destroy()
	local new = addTaskFrame(kind)
	new.LayoutOrder = order
	if result then
		local lbl = new:FindFirstChildWhichIsA("TextLabel", true)
		if lbl then
			lbl.RichText = true
			lbl.Text = summarizeResult(toolName or "", result) .. '  <font size="12" color="#A1A5A2"><u>Open</u></font>'
			local capturedResult = result
			lbl.InputBegan:Connect(function(input)
				if input.UserInputType == Enum.UserInputType.MouseButton1 then
					openToolResultModal(capturedResult)
				end
			end)
		end
	end
	return new
end

local CODE_WRITE_TOOLS = { write_code = true, replace_lines = true, edit_code = true }

local function addPostAction(label, callback)
	local frame = addElement("PostActionFrame", nil, false)
	local btn   = frame:FindFirstChild("PostActionButton", true)
	if btn then
		btn.Text = label
		btn.MouseButton1Click:Connect(callback)
	end
	return frame
end

local function addCodeStatus(statusText)
	local frame = addElement("CodeStatusFrame", nil, false)
	local lbl   = frame:FindFirstChild("TextLabel", true)
	local icon  = frame:FindFirstChild("IconColor", true)
	if lbl  then lbl.Text = statusText end
	if icon then icon.BackgroundColor3 = Color3.fromRGB(255, 200, 50) end
	return frame
end

local function updateCodeStatus(frame, diffText, succeeded)
	local lbl  = frame:FindFirstChild("TextLabel", true)
	local icon = frame:FindFirstChild("IconColor", true)
	if lbl  then lbl.Text = diffText end
	if icon then
		icon.BackgroundColor3 = succeeded
			and Color3.fromRGB(78, 201, 78)
			or  Color3.fromRGB(224, 82, 82)
	end
end

-- ── Clear button ──────────────────────────────────────────────────────────────

ClearButton.MouseButton1Click:Connect(function()
	conversationHistory = {}
	StepCount           = 0
	TotalElements.Value = 0
	for _, child in ipairs(ScrollingFrameMainChat:GetChildren()) do
		if child:IsA("GuiObject") and child ~= ElementTemplate and child ~= GreetFrame then child:Destroy() end
	end
	if GreetFrame then GreetFrame.Visible = true end
	ScrollingFrameMainChat.CanvasSize     = UDim2.new(0, 0, 0, 0)
	ScrollingFrameMainChat.CanvasPosition = Vector2.new(0, 0)
end)

-- ── Code agent ────────────────────────────────────────────────────────────────

local CODE_SYSTEM = table.concat({
	"You are a Lua coding agent inside a Roblox plugin.",
	"The user describes what they want built. You write code, run it, analyze the output, and iterate until the goal is reached.",
	"",
	"Workflow:",
	"1. Write or edit the code using write_code / replace_lines / edit_code.",
	"2. Run it with run(code) — always wrap output in print().",
	"3. Read the output. If it errored or produced wrong results, fix the code and run again.",
	"4. Keep iterating until the output is correct or the task is fully done.",
	"Never stop after just writing code if the user wants it executed and verified.",
	"",
	"Workflow for edits on large existing code:",
	"1. Call read_code() to get the total line count.",
	"2. Call find_in_code(query) to locate the relevant lines by keyword.",
	"3. Call get_lines(start, end) to read that section in context.",
	"4. Call replace_lines(start, end, replacement) to make the change.",
	"Never read or rewrite the entire file if you only need to change a small section.",
	"",
	"Use write_code only for new scripts or complete rewrites (editor is empty or user asks for a full rewrite).",
	"Use any game inspection tools (tree, props, source, etc.) to gather context before coding.",
	"After the task is done, briefly explain what you did and what the output was. Plain text only, no markdown.",
	"Do not ask clarifying questions — make a reasonable attempt and explain your assumptions.",
}, "\n")

local codeHistory = {}

local function runCodeAgent(userText)
	StepCount    = 0
	agentAborted = false
	setBusy(true)
	CurrentPage.Value = "Agent"

	local maxSteps = Config.maxSteps
	table.insert(codeHistory, { role = "user", content = userText })
	local statusFrame = addCodeStatus("Agent is writing code...")
	local stepsDone   = 0
	local diffSummary = ""

	while stepsDone < maxSteps do
		if agentAborted then
			updateCodeStatus(statusFrame, "Stopped.", false)
			addElement("AbortText", "Stopped by user.", true)
			break
		end
		stepsDone += 1

		local function buildCodeBody(hist)
			local body = {
				model    = Config.model,
				messages = (function()
					local msgs = {{ role = "system", content = CODE_SYSTEM }}
					for _, m in ipairs(hist) do msgs[#msgs+1] = m end
					return msgs
				end)(),
				tools       = (function()
					local t = {}
					for _, e in ipairs(Tools.getDefinitions()) do t[#t+1] = e.definition end
					return t
				end)(),
				tool_choice = "auto",
				stream      = false,
			}
			local j = HS:JSONEncode(body)
			return j:gsub('"properties":%[%]', '"properties":{}')
		end

		local res = requestWithRetry(buildUrl(), "POST", buildHeaders(), buildCodeBody(codeHistory))
		if isContextError(res) then
			Toast.show("History trimmed", "Context too long — retrying with less history", "warn", 3)
			res = requestWithRetry(buildUrl(), "POST", buildHeaders(), buildCodeBody(trimHistory(codeHistory)))
		end
		if not res or res.StatusCode ~= 200 then
			updateCodeStatus(statusFrame, "Request failed (" .. (res and tostring(res.StatusCode) or "no response") .. ")", false)
			break
		end

		local msg, _, err = parseMessage(res.Body)
		if err then updateCodeStatus(statusFrame, err, false) break end

		local toolCalls = msg.tool_calls
		if not toolCalls or #toolCalls == 0 then
			local text = Prompt.stripMarkdown(msg.content or "")
			updateCodeStatus(statusFrame,
				(diffSummary ~= "" and diffSummary .. "  " or "") .. text,
				true)
			table.insert(codeHistory, { role = "assistant", content = text })
			break
		end

		table.insert(codeHistory, msg)

		local seenCodeCalls = {}
		for _, call in ipairs(toolCalls) do
			local fnName = call["function"] and call["function"].name or ""
			local fnArgs = call["function"] and call["function"].arguments or ""
			local callKey = fnName .. "|" .. fnArgs
			if seenCodeCalls[callKey] then continue end
			seenCodeCalls[callKey] = true
			local statusLbl = statusFrame:FindFirstChild("TextLabel", true)
			if fnName == "write_code" and statusLbl then statusLbl.Text = "Agent is writing code..." end
			if fnName == "edit_code"  and statusLbl then statusLbl.Text = "Agent is editing code..."  end
			local result = Tools.run(fnName, fnArgs)
			if fnName == "edit_code" and result:match("^[%+%-]%d") then
				local added   = tonumber(result:match("^%+(%d+)")) or 0
				local removed = tonumber(result:match("^%-(%d+)")) or 0
				if added   > 0 then diffSummary = diffSummary .. string.format('<font color="#4ec94e">+%d</font> ', added) end
				if removed > 0 then diffSummary = diffSummary .. string.format('<font color="#e05252">-%d</font> ', removed) end
			end
			table.insert(codeHistory, {
				role         = "tool",
				tool_call_id = call.id or fnName,
				name         = fnName,
				content      = result,
			})
		end
	end

	if stepsDone >= maxSteps then
		updateCodeStatus(statusFrame, "Reached max steps (" .. maxSteps .. ").", false)
	end

	setBusy(false)
	TextBoxInput:CaptureFocus()
end

-- ── Agent loop ────────────────────────────────────────────────────────────────

local function runAgentLoop(userText)
	StepCount    = 0
	agentAborted = false
	setBusy(true)

	local MAX_STEPS = Config.maxSteps
	table.insert(conversationHistory, { role = "user", content = userText })
	local stepsDone  = 0
	local agentDone  = false
	local seenGlobal = {}  -- cross-step duplicate detection

	local generatingFrame = nil
	local function genLabel()
		if not generatingFrame then return nil end
		if generatingFrame:IsA("TextLabel") and generatingFrame.Name ~= "TokenCount" then
			return generatingFrame
		end
		for _, d in ipairs(generatingFrame:GetDescendants()) do
			if d:IsA("TextLabel") and d.Name ~= "TokenCount" then return d end
		end
	end
	local function showGenerating()
		if not generatingFrame then
			generatingFrame = addElement("AssistantResponse", "", false)
			local tc = generatingFrame:FindFirstChild("TokenCount", true)
			if tc then tc.Visible = false end
		end
		local lbl = genLabel()
		if lbl then lbl.Text = "●" end
		TotalElements.Value += 1
		generatingFrame.LayoutOrder = TotalElements.Value
		scrollBottom()
	end

	while stepsDone < MAX_STEPS do
		if agentAborted then
			if generatingFrame then generatingFrame:Destroy(); generatingFrame = nil end
			addElement("AbortText", "Stopped by user.", true)
			break
		end
		stepsDone += 1

		showGenerating()

		local res = requestWithRetry(buildUrl(), "POST", buildHeaders(), buildBody())
		if isContextError(res) then
			Toast.show("History trimmed", "Context too long — retrying with less history", "warn", 3)
			res = requestWithRetry(buildUrl(), "POST", buildHeaders(), buildBody(trimHistory(conversationHistory)))
		end
		if not res or res.StatusCode ~= 200 then
			if generatingFrame then generatingFrame:Destroy(); generatingFrame = nil end
			addResponse("Request failed (status " .. (res and tostring(res.StatusCode) or "no response") .. ")")
			break
		end

		local msg, usage, err = parseMessage(res.Body)
		if err then
			if generatingFrame then generatingFrame:Destroy(); generatingFrame = nil end
			addResponse(err)
			break
		end

		if msg.thinking and msg.thinking ~= "" then
			addThinking(Prompt.stripMarkdown(msg.thinking))
		end

		local toolCalls = msg.tool_calls
		if not toolCalls or #toolCalls == 0 then
			local rawContent = msg.content or ""
			local lbl = genLabel()
			if lbl and rawContent ~= "" then
				typewriteInto(lbl, Prompt.stripMarkdown(rawContent) .. (usage and "\n" or ""))
				if usage then
					local tokenLabel = generatingFrame:FindFirstChild("TokenCount", true)
					if tokenLabel then
						tokenLabel.Text    = Config.model .. "  ↑ " .. (usage.prompt_tokens or 0) .. "  ↓ " .. (usage.completion_tokens or 0)
						tokenLabel.Visible = true
					end
				end
			else
				if generatingFrame then generatingFrame:Destroy(); generatingFrame = nil end
				addResponse(rawContent, usage)
			end
			generatingFrame = nil
			table.insert(conversationHistory, { role = "assistant", content = Prompt.stripMarkdown(rawContent) })
			break
		end

		-- Show any pre-tool commentary the model included
		if msg.content and msg.content ~= "" then
			if generatingFrame then generatingFrame:Destroy(); generatingFrame = nil end
			addResponse(msg.content)
		end

		-- Keep generating frame below the step about to be added
		if generatingFrame then
			TotalElements.Value += 1
			generatingFrame.LayoutOrder = TotalElements.Value + 100
		end

		-- addStep()
		table.insert(conversationHistory, msg)

		agentDone = false
		local seenCalls = {}
		for _, call in ipairs(toolCalls) do
			local fnName = call["function"] and call["function"].name or ""
			local fnArgs = call["function"] and call["function"].arguments or ""
			local callKey = fnName .. "|" .. fnArgs
			if seenCalls[callKey] then continue end
			seenCalls[callKey] = true
			if seenGlobal[callKey] then
				table.insert(conversationHistory, {
					role         = "tool",
					tool_call_id = call.id or fnName,
					name         = fnName,
					content      = "Already executed. Call done() with your final response.",
				})
				continue
			end
			seenGlobal[callKey] = true

			if fnName == "done" then
				local ok, args = pcall(HS.JSONDecode, HS, fnArgs)
				local message = (ok and args and args.message) or ""
				if message ~= "" then
					local lbl = genLabel()
					if lbl then
						TotalElements.Value += 1
						generatingFrame.LayoutOrder = TotalElements.Value
						typewriteInto(lbl, Prompt.stripMarkdown(message) .. (usage and "\n" or ""))
						if usage then
							local tokenLabel = generatingFrame:FindFirstChild("TokenCount", true)
							if tokenLabel then
								tokenLabel.Text    = Config.model .. "  ↑ " .. (usage.prompt_tokens or 0) .. "  ↓ " .. (usage.completion_tokens or 0)
								tokenLabel.Visible = true
							end
						end
						generatingFrame = nil
					else
						addResponse(message, usage)
					end
					table.insert(conversationHistory, { role = "assistant", content = Prompt.stripMarkdown(message) })
				end
				if generatingFrame then generatingFrame:Destroy(); generatingFrame = nil end
				agentDone = true
				break
			end

			local taskFrame = addTaskFrame("busy")
			local lbl = taskFrame:FindFirstChildWhichIsA("TextLabel", true)
			if lbl then lbl.Text = fnName end
			local result = Tools.run(fnName, fnArgs)
			local failed = result:find("^Tool error") or result:find("^Unknown tool")
				or result:find("^Error") or result:find("^Compile error")
				or result:find("^Runtime error")
			updateTaskFrame(taskFrame, failed and "failed" or "succeeded", result, fnName)
			if not failed and CODE_WRITE_TOOLS[fnName] then
				addPostAction("View Code →", function() CurrentPage.Value = "Code" end)
			end
			table.insert(conversationHistory, {
				role         = "tool",
				tool_call_id = call.id or fnName,
				name         = fnName,
				content      = result,
			})
		end
		if agentDone then break end
	end

	if generatingFrame then generatingFrame:Destroy(); generatingFrame = nil end
	if stepsDone >= MAX_STEPS and not agentDone then
		addResponse("Reached max steps (" .. Config.maxSteps .. ").")
	end

	setBusy(false)
	TextBoxInput:CaptureFocus()
end

-- ── onSend ────────────────────────────────────────────────────────────────────

local function onSend()
	local text = TextBoxInput.Text
	if text == "" or isAssistantBusy.Value then return end
	TextBoxInput.Text = ""
	addChat(text)
	task.spawn(function()
		local ok, err
		if CurrentPage.Value == "Code" then
			ok, err = pcall(runCodeAgent, text)
		else
			ok, err = pcall(runAgentLoop, text)
		end
		if not ok then
			setBusy(false)
			Toast.show("Error", tostring(err), "err", 8)
			warn("[IYAI] Agent error:", err)
		end
	end)
end

SendButton.MouseButton1Click:Connect(onSend)
TextBoxInput.FocusLost:Connect(function(enterPressed)
	if enterPressed then onSend() end
end)

-- ── Drag ──────────────────────────────────────────────────────────────────────

local dragging  = false
local dragStart = nil
local startPos  = nil

TopBar.InputBegan:Connect(function(input)
	if input.UserInputType == Enum.UserInputType.MouseButton1 then
		dragging  = true
		dragStart = input.Position
		startPos  = IYAI.Position
	end
end)

local _uisChanged = UIS.InputChanged:Connect(function(input)
	if dragging and input.UserInputType == Enum.UserInputType.MouseMovement then
		local delta   = input.Position - dragStart
		IYAI.Position = UDim2.new(
			startPos.X.Scale, startPos.X.Offset + delta.X,
			startPos.Y.Scale, startPos.Y.Offset + delta.Y
		)
	end
end)

local _uisEnded = UIS.InputEnded:Connect(function(input)
	if input.UserInputType == Enum.UserInputType.MouseButton1 then dragging = false end
end)
