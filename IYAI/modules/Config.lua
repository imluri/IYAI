-- Config.lua  |  Persistent settings (API key, model, host, maxSteps)
-- Usage: local Config = loadMod("modules/Config.lua")

local HS = game:GetService("HttpService")

local Config = {
	apiKey             = "",
	model              = "openrouter/owl-alpha",
	host               = "OpenRouter",
	ollamaUrl          = "http://localhost:11434",
	maxSteps           = 100,
	temperature        = 1.0,
	userSystemPrompt   = "",
	providerData       = {},  -- [host] = { apiKey, model }
	openrouterKeys     = {},  -- multi-key rotation list
	openrouterKeyIndex = 1,   -- current index (1-based)
	apiKeyMode         = "single", -- "single" or "multi"
}

-- plugin is the implicit global inside Studio plugin scripts
local function getPlugin()
	return rawget(_G, "plugin") or (typeof(plugin) == "Instance" and plugin) or nil
end

function Config.save()
	local p = getPlugin()
	if p then
		-- Studio: persist via plugin settings (survives restarts)
		p:SetSetting("IYAI_apiKey",       Config.apiKey)
		p:SetSetting("IYAI_model",        Config.model)
		p:SetSetting("IYAI_host",         Config.host)
		p:SetSetting("IYAI_ollamaUrl",    Config.ollamaUrl)
		p:SetSetting("IYAI_maxSteps",     tostring(Config.maxSteps))
		p:SetSetting("IYAI_temperature",  tostring(Config.temperature))
		p:SetSetting("IYAI_userSystemPrompt", Config.userSystemPrompt)
		local pdOk, pdJson = pcall(HS.JSONEncode, HS, Config.providerData or {})
		if pdOk then p:SetSetting("IYAI_providerData", pdJson) end
		local rkOk, rkJson = pcall(HS.JSONEncode, HS, Config.openrouterKeys or {})
		if rkOk then p:SetSetting("IYAI_openrouterKeys", rkJson) end
		p:SetSetting("IYAI_apiKeyMode", Config.apiKeyMode)
	elseif writefile then
		-- Executor: persist to file
		local ok, data = pcall(HS.JSONEncode, HS, {
			apiKey             = Config.apiKey,
			model              = Config.model,
			host               = Config.host,
			ollamaUrl          = Config.ollamaUrl,
			maxSteps           = Config.maxSteps,
			temperature        = Config.temperature,
			userSystemPrompt   = Config.userSystemPrompt,
			providerData       = Config.providerData or {},
			openrouterKeys     = Config.openrouterKeys or {},
		apiKeyMode         = Config.apiKeyMode,
		})
		if ok then pcall(writefile, "IYAI_config.json", data) end
	end
end

function Config.load()
	local p = getPlugin()
	if p then
		local function get(key, default)
			local v = p:GetSetting(key)
			return (type(v) == "string" and v ~= "") and v or default
		end
		Config.apiKey    = get("IYAI_apiKey",    Config.apiKey)
		Config.model     = get("IYAI_model",     Config.model)
		Config.host      = get("IYAI_host",      Config.host)
		Config.ollamaUrl = get("IYAI_ollamaUrl", Config.ollamaUrl)
		Config.maxSteps         = tonumber(get("IYAI_maxSteps", "")) or Config.maxSteps
		Config.temperature      = tonumber(get("IYAI_temperature", "")) or Config.temperature
		Config.userSystemPrompt = get("IYAI_userSystemPrompt", Config.userSystemPrompt)
		local pdJson = get("IYAI_providerData", "")
		if pdJson ~= "" then
			local pdOk, pd = pcall(HS.JSONDecode, HS, pdJson)
			if pdOk and type(pd) == "table" then Config.providerData = pd end
		end
		local rkJson = get("IYAI_openrouterKeys", "")
		if rkJson ~= "" then
			local rkOk, rk = pcall(HS.JSONDecode, HS, rkJson)
			if rkOk and type(rk) == "table" then Config.openrouterKeys = rk end
		end
		Config.apiKeyMode = get("IYAI_apiKeyMode", Config.apiKeyMode)
	elseif readfile and isfile then
		if not isfile("IYAI_config.json") then return end
		local ok, raw = pcall(readfile, "IYAI_config.json")
		if not ok or not raw or raw == "" then return end
		local ok2, cfg = pcall(HS.JSONDecode, HS, raw)
		if not ok2 or type(cfg) ~= "table" then return end
		if type(cfg.apiKey)           == "string" and cfg.apiKey           ~= "" then Config.apiKey           = cfg.apiKey           end
		if type(cfg.model)            == "string" and cfg.model            ~= "" then Config.model            = cfg.model            end
		if type(cfg.host)             == "string" and cfg.host             ~= "" then Config.host             = cfg.host             end
		if type(cfg.ollamaUrl)        == "string" and cfg.ollamaUrl        ~= "" then Config.ollamaUrl        = cfg.ollamaUrl        end
		if type(cfg.maxSteps)         == "number" and cfg.maxSteps         >  0  then Config.maxSteps         = cfg.maxSteps         end
		if type(cfg.temperature)      == "number"                                 then Config.temperature      = cfg.temperature      end
		if type(cfg.userSystemPrompt) == "string"                                 then Config.userSystemPrompt = cfg.userSystemPrompt end
		if type(cfg.providerData)     == "table"                                  then Config.providerData     = cfg.providerData     end
		if type(cfg.openrouterKeys)   == "table"                                  then Config.openrouterKeys   = cfg.openrouterKeys   end
		if type(cfg.apiKeyMode)       == "string" and cfg.apiKeyMode ~= ""         then Config.apiKeyMode       = cfg.apiKeyMode       end
	end
end

-- Returns the key to use for the current request.
-- For OpenRouter with multiple keys, cycles through them on each call to rotateKey().
local function buildKeyPool()
	local pool = {}
	local seen = {}
	for _, k in ipairs(Config.openrouterKeys or {}) do
		if k ~= "" and not seen[k] then seen[k] = true; pool[#pool + 1] = k end
	end
	if Config.apiKey ~= "" and not seen[Config.apiKey] then
		pool[#pool + 1] = Config.apiKey
	end
	return pool
end

function Config.getActiveKey()
	if Config.apiKeyMode == "multi" and Config.host == "OpenRouter" then
		local pool = buildKeyPool()
		if #pool == 0 then return "" end
		local idx = ((Config.openrouterKeyIndex - 1) % #pool) + 1
		return pool[idx]
	end
	return Config.apiKey
end

function Config.rotateKey()
	if Config.apiKeyMode == "multi" and Config.host == "OpenRouter" then
		local pool = buildKeyPool()
		if #pool > 0 then
			Config.openrouterKeyIndex = (Config.openrouterKeyIndex % #pool) + 1
		end
	end
end

Config.load()

return Config
