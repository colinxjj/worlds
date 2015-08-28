function getGold(gold)
	local goldId = getHelper("gold")
	local id = Proxy:new(goldId)
	id.goHelp()
	go("天阁斋")
	id.go("天阁斋")
	id.money(false, false, gold)
	e("unset no_accept")
	id.e("give " .. gold .. " gold to " .. myId())
	id.wait(1000)
	id.init()
end

function shenyou(id)
	runThread(listenShenyou)
	if isBusy() then
		local syid = getInfo("syid")
		if not syid or syid ~= id then
			log.error("神游的 id 不对，target = " .. tostring(syid) .. " , id = " .. id)
			e("halt")
			waitbusy()
			return shenyou(id)
		end
	else
		setInfo("syid", id)
		e("yun jing;yun jingli")
		leaveNoFightRoom()
		e("yun shenyou " .. id)
		set("shenyou")
		-- addListener([[^你盘膝闭目，按照莲花生传播的佛教咒术和密法修练「神游」大法，$]], "s:return false", "shenyou")
		addListener("^你要找的人就在一旁，还「神游」干什么？$", "s:return 'here'", "shenyou")
		addSetListener("shenyou", "shenyou")
		local result = listen()
		print(result)
		if result == 'here' then
			name = locateHere()
			return true
		end
	end
end

function runThread(method, ...)
	coroutine.wrap(method)(...)
end

local name, city, shenyouing
function listenShenyou()
	if shenyouing then
		return
	end
	shenyouing = true
	while true do
		addListener([[^【神游】(\S+) - ]], "s:return wildcards[1]", "shenyou")
		addListener("^你缓缓站起身来，只觉得全身虚脱，十分疲惫。$", "s:return 'halt'", "shenyou")
		addListener("^你心头一震，冷汗直下，再不能继续「神游」大法，只好睁眼站起。$", "s:return 'halt'", "shenyou")
		addListener([[^你的思感伸张开去，只一刹那，便来到\S+的身边！\n\n(\S+) - $]], "s:return wildcards[1]", "shenyou")
		name = listen(600)
		print(name, city)
		if name == "halt" then
			name = nil
			city = nil
			shenyouing = nil
			return false
		end
		local rooms = mapR:getRooms(name)
		if table.getn(rooms) == 1 then
			city = getCity(rooms[1])
		end
	end
end

function shenyouAddr()
	return name, city
end

function getIdAddr(id)
	local shenyouId = Proxy:new(getHelper("shenyou"))
	shenyouId.shenyou(id)
	print("shenyou ok")
	local name, city = shenyouId.shenyouAddr()
	print("getIdAddr name = " .. tostring(name) .. " , city = " .. tostring(city))
	return name, city
end

function getIdAddrOk()
	reset()
	move = nil
	runThread(function()
		local shenyouId = Proxy:new(getHelper("shenyou"))
		shenyouId.e("halt")
		shenyouId.fullNeili()
	end)
end