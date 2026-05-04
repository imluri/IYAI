-- Tools.lua  |  Tool registry
-- Returns an empty Tools table. Sub-tools (Explorer, Script) are registered
-- externally after loading:
--   local Tools = loadMod("modules/Tools.lua")
--   loadMod("modules/tools/Explorer.lua")(Tools)
--   loadMod("modules/tools/Script.lua")(Tools)

local HS = game:GetService("HttpService")

local _registry = {}
local Tools     = {}

function Tools.register(tool)
	table.insert(_registry, tool)
end

function Tools.getDefinitions()
	local defs = {}
	for _, t in ipairs(_registry) do
		table.insert(defs, t.definition)
	end
	return defs
end

function Tools.run(name, rawArgs)
	for _, t in ipairs(_registry) do
		local defName = t.definition["function"] and t.definition["function"].name
		if defName == name then
			local args = {}
			if rawArgs and rawArgs ~= "" then
				local ok, parsed = pcall(HS.JSONDecode, HS, rawArgs)
				args = ok and parsed or {}
			end
			local ok, result = pcall(t.handler, args)
			local final = ok and tostring(result) or ("Tool error: " .. tostring(result))
			return final
		end
	end
	return "Unknown tool: " .. tostring(name)
end

return Tools
