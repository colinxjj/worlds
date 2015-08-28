local worlds = GetInfo(57)
package.path = worlds .. "lua/?.lua"

require("bigword")
require("firstword")
require("sj")
require("map")
require("path")
require("test")

function fullId()
	return "init"
end

SjChar = {}

function SjChar:new(char)
	local char = char or {}
	setmetatable(char, self)
	self.__index = self
	return char
end

chars = {}

function Char(char)
	local sjChar = SjChar:new(char)
	table.insert(chars, sjChar)
end

require("chars")

local MAX_HAMA = 15
local MAX_ID_NUMBER = 100
local DEFAULT_OUTPUT_LINES = 200

function genMcl(id, site, password, variables)
	local mcl = worlds .. "temp/" .. id .. "_" .. site .. ".mcl"
	local t = readFile(baseMcl)
	local ip = sites[site].ip
	local port = sites[site].port
	local proxy = sites[site].proxy
	t = string.gsub(t, "<variable name=\".-\">.-</variable>", "") -- remove variables
	for k, v in pairs(variables) do
		t = string.gsub(t,"</variables>", "\t<variable name=\"" .. k .. "\">" .. tostring(v) .. "</variable>\n</variables>") -- replace variables
	end
	t = string.gsub(t,"proxy_server=\".-\"", "") -- remove proxy server
	t = string.gsub(t,"proxy_type=\".-\"", "") -- remove proxy type
	t = string.gsub(t,"(<world.-%s+name=\")(.-)\"", "%1"..id.."_"..site.."\"") -- replace name
	t = string.gsub(t,"(<timer[^<]+name=\"checkconnect\"[^<]+offset_second=\")(.-)\"", "%1" .. math.random(0,10) .. "\"") -- replace timer offset
	t = string.gsub(t,"player=\"%l-\"", "player=\"" .. id .. "\"") -- replace id
	t = string.gsub(t,"password=\".-\"", "password=\"" .. password .. "\"") -- replace password
	t = string.gsub(t,"site=\".-\"", "site=\"" .. ip .. "\"") -- replace ip
	t = string.gsub(t," port=\".-\"", " port=\"" .. port .. "\"") -- replace port
	if proxy then
		local proxyIp = proxy.ip
		local proxyPort = proxy.port
		t = string.gsub(t,"proxy_port=\".-\"", "proxy_server=\"" .. proxyIp .. "\"\nproxy_port=\"" .. proxyPort .. "\"\nproxy_type=\"1\"")
	end
	-- t = string.gsub(t,"max_output_lines=\".-\"", "max_output_lines=\"" .. DEFAULT_OUTPUT_LINES .. "\"") -- replace max output lines
	writeFile(mcl, t)
	return mcl
end

local hamaing = false
function hama()
	if GetVariable("hama") or hmg then
		local count = table.maxn(GetWorldList()) - 1
		log.debug("已经有 : " .. tostring(count) .. " 个 hama。") 
		if count < MAX_HAMA and not hamaing then
			hamaing = true
			local char = reg()
			char.variables = {hama = true}
			log.debug(char.id .. " : 准备解 hama")
			login(char)
			hamaing = false
		else
			log.debug("hama 数已满")
		end
	else
		log.debug("不需要解 hama ")
	end
end

function reg()
	local world = GetInfo(57)
	os.execute("\"" .. world .. "reg.bat\"")
	local text = readFile(world .. "character")
	return loadstring("return " .. text)()
end

openIdCount = 0
function openId()
	if math.fmod(openIdCount, 50) == 0 then
		for _, char in pairs(chars) do
			local fullId = getFullId(char)
			local seconds = waitSeconds(fullId)
			if seconds then
				local hours, minutes, seconds = convert_seconds (seconds)
				print(fullId .. " ： 还需要等待：" .. hours .. " 小时 " .. minutes .. " 分钟，才可以上线。")
			end
		end
	end
	openIdCount = openIdCount + 1
	openId0()
end

function openId0()
	log.debug("login id")
	local count = table.maxn(GetWorldList()) - 1
	if count >= MAX_ID_NUMBER then
		log.debug("人数已到上限")
		return false
	end
	for _, char in pairs(chars) do
		if shouldLogin(char) then
			login(char)
			return true
		end
	end
	log.debug("已经全部 login")
	return false
end

function getFullId(char)
	return char.id .. "_" .. char.site
end

function isLogin(char)
	for _, name in pairs(GetWorldList()) do
		if name == getFullId(char) then
			return true
		end
	end
	return false
end

function shouldLogin(char)
	local _login = true
	if char.login == false or isLogin(char) or shouldquit then
		return false
	end
	local fullId = getFullId(char)
	local seconds = waitSeconds(fullId)
	if seconds then
		return false
	end
	if loginSite then
		_login = false
		for k in pairs(loginSite) do
			if char.site == k then
				_login = true
			end
		end
	end
	return _login
end

function init()
	clearVariables()
	local variables = {}
	for _,char in pairs(chars) do
		char.variables = char.variables or {}
		if char.variables.manager then
			variables[char.site .. "manager"] = char.id
		end
		if shouldLogin(char) then
			log.debug("connecting " .. char.id)
			variables[char.site .. "guard"] = variables[char.site .. "guard"] or {}
			if char.variables.telldummy then
				variables[char.site .. "saver"] = char.id
			elseif char.variables.guard then
				table.insert(variables[char.site .. "guard"], char.id)
			end
			if char.variables.manager or char.variables.telldummy or char.variables.guard then
				login(char.id, char.site, char.password, char.variables)
			end
		else
			log.debug("no login " .. char.id)
		end
	end
	for k, v in pairs(variables) do
		SetVariable(k, save(v))
	end
	for i=1, MAX_ID_NUMBER do
		openId0()
	end
end

function clearVariables()
	for name in pairs(GetVariableList()) do
		if name ~= "log_level" and name ~= "party" then
			DeleteVariable(name)
		end
	end
end

function login(char)
	if type(char) == "string" then
		for _, c in pairs(chars) do
			if c.id == char then
				char = c
				break
			end
		end
	end
	local id = char.id
	local site = char.site
	local password = char.password
	local variables = char.variables or {}
	variables.password = password
	variables.site = site
	local mcl = genMcl(id, site, Base64Encode(password), variables)
	Open(mcl)
end
