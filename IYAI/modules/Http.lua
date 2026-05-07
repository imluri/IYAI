-- Http.lua  |  HTTP request helper
-- Returns the Http module table.
-- ENV is exposed so other modules can branch on executor vs Studio.

local RunService = game:GetService("RunService")
local RS         = game:GetService("ReplicatedStorage")

local ENV = (function()
	if syn and syn.request   then return "syn"      end
	if request               then return "executor"  end
	if RunService:IsStudio() then return "studio"    end
	return "unknown"
end)()

local Http = {}
Http.ENV = ENV

function Http.request(url, method, headers, body)
	local options = {
		Url     = url,
		Method  = method  or "GET",
		Headers = headers or {},
		Body    = body    or "",
	}

	if ENV == "syn" then
		local ok, res = pcall(syn.request, options)
		return ok and res or nil
	elseif ENV == "executor" then
		local ok, res = pcall(request, options)
		return ok and res or nil
	end

	-- Studio: route through a RemoteEvent bridge in ReplicatedStorage
	local HttpBridge = RS:FindFirstChild("HttpBridge")
	if not HttpBridge then
		warn("[Http] HttpBridge RemoteEvent not found in ReplicatedStorage.")
		return nil
	end

	local statusCode, responseBody
	local thread = coroutine.running()
	local conn
	conn = HttpBridge.OnClientEvent:Connect(function(code, rbody)
		conn:Disconnect()
		statusCode   = code
		responseBody = rbody
		task.spawn(thread)
	end)
	HttpBridge:FireServer(url, method, headers, body)
	coroutine.yield()
	return { StatusCode = statusCode, Body = responseBody }
end

return Http
