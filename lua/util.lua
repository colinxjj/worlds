baseMcl = GetInfo(57) .. "haha.mcl"
sites = {
	dj = {ip = "haha", port = "5555"},
	cq = {ip = "202.100.210.107", port = "6666"},
	ln = {ip = "59.50.112.4", port = "5555"},
	test = {ip = "218.77.129.233", port = "3333"},
	sh = {ip = "218.77.188.135", port = "5555",
		-- proxy = {ip = "59.44.98.198", port = "8888"},
	},
	quest = {ip = "218.77.188.135", port = "5555"},
	yt = {ip = "59.49.233.23", port = "5555"},
	sh2 = {ip = "221.11.138.97", port = "5555"},
}

lookCitys = {
	["baituo"] = "白驼山",	["beijing"] = "京城",	["cangzhou"] = "沧州城",	["changan"] = "长安城",
	["changle"] = "长乐帮",	["chengdu"] = "成都城",	["city"] = "扬州城",		["dali"] = "大理城",
	["daliwest"] = "大理城西",["dalisouth"] = "大理城南",["dalieast"] = "大理城东",
	["wuliang"] = "无量山",	["dlhg"] = "大理皇宫",	["wangfu"] = "大理王府",	["yideng"] = "桃源县",
	["yuxu"] = "玉虚观",		["death"] = "十八层地狱",	["emei"] = "峨嵋山",		["fairyland"] = "昆仑山",
	["foshan"] = "佛山镇",	["fuzhou"] = "福州城",	["gb"] = "丐帮",			["gumu"] = "终南山",
	["jqg"] = "绝情谷",		["xuantie"] = "襄阳郊外",	["hengshan"] = "恒山",	["hj"] = "回疆",	
	["hmy"] = "黑木崖",		["pingding"] = "平定州",	["huanghe"] = "黄河流域",	["yyd"] = "萧府",
	["huashan"] = "华山",	["hz"] = "杭州城",		["jiaxing"] = "嘉兴城",	["kunlun"] = "昆仑山",
	["lanzhou"] = "兰州城",	["meizhuang"] = "梅庄",	["miaojiang"] = "苗疆",	["mingjiao"] = "明教",
	["hdg"] = "蝴蝶谷",		["hhd"] = "冰火岛",		["lsd"] = "灵蛇岛",		["mr"] = "姑苏慕容",
	["yanziwu"] = "燕子坞",	["mtl"] = "曼佗罗山庄",	["nanyang"] = "南阳城",	["ningbo"] = "宁波城",
	["putian"] = "莆田少林",	["shaolin"] = "嵩山少林",	["sld"] = "神龙岛",		["songshan"] = "嵩山",
	["suzhou"] = "苏州城",	["taishan"] = "泰山",	["tanggu"] = "塘沽城",	["thd"] = "桃花岛",
	["niujia"] = "牛家村",	["guiyun"] = "归云庄",	["tianshan"] = "天山",	["tiezhang"] = "铁掌山",
	["tls"] = "天龙寺",		["village"] = "华山村",	["wizard"] = "极乐世界",	["wudang"] = "武当山",
	["houshan"] = "武当后山",	["wuguan"] = "武馆",		["xiakedao"] = "侠客岛",	["xiangyang"] = "襄阳城",	
	["lzz"] = "柳宗镇",		["xingxiu"] = "星宿海",	["yili"] = "伊犁城",		["xueshan"] = "大雪山",
	["caoyuan"] = "大草原",	["zhiye"] = "郊外",		["group"] = "中原",		["entry"] = "",
}

