function zcjob()
	if getScore().bank <= 2 then
		log.error("ûǮ�����߹���������")
		return false
	end
	local foods = getFoods()
	if foods == "notwork" then
		zcPrepare()
		if zcAsk() then
			local _i = i()
			if _i["cai pu"] == 0 then
				waitbusy()
				e("quit")
			end
		else
			return false
		end
	end
	return zcGo()
end

function zcFangqi()
	go("��Ժ", "ؤ��")
	e("ask hong qigong about fangqi")	
	return false
end

function zcFinish()
	go("��Ժ", "ؤ��")
	e("ask hong qigong about finish")
	return true
end

function zc()
	waitbusy()
	e("h;zuo cai")
	addListener("^�㽫ԭ�Ϸ���һ��һ���������һ�������ζ�ġ����˭������÷����$", "s:return true", "zc")
	addListener("^��һʱ���񣬷Ŵ������ϣ��˷����Ƴɡ����˭������÷���Ĵ�û��ᡣ$", "s:return false", "zc")
	if not listen() then
		return false
	end
	return true
end

function zcGo()
	local foods = getFoods()
	if not foods then
		return zcFangqi()
	elseif foods == "finish" then
		return zcFinish()
	elseif foods == "zc" then
		waitbusy()
		if not zc() then
			return false
		end
		return zcFinish()
	elseif foods == "notwork" then
		return zcjob()
	end
	log.debug(save(foods))
	if canFindFoods(foods) then
		local result = findFoods(foods)
		if not result then
			return zcFangqi()
		end
		if not zc() then
			return false
		end
		return zcFinish()
	else
		waitbusy()
		return zcFangqi()
	end
end

function zcAsk()
	go("��Ժ", "ؤ��")
	e("ask hong qigong about job")
	addListener([[^���߹�����Ķ�������˵������˵\S+�������ȥ�����ɣ�$]], "s:return 'ok'", "zcAsk")
	addListener([[^������߹������йء�job������Ϣ��\n���߹�˵�������ţ��Ҳ��Ǹ��������𣬿�ȥȡԭ�ϰ��������������ˣ���$]], "s:return 'ok'", "zcAsk")
	addListener([[^������߹������йء�job������Ϣ��\n���߹�˵�����������ڲ������㻹����ȥ��Ϣһ��ɡ���$]], "s:return 'busy'", "zcAsk")
	addListener([[^������߹������йء�job������Ϣ��\n���߹�˵��������λ\S+��Ǳ���Ѿ���ô���ˣ�������ȥ���������ɣ���$]], "s:return false", "zcAsk")
	local result = listen()
	if result == "ok" then
		return true
	elseif not result then
		return false
	elseif result == "busy" then
		waitbusy()
		waitjob()
		return zcAsk()
	end
end

function zcPrepare()
	local _i = i()
	if _i.coin > 100 or _i.silver < 100 or _i.silver > 200 or _i.gold > 0 or _i["thousand-cash"] > 0 then
		go("�۱�ի", "���ݳ�")
		money(0,100)
	end
end

function findFoods(foods)
	foods = foods or getFoods()
	if not foods then
		return false
	end
	log.debug(save(foods))
	while count(foods) > 0 do
		local food = getMinFood(foods)
		foods[food.name] = nil
		local result = find(food.roomName, food.city, 0, food.npc, "look")
		if not result then
			return false
		end
		if not askFood(food) then
			return false
		end
	end
	return true
end

function getMinFood(foods)
	local minLength
	local minFood
	for _, food in pairs(foods) do
		local path, room, length = canFind(food.roomName, food.city, 0, "look")
		log.debug(room, length)
		if minLength == nil or minLength > length then
			minLength = length
			minFood = food
		end
	end
	return minFood
end

function askFood(food)
	local id = getId(food.npc)
	if not id then
		return false
	end
	waitbusy()
	e("follow " .. id)
	e("ask " .. id .. " about " .. food.name)
	addListener("^����" .. food.npc .. [[�����йء�]] .. food.name .. [[������Ϣ��\n]] .. food.npc .. [[˵�������ţ���Ҫ�Ļ�������ȥ�ɡ���$]], "s:return 'ok'", "findFood")
	addListener("^����" .. food.npc .. [[�����йء�]] .. food.name .. [[������Ϣ��\n]] .. food.npc .. [[˵�������ٺ٣�����Ҫ��ʾ��ʾ�ɣ���(\S+)�����Ӱɡ���$]], "s:return 'money', wildcards[1]", "findFood")
	addListener("^����" .. food.npc .. [[�����йء�]] .. food.name .. [[������Ϣ��\n]] .. food.npc .. [[˵����������ʲô����һ�ڼۣ��Ҷ�˵�ˣ���Ҫ�����ˡ���$]], "s:return 'money', '��ʮ'", "findFood")
	addListener("^����" .. food.npc .. [[�����йء�]] .. food.name .. [[������Ϣ��\n]] .. food.npc .. [[�������ĵġ��š���һ�����ƺ�����û������˵ʲô��$]], "s:return 'ask'", "findFood")
	local result, money = listen()
	if result == "money" then
		local silver = trans(money)
		waitbusy()
		e("give " .. silver .. " silver to " .. id)
		listener([[^���ó�]] .. money .. [[������\(Silver\)��]] .. food.npc .. [[��$]])
		return true
	elseif result == "ask" then
		waitbusy()
		return askFood(food)
	else
		return true
	end
end

function getFoods()
	e("l cai pu")
	addListener("^�㻹������ԭ����δ�ҵ���$", "s:return false", "zcjob")
	addListener("^���Ѿ�˳������ˡ����˭������÷��������$", "s:return 'finish'", "zcjob")
	addListener("^(һ�����ף������ǽ��������⿡����˭������÷�����顣|��Ҫ��ʲô��)$", "s:return 'notwork'", "zcjob")
	addListener([[^���Ѿ�������ԭ�ϣ��Ͽ��������˭������÷��\(zuo cai\)�ɡ�$]], "s:return 'zc'", "zcjob")
	local result = listen()
	if result then
		return result
	end
	local foods = {}
	while true do
		addListener([[^(\S{4,8})\s+(\S+)\s+(\S+)]], "s:return wildcards[1],wildcards[2],wildcards[3]", "zcjob")
		addListener("^���Ѿ��ҵ���ԭ���У�","s:return false", "zcjob")
		local npc, addr, name = listen()
		if not npc then
			break
		else
			food = {}
			food.addr = addr
			food.npc = npc
			food.name = name
			foods[name] = food
		end
	end
	for name, food in pairs(foods) do
		local addr = food.addr
		local roomName, city = getAddr(addr)
		if not roomName then
			log.error("��ȡλ��ʧ�ܣ�" .. addr)
			return false
		end
		food.roomName = roomName
		food.city = city
	end
	return foods
end

function canFindFoods(foods)
	local result = true
	for _, food in pairs(foods) do
		log.debug(save(food))
		if not canFind(food.roomName, food.city, 0, "look") then
			result = false
			-- return false
		end
	end
	-- return true
	return result
end
