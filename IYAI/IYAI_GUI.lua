-- IYAI_GUI.lua
-- Called by IYAI_Core.iy as: loadstring(src)(githubBaseUrl)

local BASE = ...
BASE = type(BASE) == "string" and BASE:gsub("/$", "") or ""

local function ensureParentFolders(filePath)
	if not (isfolder and makefolder) then return end
	local dir = filePath:match("^(.+)/[^/]+$")
	if not dir then return end
	local cur = ""
	for seg in dir:gmatch("[^/]+") do
		cur = cur == "" and seg or (cur .. "/" .. seg)
		if not isfolder(cur) then pcall(makefolder, cur) end
	end
end

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
			if writefile then
				local localPath = "iyai_data/" .. relPath
				pcall(function()
					ensureParentFolders(localPath)
					writefile(localPath, src)
				end)
			end
		else
			warn("[IYAI] Remote module failed (" .. relPath .. "), trying local.")
		end
	end
	if not src then
		-- Try core folder first (dev/repo), then _IYAI cache (non-dev)
		for _, prefix in ipairs({"IYAI/", "iyai_data/"}) do
			local localPath = prefix .. relPath
			if readfile and isfile and isfile(localPath) then
				local ok2, raw = pcall(readfile, localPath)
				if ok2 and raw and raw ~= "" then src = raw; break end
			end
		end
	end
	if not src then error("[IYAI] Cannot load module: " .. relPath) end
	local fn, ce = loadstring(src)
	if not fn then error("[IYAI] Compile error in " .. relPath .. ": " .. tostring(ce)) end
	return fn()
end

local Http   = loadMod("modules/Http.lua")
local Config    = loadMod("modules/Config.lua")
local Providers = loadMod("modules/Providers.lua")
local Toast  = loadMod("modules/Toast.lua")
local Tools         = loadMod("modules/Tools.lua")
local propFns = loadMod("modules/Properties.lua")(Http)
loadMod("modules/tools/Explorer.lua")(Tools, propFns.getProperties, propFns.getMethods)
loadMod("modules/tools/Script.lua")(Tools, Http)
loadMod("modules/tools/IY.lua")(Tools)
loadMod("modules/tools/Web.lua")(Tools, Http)
loadMod("modules/tools/SynapseDocs.lua")(Tools, Http)

local Prompt = loadMod("modules/Prompt.lua")(Http)
local Memory = loadMod("modules/Memory.lua")()

-- ── Bootstrap Gui.lua to iyai_data/ ──────────────────────────────────────────
-- AI-generated UI scripts call loadstring(readfile("iyai_data/Gui.lua"))().
-- Ensure that file exists: prefer local dev copy, fall back to GitHub, cache once.
do
	local TARGET   = "iyai_data/Gui.lua"
	local SRC_PATH = "IYAI/modules/Gui.lua"
	local URL      = "https://raw.githubusercontent.com/imluri/IYAI/refs/heads/main/IYAI/modules/Gui.lua"
	if writefile and not (isfile and isfile(TARGET)) then
		local src
		if readfile and isfile and isfile(SRC_PATH) then
			local ok, s = pcall(readfile, SRC_PATH)
			if ok and s and s ~= "" then src = s end
		end
		if not src and Http and Http.request then
			local res = Http.request(URL, "GET", { ["User-Agent"] = "IYAI" }, nil)
			if res and res.StatusCode == 200 and res.Body and res.Body ~= "" then
				src = res.Body
			end
		end
		if src then
			if isfolder and makefolder and not isfolder("iyai_data") then pcall(makefolder, "iyai_data") end
			pcall(writefile, TARGET, src)
		end
	end
end

-- ── M: shared module-scope state container ───────────────────────────────────
-- Luau caps each function at 200 locals. This file runs as one giant closure,
-- so we collapse many module-scope `local`s into fields of this table — one
-- local slot instead of N. Add new module-scope state here as M.foo, not as
-- `local foo` at the top level.
local M = {}

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

-- cloneref wraps service handles so the running game can't detect us via
-- service reference comparison (Infinite Yield uses the same pattern).
-- Falls back to identity when cloneref isn't exposed (Studio, weak executors).
local clone = (typeof and typeof(cloneref) == "function") and cloneref or function(x) return x end

local TS  = clone(game:GetService("TweenService"))
local UIS = clone(game:GetService("UserInputService"))
local HS  = clone(game:GetService("HttpService"))

-- ── Build GUI ─────────────────────────────────────────────────────────────────

local G2L = loadMod("modules/Layout.lua")

-- Destroy Studio-only LocalScripts before parenting — prevents executors running them
for _, inst in pairs(G2L) do
	if typeof(inst) == "Instance" and (inst:IsA("LocalScript") or inst:IsA("Script")) then
		pcall(function() inst:Destroy() end)
	end
end

-- Hide before any frame renders — fade-in tween reveals it later
if G2L["2"] then G2L["2"].GroupTransparency = 1 end

-- Parent to a hidden container to avoid detection
local function getHiddenContainer()
	if gethui then return gethui() end
	local ok, cg = pcall(function() return clone(game:GetService("CoreGui")) end)
	if ok and cg then return cg end
	return clone(game:GetService("Players")).LocalPlayer:WaitForChild("PlayerGui")
end
local _container = getHiddenContainer()
if syn and syn.protect_gui then pcall(syn.protect_gui, G2L["1"]) end
G2L["1"].Parent = _container

-- Named aliases (UI table) --------------------------------------------------

