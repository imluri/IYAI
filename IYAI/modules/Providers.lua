-- Providers.lua  |  Single source of truth for every AI provider.
-- Adding a new provider = one entry here; nothing else to change.
--
-- Fields:
--   name         string   display name (key for lookups)
--   icon         string   rbxassetid://...
--   chatUrl      string?  full chat endpoint; nil = dynamic (Ollama local, Custom)
--   modelsUrl    string?  full models-list endpoint; nil = dynamic
--   modelsFormat "openai"|"ollama"   response format for /models or /api/tags
--   authModels   bool     models endpoint requires Bearer auth
--   requiresKey  bool     show API key field for this provider
--   displayUrl   string?  shown in the URL textbox (informational)
--   urlPatterns  {string} Lua patterns used to auto-detect provider from a typed URL
--   credUrl      string?  credential-test endpoint; nil = use modelsUrl
--   credFormat   "standard"|"openrouter"|"huggingface"|"pollinations"|"noauth"
--                "standard"    → GET credUrl with Bearer, check 200/401
--                "openrouter"  → GET credUrl, parse usage/label from data.data
--                "huggingface" → GET credUrl (/api/whoami), parse name field
--                "pollinations"→ POST chat with minimal body, check 200/401
--                "noauth"      → GET credUrl without auth, check 200

local list = {
	{
		name         = "OpenRouter",
		icon         = "rbxassetid://88246357492813",
		chatUrl      = "https://openrouter.ai/api/v1/chat/completions",
		modelsUrl    = "https://openrouter.ai/api/v1/models",
		modelsFormat = "openai",
		authModels   = false,
		requiresKey  = true,
		displayUrl   = "https://openrouter.ai/api/v1",
		urlPatterns  = { "openrouter" },
		credUrl      = "https://openrouter.ai/api/v1/auth/key",
		credFormat   = "openrouter",
	},
	{
		name         = "Ollama",
		icon         = "rbxassetid://136028604328894",
		chatUrl      = nil,   -- Config.ollamaUrl .. "/api/chat"
		modelsUrl    = nil,   -- Config.ollamaUrl .. "/api/tags"
		modelsFormat = "ollama",
		authModels   = false,
		requiresKey  = false,
		displayUrl   = nil,   -- shows Config.ollamaUrl
		urlPatterns  = { "localhost", "11434" },
		credUrl      = nil,   -- Config.ollamaUrl .. "/api/tags"
		credFormat   = "noauth",
	},
	{
		name         = "Ollama ☁️",
		icon         = "rbxassetid://136028604328894",
		chatUrl      = "https://ollama.com/api/chat",
		modelsUrl    = "https://ollama.com/api/tags",
		modelsFormat = "ollama",
		authModels   = true,
		requiresKey  = true,
		displayUrl   = "https://ollama.com",
		urlPatterns  = { "ollama%.com" },
		credUrl      = "https://ollama.com/api/tags",
		credFormat   = "standard",
	},
	{
		name         = "Mistral",
		icon         = "rbxassetid://104043776192224",
		chatUrl      = "https://api.mistral.ai/v1/chat/completions",
		modelsUrl    = "https://api.mistral.ai/v1/models",
		modelsFormat = "openai",
		authModels   = true,
		requiresKey  = true,
		displayUrl   = "https://api.mistral.ai/v1",
		urlPatterns  = { "mistral%.ai" },
		credUrl      = nil,
		credFormat   = "standard",
	},
	{
		name         = "Groq",
		icon         = "rbxassetid://135447140359444",
		chatUrl      = "https://api.groq.com/openai/v1/chat/completions",
		modelsUrl    = "https://api.groq.com/openai/v1/models",
		modelsFormat = "openai",
		authModels   = true,
		requiresKey  = true,
		displayUrl   = "https://api.groq.com/openai/v1",
		urlPatterns  = { "groq%.com" },
		credUrl      = nil,
		credFormat   = "standard",
	},
	{
		name         = "Pollinations",
		icon         = "rbxassetid://75323955386400",
		chatUrl      = "https://gen.pollinations.ai/v1/chat/completions",
		modelsUrl    = "https://gen.pollinations.ai/v1/models",
		modelsFormat = "openai",
		authModels   = false,
		requiresKey  = false,
		displayUrl   = "https://gen.pollinations.ai/v1",
		urlPatterns  = { "pollinations" },
		credUrl      = "https://gen.pollinations.ai/v1/chat/completions",
		credFormat   = "pollinations",
	},
	{
		name         = "HuggingFace",
		icon         = "rbxassetid://106116930029262",
		chatUrl      = "https://router.huggingface.co/v1/chat/completions",
		modelsUrl    = "https://router.huggingface.co/v1/models",
		modelsFormat = "openai",
		authModels   = true,
		requiresKey  = true,
		displayUrl   = "https://api-inference.huggingface.co/v1",
		urlPatterns  = { "huggingface" },
		credUrl      = "https://huggingface.co/api/whoami",
		credFormat   = "huggingface",
	},
	{
		name         = "Google AI Studio",
		icon         = "rbxassetid://105212340588125",
		chatUrl      = "https://generativelanguage.googleapis.com/v1beta/openai/chat/completions",
		modelsUrl    = "https://generativelanguage.googleapis.com/v1beta/openai/models",
		modelsFormat = "openai",
		authModels   = true,
		requiresKey  = true,
		displayUrl   = "https://generativelanguage.googleapis.com/v1beta/openai",
		urlPatterns  = { "googleapis", "generativelanguage" },
		credUrl      = nil,
		credFormat   = "standard",
	},
	{
		name         = "9router",
		icon         = "rbxassetid://134250684364641",
		chatUrl      = "http://localhost:20128/v1/chat/completions",
		modelsUrl    = "http://localhost:20128/v1/models",
		modelsFormat = "openai",
		authModels   = true,
		requiresKey  = true,
		displayUrl   = "http://localhost:20128/v1",
		urlPatterns  = { "9router" },
		credUrl      = nil,
		credFormat   = "standard",
	},
	{
		name         = "OpenCode",
		icon         = "rbxassetid://75680920855699",
		chatUrl      = "https://opencode.ai/zen/v1/chat/completions",
		modelsUrl    = "https://opencode.ai/zen/v1/models",
		modelsFormat = "openai",
		authModels   = true,
		requiresKey  = true,
		displayUrl   = "https://opencode.ai/zen/v1",
		urlPatterns  = { "opencode" },
		credUrl      = nil,
		credFormat   = "standard",
	},
	{
		name         = "Bluesminds",
		icon         = "rbxassetid://93325310621079",
		chatUrl      = "https://api.bluesminds.com/v1/chat/completions",
		modelsUrl    = "https://api.bluesminds.com/v1/models",
		modelsFormat = "openai",
		authModels   = true,
		requiresKey  = true,
		displayUrl   = "https://api.bluesminds.com/v1",
		urlPatterns  = { "bluesminds" },
		credUrl      = nil,
		credFormat   = "standard",
	},
}

