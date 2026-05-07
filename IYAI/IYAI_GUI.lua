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
for _, key in ipairs({"2", "d"}) do
	pcall(function() if G2L[key] then G2L[key]:Destroy() end end)
end

-- Hide before any frame renders — fade-in tween reveals it later
if G2L["e"] then G2L["e"].GroupTransparency = 1 end

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

-- Named aliases (UI table) --------------------------------------------------

local UI = {
	ScreenGui              = G2L["1"],
	IYAI                   = G2L["e"],
	ContentPages           = G2L["11"],
	AgentPage              = G2L["12"],
	ScrollingFrameMainChat = G2L["13"],
	ListLayout             = G2L["14"],
	ElementTemplate        = G2L["16"],
	TotalElements          = G2L["49"],
	isAssistantBusy        = G2L["4a"],
	InputFrame             = G2L["50"],
	TextBoxInput           = G2L["51"],
	SendButton             = G2L["55"],
	StopButton             = G2L["57"],
	ActionsFrame           = G2L["59"],
	ClearButton            = G2L["5b"],
	SettingsPage           = G2L["5c"],
	Settings_SF            = G2L["5d"],
	APIKeyFrame            = G2L["5e"],
	APIKeyLabel            = G2L["61"],
	APIKeyBox              = G2L["62"],
	HostSelectFrame        = G2L["65"],
	HostTitle              = G2L["66"],
	HostFrame              = G2L["68"],
	HostButtons            = G2L["68"]:GetChildren(),
	ModelSelectFrame       = G2L["86"],
	ModelFrame             = G2L["89"],
	ModelBox               = G2L["8a"],
	DropdownButton         = G2L["8d"],
	DropdownList           = Instance.new("Frame"),
	TestFrame              = G2L["8f"],
	ConnectionButton       = G2L["92"],
	CredentialButton       = G2L["99"],
	ConnectionIconColor    = G2L["95"],
	CredentialIconColor    = G2L["9c"],
	UnsavedChanges         = G2L["a8"],
	TextLabel              = G2L["aa"],
	SaveButton             = G2L["ac"],
	RevertButton           = G2L["ae"],
	CodePage               = G2L["b1"],
	CodeSF                 = G2L["b8"],
	LineLabel              = G2L["bd"],
	CodeBox                = G2L["ba"],
	IntelLabel             = G2L["bc"],
	CodeActionsFrame       = G2L["b2"],
	CodeClearButton        = G2L["b4"],
	CodeCopyButton         = G2L["b5"],
	RunButton              = G2L["b6"],
	LeftSidebar            = G2L["e8"],
	TopBar                 = G2L["ff"],
	CloseButton            = G2L["101"],
	MinimizeButton         = G2L["104"],
	Highlight              = G2L["105"],
	IntroFrame             = G2L["11c"],
	IYAIToastContainer     = G2L["11f"],
	ToastTemplate          = G2L["120"],
	CurrentPage            = G2L["12c"],
	ModalFrame             = G2L["106"],
	ModalInner             = G2L["108"],
	ModalCloseButton       = G2L["10a"],
	SearchModelModal       = G2L["10b"],
	ModalSearchBox         = G2L["10d"],
	ModalSF                = G2L["111"],
	ExampleModelBtn        = G2L["112"],
	ModalSearchButton      = G2L["110"],
	ModalOpenButton        = G2L["8d"],
	MaxStepFrame           = G2L["a0"],
	MaxStepBox             = G2L["a4"],
	ToolsPage              = G2L["bf"],
	ToolsSF                = G2L["c0"],
	ToolsElementTemplate   = G2L["c3"],
	ToolsGroupFrame        = G2L["c4"],
	ToolsGroupInner        = G2L["c6"],
	ToolsGroupTitle        = G2L["c7"],
	ToolsToolFrame         = G2L["cb"],
	ToolsToolNameDesc      = G2L["ce"],
	ToolsTotalElements     = G2L["d0"],
	ToolResultViewModal    = G2L["115"],
	ToolResultSF           = G2L["117"],
	ToolResultTextBox      = G2L["118"],
	ModalTitleLabel        = G2L["11a"],
	StartupPageSF          = G2L["d5"],
	StartupPageLayout      = G2L["d6"],
	StartupElemTemplate    = G2L["d8"],
	StartupGroupFrame      = G2L["d9"],
	StartupGroupInner      = G2L["db"],
	StartupGroupTitle      = G2L["dc"],
	StartupToolFrame       = G2L["e0"],
	StartupToolNameDesc    = G2L["e3"],
	StartupTotalElems      = G2L["e5"],
}
-- ── Main logic ────────────────────────────────────────────────────────────────

local VERSION           = G2L["12d"] and G2L["12d"].Value or ""
local Tween             = TweenInfo.new(0.5, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut)
local COLOR_OK          = Color3.fromRGB(109, 217, 161)
local COLOR_ERR         = Color3.fromRGB(171, 108, 108)
local COLOR_IDLE        = Color3.fromRGB(41,  41,  41)
local DefaultIYAISize   = UDim2.new(0, 600, 0, 400)
local MinimizedIYAISize = UDim2.new(0, 100, 0, 25)
local Minimized         = false
local modelList         = {}
local _loading          = false
local ModelBox_ref      = UI.ModelBox  -- forward ref used in fetchOpenRouterModels

UI.ToastTemplate.Visible = false
Toast.init(UI.ToastTemplate, UI.IYAIToastContainer)

-- ── Startup page ──────────────────────────────────────────────────────────────

local _startupGroup = nil
local _startupInner = nil

local function addStartupEvent(status, title, desc)
	local colors = { ok = COLOR_OK, warn = Color3.fromRGB(171, 171, 0), err = COLOR_ERR }
	if not _startupGroup then
		_startupGroup = UI.StartupGroupFrame:Clone()
		_startupInner = _startupGroup:FindFirstChild("Frame")
			or _startupGroup:FindFirstChildWhichIsA("Frame")
		local gt = _startupInner and _startupInner:FindFirstChild("GroupTitle")
		if gt then gt.Text = "Startup Log" end
		local tmpl = _startupInner and _startupInner:FindFirstChild("ToolFrame")
		if tmpl then tmpl:Destroy() end
		UI.StartupTotalElems.Value += 1
		_startupGroup.LayoutOrder = UI.StartupTotalElems.Value
		_startupGroup.Visible     = true
		_startupGroup.Parent      = UI.StartupPageSF
	end
	local tf = UI.StartupToolFrame:Clone()
	local ic = tf:FindFirstChild("IconColor")
	local nd = tf:FindFirstChild("ToolNameDesc")
	if ic then ic.BackgroundColor3 = colors[status] or colors.ok end
	if nd then
		nd.RichText = true
		nd.Text = '<font weight="bold">'..title..'</font>  <font size="12" transparency="0.4">'..desc..'</font>'
	end
	tf.Visible = true
	tf.Parent  = _startupInner
	task.defer(function()
		local lay = UI.StartupPageSF:FindFirstChildWhichIsA("UIListLayout")
		if lay then UI.StartupPageSF.CanvasSize = UDim2.new(0,0,0, lay.AbsoluteContentSize.Y) end
	end)
end

if propFns.loaded then
	Toast.show("API Dump", "Roblox API dump loaded", "ok", 3)
	addStartupEvent("ok", "API Dump", "Roblox API dump loaded — props and methods available")
else
	Toast.show("API Dump", "Failed to load API dump — props metadata unavailable", "warn", 5)
	addStartupEvent("warn", "API Dump", "Failed to load — props metadata unavailable")
end

-- Version display + update detection
local versionLabel = UI.TopBar:FindFirstChild("VersionLabel")
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
	if UI.ModelBox.Text == "" and #modelList > 0 then
		_loading = true; UI.ModelBox.Text = modelList[1].name; _loading = false
	end
end

local function fetchOpenRouterModels()  fetchModelsFromOpenAIEndpoint("https://openrouter.ai/api/v1/models",                                    "")             end
local function fetchMistralModels()     fetchModelsFromOpenAIEndpoint("https://api.mistral.ai/v1/models",                                    Config.apiKey)  end
local function fetchGroqModels()        fetchModelsFromOpenAIEndpoint("https://api.groq.com/openai/v1/models",                               Config.apiKey)  end
local function fetchHuggingFaceModels() fetchModelsFromOpenAIEndpoint("https://router.huggingface.co/v1/models",                             Config.apiKey)  end
local function fetchGoogleModels()      fetchModelsFromOpenAIEndpoint("https://generativelanguage.googleapis.com/v1beta/openai/models",       Config.apiKey)  end

