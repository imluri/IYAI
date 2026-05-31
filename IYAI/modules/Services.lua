-- Services.lua  |  Lazy service proxy with cloneref protection
--
-- Usage:
--   local Services = loadMod("modules/Services.lua")
--   Services.HttpService:JSONEncode(...)
--   Services.UserInputService.InputBegan:Connect(...)
--
-- Each service is fetched on first access, cached via rawset, and wrapped in
-- cloneref when the executor exposes it. cloneref hides your service handle
-- from games that monitor game:GetService calls or scan service references.

local clone = (typeof and typeof(cloneref) == "function") and cloneref or function(x) return x end

local Services = setmetatable({}, {
	__index = function(self, name)
		local ok, svc = pcall(function() return clone(game:GetService(name)) end)
		if not ok or not svc then
			error("Invalid Service: " .. tostring(name), 2)
		end
		rawset(self, name, svc)  -- cache for next access (no metatable hit)
		return svc
	end,
})

return Services
