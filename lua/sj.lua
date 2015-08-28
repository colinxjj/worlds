package.path = GetInfo(57) .. "lua/?.lua"

require("util")
require("listener")
require("info")
require("skill")
require("common")
require("proxy")
require("fight")
require("pk")
require("master")
require("console")

autoconnect = true
reset()
shouldquit = false
function safequit()
	shouldquit = true
end

function checkquit()
	if shouldquit then
		quit()
	end
end

function s()
	Save()
	local mcl = GetInfo(54)
	local t = readFile(mcl)
	writeFile(baseMcl, t)
	Note("save ok")
end

local MIN_PLAY_TIME = 20
function quit(close, seconds)
	reset()
	safequit()
	score()
	autoconnect = nil
	local hour = getPlayTime()
	if seconds then
		setLongTime(seconds)
	elseif hour >= MIN_PLAY_TIME and not isVip() then
		seconds = hour * 60 * 60 / 3 + 0.5 * 60 * 60
		close = true
		setLongTime(seconds)
	end
	while true do
		waitbusy()
		e("save;quit")
		set("quit")
		addListener([[^�����˳���Ϸ����$]], "s:return true", "quit")
		addSetListener("quit", "quit")
		if listen() == true then
			shouldquit = false
			reset()
			listener([[^���齣�����������ܹ�����\S+�롣$]], nil, 5, function() return "timeout" end)
			if close then
				log.debug("�رմ��ڣ�" .. fullId())
				local world = GetWorldById(GetWorldID())
				world:Activate()
				world:DoCommand("Close")
			end
			return true
		else
			wait(2000)
		end
	end
end

function setLongTime(seconds)
	writeFile(GetInfo(57) .. "time/" .. fullId(), seconds + os.time())
end

function allquit()
	all("#quit")
end

function getPlayTime()
	e("time")
	set("time")
	addListener([[^���������(?:(\S+)��)?(?:(\S+)Сʱ)?\S+��$]], "s:return 'online', wildcards[1], wildcards[2]", "time")
	addSetListener("time", "time")
	local type, day, hour = listen()
	if type == "time" then
		return 0
	end
	day = trans(day)
	hour = trans(hour)
	return day * 24 + hour
end

local checkCount = 0
function checkconnect()
	if isHama() and GetConnectDuration() > 200 then
		print(GetConnectDuration())
		Disconnect()
		return false
	end
	if IsConnected() then
		return false
	end
	local id = GetInfo(2)
	local seconds = waitSeconds(id)
	if seconds then
		shouldquit = false
		autoconnect = true
		local backupId = GetVariable("backupId")
		if backupId then
			backupId = backupId .. GetVariable("site")
			seconds = waitSeconds(backupId)
		end
		if seconds then
			local hours, minutes, seconds = convert_seconds (seconds)
			log.debug("����Ҫ�ȴ���" .. hours .. " Сʱ " .. minutes .. " ���ӣ��ſ������ߡ�")
			if math.fmod(checkCount, 10) == 0 then
				print("����Ҫ�ȴ���" .. hours .. " Сʱ " .. minutes .. " ���ӣ��ſ������ߡ�")
			end
		end
	end
	checkCount = checkCount + 1
	if autoconnect and not seconds then
		Connect()
	end
end

function nologin()
	autoconnect = nil
end

function loginId()
	local id = GetInfo(3)
	local seconds = waitSeconds(GetInfo(2))
	if seconds then
		local backupId = GetVariable("backupId")
		id = backupId or id
	end
	if isTelldummy() then
		local initWorld = getInit()
		initWorld:SetVariable(getSite() .. "saver", "\"" .. id .. "\"")
	end
	local pwd = GetVariable("password")
	Send("no")
	Send(id)
	Send(pwd)
	Send("y")
end

function clearTime(id)
	id = id or GetInfo(2)
	writeFile(GetInfo(57) .. "time/" .. id, 0)
end

local running = false
function OnRunner(name, line, wildcards, styles)
	run(runner, name, line, wildcards, styles)
end

function runner(name, line, wildcards, styles)
	wait(math.random(1000, 30000))
	if not running then
		running = true
		OnChat(name, line, wildcards, styles)
		answer(wildcards[1])
		here()
		running = false
	end
end

function answer(id)
	toAnswer(id)
	for i=1, 20 do
		local result = getAnswer(id)
		if result ~= "" then
			e("answer " .. result)
			wait(3000)
			return true
		else
			wait(3000)
		end
	end
	return false
end

function toAnswer(id)
	clear(id)
	os.execute("\"" .. GetInfo(57) .. "robot.bat\" " .. id)
end

function clear(id)
	writeFile(GetInfo(57) .. "result/" .. id, "")
end

function getAnswer(id)
	return readFile(GetInfo(57) .. "result/" .. id)
end

function OnTell(name, line, wildcards, styles)
	local name = wildcards[1]
	local id = string.lower(wildcards[2])
	local text = wildcards[3]
	run(onTell, name, id, text, styles)
end

function onTell(name, id, text, styles)
	local saver = getSaver()
	local mgr = getManager()
	local isCheck = string.find(text,"check")
	if (saver and id == saver) or (mgr and id == mgr) then
		if isCheck then
			return false
		else
			e(text)
			return true
		end
	end
	if utils.tohex(utils.md5(id)) .. "haha" .. utils.tohex(utils.md5(myId())) == text then
		manager = id
		ignoreTell = true
		DeleteLines(1)
		return true
	end
	if isGuard() and isMyId(id) and not guardCmd then
		guardCmd = text
		guardId = id
		guardName = name
	end
	cap(nil, styles)
end

function isMyId(id)
	local ids = getSiteIds()
	for _, v in pairs(ids) do
		if id == v then
			return true
		end
	end
	return false
end

function OnChat(name, line, wildcards, styles)
	run(onChat, name, line, wildcards, styles)
end

function onChat(name, line, wildcards, styles)
	local id = wildcards[1] and string.lower(wildcards[1])
	local text = wildcards[2]
	local isSaver = id and id == getSaver()
	local isCheck = text and string.find(text,"check")
	isCheck = isCheck == 1
	if id == "��" and (isCheck or ignoreTell) then
		DeleteLines(1)
		return false
	end
	if isGuard() then
		local ids = getSiteIds()
		local isMyId = false
		for _, v in pairs(ids) do
			if id == v then
				isMyId = true
				break
			end
		end
		if isMyId and text == "guard" then
			guarding = true
		end
	end
	if isSaver then
		if isCheck then
			return false
		else
			e(text)
		end
	end
	cap(nil, styles)
end
