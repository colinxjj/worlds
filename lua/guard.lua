function getGold(gold)
	local goldId = getHelper("gold")
	local id = Proxy:new(goldId)
	id.goHelp()
	go("���ի")
	id.go("���ի")
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
			log.error("���ε� id ���ԣ�target = " .. tostring(syid) .. " , id = " .. id)
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
		-- addListener([[^����ϥ��Ŀ�����������������ķ���������ܷ����������Ρ��󷨣�$]], "s:return false", "shenyou")
		addListener("^��Ҫ�ҵ��˾���һ�ԣ��������Ρ���ʲô��$", "s:return 'here'", "shenyou")
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
		addListener([[^�����Ρ�(\S+) - ]], "s:return wildcards[1]", "shenyou")
		addListener("^�㻺��վ��������ֻ����ȫ�����ѣ�ʮ��ƣ����$", "s:return 'halt'", "shenyou")
		addListener("^����ͷһ���亹ֱ�£��ٲ��ܼ��������Ρ��󷨣�ֻ������վ��$", "s:return 'halt'", "shenyou")
		addListener([[^���˼�����ſ�ȥ��ֻһɲ�ǣ�������\S+����ߣ�\n\n(\S+) - $]], "s:return wildcards[1]", "shenyou")
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