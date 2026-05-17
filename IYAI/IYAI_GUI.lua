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
loadMod("modules/tools/Script.lua")(Tools, Http)
loadMod("modules/tools/IY.lua")(Tools)
loadMod("modules/tools/Web.lua")(Tools, Http)
local Prompt = loadMod("modules/Prompt.lua")(Http)
local nl = string.char(10)
local function markdownToRichText(text, baseSize)
	baseSize = baseSize or 14

	-- Strip any literal rich-text tags, then escape remaining characters safely
	text = text:gsub("</?[A-Za-z][^>]*>", "")
	text = text:gsub("&", "&amp;"):gsub("<", "&lt;"):gsub(">", "&gt;")

	local function inline(s)
		if not s or s == "" then return "" end
		s = s:gsub("`([^`]+)`",       '<font color="rgb(255,100,100)" face="GothamMono">%1</font>')
		s = s:gsub("%*%*%*(.-)%*%*%*", '<font face="GothamBold"><i>%1</i></font>')
		s = s:gsub("%*%*(.-)%*%*",     '<font face="GothamBold">%1</font>')
		s = s:gsub("%*(.-)%*",         "<i>%1</i>")
		s = s:gsub("~~(.-)~~",         "<s>%1</s>")
		s = s:gsub("__(.-)__",         "<u>%1</u>")
		s = s:gsub("!%[.-%]%(.-%)",    "")
		s = s:gsub("%[(.-)%]%(.-%)",   "%1")
		return s
	end

	local hs = {
		tostring(math.floor(baseSize * 1.5)),
		tostring(math.floor(baseSize * 1.3)),
		tostring(math.floor(baseSize * 1.15)),
	}

	local out, inCode, codeBuf = {}, false, {}

	for line in (text .. "\n"):gmatch("([^\n]*)\n") do
		if line:match("^```") then
			if not inCode then
				inCode, codeBuf = true, {}
			else
				out[#out+1] = '<font color="rgb(180,180,180)" face="GothamMono">' .. table.concat(codeBuf, "\n") .. '</font>'
				inCode = false
			end
		elseif inCode then
			codeBuf[#codeBuf+1] = line
		elseif line:match("^%s*|") then
			-- skip table rows
		elseif line:match("^%-%-%-+%s*$") or line:match("^%*%*%*+%s*$") or line:match("^___+%s*$") then
			out[#out+1] = "────────────────────"
		elseif line:match("^###") then
			local content = line:gsub("^###%s*", "")
			out[#out+1] = '<font size="'..hs[3]..'" face="GothamBold">'..inline(content)..'</font>'
		elseif line:match("^##") then
			local content = line:gsub("^##%s*", "")
			out[#out+1] = '<font size="'..hs[2]..'" face="GothamBold">'..inline(content)..'</font>'
		elseif line:match("^#") then
			local content = line:gsub("^#%s*", "")
			out[#out+1] = '<font size="'..hs[1]..'" face="GothamBold">'..inline(content)..'</font>'
		elseif line:match("^>") then
			local content = line:gsub("^>%s*", "")
			out[#out+1] = '<font color="rgb(150,200,150)">▍ '..inline(content)..'</font>'
		elseif line:match("^%s*[-*+]") then
			local content = line:gsub("^%s*[-*+]%s*", "")
			out[#out+1] = '<font face="GothamBold">  •</font>  '..inline(content)
		elseif line:match("^%s*%d+%.") then
			local n = line:match("^%s*(%d+)%.") or "1"
			local content = line:gsub("^%s*%d+%.%s*", "")
			out[#out+1] = "  "..n..". "..inline(content)
		else
			out[#out+1] = inline(line)
		end
	end

	return table.concat(out, "\n")
end

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
	InputFrame             = G2L["52"],
	TextBoxInput           = G2L["53"],
	SendButton             = G2L["57"],
	StopButton             = G2L["59"],
	ActionsFrame           = G2L["5b"],
	ClearButton            = G2L["5d"],
	SettingsPage           = G2L["5e"],
	Settings_SF            = G2L["5f"],
	APIKeyFrame            = G2L["60"],
	APIKeyLabel            = G2L["62"],
	APIKeyBox              = G2L["63"],
	HostSelectFrame        = G2L["67"],
	HostTitle              = G2L["68"],
	HostFrame              = G2L["69"],
	HostButtons            = G2L["69"]:GetChildren(),
	ModelSelectFrame       = G2L["88"],
	ModelFrame             = G2L["8a"],
	ModelBox               = G2L["8b"],
	DropdownButton         = G2L["8e"],
	DropdownList           = Instance.new("Frame"),
	TestFrame              = G2L["91"],
	ConnectionButton       = G2L["94"],
	CredentialButton       = G2L["9b"],
	ConnectionIconColor    = G2L["97"],
	CredentialIconColor    = G2L["9e"],
	UnsavedChanges         = G2L["b7"],
	TextLabel              = G2L["b9"],
	SaveButton             = G2L["bb"],
	RevertButton           = G2L["bd"],
	CodePage               = G2L["c0"],
	CodeSF                 = G2L["c7"],
	LineLabel              = G2L["cc"],
	CodeBox                = G2L["c9"],
	IntelLabel             = G2L["cb"],
	CodeActionsFrame       = G2L["c1"],
	CodeClearButton        = G2L["c3"],
	CodeCopyButton         = G2L["c4"],
	RunButton              = G2L["c5"],
	LeftSidebar            = G2L["154"],
	TopBar                 = G2L["178"],
	CloseButton            = G2L["17a"],
	MinimizeButton         = G2L["17d"],
	Highlight              = G2L["17e"],
	IntroFrame             = G2L["1a3"],
	IYAIToastContainer     = G2L["1a6"],
	ToastTemplate          = G2L["1a7"],
	CurrentPage            = G2L["1b3"],
	ModalFrame             = G2L["17f"],
	ModalInner             = G2L["181"],
	ModalCloseButton       = G2L["183"],
	SearchModelModal       = G2L["184"],
	ModalSearchBox         = G2L["186"],
	ModalSF                = G2L["18a"],
	ExampleModelBtn        = G2L["18b"],
	ModalSearchButton      = G2L["189"],
	ModalOpenButton        = G2L["8e"],
	MaxStepFrame           = G2L["a2"],
	MaxStepBox             = G2L["a5"],
	ToolsPage              = G2L["ce"],
	ToolsSF                = G2L["cf"],
	ToolsElementTemplate   = G2L["c3"],
	ToolsGroupFrame        = G2L["d3"],
	ToolsGroupInner        = G2L["d5"],
	ToolsGroupTitle        = G2L["c7"],
	ToolsToolFrame         = G2L["da"],
	ToolsToolNameDesc      = G2L["ce"],
	ToolsTotalElements     = G2L["d0"],
	ToolResultViewModal    = G2L["18e"],
	ToolResultSF           = G2L["190"],
	ToolResultTextBox      = G2L["191"],
	ModalTitleLabel        = G2L["193"],
	StartupPageSF          = G2L["e4"],
	StartupPageLayout      = G2L["e5"],
	StartupElemTemplate    = G2L["e7"],
	StartupGroupFrame      = G2L["e8"],
	StartupGroupInner      = G2L["ea"],
	StartupGroupTitle      = G2L["eb"],
	StartupToolFrame       = G2L["ef"],
	StartupToolNameDesc    = G2L["f2"],
	StartupTotalElems      = G2L["f4"],
	-- History page
	HistoryPage            = G2L["f7"],
	HistorySF              = G2L["f8"],
	HistoryTemplate        = G2L["fc"],
	HistoryToolFrame       = G2L["105"],
	HistoryTotalElements   = G2L["11f"],
	HistoryPageTip         = G2L["120"],
	HistoryButtonFrame     = G2L["16b"],
	-- New elements
	OpenConversationHistoryButton = G2L["50"],
	MaxStepResetButton     = G2L["a8"],
	TemperatureBox         = G2L["ae"],
	TemperatureResetButton = G2L["b1"],
	SystemPromptFrame      = G2L["b3"],
	SystemPromptButton     = G2L["b5"],
	SystemPromptModal      = G2L["195"],
	SystemPromptSF         = G2L["197"],
	SystemPromptTextBox    = G2L["198"],
	SystemPromptResetButton = G2L["19c"],
	SystemPromptSaveButton  = G2L["19d"],
	-- Browser page
	BrowserPage            = G2L["122"],
	BrowserDotYou          = G2L["128"],
	BrowserDotBridge       = G2L["12f"],
	BrowserDotWeb          = G2L["135"],
	BrowserIconBridge      = G2L["12d"],
	BrowserLabelBridge     = G2L["12e"],
	BrowserIconWeb         = G2L["133"],
	BrowserLabelWeb        = G2L["134"],
	BrowserGrad1           = G2L["13d"],
	BrowserGrad2           = G2L["141"],
	BrowserInstructions    = G2L["142"],
	BrowserLogsModal       = G2L["19e"],
	BrowserLogsTextBox     = G2L["1a1"],
	ConnectToBrowserButton = G2L["51"],
	ForceRefreshButton     = G2L["152"],
	OpenBrowserLogsButton  = G2L["150"],
	BrowserButtonHitbox    = G2L["172"],
}
-- ── Main logic ────────────────────────────────────────────────────────────────

local VERSION           = G2L["1b4"] and G2L["1b4"].Value or ""
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
		nd.Text = '<font face="GothamBold">'..title..'</font>  <font size="12" transparency="0.4">'..desc..'</font>'
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

UI.OpenConversationHistoryButton.MouseButton1Click:Connect(function()
	UI.CurrentPage.Value = "History"
end)

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

local currentSessionId = nil
local currentRenders   = nil
local isReplaying      = false

local function recordRender(entry)
	if currentRenders and not isReplaying then
		table.insert(currentRenders, entry)
	end
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
	recordRender({t = "user", text = text})
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

local function addThinking(text)
	addElement("AssistantThinking", text, true)
	recordRender({t = "think", text = text})
end

local TYPEWRITER_SPEED = 3

local function typewriteInto(element, text)
	if element then element.RichText = true end
	if isReplaying then
		if element and element.Parent then element.Text = text end
		return
	end
	local len = string.len(text)
	local i = 0
	while i < len do
		if not element or not element.Parent then break end
		i = math.min(i + TYPEWRITER_SPEED, len)
		local partial = string.sub(text, 1, i)
		partial = partial:gsub("<[^>]*$", "")
		element.Text = partial
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

	local function findContentLabel(elem)
		if elem:IsA("TextLabel") and elem.Name ~= "TokenCount" then return elem end
		for _, d in ipairs(elem:GetDescendants()) do
			if d:IsA("TextLabel") and d.Name ~= "TokenCount" then return d end
		end
	end

	if #segments == 1 and segments[1].type == "text" then
		local elem = addElement("AssistantResponse", "", false)
		local textLabel = findContentLabel(elem)
		if textLabel then
			typewriteInto(textLabel, markdownToRichText(segments[1].content) .. (usage and "\n" or ""))
		end
		lastElem = elem
	else
		for _, seg in ipairs(segments) do
			if seg.type == "text" then
				local stripped = markdownToRichText(seg.content):match("^%s*(.-)%s*$")
				if stripped ~= "" then
					local elem = addElement("AssistantResponse", "", false)
					local textLabel = findContentLabel(elem)
					if textLabel then
						textLabel.RichText = true
						textLabel.Text = stripped
					end
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
	recordRender({t = "ai", text = rawText})
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
		if not current:find(search, 1, true) then return "Error: search text not found in code." end
		local escaped = search:gsub("([%(%)%.%%%+%-%*%?%[%^%$])", "%%%1")
		local before  = select(2, current:gsub("\n", "\n")) + 1
		local newCode = current:gsub(escaped, replace:gsub("%%", "%%%%"), 1)
		UI.CodeBox.Text = newCode
		local after = select(2, newCode:gsub("\n", "\n")) + 1
		local diff  = after - before
		local _, syntaxErr = loadstring(newCode)
		local suffix = syntaxErr and (" — Syntax error: " .. tostring(syntaxErr)) or ""
		return (diff >= 0 and "+" or "") .. diff .. " lines" .. suffix
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
		local newCode = table.concat(result, "\n")
		UI.CodeBox.Text = newCode
		local diff = (select(2, newCode:gsub("\n", "\n")) + 1) - before
		local _, syntaxErr = loadstring(newCode)
		local suffix = syntaxErr and (" — Syntax error: " .. tostring(syntaxErr)) or ""
		return "Replaced lines " .. s .. "-" .. e .. " (" .. (diff >= 0 and "+" or "") .. diff .. " lines)" .. suffix
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

local _onSettingsSaved  -- forward-declared; wired to sendSyncState after bridge section loads

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
UI.MaxStepBox.Text     = tostring(Config.maxSteps)
UI.TemperatureBox.Text = tostring(Config.temperature)
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

UI.TemperatureBox:GetPropertyChangedSignal("Text"):Connect(function()
	if _loading then return end
	UI.UnsavedChanges.Visible = true
end)

UI.MaxStepResetButton.MouseButton1Click:Connect(function()
	UI.MaxStepBox.Text = "100"
	UI.UnsavedChanges.Visible = true
end)

UI.TemperatureResetButton.MouseButton1Click:Connect(function()
	UI.TemperatureBox.Text = "1"
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
	Config.temperature  = math.clamp(tonumber(UI.TemperatureBox.Text) or 1.0, 0, 2)
	Config.providerData = {}
	for h, data in pairs(providerCache) do
		Config.providerData[h] = { apiKey = data.key, model = data.model }
	end
	UI.MaxStepBox.Text      = tostring(Config.maxSteps)
	UI.TemperatureBox.Text  = tostring(Config.temperature)
	Config.save()
	UI.UnsavedChanges.Visible = false
	Toast.show("Saved", "Settings saved successfully", "ok", 2)
	if _onSettingsSaved then task.spawn(_onSettingsSaved) end
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
	UI.MaxStepBox.Text     = tostring(Config.maxSteps)
	UI.TemperatureBox.Text = tostring(Config.temperature)
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
	UI.SystemPromptModal.Visible   = false
	UI.BrowserLogsModal.Visible    = false
	UI.ModalFrame.Visible = true
	if UI.ModalSearchBox then UI.ModalSearchBox.Text = "" end
	modalClearButtons()
	task.spawn(modalFetch)
end

local function openToolResultModal(fullText)
	if UI.ModalTitleLabel then UI.ModalTitleLabel.Text = "Tool Output" end
	UI.SearchModelModal.Visible    = false
	UI.ToolResultViewModal.Visible = true
	UI.SystemPromptModal.Visible   = false
	UI.BrowserLogsModal.Visible    = false
	UI.ToolResultTextBox.Text      = fullText
	UI.ToolResultSF.CanvasPosition = Vector2.new(0, 0)
	UI.ModalFrame.Visible          = true
	task.defer(function()
		UI.ToolResultSF.CanvasSize = UDim2.new(0, 0, 0, UI.ToolResultTextBox.AbsoluteSize.Y + 20)
	end)
end

local function openSystemPromptModal()
	if UI.ModalTitleLabel then UI.ModalTitleLabel.Text = "System Prompt" end
	UI.SearchModelModal.Visible    = false
	UI.ToolResultViewModal.Visible = false
	UI.SystemPromptModal.Visible   = true
	UI.BrowserLogsModal.Visible    = false
	UI.SystemPromptTextBox.TextEditable   = true
	UI.SystemPromptTextBox.Text           = Config.userSystemPrompt
	UI.SystemPromptTextBox.PlaceholderText = Prompt.build(false)
	UI.ModalFrame.Visible = true
end

UI.ModalOpenButton.MouseButton1Click:Connect(openModal)
UI.ModalCloseButton.MouseButton1Click:Connect(function()
	UI.ModalFrame.Visible          = false
	UI.SearchModelModal.Visible    = true
	UI.ToolResultViewModal.Visible = false
	UI.SystemPromptModal.Visible   = false
end)

UI.SystemPromptButton.MouseButton1Click:Connect(openSystemPromptModal)

UI.SystemPromptSaveButton.MouseButton1Click:Connect(function()
	Config.userSystemPrompt = UI.SystemPromptTextBox.Text
	Config.save()
	UI.ModalFrame.Visible        = false
	UI.SystemPromptModal.Visible = false
end)

UI.SystemPromptResetButton.MouseButton1Click:Connect(function()
	UI.SystemPromptTextBox.Text = ""
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
		task.delay(0.15, function()
			UI.ContentPages.Visible = false
			UI.ModalFrame.Visible   = false
		end)
	else
		UI.ContentPages.Visible = true
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
	local msgs = {{ role = "system", content = Prompt.build(true, Config.userSystemPrompt) }}
	for _, m in ipairs(history or conversationHistory) do table.insert(msgs, m) end
	return msgs
end

local function buildBody(history)
	local body = {
		model       = Config.model,
		messages    = buildMessages(history),
		stream      = false,
		temperature = Config.temperature,
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

-- ── Session persistence ───────────────────────────────────────────────────────

local sessions      = {}
local nextSessionId = 1

local HISTORY_FILE    = "IYAI_conversations.json"
local toolNameToGroup = {}

for _, entry in ipairs(Tools.getDefinitions()) do
	local fn = entry.definition and entry.definition["function"]
	if fn and fn.name and entry.group then
		toolNameToGroup[fn.name] = entry.group
	end
end

local function saveSessionsToFile()
	if not writefile then return end
	local ok, json = pcall(HS.JSONEncode, HS, { sessions = sessions, nextId = nextSessionId })
	if ok then pcall(writefile, HISTORY_FILE, json) end
end

local function loadSessionsFromFile()
	if not readfile then return end
	local ok, content = pcall(readfile, HISTORY_FILE)
	if not ok or not content or content == "" then return end
	local ok2, data = pcall(HS.JSONDecode, HS, content)
	if not ok2 or type(data) ~= "table" then return end
	if type(data.sessions) == "table" then sessions = data.sessions end
	if type(data.nextId) == "number" then nextSessionId = data.nextId end
end

loadSessionsFromFile()

-- ── UI helpers ────────────────────────────────────────────────────────────────

local agentAborted = false

local function setBusy(state)
	UI.isAssistantBusy.Value        = state
	UI.SendButton.Visible           = not state
	UI.SendButton.ImageTransparency = UI.TextBoxInput.Text == "" and 0.7 or 0
	UI.StopButton.Visible           = state == true

	if not state and currentSessionId then
		for _, s in ipairs(sessions) do
			if s.id == currentSessionId then
				s.messages       = { table.unpack(conversationHistory) }
				s.lastMessageAt  = os.time()
				local count = 0
				for _, m in ipairs(conversationHistory) do
					if m.role == "user" or m.role == "assistant" then count += 1 end
				end
				s.msgCount = count
				local groupSet, groups = {}, {}
				for _, m in ipairs(conversationHistory) do
					if m.role == "tool" and m.name then
						local g = toolNameToGroup[m.name]
						if g and not groupSet[g] then
							groupSet[g] = true
							table.insert(groups, g)
						end
					end
				end
				s.tools = groups
				break
			end
		end
		saveSessionsToFile()
	end
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

-- ── History page ──────────────────────────────────────────────────────────────

local TOOL_COLORS = {
	Script   = Color3.fromRGB(109, 217, 161),
	Web      = Color3.fromRGB(86,  156, 214),
	Explorer = Color3.fromRGB(255, 198, 102),
	IY       = Color3.fromRGB(171, 108, 108),
}

local function saveCurrentSession()
	if #conversationHistory == 0 then return end
	local firstUser = ""
	for _, m in ipairs(conversationHistory) do
		if m.role == "user" then firstUser = m.content; break end
	end
	local title = firstUser ~= "" and (firstUser:sub(1, 45) .. (#firstUser > 45 and "..." or "")) or "Conversation"
	local msgCount = 0
	for _, m in ipairs(conversationHistory) do
		if m.role ~= "system" then msgCount += 1 end
	end
	table.insert(sessions, 1, {
		id        = nextSessionId,
		title     = title,
		timestamp = os.time(),
		msgCount  = msgCount,
		tools     = {},
		messages  = { table.unpack(conversationHistory) },
	})
	nextSessionId += 1
end

local function replayRenders(renderList)
	isReplaying = true
	StepCount = 0
	UI.TotalElements.Value = 0
	for _, child in ipairs(UI.ScrollingFrameMainChat:GetChildren()) do
		if child:IsA("GuiObject") and child ~= UI.ElementTemplate and child ~= GreetFrame then
			child:Destroy()
		end
	end
	if GreetFrame then GreetFrame.Visible = false end

	for _, r in ipairs(renderList) do
		if r.t == "user" then
			local clone = UI.ElementTemplate:FindFirstChild("UserMessageFrame"):Clone()
			clone.Frame.UserMessage.Text = r.text
			UI.TotalElements.Value += 1
			clone.LayoutOrder = UI.TotalElements.Value
			clone.Visible = true
			clone.Parent  = UI.ScrollingFrameMainChat
		elseif r.t == "ai" then
			addResponse(r.text, nil)
		elseif r.t == "think" then
			addThinking(r.text)
		elseif r.t == "tool" then
			local taskFrame = addTaskFrame(r.ok and "succeeded" or "failed")
			local lbl = taskFrame:FindFirstChildWhichIsA("TextLabel", true)
			if lbl then lbl.Text = r.name or "" end
			updateTaskFrame(taskFrame, r.ok and "succeeded" or "failed", r.result or "", r.name or "")
		elseif r.t == "stop" then
			addElement("AbortText", "Stopped by user.", true)
		end
	end

	isReplaying = false
	scrollBottom()
end

local function clearChat()
	currentSessionId = nil
	currentRenders   = nil
	conversationHistory = {}
	StepCount           = 0
	UI.TotalElements.Value = 0
	for _, child in ipairs(UI.ScrollingFrameMainChat:GetChildren()) do
		if child:IsA("GuiObject") and child ~= UI.ElementTemplate and child ~= GreetFrame then child:Destroy() end
	end
	if GreetFrame then GreetFrame.Visible = true end
	UI.ScrollingFrameMainChat.CanvasSize     = UDim2.new(0, 0, 0, 0)
	UI.ScrollingFrameMainChat.CanvasPosition = Vector2.new(0, 0)
end

local function renderHistoryPage()
	for _, child in ipairs(UI.HistorySF:GetChildren()) do
		if child.Name == "GroupFrame" then child:Destroy() end
	end

	if #sessions == 0 then
		UI.HistoryPageTip.Text = "No conversation history yet."
		return
	end
	UI.HistoryPageTip.Text = "Conversation history"

	for idx, session in ipairs(sessions) do
		local card  = UI.HistoryTemplate:Clone()
		local inner = card:FindFirstChild("Frame")
		local left  = inner and inner:FindFirstChild("Left")
		local right = inner and inner:FindFirstChild("Right")

		if left then
			local top      = left:FindFirstChild("TopRowFrame")
			local titleLbl = top  and top:FindFirstChild("TitleLabel")
			local activeTag = top and top:FindFirstChild("ActiveTagFrame")
			local countLbl = left:FindFirstChild("MessageCountLabel")
			local timeLbl  = left:FindFirstChild("TimestampLabel")
			local toolsRow = left:FindFirstChild("ToolsRowFrame")

			if titleLbl  then titleLbl.Text  = session.title end
			if countLbl  then countLbl.Text  = session.msgCount .. " message" .. (session.msgCount == 1 and "" or "s") end
			if timeLbl then
				local created = os.date("%b %d %I:%M %p", session.timestamp)
				local lastLine = ""
				if session.lastMessageAt then
					lastLine = "\nLast message at " .. os.date("%b %d %I:%M %p", session.lastMessageAt)
				end
				timeLbl.Text = "Created at " .. created .. lastLine
			end
			if activeTag then activeTag.Visible = (session.id == currentSessionId) end

			if toolsRow then
				for _, ch in ipairs(toolsRow:GetChildren()) do
					if ch.Name == "ToolFrame" then ch:Destroy() end
				end
				for _, group in ipairs(session.tools) do
					local badge    = UI.HistoryToolFrame:Clone()
					local iconDot  = badge:FindFirstChild("IconColor")
					local nameLbl  = badge:FindFirstChild("ToolName")
					if iconDot then iconDot.BackgroundColor3 = TOOL_COLORS[group] or COLOR_OK end
					if nameLbl then nameLbl.Text = group end
					badge.Visible = true
					badge.Parent  = toolsRow
				end
			end
		end

		if right then
			local sid       = session.id
			local loadBtn   = right:FindFirstChild("LoadButton")
			local deleteBtn = right:FindFirstChild("DeleteButton")

			if loadBtn then
				loadBtn.MouseButton1Click:Connect(function()
					conversationHistory = { table.unpack(session.messages) }
					currentSessionId    = session.id
					currentRenders      = session.renders
					UI.CurrentPage.Value = "Agent"
					task.defer(function() replayRenders(session.renders) end)
				end)
			end
			if deleteBtn then
				deleteBtn.MouseButton1Click:Connect(function()
					local wasActive = (sid == currentSessionId)
					for i, s in ipairs(sessions) do
						if s.id == sid then table.remove(sessions, i); break end
					end
					if wasActive then clearChat() end
					saveSessionsToFile()
					renderHistoryPage()
				end)
			end
		end

		card.LayoutOrder = idx
		card.Visible     = true
		card.Parent      = UI.HistorySF
	end

	task.defer(function()
		local lay = UI.HistorySF:FindFirstChildWhichIsA("UIListLayout")
		if lay then UI.HistorySF.CanvasSize = UDim2.new(0, 0, 0, lay.AbsoluteContentSize.Y + 10) end
	end)
end

UI.CurrentPage.Changed:Connect(function(page)
	if page == "History" then renderHistoryPage() end
end)

-- ── Clear button ──────────────────────────────────────────────────────────────

UI.ClearButton.MouseButton1Click:Connect(clearChat)

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

-- ── Web Bridge (defined here so runAgentLoop can call bridgePost) ─────────────

local BRIDGE_URL = "http://127.0.0.1:7402"

local function bridgePost(path, data)
	if not http_request then return end
	local ok, json = pcall(HS.JSONEncode, HS, data)
	if not ok then return end
	pcall(http_request, {
		Url     = BRIDGE_URL .. path,
		Method  = "POST",
		Headers = { ["Content-Type"] = "application/json" },
		Body    = json,
	})
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
			recordRender({t = "stop"})
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
			local errSummary = errBody:match('"message"%s*:%s*"([^"]+)"') or errBody:match("^[^\n]+") or errBody
			local errFrame  = addTaskFrame("failed")
			local lbl = errFrame:FindFirstChildWhichIsA("TextLabel", true)
			if lbl then
				lbl.RichText = true
				lbl.Text = "Request failed (" .. statusStr .. "): " .. '<font color="#FF8888">' .. markdownToRichText(errSummary) .. '</font>'
					.. '  <font size="12" color="#A1A5A2"><u>Details</u></font>'
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
				lbl.RichText = true
				typewriteInto(lbl, markdownToRichText(rawContent) .. (usage and "\n" or ""))
				if usage then
					local tokenLabel = generatingFrame:FindFirstChild("TokenCount", true)
					if tokenLabel then
						tokenLabel.Text    = Config.model .. "  ↑ " .. (usage.prompt_tokens or 0) .. "  ↓ " .. (usage.completion_tokens or 0)
						tokenLabel.Visible = true
					end
				end
				recordRender({t = "ai", text = rawContent})
			else
				if generatingFrame then generatingFrame:Destroy(); generatingFrame = nil end
				addResponse(rawContent, usage)
			end
			generatingFrame = nil
			table.insert(conversationHistory, { role = "assistant", content = Prompt.stripMarkdown(rawContent) })
			if rawContent ~= "" then bridgePost("/roblox/result", { type = "chat", text = rawContent }) end
			break
		end

		-- Show any pre-tool commentary the model included
		if msg.content and msg.content ~= "" then
			if generatingFrame then generatingFrame:Destroy(); generatingFrame = nil end
			addResponse(msg.content)
			bridgePost("/roblox/result", { type = "chat", text = msg.content })
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
						lbl.RichText = true
						typewriteInto(lbl, markdownToRichText(message) .. (usage and "\n" or ""))
						if usage then
						 local tokenLabel = generatingFrame:FindFirstChild("TokenCount", true)
						 if tokenLabel then
						  tokenLabel.Text    = Config.model .. "  ↑ " .. (usage.prompt_tokens or 0) .. "  ↓ " .. (usage.completion_tokens or 0)
						 tokenLabel.Visible = true
						end
						end
						recordRender({t = "ai", text = message})
						generatingFrame = nil
						else
						addResponse(message, usage)
						end
						table.insert(conversationHistory, { role = "assistant", content = message })
						bridgePost("/roblox/result", { type = "chat", text = message })
				end
				if generatingFrame then generatingFrame:Destroy(); generatingFrame = nil end
				agentDone = true
				break
			end

			local taskFrame = addTaskFrame("busy")
			local lbl = taskFrame:FindFirstChildWhichIsA("TextLabel", true)
			if lbl then lbl.Text = fnName end
			bridgePost("/roblox/result", { type = "tool_start", name = fnName })
			local result = Tools.run(fnName, fnArgs)
			local failed = result:find("^Tool error") or result:find("^Unknown tool")
				or result:find("^Error") or result:find("^Compile error")
				or result:find("^Runtime error")
			updateTaskFrame(taskFrame, failed and "failed" or "succeeded", result, fnName)
			bridgePost("/roblox/result", { type = "tool_result", name = fnName, result = result, ok = not failed })
			recordRender({t = "tool", name = fnName, result = result, ok = not failed})
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

-- ── Instance registry for browser explorer ───────────────────────────────────

local _instById  = setmetatable({}, { __mode = "v" })
local _instToId  = setmetatable({}, { __mode = "k" })
local _nextInstId = 0

local function getInstId(inst)
	if _instToId[inst] then return _instToId[inst] end
	_nextInstId += 1
	_instToId[inst] = _nextInstId
	_instById[_nextInstId] = inst
	return _nextInstId
end

local function instToNode(inst, depth)
	local children = inst:GetChildren()
	local node = { id = getInstId(inst), name = inst.Name, cls = inst.ClassName }
	if #children > 0 then
		if depth > 0 then
			node.children = {}
			for _, child in ipairs(children) do
				table.insert(node.children, instToNode(child, depth - 1))
			end
		else
			node.lazy = true
		end
	end
	return node
end

local function sendGameTree()
	local tree = {}
	for _, svc in ipairs(game:GetChildren()) do
		table.insert(tree, instToNode(svc, 0))
	end
	bridgePost("/roblox/result", { type = "tree", data = tree })
end

local function sendChildren(id)
	local inst = _instById[id]
	local children = {}
	if inst then
		for _, child in ipairs(inst:GetChildren()) do
			table.insert(children, instToNode(child, 0))
		end
	end
	bridgePost("/roblox/result", { type = "children", id = id, data = children })
end

local function serializePropValue(val)
	local t = typeof(val)
	if t == "number" then
		return math.floor(val) == val and tostring(math.floor(val)) or string.format("%.4g", val)
	elseif t == "boolean" or t == "string" then
		return tostring(val)
	elseif t == "Vector3" then
		return string.format("%.3g, %.3g, %.3g", val.X, val.Y, val.Z)
	elseif t == "Vector2" then
		return string.format("%.3g, %.3g", val.X, val.Y)
	elseif t == "Color3" then
		return string.format("rgb(%d, %d, %d)", math.round(val.R*255), math.round(val.G*255), math.round(val.B*255))
	elseif t == "CFrame" then
		local p = val.Position
		return string.format("%.3g, %.3g, %.3g", p.X, p.Y, p.Z)
	elseif t == "UDim2" then
		return string.format("{%.3g, %d}, {%.3g, %d}", val.X.Scale, val.X.Offset, val.Y.Scale, val.Y.Offset)
	elseif t == "UDim" then
		return string.format("%.3g, %d", val.Scale, val.Offset)
	elseif t == "EnumItem" then
		return tostring(val)
	elseif t == "Instance" then
		return val.Name
	else
		return tostring(val)
	end
end

local function sendProps(id, propNames)
	local inst = _instById[id]
	if not inst then
		bridgePost("/roblox/result", { type = "props", id = id, cls = "", data = {} })
		return
	end
	local data = {}
	for _, name in ipairs(propNames) do
		local ok, val = pcall(function() return inst[name] end)
		if ok and val ~= nil then
			local ok2, sv = pcall(serializePropValue, val)
			data[name] = ok2 and sv or "?"
		end
	end
	bridgePost("/roblox/result", { type = "props", id = id, cls = inst.ClassName, data = data })
end

-- ── Bridge state sync ─────────────────────────────────────────────────────────

local onSend  -- forward declaration; defined after startBridgePoll

local function sendSyncState()
	local toolList = {}
	for _, entry in ipairs(Tools.getDefinitions()) do
		local fn = entry.definition and entry.definition["function"]
		if fn and fn.name ~= "done" then
			table.insert(toolList, { name = fn.name, desc = fn.description or "", group = entry.group or "Other" })
		end
	end

	local sessionList = {}
	for _, s in ipairs(sessions) do
		table.insert(sessionList, {
			id        = s.id,
			title     = s.title,
			timestamp = s.timestamp,
			msgCount  = s.msgCount or #s.messages,
		})
	end

	bridgePost("/roblox/result", {
		type     = "sync_state",
		config   = { host = Config.host, model = Config.model, apiKey = Config.apiKey },
		tools    = toolList,
		sessions = sessionList,
		activeId = currentSessionId,
		history  = conversationHistory,
	})
end

_onSettingsSaved = sendSyncState  -- wire forward declaration now that sendSyncState exists

local function handleSettingsUpdate(data)
	if type(data.host)   == "string" and data.host   ~= "" then Config.host   = data.host   end
	if type(data.model)  == "string" and data.model  ~= "" then Config.model  = data.model  end
	if type(data.apiKey) == "string"                        then Config.apiKey = data.apiKey end
	Config.save()
	Toast.show("Synced", "Settings updated from browser", "ok", 2)
end

local function handleLoadSession(id)
	for _, s in ipairs(sessions) do
		if s.id == id then
			currentSessionId   = s.id
			currentRenders     = s.renders
			conversationHistory = { table.unpack(s.messages) }
			bridgePost("/roblox/result", { type = "session_loaded", id = id, history = s.messages })
			return
		end
	end
	bridgePost("/roblox/result", { type = "session_loaded", id = id, history = {} })
end

-- ── Bridge poll ───────────────────────────────────────────────────────────────

local bridgeActive  = false   -- true only while bridge is reachable
local pollLoopAlive = false   -- prevents duplicate loops

local function startBridgePoll()
	if not http_request then return end
	if pollLoopAlive then return end
	pollLoopAlive = true
	task.spawn(function()
		while bridgeActive do
			-- long-poll: bridge holds this request until a message arrives (up to 15s)
			local ok, res = pcall(http_request, {
				Url    = BRIDGE_URL .. "/roblox/poll",
				Method = "GET",
			})
			if not bridgeActive then break end
			if not ok then
				task.wait(1)  -- back off on network error
			elseif res and res.StatusCode == 200 and res.Body and res.Body ~= "null" then
				local ok2, msg = pcall(HS.JSONDecode, HS, res.Body)
				if ok2 and msg then
					if msg.type == "chat" and type(msg.text) == "string" and msg.text ~= "" then
						onSend(msg.text)
					elseif msg.type == "get_tree" then
						task.spawn(sendGameTree)
					elseif msg.type == "get_children" and msg.id then
						task.spawn(sendChildren, msg.id)
					elseif msg.type == "get_props" and msg.id then
						local captured = msg
						task.spawn(function() sendProps(captured.id, captured.props or {}) end)
					elseif msg.type == "get_state" then
						task.spawn(sendSyncState)
					elseif msg.type == "settings_update" then
						local captured = msg
						task.spawn(function() handleSettingsUpdate(captured) end)
					elseif msg.type == "load_session" and msg.id then
						local captured = msg.id
						task.spawn(function() handleLoadSession(captured) end)
					end
				end
			end
			-- null response = timeout, loop immediately for next long-poll
		end
		pollLoopAlive = false
	end)
end

-- ── onSend ────────────────────────────────────────────────────────────────────

onSend = function(webText)
	local text = webText or UI.TextBoxInput.Text
	if text == "" or UI.isAssistantBusy.Value then return end
	if not webText then UI.TextBoxInput.Text = "" end

	if #conversationHistory == 0 and currentSessionId == nil then
		local title = text:sub(1, 45) .. (#text > 45 and "..." or "")
		local sid = nextSessionId
		nextSessionId += 1
		local renders = {}
		local newSession = {
			id        = sid,
			title     = title,
			timestamp = os.time(),
			msgCount  = 0,
			tools     = {},
			messages  = {},
			renders   = renders,
		}
		table.insert(sessions, 1, newSession)
		currentSessionId = sid
		currentRenders   = renders
	end

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

UI.SendButton.MouseButton1Click:Connect(function() onSend() end)
UI.TextBoxInput.FocusLost:Connect(function(enterPressed)
	if enterPressed then onSend() end
end)

-- ── Browser page ──────────────────────────────────────────────────────────────

local browserLogs = {}
local function bridgeLog(msg)
	table.insert(browserLogs, os.date("[%H:%M:%S] ") .. msg)
	if #browserLogs > 200 then table.remove(browserLogs, 1) end
end

-- You dot is always green — the plugin is the local end
UI.BrowserDotYou.BackgroundColor3 = COLOR_OK

-- Shimmer: sweep UIGradient offset from -1 to +1, loop forever
local shimmerTI = TweenInfo.new(1.5, Enum.EasingStyle.Linear, Enum.EasingDirection.Out, -1, false, 0.4)
TS:Create(UI.BrowserGrad1, shimmerTI, { Offset = Vector2.new(1, 0) }):Play()
TS:Create(UI.BrowserGrad2, shimmerTI, { Offset = Vector2.new(1, 0) }):Play()

-- Wire all CopyButtons in the instructions area
for _, btn in ipairs(UI.BrowserInstructions:GetDescendants()) do
	if btn.Name == "CopyButton" and btn:IsA("TextButton") then
		local val = btn:FindFirstChildWhichIsA("StringValue")
		if val then
			btn.MouseButton1Click:Connect(function()
				pcall(setclipboard, val.Value)
				Toast.show("Copied", val.Value, "ok", 2)
			end)
		end
	end
end

local function setDotState(dot, icon, label, connected)
	dot.BackgroundColor3         = connected and COLOR_OK or COLOR_ERR
	icon.ImageTransparency       = connected and 0 or 0.6
	label.TextTransparency       = connected and 0 or 0.6
end

local SHIMMER_DIM   = NumberSequence.new{ NumberSequenceKeypoint.new(0, 1), NumberSequenceKeypoint.new(0.5, 0.9), NumberSequenceKeypoint.new(1, 1) }
local SHIMMER_FULL  = NumberSequence.new{ NumberSequenceKeypoint.new(0, 1), NumberSequenceKeypoint.new(0.5, 0),   NumberSequenceKeypoint.new(1, 1) }
local shimmerTweenI = TweenInfo.new(0.5, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)

local function setShimmer(full)
	-- UIGradient Transparency can't be tweened directly; swap instantly
	UI.BrowserGrad1.Transparency = full and SHIMMER_FULL or SHIMMER_DIM
	UI.BrowserGrad2.Transparency = full and SHIMMER_FULL or SHIMMER_DIM
end

local function checkBridgeStatus()
	if not http_request then return end
	local ok, res = pcall(http_request, { Url = BRIDGE_URL .. "/ping", Method = "GET" })
	local bridgeOk = ok and res and res.StatusCode == 200
	setDotState(UI.BrowserDotBridge, UI.BrowserIconBridge, UI.BrowserLabelBridge, bridgeOk)
	if bridgeOk then
		bridgeLog("Bridge OK")
		local ok2, res2 = pcall(http_request, { Url = BRIDGE_URL .. "/status", Method = "GET" })
		if ok2 and res2 and res2.StatusCode == 200 then
			local ok3, data = pcall(HS.JSONDecode, HS, res2.Body)
			local webOk = ok3 and data and data.browser == true
			setDotState(UI.BrowserDotWeb, UI.BrowserIconWeb, UI.BrowserLabelWeb, webOk)
			setShimmer(webOk)
			bridgeLog("Web " .. (webOk and "connected" or "not connected"))
		else
			setDotState(UI.BrowserDotWeb, UI.BrowserIconWeb, UI.BrowserLabelWeb, false)
			setShimmer(false)
		end
		if not bridgeActive then
			bridgeActive = true
			startBridgePoll()
		end
	else
		bridgeLog("Bridge unreachable")
		bridgeActive = false
		setDotState(UI.BrowserDotWeb, UI.BrowserIconWeb, UI.BrowserLabelWeb, false)
		setShimmer(false)
	end
end

-- Status dots (start red/dimmed until first check)
setDotState(UI.BrowserDotBridge, UI.BrowserIconBridge, UI.BrowserLabelBridge, false)
setDotState(UI.BrowserDotWeb,    UI.BrowserIconWeb,    UI.BrowserLabelWeb,    false)

UI.CurrentPage.Changed:Connect(function(page)
	if page == "Browser" then task.spawn(checkBridgeStatus) end
end)

task.spawn(function()
	while true do
		task.wait(5)
		if UI.CurrentPage.Value == "Browser" then task.spawn(checkBridgeStatus) end
	end
end)

UI.ForceRefreshButton.MouseButton1Click:Connect(function()
	task.spawn(checkBridgeStatus)
end)

UI.OpenBrowserLogsButton.MouseButton1Click:Connect(function()
	if UI.ModalTitleLabel then UI.ModalTitleLabel.Text = "Bridge Logs" end
	UI.SearchModelModal.Visible    = false
	UI.ToolResultViewModal.Visible = false
	UI.SystemPromptModal.Visible   = false
	UI.BrowserLogsModal.Visible    = true
	UI.BrowserLogsTextBox.Text     = #browserLogs > 0 and table.concat(browserLogs, "\n") or "(no logs yet)"
	UI.ModalFrame.Visible          = true
end)

UI.ConnectToBrowserButton.MouseButton1Click:Connect(function()
	UI.CurrentPage.Value = "Browser"
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
