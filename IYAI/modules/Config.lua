-- Config.lua  |  Persistent settings (API key, model, host, maxSteps)
-- Usage: local Config = loadMod("modules/Config.lua")

local HS = game:GetService("HttpService")

local Config = {
	apiKey           = "",
	model            = "openrouter/owl-alpha",
	host             = "OpenRouter",
	ollamaUrl        = "http://localhost:11434",
	maxSteps         = 100,
	temperature      = 1.0,
	userSystemPrompt = "",
	providerData     = {},  -- [host] = { apiKey, model }
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
	elseif writefile then
		-- Executor: persist to file
		local ok, data = pcall(HS.JSONEncode, HS, {
			apiKey           = Config.apiKey,
			model            = Config.model,
			host             = Config.host,
			ollamaUrl        = Config.ollamaUrl,
			maxSteps         = Config.maxSteps,
			temperature      = Config.temperature,
			userSystemPrompt = Config.userSystemPrompt,
			providerData     = Config.providerData or {},
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
	end
end

Config.load()

return Config
