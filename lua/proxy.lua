Proxy = {}
function Proxy:new(id, obj, proxyMethods)
	local proxy = {world = id, obj = obj or false, proxyMethods = proxyMethods or {}}
	setmetatable(proxy, self)
	self.__index = function(t, key)
		return function(...)
			local params = {world = t.world, method = key, obj = t.obj, proxyMethods = t.proxyMethods}
			local p = {...}
			if p[1] == proxy then
				params.self = true
			end
			return Proxy.invoke(params, ...)
		end
	end
	return proxy
end

local invokeThreads = {}
local delay
local rresult
function Proxy.invoke(params, ...)
	local world = getWorld(params.world)
	local threadid, thread = getThreadId()
	invokeThreads[threadid] = thread
	params.threadid = threadid
	params.source = GetInfo(2)
	params.param = {...}
	local proxyMethods = params.proxyMethods
	for k in pairs(proxyMethods) do
		local r = _G[k]()
		proxyMethods[k] = r
	end
	delay = true
	world:Execute("#rinvoke " .. save(params))
	if delay then
		return unpack(coroutine.yield())
	else
		return unpack(rresult)
	end
end

function rreturn(params)
	local thread = invokeThreads[params.threadid]
	if coroutine.status(thread) == "suspended" then
		delay = true
		coroutine.resume(thread, params.result)
	else
		delay = false
		rresult = params.result
	end
end

function rinvoke(params)
	local world = GetWorld(params.source)
	local obj = params.obj and _G[params.obj] or _G
	local method = obj[params.method]
	if params.self then
		params.param[1] = obj
	end
	local remote = Proxy:new(params.source)
	local proxyMethods = params.proxyMethods
	local temp = {}
	for k, v in pairs(proxyMethods) do
		if _G[k] then
			temp[k] = _G[k]
			_G[k] = function()
				return v
			end
		end
	end
	params.result = {method(unpack(params.param))}
	for k, v in pairs(temp) do
		_G[k] = v
	end
	params.param = nil
	world:Execute("#rreturn " .. save(params))
end

function mpairs(t)
	local tab = t
	local index
	return function()
		local k, v = next(tab, index)
		if not k and tab ~= t then
			return nil
		end
		if k then
			index = k
			return k, v
		else
			if not getmetatable(t) then
				return nil
			end
			tab = getmetatable(t).__index
			index = nil
			local k, v = next(tab, index)
			index = k
			return k, v
		end
	end
end