-- ── Index ────────────────────────────────────────────────────────────────────

local byName = {}
for _, p in ipairs(list) do byName[p.name] = p end

-- ── Custom providers (iyai_data/custom_providers.json) ───────────────────────
-- File contains a JSON array of provider objects with the same fields as above.
-- Users copy this template into the file to add their own endpoints:
--
--   [
--     {
--       "name":         "MyProvider",
--       "icon":         "rbxassetid://0",
--       "chatUrl":      "https://my.api/v1/chat/completions",
--       "modelsUrl":    "https://my.api/v1/models",
--       "modelsFormat": "openai",
--       "authModels":   true,
--       "requiresKey":  true,
--       "displayUrl":   "https://my.api/v1",
--       "urlPatterns":  ["my.api"],
--       "credFormat":   "standard"
--     }
--   ]

local CUSTOM_FILE = "iyai_data/custom_providers.json"
if isfile and isfile(CUSTOM_FILE) then
	local ok, raw = pcall(readfile, CUSTOM_FILE)
	if ok and raw and raw ~= "" then
		local ok2, parsed = pcall(function()
			return game:GetService("HttpService"):JSONDecode(raw)
		end)
		if ok2 and type(parsed) == "table" then
			for _, p in ipairs(parsed) do
				if type(p) == "table" and type(p.name) == "string" and p.name ~= "" then
					if not byName[p.name] then
						list[#list + 1] = p
						byName[p.name]  = p
					end
				end
			end
		end
	end
end

local Providers = {}
Providers.list   = list
Providers.byName = byName

function Providers.get(name)
	return byName[name]
end

-- URL pattern detection (order of list matters — more specific patterns first).
function Providers.detectFromUrl(url)
	if not url or url == "" then return nil end
	local lower = url:lower()
	for _, p in ipairs(list) do
		for _, pat in ipairs(p.urlPatterns or {}) do
			if lower:find(pat) then return p.name end
		end
	end
	return nil
end

return Providers
