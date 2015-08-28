package.path = GetInfo(57) .. "lua/?.lua"

require("util")
require("alias")
local GO_AGAIN_WAIT = 3000

function OnMove(name,line,wildcards)
	hereId = nil
	local moveName = wildcards[1]
	local moveExits = utils.split(string.gsub(wildcards[2],"��","|"),"|")
	move = {name = moveName, exits = {}}
	for _,v in pairs(moveExits) do
		move.exits[v] = true
	end
end

function here()
	local _here = {}
	hide("set look")
	e("l")
	set("here")
	while true do
		addListener([[^��������������(\S+)��$]],"s:return 'city',wildcards[1]","here")
		addListener([[^(\S+) - $]],"s:return 'name',wildcards[1]","here")
		addListener([[^(?:    ����û���κ����Եĳ�·|    ����Ψһ�ĳ����� (\S+)|    �������Եĳ����� (.+))��$]],"OnExits","here")
		addSetListener("here","here")
		local k, v = listenCmd(function() return false end)
		if not k then
			return here()
		elseif k == "here" then
			break
		else
			_here[k] = v
		end
	end
	return _here
end

function around(exits, goal)
	local around = {}
	hide("set look")
	for exit in pairs(exits) do
		e("l " .. exit)
		e("set exit " .. exit)
	end
	e("unset exit")
	set("around")
	local lookroom = {}
	while true do
		if goal then
			addListener(goal, "s:return 'goal', true", "around")
		end
		addListener([[^��������������(\S+)��$]],"s:return 'city',wildcards[1]","around")
		addListener([[^(\S+) - $]],"s:return 'name',wildcards[1]","around")
		addListener([[^�趨����������exit = "(.+)"$]],"s:return 'exit',wildcards[1]","around",trigger_flag.OmitFromOutput)
		addSetListener("around","around")
		local k, v = listen()
		if k == "around" then
			break
		elseif k == "exit" then
			around[v] = lookroom
			lookroom = {}
		else
			lookroom[k] = v
		end
	end
	return around
end

function OnExits (name, line, wildcards)
	local exits = {}
	local exitOne = wildcards[1]
	local exitMulti = wildcards[2]
	if exitOne and exitOne ~= "" then
		exits[exitOne] = true
	elseif exitMulti and exitMulti ~= "" then
		exitMulti = string.gsub(exitMulti," �� ","��")
		exitMulti = string.gsub(exitMulti,"��","|")
		for _,v in pairs(utils.split(exitMulti,"|")) do
			exits[v] = true
		end
	end
	return "exits",exits
end

function locateHere()
	if hereId then
		return hereId
	end
	if move then
		local movePath = map:getHerePath(move, true)
		if not movePath then
			wait(2000)
			return locateHere()
		elseif table.getn(movePath) == 1 then
			hereId = movePath[1]
			return hereId
		else
			TraceOut("�� move ��λ��" .. save(movePath))
		end
	end
	local here = here()
	local herePath = map:getHerePath(here, false)
	if not herePath then
		if here.exits then
			randomMove(here.exits)
			wait(500)
			return locateHere()
		else
			wait(2000)
			return locateHere()
		end
	elseif table.getn(herePath) == 1 then
		hereId = herePath[1]
		return hereId
	else
		here.exits = around(here.exits)
		herePath = map:getHerePath(here, false)
		if not herePath then
			if here.exits then
				randomMove(here.exits)
				wait(500)
				return locateHere()
			else
				wait(2000)
				return locateHere()
			end
		elseif table.getn(herePath) == 1 then
			hereId = herePath[1]
			return hereId
		else
			log.debug("��λ��ǰλ�����ظ���")
			for _, v in pairs(herePath) do
				log.debug(v)
			end
			randomMove(here.exits)
			wait(500)
			return locateHere()
		end
	end
end

function randomMove(exits)
	local exit = randomGet(exits)
	e(exit)
end

function sameRoom(here,room,isMove)
	return ((isMove and not here.city) or here.city == getLookCity(room.id)) and here.name == room.name and sameExits(here,room)
end

function sameExits(here, room)
	if not here.exits then
		return true
	end
	local nolooks = room.nolooks or {}
	local nolook = room.nolook
	local hereExitsCount = 0
	for k,v in pairs(here.exits) do
		if not nolooks[k] and (not nolook or room.ways[k]) then
			hereExitsCount = hereExitsCount + 1
			if not room.ways[k] then
				return false
			end
			if v ~= true then
				if not sameRoom(v, map:room(room.ways[k])) then
					return false
				end
			end
		end
	end
	local roomExitsCount = 0
	for k,v in pairs(room.ways) do
		if not nolooks[k] then
			roomExitsCount = roomExitsCount + 1
		end
	end
	if hereExitsCount ~= roomExitsCount then
		return false
	end
	return true
end

function locateGo(name, city)
	local goRooms = map:getRooms(name, city)
	if table.getn(goRooms) == 0 then
		log.error("û�ҵ�Ŀ�꣺city = " .. tostring(city) .. " , name = " .. name)
		return false
	elseif table.getn(goRooms) > 1 then
		log.warn("�ж��ƥ��Ŀ�꣺")
		for _,path in pairs(goRooms) do
			log.warn(path)
		end
		log.warn("ȡ��һ����path = " .. goRooms[1] .. " , city = " .. tostring(city) .. " , name = " .. name)
		return goRooms[1]
	else
		return goRooms[1]
	end
end