citys = {
	["baituo"] = "白驼山",	["beijing"] = "京城",	["cangzhou"] = "沧州",	["changan"] = "长安",
	["changle"] = "长乐帮",	["chengdu"] = "成都",	["city"] = "扬州",		["dali"] = "大理国",
	["death"] = "十八层地狱",	["emei"] = "峨嵋山",		["fairyland"] = "昆仑仙境",["foshan"] = "佛山",
	["fuzhou"] = "福州",		["gb"] = "丐帮分舵",		["gumu"] = "古墓",		["hengshan"] = "恒山",
	["hj"] = "回疆",			["hmy"] = "黑木崖",		["huanghe"] = "黄河流域",	["huashan"] = "华山",
	["huijiang"] = "回疆",	["hz"] = "杭州",			["jiaxing"] = "嘉兴",	["kunlun"] = "昆仑山",
	["lanzhou"] = "兰州",	["miaojiang"] = "苗疆",	["mingjiao"] = "明教",	["murong"] = "慕容",
	["mr"] = "姑苏慕容",		["nanyang"] = "南阳",	["ningbo"] = "宁波",		["putian"] = "莆田少林",
	["meizhuang"] = "梅庄",	["shaolin"] = "少林寺",	["sld"] = "神龙岛",		["songshan"] = "嵩山",
	["suzhou"] = "苏州",		["taishan"] = "泰山",	["tanggu"] = "塘沽",		["thd"] = "桃花岛",
	["tiezhang"] = "铁掌山",	["tls"] = "天龙寺",		["village"] = "华山村",	["wizard"] = "极乐世界",
	["wudang"] = "武当山",	["wuguan"] = "武馆",		["xiangyang"] = "襄阳",	["xingxiu"] = "星宿海",
	["xueshan"] = "大雪山",	["yangzhou"] = "扬州",	["guiyun"] = "归云庄",	["hdg"] = "蝴蝶谷",
	["jqg"] = "绝情谷",		["bhd"] = "冰火岛",		["lsd"] = "灵蛇岛",		["pingding"] = "平定州",
	["caoyuan"] = "大草原",	["niujia"] = "牛家村",	["wuliang"] = "无量山",	["wangfu"] = "镇南王府",
	["yideng"] = "桃源县",	["yili"] = "伊犁",		["yanziwu"] = "燕子坞",	["mtl"] = "曼佗罗山庄",
	["bwdh"] = "试剑山庄",	["zhiye"] = "中原神州",
}
otherCitys = {
	"成都郊外", "大理城北", "丝绸之路", "回疆草原",
}

DefaultTable = {}

function DefaultTable.new(value, tab)
	local mt = {__index = function() return value end, default = value}
	local t = tab or {}
	setmetatable(t, mt)
	return t
end

function reverse(way)
	local ways = {
		east = "west",
		eastup = "westdown",
		eastdown = "westup",
		west = "east",
		westup = "eastdown",
		westdown = "eastup",
		north = "south",
		northup = "southdown",
		northdown = "southup",
		south = "north",
		southup = "northdown",
		southdown = "northup",
		northeast = "southwest",
		northwest = "southeast",
		southeast = "northwest",
		southwest = "northeast",
		enter = "out",
		out = "enter",
	}
	return ways[way]
end

function closeAll()
	local worldList = GetWorldList()
	for _, id in pairs(worldList) do
		local world = GetWorld(id)
		if id ~= "init" and not world:IsConnected() then
			world:Activate()
			world:DoCommand("Close")
		end
	end
end

function getWorld(world)
	if world then
		local minIndex = 100
		local w
		for _, worldId in pairs(GetWorldList()) do
			local index = string.find(worldId, world)
			if index and index < minIndex then
				minIndex = index
				w = GetWorld(worldId)
			end
		end
		return w
	else
		return GetWorldById(GetWorldID())
	end
end

function ac(world)
	local w = getWorld(world)
	w:Activate()
	return w
end

function reload(world)
	local w = ac(world)
	w:DoCommand("ReloadScriptFile")
end

function reloadAll()
	local worldList = GetWorldList()
	for _, id in pairs(worldList) do
		local world = GetWorld(id)
		if id ~= "init" then
			world:Activate()
			world:DoCommand("ReloadScriptFile")
		end
	end
end

function count(tab)
	local count = 0
	for _ in pairs(tab) do
		count = count + 1
	end
	return count
end

function clone(tab)
	local newtab = {}
	local mt = {__index = tab}
	setmetatable(newtab, mt)
	return newtab
end

