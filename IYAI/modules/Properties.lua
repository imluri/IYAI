-- Properties.lua  |  Fetches Roblox API dump and returns getProperties(className)
-- Returns function(Http) → getProperties

return function(Http)
	local HS      = game:GetService("HttpService")
	local URL     = "https://anaminus.github.io/rbx/json/api/latest.json"
	local Classes = {}

	local function fetchApiData()
		local res = Http.request(URL, "GET", {})
		if res and res.StatusCode == 200 and res.Body and res.Body ~= "" then
			return res.Body
		end
		return nil
	end

	local function processApiData(raw)
		local ok, apiData = pcall(HS.JSONDecode, HS, raw)
		if not ok or type(apiData) ~= "table" then return end
		for _, entry in ipairs(apiData) do
			if entry.type == "Class" then
				local classData = {}
				local super = Classes[entry.Superclass]
				if super then
					for _, prop in ipairs(super) do
						table.insert(classData, prop)
					end
				end
				Classes[entry.Name] = classData
			elseif entry.type == "Property" then
				local blocked = false
				for _, tag in ipairs(entry.tags or {}) do
					if tag:find("Security") or tag == "writeonly" then
						blocked = true; break
					end
				end
				if not blocked then
					local classData = Classes[entry.Class]
					if classData then
						table.insert(classData, { name = entry.Name, valueType = entry.ValueType or "?" })
					end
				end
			end
		end
	end

	local raw = fetchApiData()
	if raw then processApiData(raw) end

	return function(className)
		return Classes[className] or {}
	end
end