local function autoTestOnStart()
	task.spawn(function()
		if Config.host == "Ollama" then
			local res = Http.request(Config.ollamaUrl .. "/api/tags", "GET", {})
			local ok, data = pcall(HS.JSONDecode, HS, res and res.Body or "")
			if ok and data and data.models then modelList = data.models end
		elseif Config.host == "Mistral" then
			fetchMistralModels()
		elseif Config.host == "Groq" then
			fetchGroqModels()
		elseif Config.host == "Pollinations" then
			fetchModelsFromOpenAIEndpoint("https://gen.pollinations.ai/v1/models", Config.apiKey)
		elseif Config.host == "HuggingFace" then
			fetchHuggingFaceModels()
		elseif Config.host == "Google AI Studio" then
			fetchGoogleModels()
		else
			fetchOpenRouterModels()
		end
	end)
	local key = Config.apiKey
	if key == "" and Config.host ~= "Ollama" then
		Toast.show("No API Key", "Set your API key in Settings", "err", 5)
		task.delay(1, function() UI.CurrentPage.Value = "Settings" end)
		return
	end
	if Config.host == "Ollama" then
		local res = Http.request(Config.ollamaUrl .. "/api/tags", "GET", {})
		if res and res.StatusCode == 200 then
			Toast.show("Connected", "Ollama is reachable", "ok", 3)
		else
			Toast.show("Offline", "Cannot reach Ollama — check Settings", "err", 5)
			task.delay(1, function() UI.CurrentPage.Value = "Settings" end)
		end
	elseif Config.host == "Pollinations" then
		local res = Http.request("https://gen.pollinations.ai/v1/models", "GET", {
			["Authorization"] = "Bearer " .. key,
		})
		if res and res.StatusCode == 200 then
			Toast.show("Connected", "Pollinations key is valid", "ok", 3)
		elseif res and res.StatusCode == 401 then
			Toast.show("Invalid Key", "Pollinations key rejected — update in Settings", "err", 5)
			task.delay(1, function() UI.CurrentPage.Value = "Settings" end)
		else
			Toast.show("Connection Failed", "Could not reach Pollinations", "err", 5)
			task.delay(1, function() UI.CurrentPage.Value = "Settings" end)
		end
	elseif Config.host == "HuggingFace" then
		local res = Http.request("https://router.huggingface.co/v1/models", "GET", {
			["Authorization"] = "Bearer " .. key,
		})
		if res and res.StatusCode == 200 then
			Toast.show("Connected", "HuggingFace token is valid", "ok", 3)
		elseif res and res.StatusCode == 401 then
			Toast.show("Invalid Key", "HuggingFace token rejected — update in Settings", "err", 5)
			task.delay(1, function() UI.CurrentPage.Value = "Settings" end)
		else
			Toast.show("Connection Failed", "Could not reach HuggingFace", "err", 5)
			task.delay(1, function() UI.CurrentPage.Value = "Settings" end)
		end
	elseif Config.host == "Groq" then
		local res = Http.request("https://api.groq.com/openai/v1/models", "GET", {
			["Authorization"] = "Bearer " .. key,
		})
		if res and res.StatusCode == 200 then
			Toast.show("Connected", "Groq key is valid", "ok", 3)
		elseif res and res.StatusCode == 401 then
			Toast.show("Invalid Key", "Groq key rejected — update in Settings", "err", 5)
			task.delay(1, function() UI.CurrentPage.Value = "Settings" end)
		else
			Toast.show("Connection Failed", "Could not reach Groq", "err", 5)
			task.delay(1, function() UI.CurrentPage.Value = "Settings" end)
		end
	elseif Config.host == "Google AI Studio" then
		local res = Http.request("https://generativelanguage.googleapis.com/v1beta/openai/models", "GET", {
			["Authorization"] = "Bearer " .. key,
		})
		if res and res.StatusCode == 200 then
			Toast.show("Connected", "Google AI Studio key is valid", "ok", 3)
		elseif res and res.StatusCode == 401 then
			Toast.show("Invalid Key", "Google key rejected — update in Settings", "err", 5)
			task.delay(1, function() UI.CurrentPage.Value = "Settings" end)
		else
			Toast.show("Connection Failed", "Could not reach Google AI Studio", "err", 5)
			task.delay(1, function() UI.CurrentPage.Value = "Settings" end)
		end
	elseif Config.host == "Mistral" then
		local res = Http.request("https://api.mistral.ai/v1/models", "GET", {
			["Authorization"] = "Bearer " .. key,
		})
		if res and res.StatusCode == 200 then
			Toast.show("Connected", "Mistral key is valid", "ok", 3)
		elseif res and res.StatusCode == 401 then
			Toast.show("Invalid Key", "Mistral key rejected — update in Settings", "err", 5)
			task.delay(1, function() UI.CurrentPage.Value = "Settings" end)
		else
			Toast.show("Connection Failed", "Could not reach Mistral", "err", 5)
			task.delay(1, function() UI.CurrentPage.Value = "Settings" end)
		end
	else
		local res = Http.request("https://openrouter.ai/api/v1/auth/key", "GET", {
			["Authorization"] = "Bearer " .. key,
		})
		if res and res.StatusCode == 200 then
			Toast.show("Connected", "OpenRouter key is valid", "ok", 3)
		elseif res and res.StatusCode == 401 then
			Toast.show("Invalid Key", "API key rejected — update in Settings", "err", 5)
			task.delay(1, function() UI.CurrentPage.Value = "Settings" end)
		else
			Toast.show("Connection Failed", "Could not reach OpenRouter", "err", 5)
			task.delay(1, function() UI.CurrentPage.Value = "Settings" end)
		end
	end
end

UI.IYAI.GroupTransparency = 1
local fadeTween = TS:Create(UI.IYAI, Tween, { GroupTransparency = 0 })
fadeTween.Completed:Connect(function() task.spawn(autoTestOnStart) end)
fadeTween:Play()

task.spawn(function()
	UI.IntroFrame.Visible           = true
	UI.IntroFrame.GroupTransparency = 0
	task.wait(2)
	TS:Create(UI.IntroFrame, TweenInfo.new(1), { GroupTransparency = 1 }):Play()
	task.wait(1)
	UI.IntroFrame.Visible = false
end)

-- ── Page routing ──────────────────────────────────────────────────────────────

local function updatePage(page)
	for _, v in pairs(UI.ContentPages:GetChildren()) do
		v.Visible = (v.Name == page .. "Page")
	end
end

UI.CurrentPage.Changed:Connect(function(page) updatePage(page) end)

local SIDEBAR_OPEN   = UDim2.new(0, 150, 1, 0)
local SIDEBAR_CLOSED = UDim2.new(0, 45,  1, 0)
local sidebarTween   = TweenInfo.new(0.2, Enum.EasingStyle.Quint, Enum.EasingDirection.Out)

UI.LeftSidebar.MouseEnter:Connect(function()
	TS:Create(UI.LeftSidebar, sidebarTween, { Size = SIDEBAR_OPEN }):Play()
end)
UI.LeftSidebar.MouseLeave:Connect(function()
	TS:Create(UI.LeftSidebar, sidebarTween, { Size = SIDEBAR_CLOSED }):Play()
end)

UI.LeftSidebar.Size = SIDEBAR_CLOSED

for _, v in pairs(UI.LeftSidebar:GetChildren()) do
	if not v:IsA("Frame") then continue end
	local Hitbox = v:FindFirstChild("Hitbox")
	if not Hitbox then continue end
	local label   = v:FindFirstChild("TextLabel")
	local tabName = label and label.Text or v.Name
	Hitbox.MouseButton1Click:Connect(function() UI.CurrentPage.Value = tabName end)
end