function getPlace(path)
	local place = {}
	local i = 1
	while true do
		local n = string.find(path, "/", i)
		if n then
			table.insert(place,1,string.sub(path, i, n - 1))
			i = n + 1
		else
			break
		end
	end
	return place
end

function getLookCity(path)
	if path == "meizhuang/plum_maze" then
		return nil
	end
	local place = getPlace(path)
	for k,v in pairs(place) do
		if v == "zhiye" or v == "entry" then
			return nil
		end
		city = lookCitys[v]
		if city then
			return city
		end
	end
end

function getCity(path)
	local place = getPlace(path)
	for k,v in pairs(place) do
		city = citys[v]
		if city then
			return city
		end
	end
	return ""
end

local wait_threads = {}

function wait(seconds)
	seconds = seconds / 1000
	local id = "wait_timer_" .. GetUniqueNumber ()
	TraceOut("add wait timer " .. id)
	wait_threads [id] = assert (coroutine.running (), "Must be in coroutine")
	local hours, minutes, seconds = convert_seconds (seconds)
	AddTimer (id, hours, minutes, seconds, "",
		timer_flag.Enabled + timer_flag.OneShot +
		timer_flag.Temporary + timer_flag.Replace, 
		"timer_resume")
	return coroutine.yield ()
end

function wa(seconds)
	wait(seconds)
end

function timer_resume (name)
	local thread = wait_threads [name]
	if thread then
		wait_threads [name] = nil
		assert (coroutine.resume (thread))
	end
end

function trans(num)
	if not num or num == "" then
		return 0
	end
	local _, _, wan, other = string.find(num, "^(.-)万(.*)$")
	local result = 0
	if wan then
		result = result + trans0(wan) * 10000
		num = other
	end
	result = result + trans0(num)
	return result
end

function trans0(num)
	num = string.gsub(num,"^十(.*)$","一十%1")
	num = string.gsub(num,"零十","一十")
	num = string.gsub(num,"零","")
	local result = 0
	local numbers = {"一","二","三","四","五","六","七","八","九"}
	for k,v in pairs(numbers) do
		num = string.gsub(num,v,k)
	end
	local units = {["0|"] = "十", ["00|"] = "百", ["000|"] = "千"}
	for k,v in pairs(units) do
		num = string.gsub(num,v,k)
	end
	for v in string.gmatch(num,"(%d+)") do
		result = result + v
	end
	return result
end

function load(t)
	if not t then
		return nil
	end
	local vars = loadstring("return " .. t)()
	load_default(vars)
	return vars
end

function load_default(t)
	if t.defaultvalue then
		t = DefaultTable.new(t.defaultvalue, t)
		t.defaultvalue = nil
	end
	for k, v in pairs(t) do
		if type(v) == "table" then
			load_default(v)
		end
	end
end

local function basicSerialize (o)
	if type(o) == "number" or type(o) == "boolean" then
		return tostring(o)
	else
		return string.format("%q", o)
	end
end

local function save_item (value, out)
	local ignores = {
		__index = true,
		_NAME = true,
		_PACKAGE = true,
		_M = true,
	}
	if type (value) == "function" then
		return
	end
	if getmetatable(value) and getmetatable(value).default then
		value.defaultvalue = getmetatable(value).default
	end
	if type (value) == "number" or type (value) == "string" or type (value) == "boolean" then
		table.insert (out, basicSerialize(value))
	elseif type (value) == "table" then
		table.insert (out, "{")
		for k, v in pairs (value) do
			if type (v) ~= "function" and not ignores[k] then
				if not string.find (k, '^[_%a][_%a%d]*$') then
					table.insert (out, "[" .. basicSerialize (k) .. "] = ")
				else
					table.insert (out, k .. " = ")
				end
				-- print(k, v)
				save_item (v, out)
				table.insert (out, ",")
			end
		end
		table.insert (out, "}")
	end
	if getmetatable(value) and getmetatable(value).default then
		value.defaultvalue = nil
	end
end

function save (v)
	local out = {}
	save_item (v, out)
	return table.concat (out)
end

Cache = {}
local DEFAUTL_CACHE_TIME = 10

