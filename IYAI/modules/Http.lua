-- Http.lua  |  HTTP request helper
-- Returns the Http module table.
-- ENV is exposed so other modules can branch on executor vs Studio.

local RunService = game:GetService("RunService")
local RS         = game:GetService("ReplicatedStorage")

local requestImpl = request or (http and http.request) or http_request or (fluxus and fluxus.request)

local ENV = (function()
	if syn and syn.request      then return "syn"      end
	if requestImpl              then return "executor"  end
	if RunService:IsStudio()    then return "studio"    end
	return "unknown"
end)()

local Http = {}
Http.ENV = ENV

function Http.request(url, method, headers, body)
	local httpMethod = (method or "GET"):upper()
	local options = {
		Url     = url,
		Method  = httpMethod,
		Headers = headers or {},
	}

	if body and body ~= "" and httpMethod ~= "GET" and httpMethod ~= "HEAD" then
		options.Body = body
	end

	if ENV == "syn" then
		local ok, res = pcall(syn.request, options)
		return ok and res or nil
	elseif ENV == "executor" then
		if not requestImpl then
			return nil
		end
		local ok, res = pcall(requestImpl, options)
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