local UI = {
	ScreenGui              = G2L["1"],
	IYAI                   = G2L["2"],
	ContentPages           = G2L["5"],
	AgentPage              = G2L["6"],
	ScrollingFrameMainChat = G2L["7"],
	ListLayout             = G2L["8"],
	ElementTemplate        = G2L["a"],
	TotalElements          = G2L["3f"],
	isAssistantBusy        = G2L["40"],
	InputFrame             = G2L["48"],
	TextBoxInput           = G2L["49"],
	SendButton             = G2L["4d"],
	StopButton             = G2L["4f"],
	ActionsFrame           = G2L["51"],
	NewChatButton          = G2L["54"],
	-- Settings page
	SettingsPage           = G2L["58"],
	Settings_SF            = G2L["59"],
	APIKeyFrame                = G2L["9b"],
	APIKeyLabel                = G2L["9d"],
	APIKeyBox                  = G2L["9e"],
	APIKeySingleButton         = G2L["a3"],
	APIKeyMultiButton          = G2L["a7"],
	SetMultipleAPIKeysButton   = G2L["a9"],
	HostSelectFrame            = G2L["8f"],
	HostTitle              = G2L["90"],
	HostSelectTextButton   = G2L["96"],
	HostSelectTextBox      = G2L["93"],
	HostSelectIcon         = G2L["98"],
	HostSelectLabel        = G2L["9a"],
	HostProviderModal      = G2L["1d5"],
	HostFrame              = G2L["1d8"],
	HostButtons            = {},
	HostTemplateButton     = G2L["1da"],
	HostProviderSF         = G2L["1d9"],
	ModelSelectFrame       = G2L["60"],
	ModelFrame             = G2L["62"],
	ModelBox               = G2L["63"],
	DropdownButton         = G2L["66"],
	DropdownList           = Instance.new("Frame"),
	TestFrame              = G2L["69"],
	ConnectionButton       = G2L["6c"],
	CredentialButton       = G2L["73"],
	ConnectionIconColor    = G2L["6f"],
	CredentialIconColor    = G2L["76"],
	MaxStepFrame           = G2L["7a"],
	MaxStepBox             = G2L["7d"],
	MaxStepResetButton     = G2L["80"],
	TemperatureBox         = G2L["86"],
	TemperatureResetButton = G2L["89"],
	SystemPromptFrame      = G2L["8b"],
	SystemPromptButton     = G2L["8d"],
	-- Usage
	UsageFrame             = G2L["5a"],
	UsageTotalLabel        = G2L["5c"],
	UsageSessionLabel      = G2L["5d"],
	LoadFreeButton         = G2L["5e"],
	UnsavedChanges         = G2L["ab"],
	TextLabel              = G2L["ad"],
	SaveButton             = G2L["af"],
	RevertButton           = G2L["b1"],
	-- Code page
	CodePage               = G2L["b4"],
	CodeTopFrame           = G2L["b5"],
	CodeActionsFrame       = G2L["b6"],
	CodeClearButton        = G2L["b9"],
	CodeCopyButton         = G2L["bd"],
	RunButton              = G2L["c1"],
	TabsFrame              = G2L["c4"],
	TabsScrollingFrame     = G2L["c5"],
	TabButtonTemplate      = G2L["c6"],
	NewTabButton           = G2L["c9"],
	CodeSF                 = G2L["cc"],
	CodeBox                = G2L["ce"],
	IntelLabel             = G2L["d0"],
	LineLabel              = G2L["d1"],
	-- Tools page
	ToolsPage              = G2L["d3"],
	ToolsSF                = G2L["d4"],
	ToolsElementTemplate   = G2L["d7"],
	ToolsGroupFrame        = G2L["d8"],
	ToolsGroupInner        = G2L["da"],
	ToolsGroupTitle        = G2L["db"],
	ToolsToolFrame         = G2L["df"],
	ToolsToolNameDesc      = G2L["e2"],
	ToolsTotalElements     = G2L["e4"],
	-- Startup page
	StartupPageSF          = G2L["e9"],
	StartupPageLayout      = G2L["ea"],
	StartupElemTemplate    = G2L["ec"],
	StartupGroupFrame      = G2L["ed"],
	StartupGroupInner      = G2L["ef"],
	StartupGroupTitle      = G2L["f0"],
	StartupToolFrame       = G2L["f4"],
	StartupToolNameDesc    = G2L["f7"],
	StartupTotalElems      = G2L["f9"],
	-- History page
	HistoryPage            = G2L["fc"],
	HistorySF              = G2L["fd"],
	HistoryTemplate        = G2L["101"],
	HistoryToolFrame       = G2L["10a"],
	HistoryTotalElements   = G2L["124"],
	HistoryPageTip         = G2L["125"],
	HistoryButtonFrame     = G2L["189"],
	-- Browser page
	BrowserPage            = G2L["127"],
	BrowserDotYou          = G2L["12d"],
	BrowserDotBridge       = G2L["134"],
	BrowserDotWeb          = G2L["13a"],
	BrowserIconBridge      = G2L["132"],
	BrowserLabelBridge     = G2L["133"],
	BrowserIconWeb         = G2L["138"],
	BrowserLabelWeb        = G2L["139"],
	BrowserGrad1           = G2L["142"],
	BrowserGrad2           = G2L["146"],
	BrowserInstructions    = G2L["147"],
	BrowserLogsTextBox     = G2L["1c9"],
	ConnectToBrowserButton = G2L["47"],
	ForceRefreshButton     = G2L["157"],
	OpenBrowserLogsButton  = G2L["155"],
	BrowserButtonHitbox    = G2L["184"],
	-- Skills page
	SkillsPage             = G2L["159"],
	SkillsSF               = G2L["15a"],
	SkillsTemplate         = G2L["15d"],
	SkillsGroupFrame       = G2L["15e"],
	SkillsPageTip          = G2L["171"],
	SkillsTotalElements    = G2L["170"],
	SkillsRefreshButton    = G2L["174"],
	SkillsRefreshText      = G2L["176"],
	SkillsButtonHitbox     = G2L["192"],
	-- Sidebar & topbar
	LeftSidebar            = G2L["177"],
	SidebarContainer       = G2L["17a"],
	TopBar                 = G2L["19d"],
	CloseButton            = G2L["19f"],
	MinimizeButton         = G2L["1a2"],
	ResizeLabel            = G2L["1eb"],
	Highlight              = G2L["179"],
	-- Modal
	ModalFrame             = G2L["1a3"],
	ModalInner             = G2L["1a5"],
	ModalCloseButton       = G2L["1a7"],
	SearchModelModal       = G2L["1a8"],
	ModalSearchBox         = G2L["1aa"],
	ModalSF                = G2L["1ae"],
	ExampleModelBtn        = G2L["1af"],
	ModalSearchButton      = G2L["1ad"],
	ModalOpenButton        = G2L["66"],
	ToolResultViewModal    = G2L["1b2"],
	ToolResultSF           = G2L["1b4"],
	ToolResultTextBox      = G2L["1b7"],
	ModalTitleLabel        = G2L["1b8"],
	SystemPromptModal      = G2L["1ba"],
	SystemPromptSF         = G2L["1bc"],
	SystemPromptTextBox    = G2L["1bd"],
	SystemPromptResetButton = G2L["1c2"],
	SystemPromptSaveButton  = G2L["1c3"],
	BrowserLogsModal       = G2L["1c4"],
	-- Multi API key modal
	SetMultiAPIKeyModal    = G2L["1ca"],
	MultiAPIKeyTextBox     = G2L["1cd"],
	MultiAPIKeyClearButton = G2L["1d3"],
	MultiAPIKeySaveButton  = G2L["1d4"],
	-- Confirmation modal
	ConfirmationFrame      = G2L["1e0"],
	ConfirmYesButton       = G2L["1e4"],
	ConfirmNoButton        = G2L["1e5"],
	ConfirmTextLabel       = G2L["1e6"],
	-- Misc
	IntroFrame             = G2L["1e8"],
	IYAIToastContainer     = G2L["1ec"],
	ToastTemplate          = G2L["1ed"],
	CurrentPage            = G2L["1f9"],
	OpenConversationHistoryButton = G2L["46"],
}
-- ── Main logic ────────────────────────────────────────────────────────────────

local Clr = {
    ok      = Color3.fromRGB(109, 217, 161),
    err     = Color3.fromRGB(171, 108, 108),
    idle    = Color3.fromRGB(41,  41,  41),
    pending = Color3.fromRGB(217, 180, 80),
    tools = {
        Script   = Color3.fromRGB(109, 217, 161),
        Web      = Color3.fromRGB(86,  156, 214),
        Explorer = Color3.fromRGB(255, 198, 102),
        IY       = Color3.fromRGB(171, 108, 108),
    },
    sdim  = NumberSequence.new{ NumberSequenceKeypoint.new(0, 1), NumberSequenceKeypoint.new(0.5, 0.9), NumberSequenceKeypoint.new(1, 1) },
    sfull = NumberSequence.new{ NumberSequenceKeypoint.new(0, 1), NumberSequenceKeypoint.new(0.5, 0),   NumberSequenceKeypoint.new(1, 1) },
}

-- Look up the Version StringValue by name, not by G2L ID — hardcoded IDs
-- aren't remapped after a G2L export and silently break with empty text.
local VERSION = (function()
	local v = UI.ScreenGui and UI.ScreenGui:FindFirstChild("Version")
	return (v and v.Value) or ""
end)()
local Tween             = TweenInfo.new(0.5, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut)
local DefaultIYAISize   = UDim2.new(0, 600, 0, 400)
local MinimizedIYAISize = UDim2.new(0, 160, 0, 25)
local Minimized         = false

-- Fit the GUI to the current viewport on startup
do
	local vp     = workspace.CurrentCamera.ViewportSize
	local margin = 20
	local w = math.min(600, vp.X - margin)
	local h = math.min(400, vp.Y - margin)
	w = math.max(w, 300)
	h = math.max(h, 200)
	DefaultIYAISize = UDim2.new(0, w, 0, h)
	UI.IYAI.Size     = DefaultIYAISize
	UI.IYAI.Position = UDim2.new(0.5, -w/2, 0.5, -h/2)
end
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

local function isOllamaFormat()
	local p = Providers.get(Config.host)
	return p ~= nil and p.modelsFormat == "ollama"
end

local function autoTestOnStart()
	task.spawn(function()
		local p = Providers.get(Config.host)
		if not p then return end
		if p.modelsFormat == "ollama" then
			local url = p.modelsUrl or (Config.ollamaUrl .. "/api/tags")
			local headers = p.authModels and { ["Authorization"] = "Bearer " .. Config.apiKey } or {}
			local res = Http.request(url, "GET", headers)
			local ok, data = pcall(HS.JSONDecode, HS, res and res.Body or "")
			if ok and data and data.models then modelList = data.models end
		elseif p.modelsUrl then
			local key = p.authModels and Config.apiKey or ""
			fetchModelsFromOpenAIEndpoint(p.modelsUrl, key)
		end
	end)
	local p   = Providers.get(Config.host)
	local key = Config.apiKey
	if key == "" and p and p.requiresKey then
		Toast.show("No API Key", "Set your API key in Settings", "err", 5)
		task.delay(1, function() UI.CurrentPage.Value = "Settings" end)
		return
	end
	if Config.host == "Ollama ☁️" then
		Toast.show("Ollama ☁️", "Cloud mode — make sure your API key is set", "ok", 4)
	elseif Config.host == "Ollama" then
		local res = Http.request(Config.ollamaUrl .. "/api/tags", "GET", {})
		if res and res.StatusCode == 200 then
			Toast.show("Connected", "Ollama is reachable", "ok", 3)
		else
			Toast.show("Offline", "Cannot reach Ollama — check Settings", "err", 5)
			task.delay(1, function() UI.CurrentPage.Value = "Settings" end)
		end
	elseif p and p.modelsUrl then
		local headers = p.authModels and { ["Authorization"] = "Bearer " .. key } or {}
		local res = Http.request(p.modelsUrl, "GET", headers)
		if res and res.StatusCode == 200 then
			Toast.show("Connected", Config.host .. " key is valid", "ok", 3)
		elseif res and res.StatusCode == 401 then
			Toast.show("Invalid Key", Config.host .. " key rejected — update in Settings", "err", 5)
			task.delay(1, function() UI.CurrentPage.Value = "Settings" end)
		else
			Toast.show("Connection Failed", "Could not reach " .. Config.host, "err", 5)
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

for _, v in pairs(UI.SidebarContainer:GetChildren()) do
	if not v:IsA("Frame") then continue end
	local Hitbox = v:FindFirstChild("Hitbox")
	if not Hitbox then continue end
	local label   = v:FindFirstChild("TextLabel")
	local tabName = label and label.Text or v.Name
	Hitbox.MouseButton1Click:Connect(function() UI.CurrentPage.Value = tabName end)
