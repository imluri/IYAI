-- Config.lua  |  Persistent settings (API key, model, host, maxSteps)
-- Usage: local Config = loadMod("modules/Config.lua")
-- Executor-only — settings persist to iyai_data/config.json.

local HS = game:GetService("HttpService")

local Config = {
	apiKey           = "",
	model            = "openrouter/owl-alpha",
	host             = "OpenRouter",
	ollamaUrl        = "http://localhost:11434",
	customUrl        = "http://localhost:11434/v1",
	maxSteps         = 100,
	temperature      = 1.0,
	userSystemPrompt = "",
	providerData       = {},  -- [host] = { apiKey, model }
	openrouterKeys     = {},  -- multi-key rotation list
	openrouterKeyIndex = 1,
	apiKeyMode         = "single", -- "single" or "multi"
}

function Config.save()
	if not writefile then return end
	local ok, data = pcall(HS.JSONEncode, HS, {
		apiKey             = Config.apiKey,
		model              = Config.model,
		host               = Config.host,
		ollamaUrl          = Config.ollamaUrl,
		maxSteps           = Config.maxSteps,
		temperature        = Config.temperature,
		userSystemPrompt   = Config.userSystemPrompt,
		providerData       = Config.providerData or {},
		apiKeyMode         = Config.apiKeyMode or "single",
		openrouterKeyIndex = Config.openrouterKeyIndex or 1,
		openrouterKeys     = Config.openrouterKeys or {},
	})
	if ok then
		if isfolder and makefolder and not isfolder("iyai_data") then pcall(makefolder, "iyai_data") end
		pcall(writefile, "iyai_data/config.json", data)
	end
end

function Config.getBaseUrl()
	if Config.host == "Ollama"  then return Config.ollamaUrl end
	if Config.host == "Custom"  then return Config.customUrl  end
	return nil
end

function Config.load()
	if not (readfile and isfile) then return end
	if not isfile("iyai_data/config.json") then return end
	local ok, raw = pcall(readfile, "iyai_data/config.json")
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
	if type(cfg.apiKeyMode)       == "string"                                 then Config.apiKeyMode       = cfg.apiKeyMode       end
	if type(cfg.openrouterKeyIndex) == "number" and cfg.openrouterKeyIndex > 0 then Config.openrouterKeyIndex = cfg.openrouterKeyIndex end
	if type(cfg.openrouterKeys)   == "table"                                  then Config.openrouterKeys   = cfg.openrouterKeys   end
end

function Config.getActiveKey()
	if (Config.apiKeyMode or "single") == "multi" and #(Config.openrouterKeys or {}) > 0 then
		local keys = Config.openrouterKeys
		local idx  = ((Config.openrouterKeyIndex - 1) % #keys) + 1
		Config.openrouterKeyIndex = (idx % #keys) + 1
		return keys[idx]
	end
	return Config.apiKey
end

-- Migrate config from old root location to iyai_data/
if readfile and isfile and writefile then
	if isfile("IYAI_config.json") and not isfile("iyai_data/config.json") then
		local ok, data = pcall(readfile, "IYAI_config.json")
		if ok and data and data ~= "" then
			if isfolder and makefolder and not isfolder("iyai_data") then pcall(makefolder, "iyai_data") end
			pcall(writefile, "iyai_data/config.json", data)
		end
		if delfile then pcall(delfile, "IYAI_config.json") end
	end
end

Config.load()

return Config
