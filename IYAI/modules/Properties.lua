-- Properties.lua  |  Fetches official Roblox API dump and returns getProperties + getMethods
-- Returns function(Http) → { getProperties, getMethods }

return function(Http)
	local HS      = game:GetService("HttpService")
	local Classes = {}
	local Methods = {}

	local CACHE_FILE     = "iyai_data/api_dump.json"
	local CACHE_VER_FILE = "iyai_data/api_version.txt"

	local function fetchApiData()
		local vRes = Http.request("https://setup.rbxcdn.com/versionQTStudio", "GET", {})
		if not vRes or vRes.StatusCode ~= 200 or not vRes.Body or vRes.Body == "" then return nil end
		local version = vRes.Body:match("^%s*(.-)%s*$")

		-- Return cached dump if version matches
		if readfile and isfile and writefile then
			local cachedVer = isfile(CACHE_VER_FILE) and readfile(CACHE_VER_FILE) or ""
			if cachedVer == version and isfile(CACHE_FILE) then
				local cached = readfile(CACHE_FILE)
				if cached and cached ~= "" then return cached end
			end
		end

		local dRes = Http.request("https://setup.rbxcdn.com/" .. version .. "-API-Dump.json", "GET", {})
		if not dRes or dRes.StatusCode ~= 200 or not dRes.Body or dRes.Body == "" then return nil end

		-- Cache to file for future loads
		if writefile then
			if isfolder and makefolder and not isfolder("iyai_data") then pcall(makefolder, "iyai_data") end
			pcall(writefile, CACHE_FILE, dRes.Body)
			pcall(writefile, CACHE_VER_FILE, version)
		end

		return dRes.Body
	end

	local function processApiData(raw)
		local ok, apiData = pcall(HS.JSONDecode, HS, raw)
		if not ok or type(apiData) ~= "table" or not apiData.Classes then return end

		local classMap = {}
		for _, class in ipairs(apiData.Classes) do
			classMap[class.Name] = class
		end

		local function processClass(className)
			if Classes[className] then return end
			local class = classMap[className]
			if not class then return end

			if class.Superclass and class.Superclass ~= "<<<ROOT>>>" then
				processClass(class.Superclass)
			end

			local classData  = {}
			local methodData = {}

			local super  = Classes[class.Superclass]
			local superM = Methods[class.Superclass]
			if super  then for _, p in ipairs(super)  do table.insert(classData,  p) end end
			if superM then for _, m in ipairs(superM) do table.insert(methodData, m) end end

			for _, member in ipairs(class.Members or {}) do
				local tags = {}
				for _, tag in ipairs(member.Tags or {}) do tags[tag] = true end

				if member.MemberType == "Property" then
					local readSec  = member.Security and member.Security.Read  or "None"
					local writeSec = member.Security and member.Security.Write or "None"
					if readSec == "None" and not tags["Hidden"] then
						table.insert(classData, {
							name            = member.Name,
							valueType       = member.ValueType and member.ValueType.Name or "?",
							readOnly        = tags["ReadOnly"]   == true or writeSec ~= "None",
							deprecated      = tags["Deprecated"] == true,
							threadSafety    = member.ThreadSafety or "?",
							canSave         = member.Serialization and member.Serialization.CanSave or false,
						})
					end

				elseif member.MemberType == "Function" then
					if not tags["Deprecated"] then
						table.insert(methodData, member.Name)
					end
				end
			end

			Classes[className] = classData
			Methods[className] = methodData
		end

		for _, class in ipairs(apiData.Classes) do
			processClass(class.Name)
		end
	end

	local raw = fetchApiData()
	local loaded = false
	if raw then processApiData(raw); loaded = true end

	return {
		getProperties = function(className) return Classes[className] or {} end,
		getMethods     = function(className) return Methods[className] or {} end,
		loaded        = loaded,
	}
end