UI.Highlight.Position = UDim2.new(0, 0, 0, 0)
UI.CurrentPage.Changed:Connect(function(page)
	local target = UI.LeftSidebar:FindFirstChild(page .. "ButtonFrame")
	if not target then return end
	TS:Create(UI.Highlight, TweenInfo.new(0.1), {
		Position = UDim2.new(0, 0, 0,
			target.AbsolutePosition.Y - UI.LeftSidebar.AbsolutePosition.Y)
	}):Play()
end)

UI.CurrentPage.Value = "Agent"

-- ── Greet frame ───────────────────────────────────────────────────────────────

local GreetFrame      = UI.ScrollingFrameMainChat:FindFirstChild("GreetFrame")
local SetApiKeyButton = GreetFrame and GreetFrame:FindFirstChild("SetApiKeyButton")

if SetApiKeyButton then
	SetApiKeyButton.MouseButton1Click:Connect(function()
		UI.CurrentPage.Value = "Settings"
	end)
end

-- ── Agent page ────────────────────────────────────────────────────────────────

UI.ListLayout:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(function()
	UI.ScrollingFrameMainChat.CanvasSize = UDim2.new(0, 0, 0, UI.ListLayout.AbsoluteContentSize.Y)
end)

local function scrollBottom()
	task.defer(function()
		local h = UI.ListLayout.AbsoluteContentSize.Y
		UI.ScrollingFrameMainChat.CanvasSize     = UDim2.new(0, 0, 0, h)
		UI.ScrollingFrameMainChat.CanvasPosition = Vector2.new(0, h)
	end)
end

local function addElement(templateName, text, isLabel)
	local clone = UI.ElementTemplate:FindFirstChild(templateName):Clone()
	if isLabel then clone.Text = text end
	UI.TotalElements.Value += 1
	clone.LayoutOrder = UI.TotalElements.Value
	clone.Visible     = true
	clone.Parent      = UI.ScrollingFrameMainChat
	scrollBottom()
	return clone
end

local function addChat(text)
	if text == "" or UI.isAssistantBusy.Value then return end
	if GreetFrame then GreetFrame.Visible = false end
	local clone = UI.ElementTemplate:FindFirstChild("UserMessageFrame"):Clone()
	clone.Frame.UserMessage.Text = text
	UI.TotalElements.Value += 1
	clone.LayoutOrder = UI.TotalElements.Value
	clone.Visible     = true
	clone.Parent      = UI.ScrollingFrameMainChat
	scrollBottom()
end

local function addTaskFrame(kind)
	local name = kind == "busy"      and "AgentTaskFrame (Tool busy)"
		or kind == "succeeded" and "AgentTaskFrame (Tool succeeded)"
		or kind == "retrying"  and "AgentTaskFrame (Retrying)"
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
				local frame = UI.ElementTemplate:FindFirstChild("CodeblockFrame"):Clone()
				local codeBox = frame:FindFirstChild("CodeBox", true)
				if codeBox then codeBox.Text = seg.content end
				local copyBtn = frame:FindFirstChild("CopyButton", true)
				if copyBtn then
					local capturedCode = seg.content
					copyBtn.MouseButton1Click:Connect(function()
						pcall(setclipboard, capturedCode)
					end)
				end
				UI.TotalElements.Value += 1
				frame.LayoutOrder = UI.TotalElements.Value
				frame.Visible = true
				frame.Parent = UI.ScrollingFrameMainChat
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

UI.TextBoxInput:GetPropertyChangedSignal("Text"):Connect(function()
	UI.SendButton.ImageTransparency = UI.TextBoxInput.Text == "" and 0.7 or 0
end)

-- ── Code page ─────────────────────────────────────────────────────────────────

local function updateLineNumbers()
	local lines = select(2, UI.CodeBox.Text:gsub("\n", "\n")) + 1
	local nums = table.create(lines)
	for i = 1, lines do nums[i] = tostring(i) end
	UI.LineLabel.Text = table.concat(nums, "\n")
end

-- ── Syntax highlighter ────────────────────────────────────────────────────────

local _KW = {
	["and"]=1,["or"]=1,["not"]=1,["if"]=1,["then"]=1,["else"]=1,["elseif"]=1,
	["end"]=1,["do"]=1,["while"]=1,["for"]=1,["in"]=1,["repeat"]=1,["until"]=1,
	["break"]=1,["continue"]=1,["return"]=1,["function"]=1,["local"]=1,
	["self"]=1,["export"]=1,["type"]=1,["typeof"]=1,
}
local _BOOL = {["true"]=1,["false"]=1,["nil"]=1}
local _GL = {
	["game"]=1,["workspace"]=1,["script"]=1,["shared"]=1,["_G"]=1,["_VERSION"]=1,
	["print"]=1,["warn"]=1,["error"]=1,["assert"]=1,["require"]=1,["tick"]=1,
	["wait"]=1,["delay"]=1,["spawn"]=1,["pcall"]=1,["xpcall"]=1,["tonumber"]=1,
	["tostring"]=1,["unpack"]=1,["next"]=1,["pairs"]=1,["ipairs"]=1,["select"]=1,
	["getmetatable"]=1,["setmetatable"]=1,["rawget"]=1,["rawset"]=1,["rawlen"]=1,
	["rawequal"]=1,["load"]=1,["loadstring"]=1,["collectgarbage"]=1,
}
local _LIB = {
	["math"]=1,["string"]=1,["table"]=1,["task"]=1,["os"]=1,["debug"]=1,
	["coroutine"]=1,["utf8"]=1,["bit32"]=1,["buffer"]=1,
}
local _CT = {
	["Vector3"]=1,["Vector2"]=1,["CFrame"]=1,["Color3"]=1,["UDim"]=1,["UDim2"]=1,
	["Instance"]=1,["Ray"]=1,["Rect"]=1,["Region3"]=1,["Enum"]=1,["Random"]=1,
	["BrickColor"]=1,["TweenInfo"]=1,["NumberRange"]=1,["NumberSequence"]=1,
	["ColorSequence"]=1,["PhysicalProperties"]=1,
}
local _CKW="#ab6c6c" local _CGL="#8FB4FF" local _CLIB="#8FB4FF"
local _CCT="#8FB4FF" local _CSTR="#8EE9B6" local _CCOM="#6a9955"
local _CNUM="#F2BA2A"

local function _esc(s)
	return (s:gsub("&","&amp;"):gsub("<","&lt;"):gsub(">","&gt;"))
end
local function _col(c,s) return '<font color="'..c..'">'..s..'</font>' end