function Cache:new(size, time)
	time = time or DEFAUTL_CACHE_TIME
	local cache = {size = size, time = time}
	setmetatable(cache, self)
	self.__index = self
	return cache
end

function Cache:get(key)
	local value
	for k, v in pairs(self) do
		if type(k) == "number" and v.key == key and os.time() - v.time <= self.time then
			log.debug("Cache 命中，key = " .. v.key)
			value = v.value
			table.remove(self, k)
			table.insert(self, 1, v)
			break
		end
	end
	if not value then
		log.debug("Cache 未命中，key = " .. key)
	end
	return value
end

function Cache:clear(key)
	local value
	for k, v in pairs(self) do
		if type(k) == "number" and v.key == key then
			table.remove(self, k)
		end
	end
end

function Cache:add(key, value)
	local v = {}
	v.key = key
	v.value = value
	v.time = os.time()
	table.insert(self, 1, v)
	if table.getn(self) > self.size then
		table.remove(self, self.size + 1)
	end
end

function convert_seconds (seconds)
	local hours = math.floor (seconds / 3600)
	seconds = seconds - (hours * 3600)
	local minutes = math.floor (seconds / 60)
	seconds = seconds - (minutes * 60)
	return hours, minutes, seconds
end

function run(func,...)
	if coroutine.running () then
		return func(...)
	else
		return coroutine.wrap(func)(...)
	end
end

function e(cmd)
	run(exec,cmd)
end


local function split(str, sep)
	sep = sep or " "
	local startBlock = false
	local process = false
	local array = {}
	local current = {}
	for i=1, str:len() do
		local char = str:sub(i,i)
		if char == "{" then
			startBlock = startBlock and startBlock + 1 or 1
		end
		if char == "}" and startBlock then
			startBlock = startBlock > 1 and startBlock - 1 or false
		end
		if char == sep and not startBlock then
			process = true
			table.insert(array, table.concat(current, ""))
			current = {}
		else
			table.insert(current, char)
		end
	end
	if table.maxn(current) > 0 then
		table.insert(array, table.concat(current, ""))
		current = {}
	end
	return array, process
end

local function splitCmd(cmd)
	local cmds, multi = split(cmd, ";")
	return multi and cmds
end

function exec(cmd)
	local cmds = splitCmd(cmd)
	if cmds then
		for _, c in pairs(cmds) do
			e(c)
		end
		return
	end
	local _, _, c = cmd:find("^{(.+)}$")
	if c then
		e(c)
		return
	end
	local _,_,func,param = string.find(cmd,"^#(%a%w*)%s*(.-)$")
	if func then
		local params = {}
		local ps = split(param)
		for _, v in pairs(ps) do
			local _, _, t = v:find("^{(.+)}$")
			local p
			if t then
				p = load(v)
			else
				p = v
			end
			table.insert(params, p)
		end
		local _func = _G[func]
		if _func then
			_func(unpack(params))
		else
			print("函数：" .. func .. " 不存在")
		end
		return
	end
	local _,_,time,c = string.find(cmd,"^#(%d+)%s+(.+)$")
	if time then
		for i = 1, time do
			e(c)
		end
	else
		Execute(cmd)
	end
end

function hide(cmd)
	SendNoEcho(cmd)
end

defaultTimeout = 180

function beforeTimeout(id, seconds, timeout, ...)
	local threadId = string.lower(utils.split(id,"_")[1])
	if not timeout then
		log.warn(id .. " : timeout")
		for _, triggerId in pairs(GetTriggerList()) do
			if string.find(triggerId, threadId) then
				log.warn(triggerId, GetTriggerInfo(triggerId, 1))
			end
		end
	end
end

function defaultTimeoutFunc(id)
	Execute("#init")
	error("timeout")
end

local LEVEL_DEBUG = 1
local LEVEL_INFO = 2
local LEVEL_WARN = 3
local LEVEL_ERROR = 4
local DEFAULT_LOG_LEVEL = 4

function getInit()
	local init = GetWorld("init")
	return init or {
		GetVariable = function() return nil	end,
	}
end