end

UI.Highlight.Position = UDim2.new(0, 0, 0, 0)
UI.CurrentPage.Changed:Connect(function(page)
	local target = UI.SidebarContainer:FindFirstChild(page .. "ButtonFrame")
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

-- ── Usage tracking ─────────────────────────────────────────────────────────────

local USAGE_FILE = "iyai_data/usage.json"
local Usage = { total = 0, session = 0 }

local function loadUsage()
	if not (readfile and isfile and isfile(USAGE_FILE)) then return end
	local ok, raw = pcall(readfile, USAGE_FILE)
	if not ok or not raw or raw == "" then return end
	local ok2, data = pcall(HS.JSONDecode, HS, raw)
	if ok2 and type(data) == "table" and type(data.total) == "number" then
		Usage.total = data.total
	end
end

local function saveUsage()
	if not writefile then return end
	ensureParentFolders(USAGE_FILE)
	pcall(writefile, USAGE_FILE, HS:JSONEncode({ total = Usage.total }))
end

local function updateUsageLabels()
	local function fmt(n)
		if n >= 1e6 then return string.format("%.1fM", n / 1e6)
		elseif n >= 1e3 then return string.format("%.1fk", n / 1e3)
		else return tostring(n) end
	end
	if UI.UsageTotalLabel   then UI.UsageTotalLabel.Text   = "So far, you've used " .. fmt(Usage.total) .. " tokens" end
	if UI.UsageSessionLabel then UI.UsageSessionLabel.Text = "On this conversation, " .. fmt(Usage.session) .. " tokens" end
end

local function addTokens(prompt, completion)
	local n = (prompt or 0) + (completion or 0)
	if n <= 0 then return end
	Usage.total   = Usage.total   + n
	Usage.session = Usage.session + n
	updateUsageLabels()
	saveUsage()
end

loadUsage()
updateUsageLabels()

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

	local function wireResponseCopyBtn(elem, content)
		local copyBtn = elem:FindFirstChild("CopyButton", true)
		if copyBtn then
			copyBtn.MouseButton1Click:Connect(function()
				pcall(setclipboard, content)
				Toast.show("Copied", "Response copied to clipboard", "ok", 2)
			end)
		end
	end

	if #segments == 1 and segments[1].type == "text" then
		local elem = addElement("AssistantResponse", "", false)
		local textLabel = findContentLabel(elem)
		if textLabel then
			typewriteInto(textLabel, markdownToRichText(segments[1].content) .. (usage and "\n" or ""))
		end
		wireResponseCopyBtn(elem, segments[1].content)
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
					wireResponseCopyBtn(elem, seg.content)
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
				addTokens(prompt, completion)
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

-- ── Custom caret + selection highlight ───────────────────────────────────────
-- Wrapped in a do-block — 10 internal locals (caret state, selection helpers)
-- are only used by the connect closures defined in this block. Frees ~10 slots.
do

local updateSelection  -- forward-declared; was previously an implicit global

local _TXS         = clone(game:GetService("TextService"))
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

end  -- /Custom caret + selection highlight do-block

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

-- ── Memory tools (per-game persistent notes) ─────────────────────────────────
Tools.register({
	group = "Memory",
	definition = {
		type = "function",
		["function"] = {
			name        = "remember",
			description = "Save a fact about THIS specific game (current PlaceId) so it auto-loads into your context every future session. Use for: game-specific quirks (anti-cheat behavior, remote endpoint patterns, NPC spawn rules), user preferences for this game (ESP color, walkspeed), discovered values (passwords, codes, IDs). Keep each fact one sentence. Don't remember chitchat or temporary state.",
			parameters  = {
				type = "object",
				properties = {
					fact = { type = "string", description = "A single fact to persist for this game." }
				},
				required = { "fact" }
			}
		}
	},
	handler = function(args)
		local ok, parsed = pcall(HS.JSONDecode, HS, args)
		if not ok or type(parsed) ~= "table" or type(parsed.fact) ~= "string" then
			return "Error: invalid arguments. Pass { fact = \"...\" }."
		end
		if Memory.remember(parsed.fact) then
			return "Remembered for PlaceId " .. tostring(game.PlaceId) .. ": " .. parsed.fact
		end
		return "Error: writefile unavailable — cannot persist memory."
	end
})

Tools.register({
	group = "Memory",
	definition = {
		type = "function",
		["function"] = {
			name        = "forget",
			description = "Remove remembered facts containing a query substring. Use when a fact becomes outdated or wrong.",
			parameters  = {
				type = "object",
				properties = {
					query = { type = "string", description = "Substring; any remembered line containing this is removed (case-insensitive)." }
				},
				required = { "query" }
			}
		}
	},
	handler = function(args)
		local ok, parsed = pcall(HS.JSONDecode, HS, args)
		if not ok or type(parsed) ~= "table" or type(parsed.query) ~= "string" then
			return "Error: invalid arguments. Pass { query = \"...\" }."
		end
		local n = Memory.forget(parsed.query)
		return "Forgot " .. n .. " line(s) matching: " .. parsed.query
	end
})

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
-- Wrapped in a do-block to free ~13 register slots. Only `Set`, `saveSettings`,
-- `_onSettingsSaved`, and `_uisBegan` need module-scope access; everything else
-- (helper functions, credential handlers, UI populators) stays inside the
-- block and is captured by the closures it wires up.

local _onSettingsSaved  -- forward-declared; wired to sendSyncState after bridge section loads
local saveSettings       -- forward-declared so CloseButton handler can call it
local _uisBegan          -- forward-declared so CloseButton can disconnect it

local Set = {
	host      = Config.host,
	ddOpen    = false,
	loadKey   = true,
	keyFocus  = false,
	filtList  = {},
	allHosts  = (function() local t = {} for _, p in ipairs(Providers.list) do t[#t+1] = p.name end return t end)(),
	cache     = {},
}

do

UI.UnsavedChanges.Visible = false
UI.DropdownList.Visible   = false

local function maskKey(key)
	if key == "" then return "" end
	local visible = math.min(4, #key)
	return string.rep("•", #key - visible) .. key:sub(-visible)
end

-- PROVIDER_INFO and URL_PATTERNS replaced by Providers module

local function updateHostLabel(host)
	if UI.HostTitle then
		UI.HostTitle.RichText = true
		UI.HostTitle.Text = 'Host Provider  <font size="11" color="#A1A5A2">(' .. host .. ')</font>'
	end
	local p = Providers.get(host)
	if UI.HostSelectIcon then
		UI.HostSelectIcon.Image = p and p.icon or "rbxassetid://98245295559168"
	end
	if UI.HostSelectLabel then
		UI.HostSelectLabel.Text = host
	end
	if UI.HostSelectTextBox then
		local url = p and p.displayUrl
		if url == nil then
			url = Config.ollamaUrl or "http://localhost:11434"
		end
		if url and url ~= "" then
			UI.HostSelectTextBox.Text = url
		end
	end
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

local function hostBtnName(b)
	local lbl = b:FindFirstChildWhichIsA("TextLabel")
	return lbl and lbl.Text or b.Text
end

for i, p in ipairs(Providers.list) do
	local btn  = UI.HostTemplateButton:Clone()
	local icon = btn:FindFirstChildWhichIsA("ImageLabel")
	local lbl  = btn:FindFirstChildWhichIsA("TextLabel")
	if icon then icon.Image = p.icon end
	if lbl  then lbl.Text  = p.name end
	local name = p.name
	btn.LayoutOrder = i
	btn.Visible     = true
	btn.Parent      = UI.HostProviderSF
	table.insert(UI.HostButtons, btn)
end

for _, b in pairs(UI.HostButtons) do
	b.BackgroundTransparency = hostBtnName(b) == Set.host and 0.9 or 1
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

_uisBegan = UIS.InputBegan:Connect(function(input)
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
		local p = Providers.get(host)
		UI.APIKeyFrame.Visible = p == nil or p.requiresKey
	end
	if UI.HostTitle then
		UI.HostTitle.RichText = true
		UI.HostTitle.Text = 'Host Provider  <font size="11" color="#A1A5A2">(' .. host .. ')</font>'
	end
	applyAPIKeyMode(Config.apiKeyMode)
end

updateApiKeyVisibility(Set.host)

for _, btn in pairs(UI.HostButtons) do
	if not btn:IsA("TextButton") then continue end
	btn.MouseButton1Click:Connect(function()
		Set.cache[Set.host] = { key = UI.APIKeyBox.Text, model = UI.ModelBox.Text, mode = Config.apiKeyMode }
		Set.host    = hostBtnName(btn)
		Config.host = Set.host
		for _, b in pairs(UI.HostButtons) do
			if b:IsA("TextButton") then
				b.BackgroundTransparency = hostBtnName(b) == Set.host and 0.9 or 1
			end
		end
		UI.ConnectionIconColor.BackgroundColor3 = Clr.idle
		UI.CredentialIconColor.BackgroundColor3 = Clr.idle
		_loading = true; Set.loadKey = true
		applyProviderToUI(Set.host)
		_loading = false; Set.loadKey = false
		updateApiKeyVisibility(Set.host)
		updateHostLabel(Set.host)
		UI.UnsavedChanges.Visible = true
		-- Close the HostProviderModal
		UI.ModalFrame.Visible = false
		UI.ModalInner.Visible = false
	end)
end

local function setConnStatus(ok)   UI.ConnectionIconColor.BackgroundColor3 = ok and Clr.ok or Clr.err end
local function setCredStatus(ok)   UI.CredentialIconColor.BackgroundColor3 = ok and Clr.ok or Clr.err end

UI.ConnectionButton.MouseButton1Click:Connect(function()
	UI.ConnectionIconColor.BackgroundColor3 = Clr.pending
	local p   = Providers.get(Set.host)
	local key = UI.APIKeyBox.Text
	local res
	if Set.host == "Ollama" then
		res = Http.request(Config.ollamaUrl .. "/api/tags", "GET", {})
	elseif p and p.modelsUrl then
		local headers = (p.authModels and key ~= "") and { ["Authorization"] = "Bearer " .. key } or {}
		res = Http.request(p.modelsUrl, "GET", headers)
	else
		res = Http.request("https://openrouter.ai/api/v1/models", "GET", {
			["Authorization"] = "Bearer " .. key,
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
	if p and p.modelsFormat == "ollama" and data.models then
		modelList = data.models
		populateDropdown(data.models)
		if UI.ModelBox.Text == "" and #data.models > 0 then
			_loading = true; UI.ModelBox.Text = data.models[1].name; _loading = false
		end
	elseif data.data then
		modelList = {}
		for _, m in ipairs(data.data) do table.insert(modelList, { name = m.id }) end
		table.sort(modelList, function(a, b) return a.name < b.name end)
		populateDropdown(modelList)
		if UI.ModelBox.Text == "" and #modelList > 0 then
			_loading = true; UI.ModelBox.Text = modelList[1].name; _loading = false
		end
	end
end)

local _credHandlers = {
	noauth = function(p, key)
		local res = Http.request(Config.ollamaUrl .. "/api/tags", "GET", {})
		if res and res.StatusCode == 200 then
			setCredStatus(true);  Toast.show("OK", "Ollama has no auth — connection is fine", "ok", 3)
		else
			setCredStatus(false); Toast.show("Failed", "Could not reach Ollama", "err", 4)
		end
	end,
	pollinations = function(p, key)
		local body = HS:JSONEncode({ model = "openai", messages = {{ role = "user", content = "hi" }}, max_tokens = 1 })
		local res = Http.request(p.credUrl, "POST", { ["Content-Type"] = "application/json", ["Authorization"] = "Bearer " .. key }, body)
		if not res then setCredStatus(false); Toast.show("Failed", "No response from " .. p.name, "err", 4)
		elseif res.StatusCode == 200 then setCredStatus(true);  Toast.show("Valid Key", p.name .. " key accepted", "ok", 3)
		elseif res.StatusCode == 401 then setCredStatus(false); Toast.show("Invalid Key", p.name .. " key rejected (401)", "err", 4)
		else                              setCredStatus(false); Toast.show("Failed", "Status " .. res.StatusCode, "err", 4)
		end
	end,
	huggingface = function(p, key)
		local res = Http.request(p.credUrl, "GET", { ["Authorization"] = "Bearer " .. key })
		if not res then setCredStatus(false); Toast.show("Failed", "No response from HuggingFace", "err", 4)
		elseif res.StatusCode == 200 then
			local ok, data = pcall(HS.JSONDecode, HS, res.Body)
			local name = ok and data and (data.name or data.fullname) or "unknown"
			setCredStatus(true); Toast.show("Valid Token", "Logged in as " .. tostring(name), "ok", 3)
		elseif res.StatusCode == 401 then setCredStatus(false); Toast.show("Invalid Token", "HuggingFace token rejected (401)", "err", 4)
		else                              setCredStatus(false); Toast.show("Failed", "Status " .. res.StatusCode, "err", 4)
		end
	end,
	openrouter = function(p, key)
		local res = Http.request(p.credUrl, "GET", { ["Authorization"] = "Bearer " .. key })
		if not res then setCredStatus(false); Toast.show("Failed", "No response from server", "err", 4)
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
		elseif res.StatusCode == 401 then setCredStatus(false); Toast.show("Invalid Key", "API key rejected (401)", "err", 4)
		else                              setCredStatus(false); Toast.show("Failed", "Status " .. res.StatusCode, "err", 4)
		end
	end,
	standard = function(p, key)
		local url = p.credUrl or p.modelsUrl
		local res = Http.request(url, "GET", { ["Authorization"] = "Bearer " .. key })
		if not res then setCredStatus(false); Toast.show("Failed", "No response from " .. p.name, "err", 4)
		elseif res.StatusCode == 200 then setCredStatus(true);  Toast.show("Valid Key", p.name .. " key accepted", "ok", 3)
		elseif res.StatusCode == 401 then setCredStatus(false); Toast.show("Invalid Key", p.name .. " key rejected (401)", "err", 4)
		else                              setCredStatus(false); Toast.show("Failed", "Status " .. res.StatusCode, "err", 4)
		end
	end,
}

UI.CredentialButton.MouseButton1Click:Connect(function()
	UI.CredentialIconColor.BackgroundColor3 = Clr.pending
	local p   = Providers.get(Set.host)
	local key = UI.APIKeyBox.Text
	if p and p.requiresKey and key == "" then
		UI.CredentialIconColor.BackgroundColor3 = Clr.idle
		Toast.show("No API Key", "Enter an API key first", "err", 3) return
	end
	local fmt     = p and p.credFormat or "standard"
	local handler = _credHandlers[fmt] or _credHandlers.standard
	handler(p or { name = Set.host, credUrl = nil, modelsUrl = nil }, key)
end)

function saveSettings()  -- assigns to outer forward-declared local
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
			b.BackgroundTransparency = hostBtnName(b) == Set.host and 0.9 or 1
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

UI.LoadFreeButton.MouseButton1Click:Connect(function()
	_loading = true; Set.loadKey = true
	Set.cache[Set.host] = { key = UI.APIKeyBox.Text, model = UI.ModelBox.Text, mode = Config.apiKeyMode }
	Set.host    = "Ollama ☁️"
	Config.host = "Ollama ☁️"
	Set.cache["Ollama ☁️"] = Set.cache["Ollama ☁️"] or { key = "", model = "", mode = "single" }
	Set.cache["Ollama ☁️"].model = "qwen3-coder:480b-cloud"
	applyProviderToUI("Ollama ☁️")
	UI.ModelBox.Text = "qwen3-coder:480b-cloud"
	updateHostLabel("Ollama ☁️")
	for _, b in pairs(UI.HostButtons) do
		b.BackgroundTransparency = hostBtnName(b) == Set.host and 0.9 or 1
	end
	updateApiKeyVisibility("Ollama ☁️")
	_loading = false; Set.loadKey = false
	UI.UnsavedChanges.Visible = true
	Toast.show("Free Setup", "Set to qwen3-coder:480b-cloud via Ollama Cloud — add your API key from ollama.com/settings/keys", "ok", 6)
end)

end  -- /Settings page do-block

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
	local p    = Providers.get(host)
	if host == "Ollama" then
		local res = Http.request(Config.ollamaUrl .. "/api/tags", "GET", {})
		local ok, data = pcall(HS.JSONDecode, HS, res and res.Body or "")
		if ok and data and data.models then
			for _, m in ipairs(data.models) do table.insert(Modal.all, { name = m.name }) end
		end
	elseif host == "HuggingFace" then
		fetchHuggingFaceModalSearch("")
		return
	elseif p and p.modelsFormat == "ollama" and p.modelsUrl then
		local headers = p.authModels and { ["Authorization"] = "Bearer " .. UI.APIKeyBox.Text } or {}
		local res = Http.request(p.modelsUrl, "GET", headers)
		local ok, data = pcall(HS.JSONDecode, HS, res and res.Body or "")
		if ok and data and data.models then
			for _, m in ipairs(data.models) do table.insert(Modal.all, { name = m.name }) end
		end
	elseif p and p.modelsUrl then
		local auth = p.authModels and UI.APIKeyBox.Text or ""
		local res = Http.request(p.modelsUrl, "GET", auth ~= "" and { ["Authorization"] = "Bearer " .. auth } or {})
		local ok, data = pcall(HS.JSONDecode, HS, res and res.Body or "")
		if ok and data and data.data then
			for _, m in ipairs(data.data) do table.insert(Modal.all, { name = m.id }) end
			table.sort(Modal.all, function(a, b) return a.name < b.name end)
		end
	end
	Modal.filtered = { table.unpack(Modal.all) }
	Modal.rendered = 0
	modalClearButtons()
	modalRenderChunk()
end

local function showInnerModal(target)
	for _, child in ipairs(UI.ModalInner:GetChildren()) do
		if child:IsA("GuiObject") and child ~= UI.ModalCloseButton and child ~= UI.ModalTitleLabel then
			child.Visible = (child == target)
		end
	end
	UI.ConfirmationFrame.Visible = false
	UI.ModalInner.Visible        = true
	UI.ModalFrame.Visible        = true
end

local function openModal()
	if UI.ModalTitleLabel then UI.ModalTitleLabel.Text = "Select Model" end
	showInnerModal(UI.SearchModelModal)
	if UI.ModalSearchBox then UI.ModalSearchBox.Text = "" end
	modalClearButtons()
	task.spawn(modalFetch)
end

local function openToolResultModal(fullText)
	if UI.ModalTitleLabel then UI.ModalTitleLabel.Text = "Tool Output" end
	showInnerModal(UI.ToolResultViewModal)
	UI.ToolResultTextBox.Text      = fullText
	UI.ToolResultSF.CanvasPosition = Vector2.new(0, 0)
	task.defer(function()
		UI.ToolResultSF.CanvasSize = UDim2.new(0, 0, 0, UI.ToolResultTextBox.AbsoluteSize.Y + 20)
	end)
end

local function openSystemPromptModal()
	if UI.ModalTitleLabel then UI.ModalTitleLabel.Text = "System Prompt" end
	showInnerModal(UI.SystemPromptModal)
	UI.SystemPromptTextBox.TextEditable    = true
	UI.SystemPromptTextBox.Text            = Config.userSystemPrompt
	UI.SystemPromptTextBox.PlaceholderText = "Leave empty to use the default system prompt.\nType anything here to fully replace it."
end

local function openMultiAPIKeyModal()
	if UI.ModalTitleLabel then UI.ModalTitleLabel.Text = "API Keys" end
	showInnerModal(UI.SetMultiAPIKeyModal)
	UI.MultiAPIKeyTextBox.Text = table.concat(Config.openrouterKeys or {}, "\n")
end

local function openHostProviderModal()
	if UI.ModalTitleLabel then UI.ModalTitleLabel.Text = "Host Provider" end
	showInnerModal(UI.HostProviderModal)
end

UI.HostSelectTextButton.MouseButton1Click:Connect(openHostProviderModal)

local CUSTOM_ICON = "rbxassetid://98245295559168"

local function applyUrlDetection(url)
	local detected = Providers.detectFromUrl(url)
	if detected then
		Set.host = detected
		local p = Providers.get(detected)
		if UI.HostSelectIcon  then UI.HostSelectIcon.Image = p and p.icon or CUSTOM_ICON end
		if UI.HostSelectLabel then UI.HostSelectLabel.Text  = detected end
		for _, b in pairs(UI.HostButtons) do
			if b:IsA("TextButton") then
				b.BackgroundTransparency = hostBtnName(b) == Set.host and 0.9 or 1
			end
		end
	else
		Set.host = "Custom"
		if UI.HostSelectIcon  then UI.HostSelectIcon.Image = CUSTOM_ICON end
		if UI.HostSelectLabel then UI.HostSelectLabel.Text  = "Custom" end
		for _, b in pairs(UI.HostButtons) do
			if b:IsA("TextButton") then
				b.BackgroundTransparency = 1
			end
		end
	end
	updateApiKeyVisibility(Set.host)
end

local _urlDebounce = nil
UI.HostSelectTextBox.Changed:Connect(function(prop)
	if prop ~= "Text" then return end
	if Set.loadKey then return end
	if _urlDebounce then task.cancel(_urlDebounce) end
	_urlDebounce = task.delay(0.4, function()
		_urlDebounce = nil
		applyUrlDetection(UI.HostSelectTextBox.Text)
		UI.UnsavedChanges.Visible = true
	end)
end)

UI.HostSelectTextBox.FocusLost:Connect(function()
	if Set.loadKey then return end
	if _urlDebounce then task.cancel(_urlDebounce); _urlDebounce = nil end
	applyUrlDetection(UI.HostSelectTextBox.Text)
	UI.UnsavedChanges.Visible = true
end)

UI.ModalOpenButton.MouseButton1Click:Connect(openModal)
UI.ModalCloseButton.MouseButton1Click:Connect(function()
	UI.ModalFrame.Visible        = false
	UI.ModalInner.Visible        = false
	UI.ConfirmationFrame.Visible = false
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
	Config.openrouterKeyIndex = 1
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
		if UI.ResizeLabel then UI.ResizeLabel.Visible = false end
		task.delay(0.15, function()
			UI.ContentPages.Visible = false
			UI.ModalFrame.Visible   = false
		end)
	else
		UI.ContentPages.Visible = true
		TS:Create(UI.IYAI, Tween, { Size = DefaultIYAISize }):Play()
		if authorLabel  then TS:Create(authorLabel,  Tween, { TextTransparency = 0.5 }):Play() end
		if versionLabel then TS:Create(versionLabel, Tween, { TextTransparency = 0.5 }):Play() end
		if UI.ResizeLabel then UI.ResizeLabel.Visible = true end
	end
end)

local _uisChanged, _uisEnded

UI.CloseButton.MouseButton1Click:Connect(function()
	-- Auto-save unsaved settings so we don't silently discard them on close
	if UI.UnsavedChanges and UI.UnsavedChanges.Visible then
		local ok = pcall(saveSettings)
		if ok then Toast.show("Auto-saved", "Unsaved settings saved on close", "ok", 2) end
	end
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
	local p = Providers.get(Config.host)
	if p and p.chatUrl then return p.chatUrl end
	if Config.host == "Ollama" then return Config.ollamaUrl .. "/api/chat" end
	if Config.host == "Custom" then
		local base = UI.HostSelectTextBox and UI.HostSelectTextBox.Text or Config.customUrl or ""
		base = base:gsub("/$", "")
		return base ~= "" and (base .. "/chat/completions") or "https://openrouter.ai/api/v1/chat/completions"
	end
	return "https://openrouter.ai/api/v1/chat/completions"
end

local function buildHeaders()
	local headers = { ["Content-Type"] = "application/json" }
	if not isOllamaFormat() or Config.host == "Ollama ☁️" then
		-- Multi-key rotation uses Config.getActiveKey(); otherwise read from the
		-- per-provider cache so unsaved host switches still use the right key.
		local key
		if (Config.apiKeyMode or "single") == "multi" then
			key = Config.getActiveKey()
		else
			local cached = Set.cache[Config.host]
			key = (cached and cached.key ~= "" and cached.key) or Config.apiKey
		end
		if key and key ~= "" then
			headers["Authorization"] = "Bearer " .. key
		end
	end
	return headers
end

local RETRY_ATTEMPTS = 3
local RETRY_DELAY    = 4

local function requestWithRetry(url, method, headersOrFn, body, onRetry)
	local res
	local function getHeaders()
		return type(headersOrFn) == "function" and headersOrFn() or headersOrFn
	end
	for attempt = 1, RETRY_ATTEMPTS do
		-- Slow-request watchdog: fires a toast at 15s so the user knows the
		-- plugin isn't hung. The actual request continues until provider timeout.
		local done = false
		task.delay(15, function()
			if not done then
				Toast.show("Slow request", "Provider is taking longer than usual… still waiting", "warn", 5)
			end
		end)
		res = Http.request(url, method, getHeaders(), body)
		done = true
		if res and res.StatusCode ~= 429 then break end
		if attempt < RETRY_ATTEMPTS then
			-- In multi-key mode, the next call to Config.getActiveKey() (via
			-- buildHeaders on the next iteration) auto-advances to the next
			-- key. No explicit rotation call needed.
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

local function compactHistory(history)
	-- Build a plain text transcript (no tool_call structures, just readable text)
	local lines = {}
	for _, m in ipairs(history) do
		if m.role == "user" then
			lines[#lines+1] = "User: " .. (type(m.content) == "string" and m.content or "(message)")
		elseif m.role == "assistant" then
			local text = type(m.content) == "string" and m.content or ""
			if m.tool_calls and #m.tool_calls > 0 then
				local names = {}
				for _, tc in ipairs(m.tool_calls) do
					names[#names+1] = tc["function"] and tc["function"].name or "tool"
				end
				text = (text ~= "" and text .. " " or "") .. "[used: " .. table.concat(names, ", ") .. "]"
			end
			if text ~= "" then lines[#lines+1] = "Assistant: " .. text end
		elseif m.role == "tool" then
			local content = type(m.content) == "string" and m.content:sub(1, 200) or ""
			lines[#lines+1] = "  → " .. (m.name or "tool") .. ": " .. content
		end
	end
	if #lines == 0 then return nil end

	local body = HS:JSONEncode({
		model    = Config.model,
		messages = {
			{ role = "system", content = "Summarize the following conversation concisely. Preserve: what was asked, actions taken, code written, results found, and current task state. Output only the summary, no preamble." },
			{ role = "user",   content = table.concat(lines, "\n") },
		},
		stream = false,
	})

	local res = requestWithRetry(buildUrl(), "POST", buildHeaders, body)
	if not res or res.StatusCode ~= 200 then return nil end
	local msg, _, err = parseMessage(res.Body)
	if err or not msg then return nil end
	local summary = type(msg.content) == "string" and msg.content:match("^%s*(.-)%s*$") or ""
	if summary == "" then return nil end

	-- Preserve the last user message (current request) after the summary
	local lastUser = nil
	for i = #history, 1, -1 do
		if history[i].role == "user" then lastUser = history[i]; break end
	end

	local compacted = {
		{ role = "user",      content = "Summary of our conversation so far:\n\n" .. summary },
		{ role = "assistant", content = "Got it." },
	}
	if lastUser then compacted[#compacted+1] = lastUser end
	return compacted
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

M.Sk = { file = "iyai_data/skills.json", enabled = {}, loaded = {} }

local function parseSkillMd(text)
	local name    = text:match("^%-%-%-[^\n]*\nname:%s*(.-)%s*\n") or ""
	local desc    = text:match("^%-%-%-[^\n]*\n[^\n]*\ndescription:%s*(.-)%s*\n") or ""
	local fm_end  = text:find("\n%-%-%-\n", 2)
	local content = fm_end and text:sub(fm_end + 5) or text
	return name:match("^%s*(.-)%s*$"), desc:match("^%s*(.-)%s*$"), content
end

local function loadSkillsEnabled()
	M.Sk.enabled = {}
	pcall(function()
		if not readfile then return end
		local ok, raw = pcall(readfile, M.Sk.file)
		if not ok or not raw or raw == "" then return end
		local ok2, data = pcall(HS.JSONDecode, HS, raw)
		if ok2 and type(data) == "table" then
			for k, v in pairs(data) do M.Sk.enabled[k] = v == true end
		end
	end)
end

local function saveSkillsEnabled()
	pcall(function()
		if not writefile then return end
		local ok, json = pcall(HS.JSONEncode, HS, M.Sk.enabled)
		if ok then pcall(writefile, M.Sk.file, json) end
	end)
end

-- Bootstrap skills from GitHub when no local IYAI/skills/ folder exists.
-- Primary: GitHub Contents API → dynamic directory listing (always current).
-- Fallback: hardcoded list, used when the API rate-limits (60 req/hr unauth).
local SKILLS_API_URL     = "https://api.github.com/repos/imluri/IYAI/contents/IYAI/skills"
local SKILLS_GITHUB_BASE = "https://raw.githubusercontent.com/imluri/IYAI/refs/heads/main/IYAI/skills/"
local SKILLS_CACHE_DIR   = "iyai_data/skills_cache"
local KNOWN_SKILLS_FALLBACK = {
	"gc_scan.md", "gui_playbook.md", "hook_remote.md",
	"interaction_triggers.md", "metatable_hook.md", "scan_remotes.md",
}

local function fetchSkillManifest()
	if not (Http and Http.request) then return nil end
	local res = Http.request(SKILLS_API_URL, "GET", { ["User-Agent"] = "IYAI" }, nil)
	if not res or res.StatusCode ~= 200 or not res.Body then return nil end
	local ok, data = pcall(HS.JSONDecode, HS, res.Body)
	if not ok or type(data) ~= "table" then return nil end
	local names = {}
	for _, entry in ipairs(data) do
		if type(entry) == "table" and entry.name and entry.name:match("%.md$") then
			names[#names+1] = entry.name
		end
	end
	return #names > 0 and names or nil
end

local function bootstrapSkillsCache()
	if not (Http and Http.request and writefile) then return false end
	if isfolder and makefolder then
		if not isfolder("iyai_data")     then pcall(makefolder, "iyai_data")     end
		if not isfolder(SKILLS_CACHE_DIR) then pcall(makefolder, SKILLS_CACHE_DIR) end
	end
	-- Discover skill list: GitHub API first, hardcoded fallback if rate-limited
	local names = fetchSkillManifest() or KNOWN_SKILLS_FALLBACK
	for _, fname in ipairs(names) do
		local cachePath = SKILLS_CACHE_DIR .. "/" .. fname
		if not (isfile and isfile(cachePath)) then
			local res = Http.request(SKILLS_GITHUB_BASE .. fname, "GET", { ["User-Agent"] = "IYAI" }, nil)
			if res and res.StatusCode == 200 and res.Body and res.Body ~= "" then
				pcall(writefile, cachePath, res.Body)
			end
		end
	end
	return true
end

local function safeListFiles(dir)
	if not listfiles then return nil end
	local ok, files = pcall(listfiles, dir)
	return ok and files or nil
end

local function loadSkillFiles()
	M.Sk.loaded = {}
	-- 1. Try local IYAI/skills/ folder (dev install)
	local files = safeListFiles("IYAI/skills")
	-- 2. Fall back to cached GitHub copies in iyai_data/skills_cache/
	if not files or #files == 0 then
		files = safeListFiles(SKILLS_CACHE_DIR)
	end
	-- 3. If still nothing, fetch the cache from GitHub now and retry
	if not files or #files == 0 then
		if bootstrapSkillsCache() then
			files = safeListFiles(SKILLS_CACHE_DIR)
		end
	end
	if not files then return end
	for _, path in ipairs(files) do
		if path:match("%.md$") then
			local ok, text = pcall(readfile, path)
			if ok and text and text ~= "" then
				local name, desc, content = parseSkillMd(text)
				local fname = path:match("[^/\\]+$") or path
				if name == "" then name = fname:gsub("%.md$", "") end
				table.insert(M.Sk.loaded, { name = name, desc = desc, content = content, file = fname })
			end
		end
	end
end

local function getEnabledSkills()
	local out = {}
	for _, skill in ipairs(M.Sk.loaded) do
		if M.Sk.enabled[skill.file] ~= false then
			table.insert(out, skill)
		end
	end
	return out
end

local function findEnabledSkill(query)
	if type(query) ~= "string" or query == "" then return nil end
	local q = query:lower():gsub("%.md$", "")
	for _, s in ipairs(getEnabledSkills()) do
		local name = (s.name or ""):lower()
		local file = (s.file or ""):lower():gsub("%.md$", "")
		if name == q or file == q then return s end
	end
	for _, s in ipairs(getEnabledSkills()) do
		local name = (s.name or ""):lower()
		if name:find(q, 1, true) then return s end
	end
	return nil
end

local function getEnabledSkillsContext()
	local enabled = getEnabledSkills()
	if #enabled == 0 then return nil end
	local lines = {
		"## Skill Guides",
		"Detailed cheat sheets are available for specific tasks. The index below shows when each guide applies — call get_skill(name) to load the full content BEFORE starting work that matches the description.",
		"",
	}
	for _, s in ipairs(enabled) do
		local desc = (s.desc and s.desc ~= "") and s.desc or "(no description)"
		lines[#lines+1] = "- " .. s.name .. ": " .. desc
	end
	return table.concat(lines, "\n")
end

Tools.register({
	group = "Skills",
	definition = {
		type = "function",
		["function"] = {
			name        = "get_skill",
			description = "Load the full content of a skill guide by name. Call this BEFORE starting work that matches a skill's description from the Skill Guides index in the system prompt. Returns the guide's full instructions, patterns, and examples.",
			parameters  = {
				type = "object",
				properties = {
					name = { type = "string", description = "Name of the skill to load (as shown in the Skill Guides index)." }
				},
				required = { "name" }
			}
		}
	},
	handler = function(args)
		local ok, parsed = pcall(HS.JSONDecode, HS, args)
		if not ok or type(parsed) ~= "table" then
			return "Error: invalid arguments. Pass { name = \"skill name\" }."
		end
		local skill = findEnabledSkill(parsed.name)
		if not skill then
			local available = {}
			for _, s in ipairs(getEnabledSkills()) do available[#available+1] = s.name end
			if #available == 0 then return "No skills are currently enabled." end
			return "Skill not found: " .. tostring(parsed.name) .. ". Available: " .. table.concat(available, ", ")
		end
		return skill.content
	end
})

-- Load skills enabled state on startup (file list loaded after populateSkillsPage is defined)
task.spawn(function()
	loadSkillsEnabled()
end)

-- Ensure every assistant tool_calls message is followed by a tool result for each call.
-- Strips orphaned tool messages and fills in missing results with a placeholder.
local function sanitizeToolPairs(msgs)
	local out = {}
	local i = 1
	while i <= #msgs do
		local m = msgs[i]
		if m.role == "tool" and (#out == 0 or out[#out].role == "tool" or (out[#out].role ~= "assistant" and not (out[#out].tool_calls))) then
			-- Orphaned tool message — skip
			i = i + 1
		elseif m.role == "assistant" and m.tool_calls and #m.tool_calls > 0 then
			-- Collect the tool messages that immediately follow
			local j = i + 1
			local followed = {}
			while j <= #msgs and msgs[j].role == "tool" do
				followed[#followed + 1] = msgs[j]
				j = j + 1
			end
			-- Build a set of responded IDs
			local responded = {}
			for _, tm in ipairs(followed) do
				if tm.tool_call_id then responded[tm.tool_call_id] = true end
			end
			table.insert(out, m)
			for _, tm in ipairs(followed) do table.insert(out, tm) end
			-- Fill in any missing tool responses so strict providers don't reject the payload
			for _, tc in ipairs(m.tool_calls) do
				local cid = tc.id or (tc["function"] and tc["function"].name) or ""
				if cid ~= "" and not responded[cid] then
					table.insert(out, { role = "tool", tool_call_id = cid, name = tc["function"] and tc["function"].name or cid, content = "(no result)" })
				end
			end
			i = j
		else
			table.insert(out, m)
			i = i + 1
		end
	end
	return out
end

local function buildMessages(history)
	local custom = type(Config.userSystemPrompt) == "string" and Config.userSystemPrompt:match("^%s*(.-)%s*$") or ""
	local sysContent = custom ~= "" and custom or Prompt.build(true, nil, isOllamaFormat())
	local skillsCtx  = getEnabledSkillsContext()
	if skillsCtx then sysContent = sysContent .. "\n\n" .. skillsCtx end
	local memContent = Memory.read()
	if memContent ~= "" then
		sysContent = sysContent
			.. "\n\n## Game Memory (PlaceId " .. tostring(game.PlaceId) .. ")"
			.. "\nFacts you've remembered about this specific game across sessions. Use these as ground truth."
			.. "\n\n" .. memContent
	end
	local msgs = {{ role = "system", content = sysContent }}
	for _, m in ipairs(history or Agt.history) do
		if isOllamaFormat() then
			-- Ollama: strip thinking/reasoning fields and ensure content is always a string
			local copy = { role = m.role, content = type(m.content) == "string" and m.content or "" }
			if m.tool_calls then copy.tool_calls = m.tool_calls end
			table.insert(msgs, copy)
		else
			table.insert(msgs, m)
		end
	end
	return sanitizeToolPairs(msgs)
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
		body.tools = toolDefs
		if not isOllamaFormat() then
			body.tool_choice = "auto"
		end
	end
	local ok, json = pcall(HS.JSONEncode, HS, body)
	if not ok then error("buildBody failed: " .. tostring(json), 2) end
	json = json:gsub('"properties":%[%]', '"properties":{}')
	json = json:gsub('"arguments":%[%]', '"arguments":{}')
	return json
end

-- ── Inline tool-call extraction (for models that emit tool calls as text) ────
-- Some models ignore the OpenAI tool_calls schema and emit their function
-- calls inline as XML-like markup in the message content (DeepSeek's DSML,
-- Anthropic-style <function_calls>, etc.). We normalize and parse them into
-- OpenAI-format tool_calls so the agent loop treats them uniformly.
--
-- Supported formats (all reduce to the same event walk after normalization):
--   • Anthropic:  <function_calls><invoke name="T"><parameter name="P">V</parameter></invoke></function_calls>
--   • DSML new:   < | DSML | invoke name="T">< | DSML | parameter name="P">V</| DSML | parameter></| DSML | invoke>
--   • DSML old:   < | DSML | invoke name="T">< | DSML | invoke name="P">V</| DSML | invoke></| DSML | invoke>
--   • Variants with extra attributes (e.g. string="true") on the tag

local function extractInlineToolCalls(content)
	if type(content) ~= "string" or content == "" then return nil, content end
	if not (content:find("<invoke", 1, true)
		or content:find("DSML", 1, true)
		or content:find("<function_calls", 1, true)) then
		return nil, content
	end

	-- Step 1: normalize DSML wrapper noise → plain XML tags
	local norm = content
		:gsub("<%s*|%s*DSML%s*|%s*", "<")
		:gsub("</%s*|%s*DSML%s*|%s*", "</")

	-- Step 2: collect all <invoke> and <parameter> open/close events
	local events = {}
	for pos, name, after in norm:gmatch("()<invoke%s+name=\"([^\"]+)\"[^>]*>()") do
		events[#events+1] = { pos = pos, after = after, kind = "open",  name = name }
	end
	for pos, name, after in norm:gmatch("()<parameter%s+name=\"([^\"]+)\"[^>]*>()") do
		events[#events+1] = { pos = pos, after = after, kind = "open",  name = name }
	end
	for pos, after in norm:gmatch("()</invoke%s*>()") do
		events[#events+1] = { pos = pos, after = after, kind = "close" }
	end
	for pos, after in norm:gmatch("()</parameter%s*>()") do
		events[#events+1] = { pos = pos, after = after, kind = "close" }
	end
	if #events == 0 then return nil, content end
	table.sort(events, function(a, b) return a.pos < b.pos end)

	-- Step 3: walk events with a depth stack — outermost = tool, nested = param
	local calls, stack = {}, {}
	local firstPos, lastPos
	for _, ev in ipairs(events) do
		firstPos = firstPos or ev.pos
		lastPos = ev.after
		if ev.kind == "open" then
			local depth = #stack
			if depth == 0 then
				stack[#stack+1] = { kind = "tool",  name = ev.name, params = {} }
			elseif depth == 1 then
				stack[#stack+1] = { kind = "param", name = ev.name, contentStart = ev.after }
			else
				stack[#stack+1] = { kind = "opaque" }
			end
		else
			local top = stack[#stack]
			stack[#stack] = nil
			if top and top.kind == "param" and stack[#stack] then
				local val = norm:sub(top.contentStart, ev.pos - 1):match("^%s*(.-)%s*$") or ""
				stack[#stack].params[top.name] = val
			elseif top and top.kind == "tool" then
				calls[#calls+1] = top
			end
		end
	end
	if #calls == 0 then return nil, content end

	-- Step 4: strip the entire tool-call region + outer wrappers, return any prose left
	local stripped = norm:sub(1, (firstPos or 1) - 1) .. norm:sub((lastPos or #norm) + 1)
	stripped = stripped
		:gsub("<tool_calls%s*>", ""):gsub("</tool_calls%s*>", "")
		:gsub("<function_calls%s*>", ""):gsub("</function_calls%s*>", "")
		:match("^%s*(.-)%s*$") or ""

	-- Step 5: synthesize OpenAI-format tool_calls
	local tool_calls = {}
	for i, c in ipairs(calls) do
		tool_calls[#tool_calls+1] = {
			id = "inline_" .. i,
			type = "function",
			["function"] = { name = c.name, arguments = HS:JSONEncode(c.params or {}) }
		}
	end
	return tool_calls, stripped
end

local function parseMessage(responseBody)
	local ok, data = pcall(HS.JSONDecode, HS, responseBody)
	if not ok then
		-- Common non-JSON response: HTML error page from a gateway/CDN
		local preview = (responseBody or ""):sub(1, 200)
		return nil, nil, "Response wasn't valid JSON. Provider may be down or returning an HTML error.\n  Preview: " .. preview
	end
	-- Surface explicit API errors cleanly (OpenAI/OpenRouter put them in data.error)
	if type(data) == "table" and data.error then
		local e = data.error
		local em = type(e) == "table" and (e.message or e.code or "(no message)") or tostring(e)
		return nil, nil, "API error: " .. tostring(em)
	end
	local msg = isOllamaFormat()
		and data.message
		or  (data.choices and data.choices[1] and data.choices[1].message)
	if not msg then return nil, nil, "Unexpected response shape: " .. responseBody end
	-- Synthesize tool_calls from inline text formats when the provider didn't
	-- normalize them (e.g. deepseek-v4-flash emitting DSML as plain content).
	if (not msg.tool_calls or #msg.tool_calls == 0) and type(msg.content) == "string" then
		local inline, stripped = extractInlineToolCalls(msg.content)
		if inline then
			msg.tool_calls = inline
			msg.content    = stripped
		end
	end
	local usage
	if isOllamaFormat() then
		-- Ollama returns token counts as top-level fields, not inside a usage object
		if data.prompt_eval_count or data.eval_count then
			usage = { prompt_tokens = data.prompt_eval_count or 0, completion_tokens = data.eval_count or 0 }
		end
	else
		usage = data.usage
	end
	return msg, usage, nil
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
	Usage.session = 0
	updateUsageLabels()
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

	for _, skill in ipairs(M.Sk.loaded) do
		local enabled = M.Sk.enabled[skill.file] ~= false  -- default on

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
				local isOn = M.Sk.enabled[capturedSkill.file] ~= false
				M.Sk.enabled[capturedSkill.file] = not isOn
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
	if page == "Skills" then
		populateSkillsPage()
	end
end)

-- Full startup load (runs here so populateSkillsPage is in scope)
task.spawn(function()
	loadSkillFiles()
	if UI.CurrentPage.Value == "Skills" then
		populateSkillsPage()
	end
	local n = #M.Sk.loaded
	if n > 0 then
		Toast.show("Skills", n .. " skill" .. (n == 1 and "" or "s") .. " loaded", "ok", 3)
	end
	-- Push updated list to any connected browser
	if Br and Br.active and n > 0 then
		local skillsList = {}
		for _, sk in ipairs(M.Sk.loaded) do
			skillsList[#skillsList+1] = { name = sk.name, desc = sk.desc or "", enabled = M.Sk.enabled[sk.file] ~= false }
		end
		bridgePost("/roblox/result", { type = "skills_state", skills = skillsList })
	end
end)

UI.SkillsRefreshButton.MouseButton1Click:Connect(function()
	loadSkillsEnabled()
	loadSkillFiles()
	populateSkillsPage()
	local n = #M.Sk.loaded
	Toast.show("Skills", n .. " skill" .. (n == 1 and "" or "s") .. " loaded", "ok", 3)
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
				stream      = false,
			}
			if not isOllamaFormat() then body.tool_choice = "auto" end
			local j = HS:JSONEncode(body)
			j = j:gsub('"properties":%[%]', '"properties":{}')
			j = j:gsub('"arguments":%[%]', '"arguments":{}')
			return j
		end

		local res = requestWithRetry(buildUrl(), "POST", buildHeaders, buildCodeBody(Agt.codeHistory))
		if isContextError(res) then
			Toast.show("Compacting", "Context too long — compacting conversation…", "warn", 5)
			local compacted = compactHistory(Agt.codeHistory)
			if compacted then
				Agt.codeHistory = compacted
				Toast.show("Compacted", "Conversation compacted — retrying", "ok", 3)
				res = requestWithRetry(buildUrl(), "POST", buildHeaders, buildCodeBody(Agt.codeHistory))
			else
				Toast.show("History trimmed", "Compact failed — trimming instead", "warn", 3)
				res = requestWithRetry(buildUrl(), "POST", buildHeaders, buildCodeBody(trimHistory(Agt.codeHistory)))
			end
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
			local fnName  = call["function"] and call["function"].name or ""
			local rawArgs = call["function"] and call["function"].arguments or ""
			local fnArgs  = type(rawArgs) == "table" and HS:JSONEncode(rawArgs) or tostring(rawArgs)
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
			local codeToolEntry = isOllamaFormat()
				and { role = "tool", tool_name = fnName, content = result }
				or  { role = "tool", tool_call_id = call.id or fnName, name = fnName, content = result }
			table.insert(Agt.codeHistory, codeToolEntry)
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
	local stepsDone    = 0
	local agentDone    = false
	local seenGlobal   = {}  -- cross-step duplicate detection

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
			Toast.show("Compacting", "Context too long — compacting conversation…", "warn", 5)
			local compacted = compactHistory(Agt.history)
			if compacted then
				Agt.history = compacted
				Toast.show("Compacted", "Conversation compacted — retrying", "ok", 3)
				res = requestWithRetry(buildUrl(), "POST", buildHeaders, buildBody(), onRateLimit)
			else
				Toast.show("History trimmed", "Compact failed — trimming instead", "warn", 3)
				res = requestWithRetry(buildUrl(), "POST", buildHeaders, buildBody(trimHistory(Agt.history)))
			end
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

			-- Some models (DeepSeek-V4-Flash, etc.) silently return empty content
			-- after tool calls. Detect that exact case and re-request with a nudge
			-- so the model produces a real text reply. Tokens from the retry are
			-- accumulated into `usage` so the UI shows the true total.
			if rawContent == "" and not isOllamaFormat() then
				local hasToolResult = false
				for i = #Agt.history, 1, -1 do
					if Agt.history[i].role == "tool" then hasToolResult = true; break end
					if Agt.history[i].role == "user" then break end
				end
				if hasToolResult then
					local nudged = {}
					for _, m in ipairs(Agt.history) do nudged[#nudged+1] = m end
					nudged[#nudged+1] = { role = "user", content = "Reply now with your final answer in plain text, based on the tool results above. Do not call any more tools." }
					local r2 = requestWithRetry(buildUrl(), "POST", buildHeaders, buildBody(nudged))
					if r2 and r2.StatusCode == 200 then
						local m2, u2 = parseMessage(r2.Body)
						if m2 and type(m2.content) == "string" and m2.content ~= "" then
							rawContent = m2.content
							if u2 then
								usage = usage or { prompt_tokens = 0, completion_tokens = 0 }
								usage.prompt_tokens     = (usage.prompt_tokens or 0)     + (u2.prompt_tokens or 0)
								usage.completion_tokens = (usage.completion_tokens or 0) + (u2.completion_tokens or 0)
							end
						end
					end
				end
			end

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
					addTokens(usage.prompt_tokens, usage.completion_tokens)
				end
				local copyBtn = generatingFrame:FindFirstChild("CopyButton", true)
				if copyBtn then
					copyBtn.MouseButton1Click:Connect(function()
						pcall(setclipboard, rawContent)
						Toast.show("Copied", "Response copied to clipboard", "ok", 2)
					end)
				end
				recordRender({t = "ai", text = rawContent})
			else
				if generatingFrame then generatingFrame:Destroy(); generatingFrame = nil end
				if rawContent ~= "" then
					addResponse(rawContent, usage)
				end
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
			local fnName  = call["function"] and call["function"].name or ""
			local rawArgs = call["function"] and call["function"].arguments or ""
			local fnArgs  = type(rawArgs) == "table" and HS:JSONEncode(rawArgs) or tostring(rawArgs)
			local callKey = fnName .. "|" .. fnArgs
			if seenCalls[callKey] then continue end
			seenCalls[callKey] = true
			if seenGlobal[callKey] then
				local dupMsg = isOllamaFormat()
					and "Already executed. Call done() with your final response."
					or  "Already executed. Reply with your final answer in plain text."
				local toolEntry = isOllamaFormat()
					and { role = "tool", tool_name = fnName, content = dupMsg }
					or  { role = "tool", tool_call_id = call.id or fnName, name = fnName, content = dupMsg }
				table.insert(Agt.history, toolEntry)
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
							addTokens(usage.prompt_tokens, usage.completion_tokens)
						end
						local copyBtn = generatingFrame:FindFirstChild("CopyButton", true)
						if copyBtn then
							copyBtn.MouseButton1Click:Connect(function()
								pcall(setclipboard, message)
								Toast.show("Copied", "Response copied to clipboard", "ok", 2)
							end)
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
			if lbl then lbl.Text = formatToolName(fnName) end
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
			local toolEntry = isOllamaFormat()
				and { role = "tool", tool_name = fnName, content = result }
				or  { role = "tool", tool_call_id = call.id or fnName, name = fnName, content = result }
			table.insert(Agt.history, toolEntry)
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
	for _, sk in ipairs(M.Sk.loaded) do
		skillsList[#skillsList+1] = { name = sk.name, desc = sk.desc or "", enabled = M.Sk.enabled[sk.file] ~= false }
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
							for _, sk in ipairs(M.Sk.loaded) do
								skillsList[#skillsList+1] = { name = sk.name, desc = sk.desc or "", enabled = M.Sk.enabled[sk.file] ~= false }
							end
							bridgePost("/roblox/result", { type = "skills_state", skills = skillsList })
						end)
					elseif msg.type == "toggle_skill" and msg.name then
						task.spawn(function()
							for _, sk in ipairs(M.Sk.loaded) do
								if sk.name == msg.name then
									local isOn = M.Sk.enabled[sk.file] ~= false
									M.Sk.enabled[sk.file] = not isOn
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
-- Wrapped in a do-block: bridgeLog / shimmerTI / setDotState / setShimmer /
-- checkBridgeStatus are only referenced inside this section, so they don't
-- need module-scope register slots. Saves 5 slots toward the 200-cap.
do

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
	showInnerModal(UI.BrowserLogsModal)
	UI.BrowserLogsTextBox.Text = #Br.logs > 0 and table.concat(Br.logs, "\n") or "(no logs yet)"
end)

UI.ConnectToBrowserButton.MouseButton1Click:Connect(function()
	UI.CurrentPage.Value = "Browser"
end)

end  -- /Browser page do-block

-- ── Drag & Resize ─────────────────────────────────────────────────────────────
-- All state collapsed into a single `s` table so we only consume one register
-- slot instead of 8. The closures capture `s` by reference, so reads/writes
-- through it work the same as before.
do
	local s = {
		dragging = false, dragStart = nil, startPos  = nil,
		resizing = false, resizeStart = nil, startSize = nil,
		MIN_W = 320, MIN_H = 240,
	}

	UI.TopBar.InputBegan:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 then
			s.dragging  = true
			s.dragStart = input.Position
			s.startPos  = UI.IYAI.Position
		end
	end)

	if UI.ResizeLabel then
		UI.ResizeLabel.InputBegan:Connect(function(input)
			if input.UserInputType == Enum.UserInputType.MouseButton1 then
				s.resizing    = true
				s.resizeStart = input.Position
				s.startSize   = UI.IYAI.Size
			end
		end)
	end

	_uisChanged = UIS.InputChanged:Connect(function(input)
		if input.UserInputType ~= Enum.UserInputType.MouseMovement then return end
		if s.dragging then
			local delta = input.Position - s.dragStart
			UI.IYAI.Position = UDim2.new(
				s.startPos.X.Scale, s.startPos.X.Offset + delta.X,
				s.startPos.Y.Scale, s.startPos.Y.Offset + delta.Y
			)
		elseif s.resizing then
			local delta = input.Position - s.resizeStart
			local newW  = math.max(s.MIN_W, s.startSize.X.Offset + delta.X)
			local newH  = math.max(s.MIN_H, s.startSize.Y.Offset + delta.Y)
			UI.IYAI.Size    = UDim2.new(s.startSize.X.Scale, newW, s.startSize.Y.Scale, newH)
			DefaultIYAISize = UI.IYAI.Size
		end
	end)

	_uisEnded = UIS.InputEnded:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 then
			s.dragging = false
			s.resizing = false
		end
	end)
end