local function syntaxHighlight(code)
	local out, i, n = {}, 1, #code
	while i <= n do
		local ch = code:sub(i,i)
		if code:sub(i,i+1) == "--" then
			-- long comment?
			local lc = code:match("^%-%-%[=*%[", i)
			if lc then
				local lvl = #lc - 4
				local close = "]"..string.rep("=",lvl).."]"
				local j = code:find(close, i+#lc, true)
				local e2 = j and (j+#close-1) or n
				table.insert(out, _col(_CCOM, _esc(code:sub(i,e2)))); i = e2+1
			else
				local j = code:find("\n", i, true)
				local e2 = j and (j-1) or n
				table.insert(out, _col(_CCOM, _esc(code:sub(i,e2)))); i = e2+1
			end
		elseif ch == "[" then
			local ls = code:match("^%[=*%[", i)
			if ls then
				local lvl = #ls - 2
				local close = "]"..string.rep("=",lvl).."]"
				local j = code:find(close, i+#ls, true)
				local e2 = j and (j+#close-1) or n
				table.insert(out, _col(_CSTR, _esc(code:sub(i,e2)))); i = e2+1
			else table.insert(out, _esc(ch)); i = i+1 end
		elseif ch == '"' or ch == "'" then
			local j = i+1
			while j <= n do
				local c2 = code:sub(j,j)
				if c2 == "\\" then j = j+2
				elseif c2 == ch or c2 == "\n" then j = j+1; break
				else j = j+1 end
			end
			table.insert(out, _col(_CSTR, _esc(code:sub(i,j-1)))); i = j
		elseif ch:match("%d") or (ch=="." and i<n and code:sub(i+1,i+1):match("%d")) then
			local num = code:match("^0[xX][%da-fA-F_]+",i)
				or code:match("^%d[%d_]*%.?[%d_]*[eE]?[%+%-]?[%d_]*",i)
				or code:match("^%.[%d_]+[eE]?[%+%-]?[%d_]*",i)
				or ch
			table.insert(out, _col(_CNUM, _esc(num))); i = i+#num
		elseif ch:match("[%a_]") then
			local word = code:match("^[%w_]+", i)
			if     _KW[word]   then table.insert(out, _col(_CKW,  _esc(word)))
			elseif _BOOL[word] then table.insert(out, _col(_CNUM, _esc(word)))
			elseif _GL[word]   then table.insert(out, _col(_CGL,  _esc(word)))
			elseif _LIB[word]  then table.insert(out, _col(_CLIB, _esc(word)))
			elseif _CT[word]   then table.insert(out, _col(_CCT,  _esc(word)))
			else                     table.insert(out, _esc(word)) end
			i = i + #word
		else table.insert(out, _esc(ch)); i = i+1 end
	end
	return table.concat(out)
end

local function updateHighlight()
	local code = UI.CodeBox.Text
	if UI.IntelLabel then
		if code == "" then UI.IntelLabel.Text = ""; return end
		local ok, result = pcall(syntaxHighlight, code)
		if ok then UI.IntelLabel.Text = result end
	end
end

updateLineNumbers()
updateHighlight()
UI.CodeBox:GetPropertyChangedSignal("Text"):Connect(function()
	updateLineNumbers()
	updateHighlight()
	if not UI.CodeBox:IsFocused() then
		UI.CodeSF.CanvasPosition = Vector2.new(0, UI.CodeSF.AbsoluteCanvasSize.Y)
	end
end)

-- ── Custom caret (CodeBox has TextTransparency=1 so native caret is invisible) ──

local _TXS         = game:GetService("TextService")
local _caretTI     = TweenInfo.new(0.07, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)
local _caretTween  = nil

local CaretFrame = Instance.new("Frame")
CaretFrame.Name              = "CustomCaret"
CaretFrame.Size              = UDim2.new(0, 2, 0, 16)
CaretFrame.BackgroundColor3  = Color3.fromRGB(204, 204, 204)
CaretFrame.BorderSizePixel   = 0
CaretFrame.ZIndex            = 20
CaretFrame.Visible           = false
CaretFrame.Parent            = UI.CodeBox
do local c = Instance.new("UICorner", CaretFrame); c.CornerRadius = UDim.new(1, 0) end

local function updateCaret()
	local cursor = UI.CodeBox.CursorPosition
	if cursor < 1 then return end
	-- defer so Text and CursorPosition are both committed (fixes newline lag)
	local text   = UI.CodeBox.Text
	local before = text:sub(1, cursor - 1)
	local lines  = before:split("\n")
	local lineIdx  = #lines - 1  -- 0-based row
	local lineText = lines[#lines]
	local font     = UI.CodeBox.Font
	local fontSize = UI.CodeBox.TextSize
	local inf      = Vector2.new(9999, 9999)
	local xOff     = _TXS:GetTextSize(lineText, fontSize, font, inf).X
	local lineH    = _TXS:GetTextSize("Yq",     fontSize, font, inf).Y
	local pad      = UI.CodeBox:FindFirstChildWhichIsA("UIPadding")
	local padL     = pad and pad.PaddingLeft.Offset or 4
	local padT     = pad and pad.PaddingTop.Offset  or 4
	local target   = UDim2.new(0, padL + xOff - 6, 0, padT + lineIdx * lineH + 2)
	CaretFrame.Size = UDim2.new(0, 1, 0, lineH)
	if _caretTween then _caretTween:Cancel() end
	_caretTween = TS:Create(CaretFrame, _caretTI, { Position = target })
	_caretTween:Play()
end

local _caretTask = nil
local function startBlink()
	if _caretTask then task.cancel(_caretTask) end
	_caretTask = task.spawn(function()
		while UI.CodeBox:IsFocused() do
			CaretFrame.BackgroundTransparency = 0
			task.wait(0.53)
			CaretFrame.BackgroundTransparency = 1
			task.wait(0.53)
		end
		CaretFrame.Visible = false
	end)
end

UI.CodeBox.Focused:Connect(function()
	CaretFrame.Visible = true
	task.defer(updateCaret)
	startBlink()
end)
UI.CodeBox.FocusLost:Connect(function()
	if _caretTask then task.cancel(_caretTask); _caretTask = nil end
	CaretFrame.Visible = false
end)
UI.CodeBox:GetPropertyChangedSignal("CursorPosition"):Connect(function()
	task.defer(updateCaret)
	task.defer(updateSelection)
	if UI.CodeBox:IsFocused() then startBlink() end
end)
UI.CodeBox:GetPropertyChangedSignal("Text"):Connect(function()
	if UI.CodeBox:IsFocused() then task.defer(updateCaret) end
	task.defer(updateSelection)
end)

-- ── Selection highlight ───────────────────────────────────────────────────────

if UI.IntelLabel then UI.IntelLabel.ZIndex = 2 end  -- keep above selection frames

local SEL_COLOR = Color3.fromRGB(38, 79, 120)
local _selFrames = {}

local function clearSelFrames()
	for _, f in ipairs(_selFrames) do f:Destroy() end
	_selFrames = {}
end

function updateSelection()
	clearSelFrames()
	local selStart = UI.CodeBox.SelectionStart
	local cursor   = UI.CodeBox.CursorPosition
	if selStart < 1 or cursor < 1 or selStart == cursor then return end

	local s    = math.min(selStart, cursor)
	local e    = math.max(selStart, cursor) - 1
	local text = UI.CodeBox.Text
	local font     = UI.CodeBox.Font
	local fontSize = UI.CodeBox.TextSize
	local inf      = Vector2.new(9999, 9999)
	local pad      = UI.CodeBox:FindFirstChildWhichIsA("UIPadding")
	local padL     = pad and pad.PaddingLeft.Offset or 4
	local padT     = pad and pad.PaddingTop.Offset  or 4
	local lineH    = _TXS:GetTextSize("Yq", fontSize, font, inf).Y

	local lines         = text:split("\n")
	local lineStartChar = 1
	for lineIdx, lineText in ipairs(lines) do
		local lineEndChar = lineStartChar + #lineText
		local overlapS    = math.max(s, lineStartChar)
		local overlapE    = math.min(e, lineEndChar - 1)
		if overlapS <= overlapE then
			local charsBefore   = overlapS - lineStartChar
			local charsSelected = overlapE - overlapS + 1
			local x1 = _TXS:GetTextSize(lineText:sub(1, charsBefore),                    fontSize, font, inf).X
			local xW = _TXS:GetTextSize(lineText:sub(charsBefore + 1, charsBefore + charsSelected), fontSize, font, inf).X
			-- extend slightly for newline character when selection spans to next line
			if overlapE >= lineEndChar - 1 and lineIdx < #lines then
				xW = xW + math.floor(fontSize * 0.35)
			end
			local f = Instance.new("Frame")
			f.BackgroundColor3       = SEL_COLOR
			f.BackgroundTransparency = 0.45
			f.BorderSizePixel        = 0
			f.ZIndex                 = 1
			f.Size                   = UDim2.new(0, math.max(xW, 2), 0, lineH)
			f.Position               = UDim2.new(0, padL + x1 - 5, 0, padT + (lineIdx - 1) * lineH + 2)
			f.Parent                 = UI.CodeBox
			table.insert(_selFrames, f)
		end
		lineStartChar = lineEndChar + 1
	end
end

UI.CodeBox:GetPropertyChangedSignal("SelectionStart"):Connect(function()
	task.defer(updateSelection)
end)

UI.CodeClearButton.MouseButton1Click:Connect(function()
	UI.CodeBox.Text = ""
end)

UI.CodeCopyButton.MouseButton1Click:Connect(function()
	if UI.CodeBox.Text == "" then return end
	if type(setclipboard) == "function" then
		setclipboard(UI.CodeBox.Text)
		Toast.show("Copied", "Code copied to clipboard", "info", 2)
	end
end)

UI.RunButton.MouseButton1Click:Connect(function()
	local code = UI.CodeBox.Text
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

-- Code tools registered here so they share UI.CodeBox closure
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
			name        = "run",
			description = "Execute the code currently in the code editor. Always call write_code() first, then run() to execute it. NEVER use this for infinite loops — write those with write_code() only.",
			parameters  = { type = "object", properties = {}, required = {} }
		}
	},
	handler = function(_args)
		local code = UI.CodeBox.Text
		if code == "" then return "Code editor is empty. Use write_code() first." end
		local fn, compErr = loadstring(code)
		if not fn then return "Compile error: " .. tostring(compErr) end
		local ok, runErr = pcall(fn)
		if not ok then return "Runtime error: " .. tostring(runErr) end
		return "Done."
	end
})

Tools.register({
	group = CODE_TOOL_GROUP,
	definition = {
		type = "function",
		["function"] = {
			name        = "run_once",
			description = "Execute a one-time Lua snippet without touching the code editor. Use for quick checks, print() output, or short expressions. NEVER use for infinite loops.",
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
		UI.CodeBox.Text = code
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
		local current = UI.CodeBox.Text
		local search  = unescapeCode(args.search  or "")
		local replace = unescapeCode(args.replace or "")
		local escaped = search:gsub("([%(%)%.%%%+%-%*%?%[%^%$])", "%%%1")
		if not current:find(escaped, 1, true) then return "Error: search text not found in code." end
		local before = select(2, current:gsub("\n", "\n")) + 1
		UI.CodeBox.Text  = current:gsub(escaped, replace:gsub("%%", "%%%%"), 1)
		local after   = select(2, UI.CodeBox.Text:gsub("\n", "\n")) + 1
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
		local code = UI.CodeBox.Text
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
		local lines = UI.CodeBox.Text:split("\n")
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
		local lines = UI.CodeBox.Text:split("\n")
		local s = math.max(1, math.floor(args.start_line))
		local e = math.min(#lines, math.floor(args.end_line))
		if s > #lines then return "Error: start_line out of range (total " .. #lines .. " lines)" end
		local before = #lines
		local newLines = unescapeCode(args.replacement or ""):split("\n")
		local result = {}
		for i = 1, s - 1            do result[#result+1] = lines[i] end
		for _, l in ipairs(newLines) do result[#result+1] = l end
		for i = e + 1, #lines       do result[#result+1] = lines[i] end
		UI.CodeBox.Text = table.concat(result, "\n")
		local diff = (select(2, UI.CodeBox.Text:gsub("\n", "\n")) + 1) - before
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
		local lines = UI.CodeBox.Text:split("\n")
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
		local gf    = UI.ToolsGroupFrame:Clone()
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
		gf.Parent  = UI.ToolsSF
	end

	task.defer(function()
		local h = 0
		for _, c in ipairs(UI.ToolsSF:GetChildren()) do
			if c:IsA("GuiObject") and c ~= UI.ToolsElementTemplate then
				h = h + c.AbsoluteSize.Y + 8
			end
		end
		UI.ToolsSF.CanvasSize = UDim2.new(0, 0, 0, h)
	end)
end

UI.CurrentPage.Changed:Connect(function(page)
	if page == "Tools" then populateToolsPage() end
end)

-- ── Settings page ─────────────────────────────────────────────────────────────

local selectedHost = Config.host
local dropdownOpen = false

UI.UnsavedChanges.Visible = false
UI.DropdownList.Visible   = false

local function maskKey(key)
	if key == "" then return "" end
	local visible = math.min(4, #key)
	return string.rep("•", #key - visible) .. key:sub(-visible)
end

local function updateHostLabel(host)
	if not UI.HostTitle then return end
	UI.HostTitle.RichText = true
	UI.HostTitle.Text = 'Host Provider  <font size="11" color="#A1A5A2">(' .. host .. ')</font>'
end

local ALL_HOSTS = {"OpenRouter", "Ollama", "Mistral", "Groq", "Pollinations", "HuggingFace", "Google AI Studio"}
local providerCache = {}
for _, h in ipairs(ALL_HOSTS) do
	local pd = Config.providerData and Config.providerData[h] or {}
	providerCache[h] = { key = pd.apiKey or "", model = pd.model or "" }
end
-- Authoritative current values from Config
providerCache[Config.host] = { key = Config.apiKey, model = Config.model }

local _loadingKey = true

local function applyProviderToUI(host)
	local cached = providerCache[host] or {}
	UI.APIKeyBox.Text             = cached.key or ""
	UI.APIKeyBox.TextTransparency = 1
	UI.APIKeyLabel.Text           = maskKey(cached.key or "")
	UI.ModelBox.Text              = cached.model or ""
end

applyProviderToUI(Config.host)
UI.MaxStepBox.Text = tostring(Config.maxSteps)
selectedHost    = Config.host

for _, b in pairs(UI.HostButtons) do
	if b:IsA("TextButton") then
		b.BackgroundTransparency = b.Text == selectedHost and 0.9 or 1
	end
end

updateHostLabel(selectedHost)
_loading    = false
_loadingKey = false

local _apiKeyFocused = false

UI.APIKeyBox.Focused:Connect(function()
	_apiKeyFocused   = true
	UI.APIKeyLabel.Text = string.rep("•", #UI.APIKeyBox.Text)
end)

UI.APIKeyBox.FocusLost:Connect(function()
	_apiKeyFocused   = false
	UI.APIKeyLabel.Text = maskKey(UI.APIKeyBox.Text)
	if not _loadingKey then UI.UnsavedChanges.Visible = true end
end)

UI.APIKeyBox:GetPropertyChangedSignal("Text"):Connect(function()
	if _loadingKey then return end
	UI.UnsavedChanges.Visible = true
	if _apiKeyFocused then UI.APIKeyLabel.Text = string.rep("•", #UI.APIKeyBox.Text) end
end)

local filteredList = {}

local function closeDropdown()
	dropdownOpen         = false
	UI.DropdownList.Visible = false
end

local function populateDropdown(models)
	for _, c in pairs(UI.DropdownList:GetChildren()) do
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
		btn.Parent                 = UI.DropdownList
		local pad = Instance.new("UIPadding", btn); pad.PaddingLeft = UDim.new(0, 10)
		btn.MouseButton1Down:Connect(function()
			UI.ModelBox.Text          = m.name
			UI.UnsavedChanges.Visible = true
			closeDropdown()
		end)
		btn.MouseEnter:Connect(function() btn.TextColor3 = Color3.fromRGB(250, 250, 250) end)
		btn.MouseLeave:Connect(function() btn.TextColor3 = Color3.fromRGB(161, 161, 170) end)
	end
	dropdownOpen         = true
	UI.DropdownList.Visible = true
end

local function filterDropdown(query)
	local q = query:lower()
	filteredList = {}
	for _, m in ipairs(modelList) do
		if m.name:lower():find(q, 1, true) then table.insert(filteredList, m) end
	end
	populateDropdown(filteredList)
end

UI.ModelBox:GetPropertyChangedSignal("Text"):Connect(function()
	if _loading then return end
	UI.UnsavedChanges.Visible = true
	if #modelList > 0 then filterDropdown(UI.ModelBox.Text) end
end)

UI.MaxStepBox:GetPropertyChangedSignal("Text"):Connect(function()
	if _loading then return end
	UI.UnsavedChanges.Visible = true
end)

UI.DropdownButton.MouseButton1Click:Connect(function()
	if dropdownOpen then closeDropdown() else filterDropdown(UI.ModelBox.Text) end
end)

UI.ModelBox.Focused:Connect(function()
	if #modelList > 0 then filterDropdown("") end
end)

UI.ModelBox.FocusLost:Connect(function()
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
	if not inside(UI.DropdownList) and not inside(UI.ModelFrame) then closeDropdown() end
end)

local function updateApiKeyVisibility(host)
	if UI.APIKeyFrame then
		UI.APIKeyFrame.Visible = host ~= "Ollama"
	end
end

updateApiKeyVisibility(selectedHost)

for _, btn in pairs(UI.HostButtons) do
	if not btn:IsA("TextButton") then continue end
	btn.MouseButton1Click:Connect(function()
		-- Save current provider's unsaved key+model to cache
		providerCache[selectedHost] = { key = UI.APIKeyBox.Text, model = UI.ModelBox.Text }
		selectedHost = btn.Text
		for _, b in pairs(UI.HostButtons) do
			if b:IsA("TextButton") then
				b.BackgroundTransparency = b.Text == selectedHost and 0.9 or 1
			end
		end
		UI.ConnectionIconColor.BackgroundColor3 = COLOR_IDLE
		UI.CredentialIconColor.BackgroundColor3 = COLOR_IDLE
		-- Restore new provider's key+model
		_loading = true; _loadingKey = true
		applyProviderToUI(selectedHost)
		_loading = false; _loadingKey = false
		updateApiKeyVisibility(selectedHost)
		updateHostLabel(selectedHost)
		UI.UnsavedChanges.Visible = true
	end)
end

local function setConnStatus(ok)   UI.ConnectionIconColor.BackgroundColor3 = ok and COLOR_OK or COLOR_ERR end
local function setCredStatus(ok)   UI.CredentialIconColor.BackgroundColor3 = ok and COLOR_OK or COLOR_ERR end

UI.ConnectionButton.MouseButton1Click:Connect(function()
	local res
	if selectedHost == "Ollama" then
		res = Http.request(Config.ollamaUrl .. "/api/tags", "GET", {})
	elseif selectedHost == "Pollinations" then
		res = Http.request("https://gen.pollinations.ai/v1/models", "GET", {
			["Authorization"] = "Bearer " .. UI.APIKeyBox.Text,
		})
	elseif selectedHost == "Groq" then
		res = Http.request("https://api.groq.com/openai/v1/models", "GET", {
			["Authorization"] = "Bearer " .. UI.APIKeyBox.Text,
		})
	elseif selectedHost == "Mistral" then
		res = Http.request("https://api.mistral.ai/v1/models", "GET", {
			["Authorization"] = "Bearer " .. UI.APIKeyBox.Text,
		})
	elseif selectedHost == "HuggingFace" then
		res = Http.request("https://router.huggingface.co/v1/models", "GET", {
			["Authorization"] = "Bearer " .. UI.APIKeyBox.Text,
		})
	elseif selectedHost == "Google AI Studio" then
		res = Http.request("https://generativelanguage.googleapis.com/v1beta/openai/models", "GET", {
			["Authorization"] = "Bearer " .. UI.APIKeyBox.Text,
		})
	else
		res = Http.request("https://openrouter.ai/api/v1/models", "GET", {
			["Authorization"] = "Bearer " .. UI.APIKeyBox.Text,
		})
	end
	if not res or res.StatusCode ~= 200 then
		setConnStatus(false)
		Toast.show("Failed", "Could not reach " .. selectedHost, "err", 4)
		return
	end
	setConnStatus(true)
	Toast.show("Connected", selectedHost .. " is reachable", "ok", 3)
	local ok, data = pcall(HS.JSONDecode, HS, res.Body)
	if not ok then return end
	if selectedHost == "Ollama" and data.models then
		modelList = data.models
		populateDropdown(data.models)
		if UI.ModelBox.Text == "" and #data.models > 0 then
			_loading = true; UI.ModelBox.Text = data.models[1].name; _loading = false
		end
	elseif selectedHost ~= "Ollama" and data.data then
		modelList = {}
		for _, m in ipairs(data.data) do table.insert(modelList, { name = m.id }) end
		table.sort(modelList, function(a, b) return a.name < b.name end)
		populateDropdown(modelList)
		if UI.ModelBox.Text == "" and #modelList > 0 then
			_loading = true; UI.ModelBox.Text = modelList[1].name; _loading = false
		end
	end
end)

UI.CredentialButton.MouseButton1Click:Connect(function()
	local key = UI.APIKeyBox.Text
	if selectedHost ~= "Ollama" and key == "" then
		Toast.show("No API Key", "Enter an API key first", "err", 3) return
	end
	if selectedHost == "Ollama" then
		local res = Http.request(Config.ollamaUrl .. "/api/tags", "GET", {})
			if res and res.StatusCode == 200 then
			setCredStatus(true)
			Toast.show("OK", "Ollama has no auth — connection is fine", "ok", 3)
		else
			setCredStatus(false)
			Toast.show("Failed", "Could not reach Ollama", "err", 4)
		end
	elseif selectedHost == "Pollinations" then
		-- Send a minimal chat request; public endpoint returns 200 regardless of auth on /models
		local body = HS:JSONEncode({ model = "openai", messages = {{ role = "user", content = "hi" }}, max_tokens = 1 })
		local res = Http.request("https://gen.pollinations.ai/v1/chat/completions", "POST", {
			["Content-Type"]  = "application/json",
			["Authorization"] = "Bearer " .. key,
		}, body)
			if not res then
			setCredStatus(false); Toast.show("Failed", "No response from Pollinations", "err", 4)
		elseif res.StatusCode == 200 then
			setCredStatus(true);  Toast.show("Valid Key", "Pollinations key accepted", "ok", 3)
		elseif res.StatusCode == 401 then
			setCredStatus(false); Toast.show("Invalid Key", "Pollinations key rejected (401)", "err", 4)
		else
			setCredStatus(false); Toast.show("Failed", "Status " .. res.StatusCode, "err", 4)
		end
	elseif selectedHost == "Groq" then
		local res = Http.request("https://api.groq.com/openai/v1/models", "GET", {
			["Authorization"] = "Bearer " .. key,
		})
			if not res then
			setCredStatus(false); Toast.show("Failed", "No response from Groq", "err", 4)
		elseif res.StatusCode == 200 then
			setCredStatus(true);  Toast.show("Valid Key", "Groq key accepted", "ok", 3)
		elseif res.StatusCode == 401 then
			setCredStatus(false); Toast.show("Invalid Key", "Groq key rejected (401)", "err", 4)
		else
			setCredStatus(false); Toast.show("Failed", "Status " .. res.StatusCode, "err", 4)
		end
	elseif selectedHost == "Mistral" then
		local res = Http.request("https://api.mistral.ai/v1/models", "GET", {
			["Authorization"] = "Bearer " .. key,
		})
			if not res then
			setCredStatus(false); Toast.show("Failed", "No response from Mistral", "err", 4)
		elseif res.StatusCode == 200 then
			setCredStatus(true);  Toast.show("Valid Key", "Mistral key accepted", "ok", 3)
		elseif res.StatusCode == 401 then
			setCredStatus(false); Toast.show("Invalid Key", "Mistral key rejected (401)", "err", 4)
		else
			setCredStatus(false); Toast.show("Failed", "Status " .. res.StatusCode, "err", 4)
		end
	elseif selectedHost == "HuggingFace" then
		-- /api/whoami requires auth; /v1/models is public and always returns 200
		local res = Http.request("https://huggingface.co/api/whoami", "GET", {
			["Authorization"] = "Bearer " .. key,
		})
			if not res then
			setCredStatus(false); Toast.show("Failed", "No response from HuggingFace", "err", 4)
		elseif res.StatusCode == 200 then
			local ok, data = pcall(HS.JSONDecode, HS, res.Body)
			local name = ok and data and (data.name or data.fullname) or "unknown"
			setCredStatus(true); Toast.show("Valid Token", "Logged in as " .. tostring(name), "ok", 3)
		elseif res.StatusCode == 401 then
			setCredStatus(false); Toast.show("Invalid Token", "HuggingFace token rejected (401)", "err", 4)
		else
			setCredStatus(false); Toast.show("Failed", "Status " .. res.StatusCode, "err", 4)
		end
	elseif selectedHost == "Google AI Studio" then
		local res = Http.request("https://generativelanguage.googleapis.com/v1beta/openai/models", "GET", {
			["Authorization"] = "Bearer " .. key,
		})
			if not res then
			setCredStatus(false); Toast.show("Failed", "No response from Google AI Studio", "err", 4)
		elseif res.StatusCode == 200 then
			setCredStatus(true);  Toast.show("Valid Key", "Google AI Studio key accepted", "ok", 3)
		elseif res.StatusCode == 401 then
			setCredStatus(false); Toast.show("Invalid Key", "Google key rejected (401)", "err", 4)
		else
			setCredStatus(false); Toast.show("Failed", "Status " .. res.StatusCode, "err", 4)
		end
	else
		local res = Http.request("https://openrouter.ai/api/v1/auth/key", "GET", {
			["Authorization"] = "Bearer " .. key,
		})
			if not res then
			setCredStatus(false); Toast.show("Failed", "No response from server", "err", 4)
		elseif res.StatusCode == 200 then
			local ok, data = pcall(HS.JSONDecode, HS, res.Body)
			if ok and data.data then
				local label = data.data.label or "unknown"
				local usage = data.data.usage or 0
				local limit = data.data.limit
				local info  = limit
					and string.format("$%.4f / $%.2f limit", usage, limit)
					or  string.format("$%.4f used (no limit)", usage)
				setCredStatus(true); Toast.show("Valid Key", label .. " — " .. info, "ok", 5)
			else
				setCredStatus(true); Toast.show("Valid Key", "Credential accepted", "ok", 3)
			end
		elseif res.StatusCode == 401 then
			setCredStatus(false); Toast.show("Invalid Key", "API key rejected (401)", "err", 4)
		else
			setCredStatus(false); Toast.show("Failed", "Status " .. res.StatusCode, "err", 4)
		end
	end
end)

local function saveSettings()
	providerCache[selectedHost] = { key = UI.APIKeyBox.Text, model = UI.ModelBox.Text }
	Config.apiKey       = UI.APIKeyBox.Text
	Config.model        = UI.ModelBox.Text
	Config.host         = selectedHost
	Config.maxSteps     = math.max(1, tonumber(UI.MaxStepBox.Text) or 100)
	Config.providerData = {}
	for h, data in pairs(providerCache) do
		Config.providerData[h] = { apiKey = data.key, model = data.model }
	end
	UI.MaxStepBox.Text = tostring(Config.maxSteps)
	Config.save()
	UI.UnsavedChanges.Visible = false
	Toast.show("Saved", "Settings saved successfully", "ok", 2)
end

local function revertSettings()
	_loading = true; _loadingKey = true
	-- Rebuild cache from saved Config
	for _, h in ipairs(ALL_HOSTS) do
		local pd = Config.providerData and Config.providerData[h] or {}
		providerCache[h] = { key = pd.apiKey or "", model = pd.model or "" }
	end
	providerCache[Config.host] = { key = Config.apiKey, model = Config.model }
	selectedHost = Config.host
	applyProviderToUI(selectedHost)
	UI.MaxStepBox.Text = tostring(Config.maxSteps)
	for _, b in pairs(UI.HostButtons) do
		if b:IsA("TextButton") then
			b.BackgroundTransparency = b.Text == selectedHost and 0.9 or 1
		end
	end
	updateApiKeyVisibility(selectedHost)
	updateHostLabel(selectedHost)
	UI.ConnectionIconColor.BackgroundColor3 = COLOR_IDLE
	UI.CredentialIconColor.BackgroundColor3 = COLOR_IDLE
	_loading = false; _loadingKey = false
	UI.UnsavedChanges.Visible = false
end

UI.SaveButton.MouseButton1Click:Connect(saveSettings)
UI.RevertButton.MouseButton1Click:Connect(revertSettings)

-- ── Model Select Modal ────────────────────────────────────────────────────────

local MODAL_CHUNK    = 40
local modalAllModels = {}
local modalFiltered  = {}
local modalRendered  = 0

UI.ModalFrame.Visible      = false
UI.ExampleModelBtn.Visible = false

local function modalClearButtons()
	for _, c in ipairs(UI.ModalSF:GetChildren()) do
		if c ~= UI.ExampleModelBtn and not c:IsA("UIGridLayout") and not c:IsA("UIPadding") then
			c:Destroy()
		end
	end
end

local function modalRenderChunk()
	local startIdx = modalRendered + 1
	local endIdx   = math.min(modalRendered + MODAL_CHUNK, #modalFiltered)
	for i = startIdx, endIdx do
		local m   = modalFiltered[i]
		local btn = UI.ExampleModelBtn:Clone()
		btn.Text    = m.name
		btn.Visible = true
		btn.Parent  = UI.ModalSF
		btn.MouseButton1Click:Connect(function()
			_loading = true; UI.ModelBox.Text = m.name; _loading = false
			UI.UnsavedChanges.Visible = true
			UI.ModalFrame.Visible = false
		end)
		if i % 20 == 0 then task.wait() end
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
	UI.ModalSF.CanvasPosition = Vector2.zero
end

UI.ModalSF:GetPropertyChangedSignal("CanvasPosition"):Connect(function()
	if modalRendered >= #modalFiltered then return end
	local pos      = UI.ModalSF.CanvasPosition.Y
	local viewH    = UI.ModalSF.AbsoluteSize.Y
	local contentH = UI.ModalSF.AbsoluteCanvasSize.Y
	if pos + viewH >= contentH - 80 then
		modalRenderChunk()
	end
end)

local function fetchHuggingFaceModalSearch(query)
	local url = "https://huggingface.co/api/models?filter=text-generation&limit=50&sort=downloads&direction=-1"
	if query and query ~= "" then
		url = url .. "&search=" .. HS:UrlEncode(query)
	end
	local res = Http.request(url, "GET", { ["Authorization"] = "Bearer " .. UI.APIKeyBox.Text })
	local ok, data = pcall(HS.JSONDecode, HS, res and res.Body or "")
	modalAllModels = {}
	if ok and type(data) == "table" then
		for _, m in ipairs(data) do
			local id = type(m) == "table" and (m.modelId or m.id) or tostring(m)
			if id then table.insert(modalAllModels, { name = id }) end
		end
	end
	modalFiltered = { table.unpack(modalAllModels) }
	modalRendered = 0
	modalClearButtons()
	modalRenderChunk()
end

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
	elseif host == "HuggingFace" then
		fetchHuggingFaceModalSearch("")
		return
	else
		local url = host == "Mistral"         and "https://api.mistral.ai/v1/models"
			or    host == "Groq"              and "https://api.groq.com/openai/v1/models"
			or    host == "Pollinations"      and "https://gen.pollinations.ai/v1/models"
			or    host == "Google AI Studio"  and "https://generativelanguage.googleapis.com/v1beta/openai/models"
			or    "https://openrouter.ai/api/v1/models"
		local auth = host ~= "OpenRouter" and UI.APIKeyBox.Text or ""
		local res = Http.request(url, "GET", auth ~= "" and { ["Authorization"] = "Bearer " .. auth } or {})
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
	if UI.ModalTitleLabel then UI.ModalTitleLabel.Text = "Select Model" end
	UI.SearchModelModal.Visible    = true
	UI.ToolResultViewModal.Visible = false
	UI.ModalFrame.Visible = true
	if UI.ModalSearchBox then UI.ModalSearchBox.Text = "" end
	modalClearButtons()
	task.spawn(modalFetch)
end

local function openToolResultModal(fullText)
	if UI.ModalTitleLabel then UI.ModalTitleLabel.Text = "Tool Output" end
	UI.SearchModelModal.Visible    = false
	UI.ToolResultViewModal.Visible = true
	UI.ToolResultTextBox.Text      = fullText
	UI.ToolResultSF.CanvasPosition = Vector2.new(0, 0)
	UI.ModalFrame.Visible          = true
	task.defer(function()
		UI.ToolResultSF.CanvasSize = UDim2.new(0, 0, 0, UI.ToolResultTextBox.AbsoluteSize.Y + 20)
	end)
end

UI.ModalOpenButton.MouseButton1Click:Connect(openModal)
UI.ModalCloseButton.MouseButton1Click:Connect(function()
	UI.ModalFrame.Visible          = false
	UI.SearchModelModal.Visible    = true
	UI.ToolResultViewModal.Visible = false
end)

local _hfSearchTask = nil
if UI.ModalSearchBox then
	UI.ModalSearchBox:GetPropertyChangedSignal("Text"):Connect(function()
		local query = UI.ModalSearchBox.Text
		if selectedHost == "HuggingFace" then
			if _hfSearchTask then task.cancel(_hfSearchTask); _hfSearchTask = nil end
			_hfSearchTask = task.delay(0.4, function()
				_hfSearchTask = nil
				fetchHuggingFaceModalSearch(query)
			end)
		else
			modalApplyFilter(query)
		end
	end)
end
if UI.ModalSearchButton then
	UI.ModalSearchButton.MouseButton1Click:Connect(function()
		local query = UI.ModalSearchBox and UI.ModalSearchBox.Text or ""
		if selectedHost == "HuggingFace" then
			if _hfSearchTask then task.cancel(_hfSearchTask); _hfSearchTask = nil end
			fetchHuggingFaceModalSearch(query)
		else
			modalApplyFilter(query)
		end
	end)
end

-- ── Window controls ───────────────────────────────────────────────────────────

UI.MinimizeButton.MouseButton1Click:Connect(function()
	Minimized = not Minimized
	local authorLabel = UI.TopBar:FindFirstChild("AuthorLabel")
	local versionLabel = UI.TopBar:FindFirstChild("VersionLabel")
	if Minimized then
		TS:Create(UI.IYAI, Tween, { Size = MinimizedIYAISize }):Play()
		if authorLabel  then TS:Create(authorLabel,  Tween, { TextTransparency = 1 }):Play() end
		if versionLabel then TS:Create(versionLabel, Tween, { TextTransparency = 1 }):Play() end
	else
		TS:Create(UI.IYAI, Tween, { Size = DefaultIYAISize }):Play()
		if authorLabel  then TS:Create(authorLabel,  Tween, { TextTransparency = 0.5 }):Play() end
		if versionLabel then TS:Create(versionLabel, Tween, { TextTransparency = 0.5 }):Play() end
	end
end)

local _uisChanged, _uisEnded

UI.CloseButton.MouseButton1Click:Connect(function()
	if _uisBegan  then _uisBegan:Disconnect()  end
	if _uisChanged then _uisChanged:Disconnect() end
	if _uisEnded   then _uisEnded:Disconnect()   end
	TS:Create(UI.IYAI, Tween, { GroupTransparency = 1 }):Play()
	task.delay(0.5, function()
		if UI.ScreenGui and UI.ScreenGui.Parent then UI.ScreenGui:Destroy() end
	end)
end)

-- ── AI core ───────────────────────────────────────────────────────────────────

local conversationHistory = {}

local function buildUrl()
	if Config.host == "Ollama"          then return Config.ollamaUrl .. "/api/chat" end
	if Config.host == "Mistral"         then return "https://api.mistral.ai/v1/chat/completions" end
	if Config.host == "Groq"            then return "https://api.groq.com/openai/v1/chat/completions" end
	if Config.host == "Pollinations"    then return "https://gen.pollinations.ai/v1/chat/completions" end
	if Config.host == "HuggingFace"     then return "https://router.huggingface.co/v1/chat/completions" end
	if Config.host == "Google AI Studio" then return "https://generativelanguage.googleapis.com/v1beta/openai/chat/completions" end
	return "https://openrouter.ai/api/v1/chat/completions"
end

local function buildHeaders()
	if Config.host == "Ollama" then
		return { ["Content-Type"] = "application/json" }
	end
	return {
		["Content-Type"]  = "application/json",
		["Authorization"] = "Bearer " .. Config.apiKey,
	}
end

local RETRY_ATTEMPTS = 3
local RETRY_DELAY    = 4

local function requestWithRetry(url, method, headers, body, onRetry)
	local res
	for attempt = 1, RETRY_ATTEMPTS do
		res = Http.request(url, method, headers, body)
		if res and res.StatusCode ~= 429 then break end
		if attempt < RETRY_ATTEMPTS then
			if onRetry then
				onRetry(attempt, RETRY_ATTEMPTS - 1)
			else
				Toast.show("Rate limited", "Retrying in " .. RETRY_DELAY .. "s… (" .. attempt .. "/" .. (RETRY_ATTEMPTS - 1) .. ")", "warn", RETRY_DELAY)
			end
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
	UI.isAssistantBusy.Value        = state
	UI.SendButton.Visible           = not state
	UI.SendButton.ImageTransparency = UI.TextBoxInput.Text == "" and 0.7 or 0
	UI.StopButton.Visible           = state == true
end

UI.StopButton.Visible = false
UI.StopButton.MouseButton1Click:Connect(function() agentAborted = true end)

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

UI.ClearButton.MouseButton1Click:Connect(function()
	conversationHistory = {}
	StepCount           = 0
	UI.TotalElements.Value = 0
	for _, child in ipairs(UI.ScrollingFrameMainChat:GetChildren()) do
		if child:IsA("GuiObject") and child ~= UI.ElementTemplate and child ~= GreetFrame then child:Destroy() end
	end
	if GreetFrame then GreetFrame.Visible = true end
	UI.ScrollingFrameMainChat.CanvasSize     = UDim2.new(0, 0, 0, 0)
	UI.ScrollingFrameMainChat.CanvasPosition = Vector2.new(0, 0)
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
	UI.CurrentPage.Value = "Agent"

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
	UI.TextBoxInput:CaptureFocus()
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
		UI.TotalElements.Value += 1
		generatingFrame.LayoutOrder = UI.TotalElements.Value
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

		local _retryFrame = nil
		local function onRateLimit(attempt, maxAttempts)
			if not _retryFrame then _retryFrame = addTaskFrame("retrying") end
			local lbl = _retryFrame:FindFirstChildWhichIsA("TextLabel", true)
			if lbl then lbl.Text = "Rate limited — retrying in " .. RETRY_DELAY .. "s (" .. attempt .. "/" .. maxAttempts .. ")" end
		end

		local res = requestWithRetry(buildUrl(), "POST", buildHeaders(), buildBody(), onRateLimit)
		if _retryFrame then _retryFrame:Destroy(); _retryFrame = nil end
		if isContextError(res) then
			Toast.show("History trimmed", "Context too long — retrying with less history", "warn", 3)
			res = requestWithRetry(buildUrl(), "POST", buildHeaders(), buildBody(trimHistory(conversationHistory)))
		end
		if not res or res.StatusCode ~= 200 then
			if generatingFrame then generatingFrame:Destroy(); generatingFrame = nil end
			local statusStr = res and tostring(res.StatusCode) or "no response"
			local errBody   = res and res.Body or "(no response)"
			local errFrame  = addTaskFrame("failed")
			local lbl = errFrame:FindFirstChildWhichIsA("TextLabel", true)
			if lbl then
				lbl.RichText = true
				lbl.Text = "Request failed (" .. statusStr .. ")  " .. '<font size="12" color="#A1A5A2"><u>Open</u></font>'
				lbl.InputBegan:Connect(function(input)
					if input.UserInputType == Enum.UserInputType.MouseButton1 then
						openToolResultModal(errBody)
					end
				end)
			end
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
			UI.TotalElements.Value += 1
			generatingFrame.LayoutOrder = UI.TotalElements.Value + 100
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
						UI.TotalElements.Value += 1
						generatingFrame.LayoutOrder = UI.TotalElements.Value
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
				addPostAction("View Code →", function() UI.CurrentPage.Value = "Code" end)
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
	UI.TextBoxInput:CaptureFocus()
end

-- ── onSend ────────────────────────────────────────────────────────────────────

local function onSend()
	local text = UI.TextBoxInput.Text
	if text == "" or UI.isAssistantBusy.Value then return end
	UI.TextBoxInput.Text = ""
	addChat(text)
	task.spawn(function()
		local ok, err
		if UI.CurrentPage.Value == "Code" then
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

UI.SendButton.MouseButton1Click:Connect(onSend)
UI.TextBoxInput.FocusLost:Connect(function(enterPressed)
	if enterPressed then onSend() end
end)

-- ── Drag ──────────────────────────────────────────────────────────────────────

local dragging  = false
local dragStart = nil
local startPos  = nil

UI.TopBar.InputBegan:Connect(function(input)
	if input.UserInputType == Enum.UserInputType.MouseButton1 then
		dragging  = true
		dragStart = input.Position
		startPos  = UI.IYAI.Position
	end
end)

local _uisChanged = UIS.InputChanged:Connect(function(input)
	if dragging and input.UserInputType == Enum.UserInputType.MouseMovement then
		local delta   = input.Position - dragStart
		UI.IYAI.Position = UDim2.new(
			startPos.X.Scale, startPos.X.Offset + delta.X,
			startPos.Y.Scale, startPos.Y.Offset + delta.Y
		)
	end
end)

local _uisEnded = UIS.InputEnded:Connect(function(input)
	if input.UserInputType == Enum.UserInputType.MouseButton1 then dragging = false end
end)
