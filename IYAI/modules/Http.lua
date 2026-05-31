-- Http.lua  |  HTTP request helper (executor-only)
-- Returns the Http module table.

local requestImpl = request or (http and http.request) or http_request or (fluxus and fluxus.request)

local ENV = (syn and syn.request) and "syn"
         or requestImpl           and "executor"
         or "unknown"

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
		local ok, res = pcall(requestImpl, options)
		return ok and res or nil
	end

	return nil
end

return Http
