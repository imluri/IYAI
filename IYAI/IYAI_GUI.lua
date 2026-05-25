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

	local MONO = 'family="rbxasset://fonts/families/RobotoMono.json"'
	local function inline(s)
		if not s or s == "" then return "" end
		s = s:gsub("`([^`]+)`",    '<font '..MONO..' color="rgb(255,100,100)">%1</font>')
		s = s:gsub("%*%*(.-)%*%*", "<b>%1</b>")
		s = s:gsub("%*(.-)%*",     "<i>%1</i>")
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
				out[#out+1] = '<font family="rbxasset://fonts/families/RobotoMono.json" color="rgb(180,180,180)">' .. table.concat(codeBuf, "\n") .. '</font>'
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
			out[#out+1] = '<font size="'..hs[3]..'">'.. '<b>'..inline(content)..'</b>' ..'</font>'
		elseif line:match("^##") then
			local content = line:gsub("^##%s*", "")
			out[#out+1] = '<font size="'..hs[2]..'">'.. '<b>'..inline(content)..'</b>' ..'</font>'
		elseif line:match("^#") then
			local content = line:gsub("^#%s*", "")
			out[#out+1] = '<font size="'..hs[1]..'">'.. '<b>'..inline(content)..'</b>' ..'</font>'
		elseif line:match("^>") then
			local content = line:gsub("^>%s*", "")
			out[#out+1] = '<font color="rgb(150,200,150)">▍ '..inline(content)..'</font>'
		elseif line:match("^%s*[-*+]") then
			local content = line:gsub("^%s*[-*+]%s*", "")
			out[#out+1] = '<b>  •</b>  '..inline(content)
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
	NewChatButton          = G2L["5e"],
	-- Settings page
	SettingsPage           = G2L["62"],
	Settings_SF            = G2L["63"],
	APIKeyFrame                = G2L["64"],
	APIKeyLabel                = G2L["66"],
	APIKeyBox                  = G2L["67"],
	APIKeySingleButton         = G2L["6c"],
	APIKeyMultiButton          = G2L["70"],
	SetMultipleAPIKeysButton   = G2L["72"],
	HostSelectFrame            = G2L["74"],
	HostTitle              = G2L["75"],
	HostFrame              = G2L["76"],
	HostButtons            = G2L["76"]:GetChildren(),
	ModelSelectFrame       = G2L["9d"],
	ModelFrame             = G2L["9f"],
	ModelBox               = G2L["a0"],
	DropdownButton         = G2L["a3"],
	DropdownList           = Instance.new("Frame"),
	TestFrame              = G2L["a6"],
	ConnectionButton       = G2L["a9"],
	CredentialButton       = G2L["b0"],
	ConnectionIconColor    = G2L["ac"],
	CredentialIconColor    = G2L["b3"],
	MaxStepFrame           = G2L["b7"],
	MaxStepBox             = G2L["ba"],
	MaxStepResetButton     = G2L["bd"],
	TemperatureBox         = G2L["c3"],
	TemperatureResetButton = G2L["c6"],
	SystemPromptFrame      = G2L["c8"],
	SystemPromptButton     = G2L["ca"],
	UnsavedChanges         = G2L["cc"],
	TextLabel              = G2L["ce"],
	SaveButton             = G2L["d0"],
	RevertButton           = G2L["d2"],
	-- Code page
	CodePage               = G2L["d5"],
	CodeTopFrame           = G2L["d6"],
	CodeActionsFrame       = G2L["d7"],
	CodeClearButton        = G2L["da"],
	CodeCopyButton         = G2L["de"],
	RunButton              = G2L["e2"],
	TabsFrame              = G2L["e5"],
	TabsScrollingFrame     = G2L["e6"],
	TabButtonTemplate      = G2L["e7"],
	NewTabButton           = G2L["ea"],
	CodeSF                 = G2L["ed"],
	CodeBox                = G2L["ef"],
	IntelLabel             = G2L["f1"],
	LineLabel              = G2L["f2"],
	-- Tools page
	ToolsPage              = G2L["f4"],
	ToolsSF                = G2L["f5"],
	ToolsElementTemplate   = G2L["f8"],
	ToolsGroupFrame        = G2L["f9"],
	ToolsGroupInner        = G2L["fb"],
	ToolsGroupTitle        = G2L["fc"],
	ToolsToolFrame         = G2L["100"],
	ToolsToolNameDesc      = G2L["103"],
	ToolsTotalElements     = G2L["105"],
	-- Startup page
	StartupPageSF          = G2L["10a"],
	StartupPageLayout      = G2L["10b"],
	StartupElemTemplate    = G2L["10d"],
	StartupGroupFrame      = G2L["10e"],
	StartupGroupInner      = G2L["110"],
	StartupGroupTitle      = G2L["111"],
	StartupToolFrame       = G2L["115"],
	StartupToolNameDesc    = G2L["118"],
	StartupTotalElems      = G2L["11a"],
	-- History page
	HistoryPage            = G2L["11d"],
	HistorySF              = G2L["11e"],
	HistoryTemplate        = G2L["122"],
	HistoryToolFrame       = G2L["12b"],
	HistoryTotalElements   = G2L["145"],
	HistoryPageTip         = G2L["146"],
	HistoryButtonFrame     = G2L["1af"],
	-- Browser page
	BrowserPage            = G2L["148"],
	BrowserDotYou          = G2L["14e"],
	BrowserDotBridge       = G2L["155"],
	BrowserDotWeb          = G2L["15b"],
	BrowserIconBridge      = G2L["153"],
	BrowserLabelBridge     = G2L["154"],
	BrowserIconWeb         = G2L["159"],
	BrowserLabelWeb        = G2L["15a"],
	BrowserGrad1           = G2L["163"],
	BrowserGrad2           = G2L["167"],
	BrowserInstructions    = G2L["160"],
	BrowserLogsTextBox     = G2L["1ec"],
	ConnectToBrowserButton = G2L["51"],
	ForceRefreshButton     = G2L["178"],
	OpenBrowserLogsButton  = G2L["176"],
	BrowserButtonHitbox    = G2L["1ae"],
	-- Skills page
	SkillsPage             = G2L["17a"],
	SkillsSF               = G2L["173"],
	SkillsTemplate         = G2L["176"],
	SkillsGroupFrame       = G2L["177"],
	SkillsPageTip          = G2L["192"],
	SkillsTotalElements    = G2L["191"],
	SkillsRefreshButton    = G2L["195"],
	SkillsRefreshText      = G2L["197"],
	SkillsButtonHitbox     = G2L["1b0"],
	-- Sidebar & topbar
	LeftSidebar            = G2L["198"],
	TopBar                 = G2L["1bf"],
	CloseButton            = G2L["1c1"],
	MinimizeButton         = G2L["1c4"],
	Highlight              = G2L["1c5"],
	-- Modal
	ModalFrame             = G2L["1c6"],
	ModalInner             = G2L["1c8"],
	ModalCloseButton       = G2L["1ca"],
	SearchModelModal       = G2L["1cb"],
	ModalSearchBox         = G2L["1cd"],
	ModalSF                = G2L["1d1"],
	ExampleModelBtn        = G2L["1d2"],
	ModalSearchButton      = G2L["1d0"],
	ModalOpenButton        = G2L["a3"],
	ToolResultViewModal    = G2L["1d5"],
	ToolResultSF           = G2L["1d7"],
	ToolResultTextBox      = G2L["1da"],
	ModalTitleLabel        = G2L["1db"],
	SystemPromptModal      = G2L["1dd"],
	SystemPromptSF         = G2L["1df"],
	SystemPromptTextBox    = G2L["1e0"],
	SystemPromptResetButton = G2L["1e5"],
	SystemPromptSaveButton  = G2L["1e6"],
	BrowserLogsModal       = G2L["1e7"],
	-- Multi API key modal
	SetMultiAPIKeyModal    = G2L["1ed"],
	MultiAPIKeyTextBox     = G2L["1f0"],
	MultiAPIKeyClearButton = G2L["1f6"],
	MultiAPIKeySaveButton  = G2L["1f7"],
	-- Confirmation modal
	ConfirmationFrame      = G2L["1f8"],
	ConfirmYesButton       = G2L["1fc"],
	ConfirmNoButton        = G2L["1fd"],
	ConfirmTextLabel       = G2L["1fe"],
	-- Misc
	IntroFrame             = G2L["200"],
	IYAIToastContainer     = G2L["203"],
	ToastTemplate          = G2L["204"],
	CurrentPage            = G2L["210"],
	OpenConversationHistoryButton = G2L["50"],
}
-- ── Main logic ────────────────────────────────────────────────────────────────

local Clr = {
    ok    = Color3.fromRGB(109, 217, 161),
    err   = Color3.fromRGB(171, 108, 108),
    idle  = Color3.fromRGB(41,  41,  41),
    tools = {
        Script   = Color3.fromRGB(109, 217, 161),
        Web      = Color3.fromRGB(86,  156, 214),
        Explorer = Color3.fromRGB(255, 198, 102),
        IY       = Color3.fromRGB(171, 108, 108),
    },
    sdim  = NumberSequence.new{ NumberSequenceKeypoint.new(0, 1), NumberSequenceKeypoint.new(0.5, 0.9), NumberSequenceKeypoint.new(1, 1) },
    sfull = NumberSequence.new{ NumberSequenceKeypoint.new(0, 1), NumberSequenceKeypoint.new(0.5, 0),   NumberSequenceKeypoint.new(1, 1) },
}

local VERSION           = G2L["211"] and G2L["211"].Value or ""
local Tween             = TweenInfo.new(0.5, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut)
local DefaultIYAISize   = UDim2.new(0, 600, 0, 400)
local MinimizedIYAISize = UDim2.new(0, 160, 0, 25)
local Minimized         = false
local modelList         = {}
local _loading          = false

UI.ToastTemplate.Visible = false
Toast.init(UI.ToastTemplate, UI.IYAIToastContainer)

-- ── Startup page ──────────────────────────────────────────────────────────────

local _startupGroup = nil
local _startupInner = nil

local function addStartupEvent(status, title, desc)
	local colors = { ok = Clr.ok, warn = Color3.fromRGB(171, 171, 0), err = Clr.err }
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
local function fetch9routerModels()     fetchModelsFromOpenAIEndpoint("http://localhost:20128/v1/models",                                    Config.apiKey)  end
local function fetchOpenCodeModels()    fetchModelsFromOpenAIEndpoint("https://opencode.ai/zen/v1/models",                                   Config.apiKey)  end

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
		elseif Config.host == "9router" then
			fetch9routerModels()
		elseif Config.host == "OpenCode" then
			fetchOpenCodeModels()
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

local Agt = { history = {}, sessionId = nil, renders = nil, replaying = false, step = 0, aborted = false, codeHistory = {} }

local function recordRender(entry)
	if Agt.renders and not Agt.replaying then
		table.insert(Agt.renders, entry)
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

local function addStep()
	Agt.step += 1
	addElement("StepN", "Step " .. Agt.step, true)
end

local function addThinking(text)
	addElement("AssistantThinking", text, true)
	recordRender({t = "think", text = text})
end

local TYPEWRITER_SPEED = 3
local RICH_TAGS = {"b", "i", "s", "u", "font", "stroke"}

local function balanceRichTags(s)
	s = s:gsub("<[^>]*$", "")  -- strip trailing incomplete tag (e.g. "<fon")
	local suffix = {}
	for _, tag in ipairs(RICH_TAGS) do
		local openPat = (tag == "font" or tag == "stroke") and ("<" .. tag .. "[%s>]") or ("<" .. tag .. ">")
		local opens  = select(2, s:gsub(openPat, ""))
		local closes = select(2, s:gsub("</" .. tag .. ">", ""))
		for _ = 1, math.max(0, opens - closes) do
			table.insert(suffix, "</" .. tag .. ">")
		end
	end
	return s .. table.concat(suffix)
end

local function typewriteInto(element, text)
	if element then element.RichText = true end
	if Agt.replaying then
		if element and element.Parent then element.Text = text end
		return
	end
	local len = string.len(text)
	local i = 0
	while i < len do
		if not element or not element.Parent then break end
		i = math.min(i + TYPEWRITER_SPEED, len)
		element.Text = balanceRichTags(string.sub(text, 1, i))
		scrollBottom()
		task.wait()
	end
	if element and element.Parent then element.Text = text end
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

local syntaxHighlight  -- forward-declare; assigned inside do-block to keep constants off outer scope

do
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

	function syntaxHighlight(code)
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
	end  -- function syntaxHighlight
end  -- do block

local function updateHighlight()
	local code = UI.CodeBox.Text
	if UI.IntelLabel then
		if code == "" then UI.IntelLabel.Text = ""; return end
		local ok, result = pcall(syntaxHighlight, code)
		if ok then UI.IntelLabel.Text = result end
	end
end

local scheduleTabSave, scheduleBridgeCodeSync, bridgeSyncTabs, bridgePost, Br  -- forward declarations; defined below

updateLineNumbers()
updateHighlight()
UI.CodeBox:GetPropertyChangedSignal("Text"):Connect(function()
	updateLineNumbers()
	updateHighlight()
	if not UI.CodeBox:IsFocused() then
		UI.CodeSF.CanvasPosition = Vector2.new(0, UI.CodeSF.AbsoluteCanvasSize.Y)
	end
	if UI.CodeBox:IsFocused() then
		scheduleTabSave()
		scheduleBridgeCodeSync()
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

-- ── Code tabs ─────────────────────────────────────────────────────────────────

local Tabs = { max = 10, list = {}, active = nil, saveTask = nil, syncTask = nil }
local saveTabsToFile  -- forward declaration

scheduleTabSave = function()
	if Tabs.saveTask then task.cancel(Tabs.saveTask) end
	Tabs.saveTask = task.delay(1.2, function()
		if Tabs.active then Tabs.active.code = UI.CodeBox.Text end
		Tabs.saveTask = nil
		saveTabsToFile()
	end)
end

scheduleBridgeCodeSync = function()
	if not Br or not Br.active then return end
	if Tabs.syncTask then task.cancel(Tabs.syncTask) end
	Tabs.syncTask = task.delay(0.4, function()
		Tabs.syncTask = nil
		if not Br.active or not Tabs.active then return end
		local idx = table.find(Tabs.list, Tabs.active) or 1
		bridgePost("/roblox/result", {
			type     = "code_update",
			tabIndex = idx,
			code     = UI.CodeBox.Text,
		})
	end)
end

bridgeSyncTabs = function()
	if not Br or not Br.active then return end
	local list = {}
	for i, t in ipairs(Tabs.list) do
		list[i] = { name = t.name, active = t == Tabs.active }
	end
	bridgePost("/roblox/result", { type = "tabs_meta", tabs = list })
end

local function updateTabVisuals()
	for _, tab in ipairs(Tabs.list) do
		if tab.button then
			tab.button.BackgroundTransparency = (tab == Tabs.active) and 0.75 or 0.95
		end
	end
	UI.NewTabButton.Visible = #Tabs.list < Tabs.max
end

local function switchCodeTab(tab)
	if Tabs.active then Tabs.active.code = UI.CodeBox.Text end
	Tabs.active = tab
	UI.CodeBox.Text = tab.code
	updateTabVisuals()
	bridgeSyncTabs()
	scheduleBridgeCodeSync()
end

local function removeCodeTab(tab)
	if #Tabs.list <= 1 then return end  -- keep at least one tab
	local idx = table.find(Tabs.list, tab)
	if not idx then return end
	tab.button:Destroy()
	table.remove(Tabs.list, idx)
	-- fix LayoutOrders
	for i, t in ipairs(Tabs.list) do t.button.LayoutOrder = i end
	if Tabs.active == tab then
		switchCodeTab(Tabs.list[math.min(idx, #Tabs.list)])
	else
		updateTabVisuals()
		bridgeSyncTabs()
	end
	saveTabsToFile()
end

local function addCodeTab(name, code, switchTo)
	if #Tabs.list >= Tabs.max then return end
	local btn = UI.TabButtonTemplate:Clone()
	local tab = { name = name or ("Tab " .. (#Tabs.list + 1)), code = code or "", button = btn }
	table.insert(Tabs.list, tab)
	btn.Text         = tab.name
	btn.LayoutOrder  = #Tabs.list
	btn.Visible      = true
	btn.Parent       = UI.TabsScrollingFrame
	btn.MouseButton1Click:Connect(function()  switchCodeTab(tab)  end)
	btn.MouseButton2Click:Connect(function()  removeCodeTab(tab)  end)
	if switchTo ~= false then switchCodeTab(tab) else bridgeSyncTabs() end
	saveTabsToFile()
	return tab
end

-- Wire the first tab to the existing TabButtonTemplate
do
	local firstTab = { name = "Tab 1", code = UI.CodeBox.Text, button = UI.TabButtonTemplate }
	table.insert(Tabs.list, firstTab)
	Tabs.active = firstTab
	UI.TabButtonTemplate.LayoutOrder = 1
	UI.TabButtonTemplate.MouseButton1Click:Connect(function() switchCodeTab(firstTab) end)
	updateTabVisuals()
end

local TABS_FILE = "IYAI_tabs.json"

saveTabsToFile = function()
	if not writefile then return end
	if Tabs.active then Tabs.active.code = UI.CodeBox.Text end
	local data = {}
	for _, t in ipairs(Tabs.list) do
		data[#data+1] = { name = t.name, code = t.code }
	end
	local ok, json = pcall(HS.JSONEncode, HS, data)
	if ok then pcall(writefile, TABS_FILE, json) end
end

local function loadTabsFromFile()
	if not readfile then return end
	local ok, content = pcall(readfile, TABS_FILE)
	if not ok or not content or content == "" then return end
	local ok2, data = pcall(HS.JSONDecode, HS, content)
	if not ok2 or type(data) ~= "table" or #data == 0 then return end
	local first = data[1]
	if type(first) == "table" then
		Tabs.list[1].name = type(first.name) == "string" and first.name or "Tab 1"
		Tabs.list[1].code = type(first.code) == "string" and first.code or ""
		Tabs.list[1].button.Text = Tabs.list[1].name
		UI.CodeBox.Text = Tabs.list[1].code
	end
	for i = 2, #data do
		local t = data[i]
		if type(t) == "table" then
			addCodeTab(
				type(t.name) == "string" and t.name or ("Tab " .. i),
				type(t.code) == "string" and t.code or "",
				false
			)
		end
	end
	updateTabVisuals()
end

loadTabsFromFile()

UI.NewTabButton.MouseButton1Click:Connect(function()
	addCodeTab(nil, "", true)
end)

UI.CodeBox:GetPropertyChangedSignal("Text"):Connect(scheduleTabSave)

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

local function resolveTab(tabArg)
	if tabArg == nil or tabArg == "" then return Tabs.active end
	local idx = tonumber(tabArg)
	if idx then return Tabs.list[math.floor(idx)] end
	local q = tostring(tabArg):lower()
	for _, t in ipairs(Tabs.list) do
		if t.name:lower() == q then return t end
	end
	return nil  -- not found
end

local function tabListStr()
	local names = {}
	for i, t in ipairs(Tabs.list) do names[i] = i .. ": " .. t.name end
	return table.concat(names, ", ")
end

Tools.register({
	group = CODE_TOOL_GROUP,
	definition = {
		type = "function",
		["function"] = {
			name        = "list_tabs",
			description = "List all open code tabs with their index and name. Returns which tab is currently active.",
			parameters  = { type = "object", properties = {}, required = {} }
		}
	},
	handler = function()
		if #Tabs.list == 0 then return "No tabs open." end
		local lines = {}
		for i, tab in ipairs(Tabs.list) do
			local marker = (tab == Tabs.active) and " (active)" or ""
			lines[#lines+1] = i .. ": " .. tab.name .. marker
		end
		return table.concat(lines, "\n")
	end
})

Tools.register({
	group = CODE_TOOL_GROUP,
	definition = {
		type = "function",
		["function"] = {
			name        = "switch_tab",
			description = "Switch the active code tab by index (1-based) or by name. All subsequent read_code/write_code/run calls will operate on that tab.",
			parameters  = {
				type = "object",
				properties = {
					tab = { type = "string", description = "Tab index (e.g. '2') or tab name (e.g. 'Tab 2')." }
				},
				required = { "tab" }
			}
		}
	},
	handler = function(args)
		local query = tostring(args.tab or ""):match("^%s*(.-)%s*$")
		local target
		local idx = tonumber(query)
		if idx then
			target = Tabs.list[math.floor(idx)]
		else
			local q = query:lower()
			for _, tab in ipairs(Tabs.list) do
				if tab.name:lower() == q then target = tab; break end
			end
		end
		if not target then
			return "Tab not found: '" .. query .. "'. Available: " .. tabListStr()
		end
		switchCodeTab(target)
		return "Switched to tab: " .. target.name
	end
})
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
		local code = Tabs.active and Tabs.active.code or UI.CodeBox.Text
		if code == "" then return "Code editor is empty. Use write_code() first." end
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
	group = CODE_TOOL_GROUP,
	definition = {
		type = "function",
		["function"] = {
			name        = "write_code",
			description = "Write or fully replace the code in a tab. Defaults to the active tab; pass tab index or name to write to another tab without switching.",
			parameters  = { type = "object", properties = {
				code = { type = "string", description = "The full Lua code to write." },
				tab  = { type = "string", description = "Tab index or name (optional). Omit for active tab." },
			}, required = { "code" } }
		}
	},
	handler = function(args)
		local code = unescapeCode(args.code or "")
		local tab = resolveTab(args.tab)
		if not tab then
			-- create a new tab with that name
			local name = tostring(args.tab)
			tab = addCodeTab(name, "", false)
			if not tab then return "Cannot create tab '" .. name .. "' — tab limit reached." end
		end
		if tab == Tabs.active then
			UI.CodeBox.Text = code
		else
			tab.code = code
		end
		local lines = select(2, code:gsub("\n", "\n")) + 1
		local _, syntaxErr = loadstring(code)
		local suffix = syntaxErr and (" — Syntax error: " .. tostring(syntaxErr)) or ""
		local tabNote = (tab ~= Tabs.active) and (" (tab: " .. tab.name .. ")") or ""
		return "Code written (" .. lines .. " lines)" .. tabNote .. suffix
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
			description = "Read and return the full contents of a code tab. Defaults to the active tab; pass tab index or name to read another tab without switching.",
			parameters  = { type = "object", properties = { tab = { type = "string", description = "Tab index or name (optional). Omit for active tab." } } }
		}
	},
	handler = function(args)
		local tab = resolveTab(args.tab)
		if not tab then
			return "Tab not found: '" .. tostring(args.tab) .. "'. Available: " .. tabListStr()
		end
		local code = (tab == Tabs.active) and UI.CodeBox.Text or tab.code
		if code == "" then return "(tab is empty)" end
		return code
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
			name        = "grep",
			description = "Search all code tabs (or a specific tab) using a Lua pattern. Returns tab name, line number, and matching line. Use for cross-tab searches or pattern-based searches (e.g. function definitions, variable names).",
			parameters  = { type = "object", properties = {
				pattern = { type = "string", description = "Lua pattern to search for (plain strings work too)." },
				tab     = { type = "string", description = "Tab index or name to search (optional). Omit to search all tabs." },
			}, required = { "pattern" } }
		}
	},
	handler = function(args)
		local pat = args.pattern or ""
		if pat == "" then return "No pattern provided." end
		local targets
		if args.tab and args.tab ~= "" then
			local t = resolveTab(args.tab)
			if not t then return "Tab not found: '" .. tostring(args.tab) .. "'. Available: " .. tabListStr() end
			targets = { t }
		else
			if Tabs.active then Tabs.active.code = UI.CodeBox.Text end
			targets = Tabs.list
		end
		local matches, total = {}, 0
		for _, tab in ipairs(targets) do
			local src = (tab == Tabs.active) and UI.CodeBox.Text or tab.code
			local lines = src:split("\n")
			for i, line in ipairs(lines) do
				local ok, found = pcall(string.find, line, pat)
				if ok and found then
					matches[#matches+1] = tab.name .. ":" .. i .. ": " .. line
					total = total + 1
				end
			end
		end
		if total == 0 then return "No matches." end
		return total .. " match(es):\n" .. table.concat(matches, "\n")
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

local Set = {
	host      = Config.host,
	ddOpen    = false,
	loadKey   = true,
	keyFocus  = false,
	filtList  = {},
	allHosts  = {"OpenRouter", "Ollama", "Mistral", "Groq", "Pollinations", "HuggingFace", "Google AI Studio", "9router", "OpenCode"},
	cache     = {},
}

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

for _, h in ipairs(Set.allHosts) do
	local pd = Config.providerData and Config.providerData[h] or {}
	Set.cache[h] = { key = pd.apiKey or "", model = pd.model or "", mode = pd.mode or "single" }
end
-- Authoritative current values from Config
Set.cache[Config.host] = { key = Config.apiKey, model = Config.model, mode = Config.apiKeyMode or "single" }

local function applyProviderToUI(host)
	local cached = Set.cache[host] or {}
	UI.APIKeyBox.Text             = cached.key or ""
	UI.APIKeyBox.TextTransparency = 1
	UI.APIKeyLabel.Text           = maskKey(cached.key or "")
	UI.ModelBox.Text              = cached.model or ""
	Config.apiKeyMode             = cached.mode or "single"
end

applyProviderToUI(Config.host)
UI.MaxStepBox.Text     = tostring(Config.maxSteps)
UI.TemperatureBox.Text = tostring(Config.temperature)
Set.host    = Config.host

for _, b in pairs(UI.HostButtons) do
	if b:IsA("TextButton") then
		b.BackgroundTransparency = b.Text == Set.host and 0.9 or 1
	end
end

updateHostLabel(Set.host)
_loading    = false
Set.loadKey = false

-- ── API key mode toggle (Single / Multi) ─────────────────────────────────────

local function applyAPIKeyMode(mode)
	local isMulti = mode == "multi"
	UI.APIKeyLabel.Visible              = not isMulti
	UI.SetMultipleAPIKeysButton.Visible = isMulti
	UI.APIKeySingleButton.BackgroundTransparency = isMulti and 1 or 0.85
	UI.APIKeyMultiButton.BackgroundTransparency  = isMulti and 0.85 or 1
end

applyAPIKeyMode(Config.apiKeyMode)

UI.APIKeySingleButton.MouseButton1Click:Connect(function()
	Config.apiKeyMode = "single"
	Set.cache[Set.host] = Set.cache[Set.host] or {}
	Set.cache[Set.host].mode = "single"
	applyAPIKeyMode("single")
	UI.UnsavedChanges.Visible = true
end)

UI.APIKeyMultiButton.MouseButton1Click:Connect(function()
	local singleKey = UI.APIKeyBox.Text
	if singleKey ~= "" then
		local already = false
		for _, k in ipairs(Config.openrouterKeys or {}) do
			if k == singleKey then already = true; break end
		end
		if not already then
			Config.openrouterKeys = Config.openrouterKeys or {}
			table.insert(Config.openrouterKeys, 1, singleKey)
		end
	end
	Config.apiKeyMode = "multi"
	Set.cache[Set.host] = Set.cache[Set.host] or {}
	Set.cache[Set.host].mode = "multi"
	applyAPIKeyMode("multi")
	UI.UnsavedChanges.Visible = true
end)

UI.APIKeyBox.Focused:Connect(function()
	Set.keyFocus   = true
	UI.APIKeyLabel.Text = string.rep("•", #UI.APIKeyBox.Text)
end)

UI.APIKeyBox.FocusLost:Connect(function()
	Set.keyFocus   = false
	UI.APIKeyLabel.Text = maskKey(UI.APIKeyBox.Text)
	if not Set.loadKey then UI.UnsavedChanges.Visible = true end
end)

UI.APIKeyBox:GetPropertyChangedSignal("Text"):Connect(function()
	if Set.loadKey then return end
	UI.UnsavedChanges.Visible = true
	if Set.keyFocus then UI.APIKeyLabel.Text = string.rep("•", #UI.APIKeyBox.Text) end
end)

local function closeDropdown()
	Set.ddOpen         = false
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
	Set.ddOpen         = true
	UI.DropdownList.Visible = true
end

local function filterDropdown(query)
	local q = query:lower()
	Set.filtList = {}
	for _, m in ipairs(modelList) do
		if m.name:lower():find(q, 1, true) then table.insert(Set.filtList, m) end
	end
	populateDropdown(Set.filtList)
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
	if Set.ddOpen then closeDropdown() else filterDropdown(UI.ModelBox.Text) end
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
	if not Set.ddOpen then return end
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
	applyAPIKeyMode(Config.apiKeyMode)
end

updateApiKeyVisibility(Set.host)

for _, btn in pairs(UI.HostButtons) do
	if not btn:IsA("TextButton") then continue end
	btn.MouseButton1Click:Connect(function()
		-- Save current provider's unsaved key+model to cache
		Set.cache[Set.host] = { key = UI.APIKeyBox.Text, model = UI.ModelBox.Text, mode = Config.apiKeyMode }
		Set.host = btn.Text
		for _, b in pairs(UI.HostButtons) do
			if b:IsA("TextButton") then
				b.BackgroundTransparency = b.Text == Set.host and 0.9 or 1
			end
		end
		UI.ConnectionIconColor.BackgroundColor3 = Clr.idle
		UI.CredentialIconColor.BackgroundColor3 = Clr.idle
		-- Restore new provider's key+model
		_loading = true; Set.loadKey = true
		applyProviderToUI(Set.host)
		_loading = false; Set.loadKey = false
		updateApiKeyVisibility(Set.host)
		updateHostLabel(Set.host)
		UI.UnsavedChanges.Visible = true
	end)
end

local function setConnStatus(ok)   UI.ConnectionIconColor.BackgroundColor3 = ok and Clr.ok or Clr.err end
local function setCredStatus(ok)   UI.CredentialIconColor.BackgroundColor3 = ok and Clr.ok or Clr.err end

UI.ConnectionButton.MouseButton1Click:Connect(function()
	local res
	if Set.host == "Ollama" then
		res = Http.request(Config.ollamaUrl .. "/api/tags", "GET", {})
	elseif Set.host == "Pollinations" then
		res = Http.request("https://gen.pollinations.ai/v1/models", "GET", {
			["Authorization"] = "Bearer " .. UI.APIKeyBox.Text,
		})
	elseif Set.host == "Groq" then
		res = Http.request("https://api.groq.com/openai/v1/models", "GET", {
			["Authorization"] = "Bearer " .. UI.APIKeyBox.Text,
		})
	elseif Set.host == "Mistral" then
		res = Http.request("https://api.mistral.ai/v1/models", "GET", {
			["Authorization"] = "Bearer " .. UI.APIKeyBox.Text,
		})
	elseif Set.host == "HuggingFace" then
		res = Http.request("https://router.huggingface.co/v1/models", "GET", {
			["Authorization"] = "Bearer " .. UI.APIKeyBox.Text,
		})
	elseif Set.host == "Google AI Studio" then
		res = Http.request("https://generativelanguage.googleapis.com/v1beta/openai/models", "GET", {
			["Authorization"] = "Bearer " .. UI.APIKeyBox.Text,
		})
	elseif Set.host == "9router" then
		res = Http.request("http://localhost:20128/v1/models", "GET", {
			["Authorization"] = "Bearer " .. UI.APIKeyBox.Text,
		})
	elseif Set.host == "OpenCode" then
		res = Http.request("https://opencode.ai/zen/v1/models", "GET", {
			["Authorization"] = "Bearer " .. UI.APIKeyBox.Text,
		})
	else
		res = Http.request("https://openrouter.ai/api/v1/models", "GET", {
			["Authorization"] = "Bearer " .. UI.APIKeyBox.Text,
		})
	end
	if not res or res.StatusCode ~= 200 then
		setConnStatus(false)
		Toast.show("Failed", "Could not reach " .. Set.host, "err", 4)
		return
	end
	setConnStatus(true)
	Toast.show("Connected", Set.host .. " is reachable", "ok", 3)
	local ok, data = pcall(HS.JSONDecode, HS, res.Body)
	if not ok then return end
	if Set.host == "Ollama" and data.models then
		modelList = data.models
		populateDropdown(data.models)
		if UI.ModelBox.Text == "" and #data.models > 0 then
			_loading = true; UI.ModelBox.Text = data.models[1].name; _loading = false
		end
	elseif Set.host ~= "Ollama" and data.data then
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
	if Set.host ~= "Ollama" and key == "" then
		Toast.show("No API Key", "Enter an API key first", "err", 3) return
	end
	if Set.host == "Ollama" then
		local res = Http.request(Config.ollamaUrl .. "/api/tags", "GET", {})
			if res and res.StatusCode == 200 then
			setCredStatus(true)
			Toast.show("OK", "Ollama has no auth — connection is fine", "ok", 3)
		else
			setCredStatus(false)
			Toast.show("Failed", "Could not reach Ollama", "err", 4)
		end
	elseif Set.host == "Pollinations" then
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
	elseif Set.host == "Groq" then
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
	elseif Set.host == "Mistral" then
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
	elseif Set.host == "HuggingFace" then
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
	elseif Set.host == "Google AI Studio" then
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
	elseif Set.host == "9router" then
		local res = Http.request("http://localhost:20128/v1/models", "GET", {
			["Authorization"] = "Bearer " .. key,
		})
		if not res then
			setCredStatus(false); Toast.show("Failed", "Cannot reach 9router — is it running?", "err", 4)
		elseif res.StatusCode == 200 then
			setCredStatus(true);  Toast.show("Connected", "9router is reachable", "ok", 3)
		elseif res.StatusCode == 401 then
			setCredStatus(false); Toast.show("Invalid Key", "9router key rejected (401)", "err", 4)
		else
			setCredStatus(false); Toast.show("Failed", "Status " .. res.StatusCode, "err", 4)
		end
	elseif Set.host == "OpenCode" then
		local res = Http.request("https://opencode.ai/zen/v1/models", "GET", {
			["Authorization"] = "Bearer " .. key,
		})
		if not res then
			setCredStatus(false); Toast.show("Failed", "No response from OpenCode", "err", 4)
		elseif res.StatusCode == 200 then
			setCredStatus(true);  Toast.show("Valid Key", "OpenCode key accepted", "ok", 3)
		elseif res.StatusCode == 401 then
			setCredStatus(false); Toast.show("Invalid Key", "OpenCode key rejected (401)", "err", 4)
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
	Set.cache[Set.host] = { key = UI.APIKeyBox.Text, model = UI.ModelBox.Text, mode = Config.apiKeyMode }
	Config.apiKey       = UI.APIKeyBox.Text
	Config.model        = UI.ModelBox.Text
	Config.host         = Set.host
	Config.maxSteps     = math.max(1, tonumber(UI.MaxStepBox.Text) or 100)
	Config.temperature  = math.clamp(tonumber(UI.TemperatureBox.Text) or 1.0, 0, 2)
	Config.providerData = {}
	for h, data in pairs(Set.cache) do
		Config.providerData[h] = { apiKey = data.key, model = data.model, mode = data.mode }
	end
	UI.MaxStepBox.Text      = tostring(Config.maxSteps)
	UI.TemperatureBox.Text  = tostring(Config.temperature)
	Config.save()
	UI.UnsavedChanges.Visible = false
	Toast.show("Saved", "Settings saved successfully", "ok", 2)
	if _onSettingsSaved then task.spawn(_onSettingsSaved) end
end

local function revertSettings()
	_loading = true; Set.loadKey = true
	-- Rebuild cache from saved Config
	for _, h in ipairs(Set.allHosts) do
		local pd = Config.providerData and Config.providerData[h] or {}
		Set.cache[h] = { key = pd.apiKey or "", model = pd.model or "", mode = pd.mode or "single" }
	end
	Set.cache[Config.host] = { key = Config.apiKey, model = Config.model, mode = Config.apiKeyMode or "single" }
	Set.host = Config.host
	applyProviderToUI(Set.host)
	UI.MaxStepBox.Text     = tostring(Config.maxSteps)
	UI.TemperatureBox.Text = tostring(Config.temperature)
	for _, b in pairs(UI.HostButtons) do
		if b:IsA("TextButton") then
			b.BackgroundTransparency = b.Text == Set.host and 0.9 or 1
		end
	end
	updateApiKeyVisibility(Set.host)
	updateHostLabel(Set.host)
	UI.ConnectionIconColor.BackgroundColor3 = Clr.idle
	UI.CredentialIconColor.BackgroundColor3 = Clr.idle
	_loading = false; Set.loadKey = false
	UI.UnsavedChanges.Visible = false
end

UI.SaveButton.MouseButton1Click:Connect(saveSettings)
UI.RevertButton.MouseButton1Click:Connect(revertSettings)

-- ── Model Select Modal ────────────────────────────────────────────────────────

local Modal = { chunk = 40, all = {}, filtered = {}, rendered = 0 }

UI.ModalFrame.Visible         = false
UI.ModalInner.Visible         = false
UI.ConfirmationFrame.Visible  = false
UI.ExampleModelBtn.Visible    = false
UI.ConfirmTextLabel.Text      = "Are you sure you want to start a new chat? Your chat is saved automatically."

local function modalClearButtons()
	for _, c in ipairs(UI.ModalSF:GetChildren()) do
		if c ~= UI.ExampleModelBtn and not c:IsA("UIGridLayout") and not c:IsA("UIPadding") then
			c:Destroy()
		end
	end
end

local function modalRenderChunk()
	local startIdx = Modal.rendered + 1
	local endIdx   = math.min(Modal.rendered + Modal.chunk, #Modal.filtered)
	for i = startIdx, endIdx do
		local m   = Modal.filtered[i]
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
	Modal.rendered = endIdx
end

local function modalApplyFilter(query)
	query = (query or ""):lower()
	Modal.filtered = {}
	for _, m in ipairs(Modal.all) do
		if query == "" or m.name:lower():find(query, 1, true) then
			table.insert(Modal.filtered, m)
		end
	end
	Modal.rendered = 0
	modalClearButtons()
	modalRenderChunk()
	UI.ModalSF.CanvasPosition = Vector2.zero
end

UI.ModalSF:GetPropertyChangedSignal("CanvasPosition"):Connect(function()
	if Modal.rendered >= #Modal.filtered then return end
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
	Modal.all = {}
	if ok and type(data) == "table" then
		for _, m in ipairs(data) do
			local id = type(m) == "table" and (m.modelId or m.id) or tostring(m)
			if id then table.insert(Modal.all, { name = id }) end
		end
	end
	Modal.filtered = { table.unpack(Modal.all) }
	Modal.rendered = 0
	modalClearButtons()
	modalRenderChunk()
end

local function modalFetch()
	Modal.all = {}
	local host = Set.host
	if host == "Ollama" then
		local res = Http.request(Config.ollamaUrl .. "/api/tags", "GET", {})
		local ok, data = pcall(HS.JSONDecode, HS, res and res.Body or "")
		if ok and data and data.models then
			for _, m in ipairs(data.models) do
				table.insert(Modal.all, { name = m.name })
			end
		end
	elseif host == "HuggingFace" then
		fetchHuggingFaceModalSearch("")
		return
	else
		local url = host == "Mistral"          and "https://api.mistral.ai/v1/models"
			or    host == "Groq"               and "https://api.groq.com/openai/v1/models"
			or    host == "Pollinations"       and "https://gen.pollinations.ai/v1/models"
			or    host == "Google AI Studio"   and "https://generativelanguage.googleapis.com/v1beta/openai/models"
			or    host == "9router"            and "http://localhost:20128/v1/models"
			or    host == "OpenCode"           and "https://opencode.ai/zen/v1/models"
			or    "https://openrouter.ai/api/v1/models"
		local auth = host ~= "OpenRouter" and UI.APIKeyBox.Text or ""
		local res = Http.request(url, "GET", auth ~= "" and { ["Authorization"] = "Bearer " .. auth } or {})
		local ok, data = pcall(HS.JSONDecode, HS, res and res.Body or "")
		if ok and data and data.data then
			for _, m in ipairs(data.data) do
				table.insert(Modal.all, { name = m.id })
			end
			table.sort(Modal.all, function(a, b) return a.name < b.name end)
		end
	end
	Modal.filtered = { table.unpack(Modal.all) }
	Modal.rendered = 0
	modalClearButtons()
	modalRenderChunk()
end

local function openModal()
	if UI.ModalTitleLabel then UI.ModalTitleLabel.Text = "Select Model" end
	UI.ModalInner.Visible          = true
	UI.ConfirmationFrame.Visible   = false
	UI.SearchModelModal.Visible    = true
	UI.ToolResultViewModal.Visible = false
	UI.SystemPromptModal.Visible   = false
	UI.BrowserLogsModal.Visible    = false
	UI.SetMultiAPIKeyModal.Visible = false
	UI.ModalFrame.Visible = true
	if UI.ModalSearchBox then UI.ModalSearchBox.Text = "" end
	modalClearButtons()
	task.spawn(modalFetch)
end

local function openToolResultModal(fullText)
	if UI.ModalTitleLabel then UI.ModalTitleLabel.Text = "Tool Output" end
	UI.ModalInner.Visible          = true
	UI.ConfirmationFrame.Visible   = false
	UI.SearchModelModal.Visible    = false
	UI.ToolResultViewModal.Visible = true
	UI.SystemPromptModal.Visible   = false
	UI.BrowserLogsModal.Visible    = false
	UI.SetMultiAPIKeyModal.Visible = false
	UI.ToolResultTextBox.Text      = fullText
	UI.ToolResultSF.CanvasPosition = Vector2.new(0, 0)
	UI.ModalFrame.Visible          = true
	task.defer(function()
		UI.ToolResultSF.CanvasSize = UDim2.new(0, 0, 0, UI.ToolResultTextBox.AbsoluteSize.Y + 20)
	end)
end

local function openSystemPromptModal()
	if UI.ModalTitleLabel then UI.ModalTitleLabel.Text = "System Prompt" end
	UI.ModalInner.Visible          = true
	UI.ConfirmationFrame.Visible   = false
	UI.SearchModelModal.Visible    = false
	UI.ToolResultViewModal.Visible = false
	UI.SystemPromptModal.Visible   = true
	UI.BrowserLogsModal.Visible    = false
	UI.SetMultiAPIKeyModal.Visible = false
	UI.SystemPromptTextBox.TextEditable   = true
	UI.SystemPromptTextBox.Text           = Config.userSystemPrompt
	UI.SystemPromptTextBox.PlaceholderText = Prompt.build(false)
	UI.ModalFrame.Visible = true
end

local function openMultiAPIKeyModal()
	if UI.ModalTitleLabel then UI.ModalTitleLabel.Text = "API Keys" end
	UI.ModalInner.Visible          = true
	UI.ConfirmationFrame.Visible   = false
	UI.SearchModelModal.Visible    = false
	UI.ToolResultViewModal.Visible = false
	UI.SystemPromptModal.Visible   = false
	UI.BrowserLogsModal.Visible    = false
	UI.SetMultiAPIKeyModal.Visible = true
	UI.MultiAPIKeyTextBox.Text     = table.concat(Config.openrouterKeys or {}, "\n")
	UI.ModalFrame.Visible          = true
end

UI.ModalOpenButton.MouseButton1Click:Connect(openModal)
UI.ModalCloseButton.MouseButton1Click:Connect(function()
	UI.ModalFrame.Visible          = false
	UI.ModalInner.Visible          = false
	UI.ConfirmationFrame.Visible   = false
	UI.SearchModelModal.Visible    = true
	UI.ToolResultViewModal.Visible = false
	UI.SystemPromptModal.Visible   = false
	UI.SetMultiAPIKeyModal.Visible = false
end)

local function openConfirmationModal()
	UI.ModalInner.Visible          = false
	UI.ConfirmationFrame.Visible   = true
	UI.ModalFrame.Visible          = true
end

local function closeConfirmationModal()
	UI.ModalFrame.Visible          = false
	UI.ConfirmationFrame.Visible   = false
end

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

UI.SetMultipleAPIKeysButton.MouseButton1Click:Connect(openMultiAPIKeyModal)

UI.MultiAPIKeySaveButton.MouseButton1Click:Connect(function()
	local raw = UI.MultiAPIKeyTextBox.Text
	local keys = {}
	for line in raw:gmatch("[^\n]+") do
		local k = line:match("^%s*(.-)%s*$")
		if k ~= "" then keys[#keys + 1] = k end
	end
	Config.openrouterKeys = keys
	Config.openrouterKeyIndex = 0
	Config.save()
	UI.ModalFrame.Visible          = false
	UI.SetMultiAPIKeyModal.Visible = false
end)

UI.MultiAPIKeyClearButton.MouseButton1Click:Connect(function()
	UI.MultiAPIKeyTextBox.Text = ""
end)

local _hfSearchTask = nil
if UI.ModalSearchBox then
	UI.ModalSearchBox:GetPropertyChangedSignal("Text"):Connect(function()
		local query = UI.ModalSearchBox.Text
		if Set.host == "HuggingFace" then
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
		if Set.host == "HuggingFace" then
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

local function buildUrl()
	if Config.host == "Ollama"           then return Config.ollamaUrl .. "/api/chat" end
	if Config.host == "Mistral"          then return "https://api.mistral.ai/v1/chat/completions" end
	if Config.host == "Groq"             then return "https://api.groq.com/openai/v1/chat/completions" end
	if Config.host == "Pollinations"     then return "https://gen.pollinations.ai/v1/chat/completions" end
	if Config.host == "HuggingFace"      then return "https://router.huggingface.co/v1/chat/completions" end
	if Config.host == "Google AI Studio" then return "https://generativelanguage.googleapis.com/v1beta/openai/chat/completions" end
	if Config.host == "9router"          then return "http://localhost:20128/v1/chat/completions" end
	if Config.host == "OpenCode"         then return "https://opencode.ai/zen/v1/chat/completions" end
	return "https://openrouter.ai/api/v1/chat/completions"
end

local function buildHeaders()
	if Config.host == "Ollama" then
		return { ["Content-Type"] = "application/json" }
	end
	return {
		["Content-Type"]  = "application/json",
		["Authorization"] = "Bearer " .. Config.getActiveKey(),
	}
end

local RETRY_ATTEMPTS = 3
local RETRY_DELAY    = 4

local function requestWithRetry(url, method, headersOrFn, body, onRetry)
	local res
	local function getHeaders()
		return type(headersOrFn) == "function" and headersOrFn() or headersOrFn
	end
	for attempt = 1, RETRY_ATTEMPTS do
		res = Http.request(url, method, getHeaders(), body)
		if res and res.StatusCode ~= 429 then break end
		if attempt < RETRY_ATTEMPTS then
			Config.rotateKey()
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

-- ── Skills system ─────────────────────────────────────────────────────────────

local Sk = { file = "iyai_skills.json", enabled = {}, loaded = {}, populated = false }

local function parseSkillMd(text)
	local name    = text:match("^%-%-%-[^\n]*\nname:%s*(.-)%s*\n") or ""
	local desc    = text:match("^%-%-%-[^\n]*\n[^\n]*\ndescription:%s*(.-)%s*\n") or ""
	local fm_end  = text:find("\n%-%-%-\n", 2)
	local content = fm_end and text:sub(fm_end + 5) or text
	return name:match("^%s*(.-)%s*$"), desc:match("^%s*(.-)%s*$"), content
end

local function loadSkillsEnabled()
	Sk.enabled = {}
	pcall(function()
		if not readfile then return end
		local ok, raw = pcall(readfile, Sk.file)
		if not ok or not raw or raw == "" then return end
		local ok2, data = pcall(HS.JSONDecode, HS, raw)
		if ok2 and type(data) == "table" then
			for k, v in pairs(data) do Sk.enabled[k] = v == true end
		end
	end)
end

local function saveSkillsEnabled()
	pcall(function()
		if not writefile then return end
		local ok, json = pcall(HS.JSONEncode, HS, Sk.enabled)
		if ok then pcall(writefile, Sk.file, json) end
	end)
end

local function loadSkillFiles()
	Sk.loaded = {}
	pcall(function()
		if not listfiles then return end
		local files = listfiles("IYAI/skills")
		if not files then return end
		for _, path in ipairs(files) do
			if path:match("%.md$") then
				local ok, text = pcall(readfile, path)
				if ok and text and text ~= "" then
					local name, desc, content = parseSkillMd(text)
					local fname = path:match("[^/\\]+$") or path
					if name == "" then name = fname:gsub("%.md$", "") end
					table.insert(Sk.loaded, { name = name, desc = desc, content = content, file = fname })
				end
			end
		end
	end)
end

local function getEnabledSkillsContext()
	if #Sk.loaded == 0 then return nil end
	local parts = {}
	for _, skill in ipairs(Sk.loaded) do
		if Sk.enabled[skill.file] ~= false then
			table.insert(parts, "## " .. skill.name .. "\n" .. skill.content)
		end
	end
	if #parts == 0 then return nil end
	return "## Skill Guides\nThe following cheat sheets provide ready-made patterns for specific tasks:\n\n"
		.. table.concat(parts, "\n\n---\n\n")
end

-- Load skills on startup; re-render if the page or bridge already asked before files were ready
task.spawn(function()
	loadSkillsEnabled()
	loadSkillFiles()
	-- If Skills page was opened before files finished loading, repopulate it now
	if Sk.populated then
		Sk.populated = false
		task.defer(function()
			populateSkillsPage()
			Sk.populated = true
		end)
	end
	-- Push updated list to any connected browser
	if Br and Br.active and #Sk.loaded > 0 then
		local skillsList = {}
		for _, sk in ipairs(Sk.loaded) do
			skillsList[#skillsList+1] = { name = sk.name, desc = sk.desc or "", enabled = Sk.enabled[sk.file] ~= false }
		end
		bridgePost("/roblox/result", { type = "skills_state", skills = skillsList })
	end
end)

local function buildMessages(history)
	local sysContent = Prompt.build(true, Config.userSystemPrompt)
	local skillsCtx  = getEnabledSkillsContext()
	if skillsCtx then sysContent = sysContent .. "\n\n" .. skillsCtx end
	local msgs = {{ role = "system", content = sysContent }}
	for _, m in ipairs(history or Agt.history) do table.insert(msgs, m) end
	return msgs
end

local function safeJsonEntry(entry)
	local ok, _ = pcall(HS.JSONEncode, HS, entry)
	if ok then return entry end
	-- strip tool_calls and fall back to plain text
	local safe = { role = entry.role or "assistant", content = type(entry.content) == "string" and entry.content or "" }
	local ok2, _ = pcall(HS.JSONEncode, HS, safe)
	return ok2 and safe or { role = "assistant", content = "" }
end

local function buildBody(history)
	local msgs = buildMessages(history)
	-- ensure every message is JSON-safe
	for i, m in ipairs(msgs) do msgs[i] = safeJsonEntry(m) end
	local body = {
		model       = Config.model,
		messages    = msgs,
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
	local ok, json = pcall(HS.JSONEncode, HS, body)
	if not ok then error("buildBody failed: " .. tostring(json), 2) end
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

local function setBusy(state)
	UI.isAssistantBusy.Value        = state
	UI.SendButton.Visible           = not state
	UI.SendButton.ImageTransparency = UI.TextBoxInput.Text == "" and 0.7 or 0
	UI.StopButton.Visible           = state == true

	if not state and Agt.sessionId then
		for _, s in ipairs(sessions) do
			if s.id == Agt.sessionId then
				s.messages       = { table.unpack(Agt.history) }
				s.lastMessageAt  = os.time()
				local count = 0
				for _, m in ipairs(Agt.history) do
					if m.role == "user" or m.role == "assistant" then count += 1 end
				end
				s.msgCount = count
				local groupSet, groups = {}, {}
				for _, m in ipairs(Agt.history) do
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
UI.StopButton.MouseButton1Click:Connect(function() Agt.aborted = true end)

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
	if toolName == "read_code" then
		local lines = select(2, result:gsub("\n", "\n")) + 1
		return fmt(plural(lines, "line") .. " read")
	end
	if toolName == "get_lines" then
		return fmt(plural(select(2, result:gsub("\n", "\n")) + 1, "line") .. " fetched")
	end
	if toolName == "grep" then
		local m = tonumber(result:match("^(%d+) match"))
		return fmt(m and (plural(m, "match", "es") .. " found") or result)
	end
	if toolName == "iy_status" or toolName == "iy_cmd" then return fmt(result) end
	if toolName == "run" or toolName == "run_once" then
		local lines = select(2, result:gsub("\n", "\n")) + 1
		return fmt(plural(lines, "line") .. " of output")
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

local function saveCurrentSession()
	if #Agt.history == 0 then return end
	local firstUser = ""
	for _, m in ipairs(Agt.history) do
		if m.role == "user" then firstUser = m.content; break end
	end
	local title = firstUser ~= "" and (firstUser:sub(1, 45) .. (#firstUser > 45 and "..." or "")) or "Conversation"
	local msgCount = 0
	for _, m in ipairs(Agt.history) do
		if m.role ~= "system" then msgCount += 1 end
	end
	table.insert(sessions, 1, {
		id        = nextSessionId,
		title     = title,
		timestamp = os.time(),
		msgCount  = msgCount,
		tools     = {},
		messages  = { table.unpack(Agt.history) },
	})
	nextSessionId += 1
end

local function replayRenders(renderList)
	Agt.replaying = true
	Agt.step = 0
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

	Agt.replaying = false
	scrollBottom()
end

local function clearChat()
	Agt.sessionId = nil
	Agt.renders   = nil
	Agt.history = {}
	Agt.step           = 0
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
			if activeTag then activeTag.Visible = (session.id == Agt.sessionId) end

			if toolsRow then
				for _, ch in ipairs(toolsRow:GetChildren()) do
					if ch.Name == "ToolFrame" then ch:Destroy() end
				end
				for _, group in ipairs(session.tools) do
					local badge    = UI.HistoryToolFrame:Clone()
					local iconDot  = badge:FindFirstChild("IconColor")
					local nameLbl  = badge:FindFirstChild("ToolName")
					if iconDot then iconDot.BackgroundColor3 = Clr.tools[group] or Clr.ok end
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
					Agt.history = { table.unpack(session.messages) }
					Agt.sessionId    = session.id
					Agt.renders      = session.renders
					UI.CurrentPage.Value = "Agent"
					task.defer(function() replayRenders(session.renders) end)
				end)
			end
			if deleteBtn then
				deleteBtn.MouseButton1Click:Connect(function()
					local wasActive = (sid == Agt.sessionId)
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

-- ── New Chat button (with confirmation) ──────────────────────────────────────

UI.NewChatButton.MouseButton1Click:Connect(function()
	if #Agt.history == 0 then clearChat(); return end
	openConfirmationModal()
end)

UI.ConfirmYesButton.MouseButton1Click:Connect(function()
	closeConfirmationModal()
	clearChat()
end)

UI.ConfirmNoButton.MouseButton1Click:Connect(function()
	closeConfirmationModal()
end)

-- ── Skills page ───────────────────────────────────────────────────────────────


local function setToggleVisual(bg, button, enabled)
	local ti = TweenInfo.new(0.18, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)
	TS:Create(button, ti, { Position = enabled and UDim2.new(1, -20, 0, 0) or UDim2.new(0, 0, 0, 0) }):Play()
	TS:Create(bg,     ti, { BackgroundColor3 = enabled and Color3.fromRGB(120, 230, 80) or Color3.fromRGB(50, 50, 50) }):Play()
end

local function populateSkillsPage()
	for _, child in ipairs(UI.SkillsSF:GetChildren()) do
		if child.Name == "GroupFrame" then child:Destroy() end
	end
	UI.SkillsTotalElements.Value = 0

	for _, skill in ipairs(Sk.loaded) do
		local enabled = Sk.enabled[skill.file] ~= false  -- default on

		local card  = UI.SkillsGroupFrame:Clone()
		local inner = card:FindFirstChildWhichIsA("Frame")
		if not inner then card:Destroy(); continue end
		local left   = inner:FindFirstChild("Left")
		local right  = inner:FindFirstChild("Right")
		if not (left and right) then card:Destroy(); continue end

		local topRow     = left:FindFirstChild("TopRowFrame")
		local skillLabel = topRow  and topRow:FindFirstChild("SkillLabel")
		local descLabel  = left:FindFirstChild("DescriptionLabel")
		local toggleCont = right:FindFirstChild("ToggleContainer")
		local bg         = toggleCont and toggleCont:FindFirstChild("BG")
		local button     = bg and bg:FindFirstChild("Button")

		if skillLabel then skillLabel.Text = skill.name end
		if descLabel  then descLabel.Text  = skill.desc end

		if bg and button then
			button.Position         = enabled and UDim2.new(1, -20, 0, 0) or UDim2.new(0, 0, 0, 0)
			bg.BackgroundColor3     = enabled and Color3.fromRGB(120, 230, 80) or Color3.fromRGB(50, 50, 50)
			local capturedSkill  = skill
			local capturedBg     = bg
			local capturedButton = button
			button.MouseButton1Click:Connect(function()
				local isOn = Sk.enabled[capturedSkill.file] ~= false
				Sk.enabled[capturedSkill.file] = not isOn
				setToggleVisual(capturedBg, capturedButton, not isOn)
				saveSkillsEnabled()
			end)
		end

		UI.SkillsTotalElements.Value += 1
		card.LayoutOrder = UI.SkillsTotalElements.Value
		card.Visible     = true
		card.Parent      = UI.SkillsSF
	end

	task.defer(function()
		local lay = UI.SkillsSF:FindFirstChildWhichIsA("UIListLayout")
		if lay then UI.SkillsSF.CanvasSize = UDim2.new(0, 0, 0, lay.AbsoluteContentSize.Y + 10) end
	end)
end

UI.CurrentPage.Changed:Connect(function(page)
	if page == "Skills" and not Sk.populated then
		Sk.populated = true
		populateSkillsPage()
	end
end)

UI.SkillsRefreshButton.MouseButton1Click:Connect(function()
	Sk.populated = false
	loadSkillsEnabled()
	loadSkillFiles()
	populateSkillsPage()
	Sk.populated = true
	UI.SkillsRefreshText.TextTransparency = 0
	TS:Create(UI.SkillsRefreshText, TweenInfo.new(1.5, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
		TextTransparency = 1,
	}):Play()
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
	"Workflow for edits on existing code:",
	"1. Call read_code() to read the full code, or grep(pattern) to locate specific lines.",
	"2. Call replace_lines(start, end, replacement) or edit_code(search, replace) to make the change.",
	"Never rewrite the entire file if you only need to change a small section.",
	"",
	"Use write_code only for new scripts or complete rewrites (editor is empty or user asks for a full rewrite).",
	"Use any game inspection tools (tree, props, decompile, etc.) to gather context before coding.",
	"After the task is done, briefly explain what you did and what the output was. Plain text only, no markdown.",
	"Do not ask clarifying questions — make a reasonable attempt and explain your assumptions.",
}, "\n")

local function runCodeAgent(userText)
	Agt.step    = 0
	Agt.aborted = false
	setBusy(true)
	UI.CurrentPage.Value = "Agent"

	local maxSteps = Config.maxSteps
	table.insert(Agt.codeHistory, { role = "user", content = userText })
	local statusFrame = addCodeStatus("Agent is writing code...")
	local stepsDone   = 0
	local diffSummary = ""

	while stepsDone < maxSteps do
		if Agt.aborted then
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

		local res = requestWithRetry(buildUrl(), "POST", buildHeaders, buildCodeBody(Agt.codeHistory))
		if isContextError(res) then
			Toast.show("History trimmed", "Context too long — retrying with less history", "warn", 3)
			res = requestWithRetry(buildUrl(), "POST", buildHeaders, buildCodeBody(trimHistory(Agt.codeHistory)))
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
			local codeEntry = { role = "assistant", content = text }
			if msg.reasoning_content then codeEntry.reasoning_content = msg.reasoning_content end
			table.insert(Agt.codeHistory, codeEntry)
			break
		end

		table.insert(Agt.codeHistory, msg)

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
			table.insert(Agt.codeHistory, {
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

Br = { url = "http://127.0.0.1:7402", active = false, polling = false, webOk = false, logs = {} }

bridgePost = function(path, data)
	if not http_request or not Br.active then return end
	local ok, json = pcall(HS.JSONEncode, HS, data)
	if not ok then return end
	task.spawn(function()
		pcall(http_request, {
			Url     = Br.url .. path,
			Method  = "POST",
			Headers = { ["Content-Type"] = "application/json" },
			Body    = json,
		})
	end)
end

-- ── Agent loop ────────────────────────────────────────────────────────────────

local function runAgentLoop(userText)
	Agt.step    = 0
	Agt.aborted = false
	setBusy(true)

	local MAX_STEPS = Config.maxSteps
	table.insert(Agt.history, { role = "user", content = userText })
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
		if Agt.aborted then
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

		local res = requestWithRetry(buildUrl(), "POST", buildHeaders, buildBody(), onRateLimit)
		if _retryFrame then _retryFrame:Destroy(); _retryFrame = nil end
		if isContextError(res) then
			Toast.show("History trimmed", "Context too long — retrying with less history", "warn", 3)
			res = requestWithRetry(buildUrl(), "POST", buildHeaders, buildBody(trimHistory(Agt.history)))
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
			local finalEntry = { role = "assistant", content = Prompt.stripMarkdown(rawContent) }
			if msg.reasoning_content then finalEntry.reasoning_content = msg.reasoning_content end
			table.insert(Agt.history, finalEntry)
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

		-- addStep() — only keep JSON-safe fields; raw msg may have provider-specific extras
		local histEntry = { role = msg.role or "assistant" }
		-- always include content (some providers reject messages where content is absent)
		histEntry.content = (msg.content and msg.content ~= "") and msg.content or ""
		if msg.tool_calls        then histEntry.tool_calls        = msg.tool_calls        end
		if msg.thinking          then histEntry.thinking          = msg.thinking          end
		if msg.reasoning_content then histEntry.reasoning_content = msg.reasoning_content end
		table.insert(Agt.history, histEntry)

		agentDone = false
		local seenCalls = {}
		for _, call in ipairs(toolCalls) do
			local fnName = call["function"] and call["function"].name or ""
			local fnArgs = call["function"] and call["function"].arguments or ""
			local callKey = fnName .. "|" .. fnArgs
			if seenCalls[callKey] then continue end
			seenCalls[callKey] = true
			if seenGlobal[callKey] then
				table.insert(Agt.history, {
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
						table.insert(Agt.history, { role = "assistant", content = message })
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
			table.insert(Agt.history, {
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

	-- tabs
	local tabsList = {}
	for i, t in ipairs(Tabs.list) do
		tabsList[i] = { name = t.name, code = (t == Tabs.active) and UI.CodeBox.Text or t.code, active = t == Tabs.active }
	end

	-- skills
	local skillsList = {}
	for _, sk in ipairs(Sk.loaded) do
		skillsList[#skillsList+1] = { name = sk.name, desc = sk.desc or "", enabled = Sk.enabled[sk.file] ~= false }
	end

	bridgePost("/roblox/result", {
		type     = "sync_state",
		config   = { host = Config.host, model = Config.model, apiKey = Config.apiKey },
		tools    = toolList,
		sessions = sessionList,
		activeId = Agt.sessionId,
		history  = Agt.history,
		tabs     = tabsList,
		skills   = skillsList,
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
			Agt.sessionId   = s.id
			Agt.renders     = s.renders
			Agt.history = { table.unpack(s.messages) }
			bridgePost("/roblox/result", { type = "session_loaded", id = id, history = s.messages })
			return
		end
	end
	bridgePost("/roblox/result", { type = "session_loaded", id = id, history = {} })
end

-- ── Bridge poll ───────────────────────────────────────────────────────────────

local function startBridgePoll()
	if not http_request then return end
	if Br.polling then return end
	Br.polling = true
	task.spawn(function()
		while Br.active do
			-- long-poll: bridge holds this request until a message arrives (up to 15s)
			local ok, res = pcall(http_request, {
				Url    = Br.url .. "/roblox/poll",
				Method = "GET",
			})
			if not Br.active then break end
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
					elseif msg.type == "get_tabs" then
						task.spawn(function()
							if Tabs.active then Tabs.active.code = UI.CodeBox.Text end
							local tabsList = {}
							for i, t in ipairs(Tabs.list) do
								tabsList[i] = { name = t.name, code = t.code, active = t == Tabs.active }
							end
							bridgePost("/roblox/result", { type = "tabs_state", tabs = tabsList })
						end)
					elseif msg.type == "set_code" and msg.tabIndex then
						task.spawn(function()
							local tab = Tabs.list[math.floor(msg.tabIndex)]
							if tab then
								if tab == Tabs.active then
									UI.CodeBox.Text = msg.code or ""
								else
									tab.code = msg.code or ""
								end
								saveTabsToFile()
							end
						end)
					elseif msg.type == "run_code" then
						task.spawn(function()
							local code = UI.CodeBox.Text
							if code == "" then
								bridgePost("/roblox/result", { type = "run_result", output = "Code editor is empty." })
								return
							end
							local fn, compErr = loadstring(code)
							if not fn then
								bridgePost("/roblox/result", { type = "run_result", output = "Compile error: " .. tostring(compErr) })
								return
							end
							local captured = {}
							local origPrint = print
							print = function(...)
								local parts = {}
								for i = 1, select("#", ...) do parts[i] = tostring(select(i, ...)) end
								captured[#captured+1] = table.concat(parts, "\t")
								origPrint(...)
							end
							local ok, runErr = pcall(fn)
							print = origPrint
							if not ok then
								bridgePost("/roblox/result", { type = "run_result", output = "Runtime error: " .. tostring(runErr) })
							else
								bridgePost("/roblox/result", { type = "run_result", output = #captured > 0 and table.concat(captured, "\n") or "(no output)" })
							end
						end)
					elseif msg.type == "switch_tab" and msg.tabIndex then
						task.spawn(function()
							local tab = Tabs.list[math.floor(msg.tabIndex)]
							if tab then switchCodeTab(tab) end
						end)
					elseif msg.type == "new_tab" then
						task.spawn(function()
							addCodeTab(nil, "", true)
						end)
					elseif msg.type == "remove_tab" and msg.tabIndex then
						task.spawn(function()
							local tab = Tabs.list[math.floor(msg.tabIndex)]
							if tab then removeCodeTab(tab) end
						end)
					elseif msg.type == "close_other_tabs" and msg.tabIndex then
						task.spawn(function()
							local keepIdx = math.floor(msg.tabIndex)
							local keep = Tabs.list[keepIdx]
							if not keep then return end
							for i = #Tabs.list, 1, -1 do
								if i ~= keepIdx then removeCodeTab(Tabs.list[i]) end
							end
						end)
					elseif msg.type == "get_skills" then
						task.spawn(function()
							local skillsList = {}
							for _, sk in ipairs(Sk.loaded) do
								skillsList[#skillsList+1] = { name = sk.name, desc = sk.desc or "", enabled = Sk.enabled[sk.file] ~= false }
							end
							bridgePost("/roblox/result", { type = "skills_state", skills = skillsList })
						end)
					elseif msg.type == "toggle_skill" and msg.name then
						task.spawn(function()
							for _, sk in ipairs(Sk.loaded) do
								if sk.name == msg.name then
									local isOn = Sk.enabled[sk.file] ~= false
									Sk.enabled[sk.file] = not isOn
									saveSkillsEnabled()
									sendSyncState()
									break
								end
							end
						end)
					elseif msg.type == "call_tool" and msg.name then
						local captured = msg
						task.spawn(function()
							local ok, result = pcall(Tools.run, captured.name, captured.args or "{}")
							bridgePost("/roblox/result", {
								type    = "tool_result",
								reqId   = captured.reqId,
								name    = captured.name,
								ok      = ok,
								result  = ok and result or tostring(result),
							})
						end)
					end
				end
			end
			-- null response = timeout, loop immediately for next long-poll
		end
		Br.polling = false
	end)
end

-- ── onSend ────────────────────────────────────────────────────────────────────

onSend = function(webText)
	local text = webText or UI.TextBoxInput.Text
	if text == "" or UI.isAssistantBusy.Value then return end
	if not webText then UI.TextBoxInput.Text = "" end

	if #Agt.history == 0 and Agt.sessionId == nil then
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
		Agt.sessionId = sid
		Agt.renders   = renders
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

local function bridgeLog(msg)
	table.insert(Br.logs, os.date("[%H:%M:%S] ") .. msg)
	if #Br.logs > 200 then table.remove(Br.logs, 1) end
end

-- You dot is always green — the plugin is the local end
UI.BrowserDotYou.BackgroundColor3 = Clr.ok

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
	dot.BackgroundColor3         = connected and Clr.ok or Clr.err
	icon.ImageTransparency       = connected and 0 or 0.6
	label.TextTransparency       = connected and 0 or 0.6
end

local function setShimmer(full)
	-- UIGradient Transparency can't be tweened directly; swap instantly
	UI.BrowserGrad1.Transparency = full and Clr.sfull or Clr.sdim
	UI.BrowserGrad2.Transparency = full and Clr.sfull or Clr.sdim
end

local function checkBridgeStatus()
	if not http_request then return end
	local ok, res = pcall(http_request, { Url = Br.url .. "/ping", Method = "GET" })
	local bridgeOk = ok and res and res.StatusCode == 200
	setDotState(UI.BrowserDotBridge, UI.BrowserIconBridge, UI.BrowserLabelBridge, bridgeOk)
	if bridgeOk then
		bridgeLog("Bridge OK")
		local webOk = false
		local ok2, res2 = pcall(http_request, { Url = Br.url .. "/status", Method = "GET" })
		if ok2 and res2 and res2.StatusCode == 200 then
			local ok3, data = pcall(HS.JSONDecode, HS, res2.Body)
			webOk = ok3 and data and data.browser == true
			bridgeLog("Web " .. (webOk and "connected" or "not connected"))
		end
		setDotState(UI.BrowserDotWeb, UI.BrowserIconWeb, UI.BrowserLabelWeb, webOk)
		setShimmer(webOk)
		-- Push tree + state the moment a browser client appears
		if webOk and not Br.webOk then
			task.spawn(sendGameTree)
			task.spawn(sendSyncState)
		end
		Br.webOk = webOk
		if not Br.active then
			Br.active = true
			startBridgePoll()
		end
	else
		bridgeLog("Bridge unreachable")
		Br.active = false
		Br.webOk = false
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

-- Run once shortly after startup so the poll loop begins immediately
task.delay(1, checkBridgeStatus)

-- Periodic check: always run, not just when on Browser page
task.spawn(function()
	while true do
		task.wait(5)
		task.spawn(checkBridgeStatus)
	end
end)

UI.ForceRefreshButton.MouseButton1Click:Connect(function()
	task.spawn(checkBridgeStatus)
end)

UI.OpenBrowserLogsButton.MouseButton1Click:Connect(function()
	if UI.ModalTitleLabel then UI.ModalTitleLabel.Text = "Bridge Logs" end
	UI.ModalInner.Visible          = true
	UI.ConfirmationFrame.Visible   = false
	UI.SearchModelModal.Visible    = false
	UI.ToolResultViewModal.Visible = false
	UI.SystemPromptModal.Visible   = false
	UI.BrowserLogsModal.Visible    = true
	UI.BrowserLogsTextBox.Text     = #Br.logs > 0 and table.concat(Br.logs, "\n") or "(no logs yet)"
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

_uisChanged = UIS.InputChanged:Connect(function(input)
	if dragging and input.UserInputType == Enum.UserInputType.MouseMovement then
		local delta   = input.Position - dragStart
		UI.IYAI.Position = UDim2.new(
			startPos.X.Scale, startPos.X.Offset + delta.X,
			startPos.Y.Scale, startPos.Y.Offset + delta.Y
		)
	end
end)

_uisEnded = UIS.InputEnded:Connect(function(input)
	if input.UserInputType == Enum.UserInputType.MouseButton1 then dragging = false end
end)