function addWait(path)
	local waitLength = math.random(20,25)
	local waitTime = 2000
	local p = utils.split(path, ";")
	local length = table.getn(p) - 4 -- ȥ������ set go;unset go;
	local waitCount = math.floor(length / waitLength)
	if math.fmod(length,waitLength * 2)==0 then
		waitCount = waitCount - 1
	end
	for i = waitCount,1,-1 do
		table.insert(p,i * waitLength + 1,"#waitpath " .. waitTime)
	end
	return table.concat(p,";")
end

function waitpath(seconds)
	set("waitpath")
	addSetListener("waitpath")
	listenCmd()
	wait(seconds)
	e("halt")
end

function canFind(name, city, length, lookType)
	length = length and tonumber(length) or 0
	TraceOut("can find name = " .. name .. " , city = " .. tostring(city) .. " , length = " .. tostring(length))
	local rooms = map:getAroundRooms(name, city, length, lookType)
	local herePath = locateHere()
	return map:getMinPath(herePath, rooms)
end

function find(name, city, length, goal, lookType, callback, ...)
	length = length and tonumber(length) or 0
	local npc, msg
	TraceOut("find name = " .. name .. " , city = " .. tostring(city) .. " , length = " .. tostring(length))
	if type(goal) == "string" or type(goal) == "boolean" then
		npc = goal
	else
		npc = goal.npc
		msg = goal.msg
	end
	local rooms = map:getAroundRooms(name, city, length, lookType)
	while count(rooms) > 0 do
		local herePath = locateHere()
		local minPath, room = map:getMinPath(herePath, rooms)
		if not minPath then
			return false
		end
		rooms[room] = nil
		local _, things = go(room, nil, true, msg)
		local id = findGoal(room, npc, things)
		if id then
			if not callback then
				return id
			else
				local params = {...}
				table.insert(params, id)
				local result = {callback(unpack(params))}
				if result[1] then
					return unpack(result)
				end
			end
		end
		wait(200)
	end
	log.debug("find name = " .. name .. " , city = " .. tostring(city) .. " , length = " .. tostring(length) .. " , npc = " .. tostring(npc) .. " , look type = " .. tostring(lookType) .. " ��δ�ҵ�")
	return false
end

function findGoal(room, goal, things)
	if goal == true then
		return true
	end
	local _room = map:room(room)
	local result = findGoal0(goal, things)
	if result then
		return result
	end
	if _room.find then
		local path = _room.find.path
		local count = _room.find.count or 1
		for i = 1, count do
			for _, p in pairs(path) do
				wait(500)
				e(p)
				result = findGoal0(goal)
				if result then
					return result
				end
			end
		end
	end
	return false
end

function findGoal0(goal, things)
	things = things or lookGoal()
	for id, name in pairs(things) do
		if string.find(name, goal) or string.find(id, goal) then
			return id
		end
	end
	return false
end

function lookGoal(nosend)
	if not nosend then
		e("id here")
		set("lookGoal")
	end
	local things = {}
	addListener([[^�����������, ���Ｐ��Ʒ��\(Ӣ��\)�������£�$]], nil, nil, trigger_flag.OmitFromOutput)
	listen()
	while true do
		addListener([[^(\S+) = ([\w ']+)(?:, ([\w ']+))*$]], "s:return wildcards[1], wildcards[2]", "lookGoal", trigger_flag.OmitFromOutput)
		addSetListener("lookGoal", "lookGoal")
		local name, id = listen()
		if name == "lookGoal" then
			break
		else
			things[id] = name
		end
	end
	return things
end

function go(name, city, look, msg, again)
	again = again or 0
	if again > 20 then
		log.error("���� name = " .. name .. "��city = " .. tostring(city) .. "���ظ��˶����Ȼδ����")
		return false
	end
	TraceOut("go name = " .. name .. " , city = " .. tostring(city))
	local herePath = locateHere()
	local goPath = locateGo(name,city)
	if not goPath then
		return false
	end
	if herePath == goPath then
		hereId = goPath
		local things
		if look then
			things = lookGoal()
		end
		waitbusy()
		return true, things
	end
	log.debug("�ӣ�" .. herePath .. "������" .. goPath)
	local path = map:getPath(herePath, goPath)
	log.debug("�ӣ�" .. herePath .. "������" .. goPath .. "����·���ǣ�" .. tostring(path))
	if path then
		local goRoom = map:room(goPath)
		if look then
			path = path .. "id here;set lookGoal;unset lookGoal"
		end
		waitbusy()
		e(path)
		if msg then
			addListener(msg, "s:return false", "go")
		end
		addSetListener("go", "go")
		local result = listenCmd()
		if result and (not move or not sameRoom(move, goRoom, true)) then
			move = nil
			hereId = nil
			wait(GO_AGAIN_WAIT)
			again = again + 1
			e("yun jingli")
			return go(name,city, look, msg, again)
		else
			hereId = goPath
			local things
			if look then
				things = lookGoal(true)
			end
			return true, things
		end
	else
		return false
	end
end

function getAddr(addr)
	return map:getAddr(addr)
end

function goNofightRoom()
	local herePath = locateHere()
	local nofightRooms = map:getNofightRooms()
	local path, room, length = map:getMinPath(herePath, nofightRooms, true)
	if not path then
		log.error("�޷����� no fight room : " .. herePath)
		local _here = here()
		e("halt")
		randomMove(_here.exits)
	else
		e(path)
	end
end

-- alias goNoFightRoom
function nf()
	goNofightRoom()
end