log = {}
function getLogLevel()
	local _level = log_level or GetVariable("log_level") or tonumber(getInit():GetVariable("log_level")) or DEFAULT_LOG_LEVEL
	return tonumber(_level)
end

function log.write(file, level, color, ...)
	local msg = ""
	for _, v in pairs({...}) do
		msg = msg .. tostring(v) .. " "
	end
	msg = level .. " : " .. msg
	local date = os.date("%y/%m/%d %X")
	local logMsg = date .. " : " .. fullId() .. " ： " .. msg .. "\n"
	print(date .. " : " .. msg)
	cap(date .. " : " .. msg, nil, color)
	writeFile(GetInfo(57) .. "logs/" .. file, logMsg, true)
end

function log.debug(...)
	if getLogLevel() <= LEVEL_DEBUG then
		log.write("debug.log", "debug", "silver", ...)
	end
end

function log.info(...)
	if getLogLevel() <= LEVEL_INFO then
		log.write("info.log", "info", nil, ...)
	end
end

function log.warn(...)
	if getLogLevel() <= LEVEL_WARN then
		log.write("warn.log", "warn", "lime", ...)
	end
end

function log.error(...)
	if getLogLevel() <= LEVEL_ERROR then
		log.write("error.log", "error", "red", ...)
	end
end

function cap(msg, styles, color, backcolor)
	local w = GetWorld ("init")
	if w then
		if styles then
			w:Tell(GetInfo(2) .. " ： ")
			for _, v in ipairs (styles) do
				w:ColourTell (RGBColourToName (v.textcolour), RGBColourToName (v.backcolour), v.text)  
			end
			w:Note ("")
		elseif color then
			w:Tell(GetInfo(2) .. " ： ")
			w:ColourTell(color, backcolour or "BLACK", msg)
			w:Note("")
		else
			w:Note(GetInfo(2) .. " ： " .. msg)
		end
	end
end

function set(var)
	var = var or tostring(GetUniqueNumber())
	hide("set " .. var)
	hide("unset " .. var)
	return var
end

local variableTimeouts = {
	hp = 10,
	score = 60 * 30,
	cha = 60 * 30,
	jifa = 60 * 30,
	worker = 60 * 30,
}
function setVariable(name, value)
	if not value then
		delVariable(name)
	else
		local v = {}
		v.value = value
		v.time = os.time()
		SetVariable(name, save(v))
	end
end

function delVariable(name)
	DeleteVariable(name)
end

function getVariable(name)
	local s = GetVariable(name)
	if not s then
		return nil
	end
	local v = load(tostring(s))
	local time = v.time
	local timeout = variableTimeouts[name]
	if timeout and os.time() - time > timeout then
		return nil
	end
	return v.value
end

function getVarName(name)
	return "VAR_" .. name
end

function readFile(path)
	local f = io.open(path, "r")
	if not f then
		return false
	else
		local content = f:read("*all")
		f:close()
		return content
	end
end

function writeFile(path, msg, append)
	local type = append and "a" or "w"
	local f = io.open(path, type)
	f:write(msg)
	f:close()
end

function randomGet(tab)
	local count = 0
	for _ in pairs(tab) do
		count = count + 1
	end
	local n = math.random(count)
	count = 0
	for k, v in pairs(tab) do
		count = count + 1
		if count == n then
			return k, v
		end
	end
end

function process(worldId, id, func, param)
	local w = GetWorldById(worldId)
	local result = _G[func](param)
	w:Execute("#remoteReturn " .. id .. " " .. result)
end

function remoteInvoke(func, param)
	local id = "result_" .. GetUniqueNumber ()
	local worldId = GetWorldID()
	local init = GetWorld("init")
	init:Execute("#process " .. worldId .. " " .. id .. " " .. func .. " " .. save(param))
	local result = _G[id]
	_G[id] = nil
	return result
end

function remoteReturn(id, result)
	_G[id] = result
end

function getThreadId()
	local thread = assert(coroutine.running(), "Must be in coroutine")
	local _, _ , threadId = string.find(tostring(thread),"^thread: (%x+)$")
	return "thread" .. threadId, thread
end
