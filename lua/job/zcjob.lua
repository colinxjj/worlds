function zcjob()
	if getScore().bank <= 2 then
		log.error("没钱做洪七公做菜任务")
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
	go("后院", "丐帮")
	e("ask hong qigong about fangqi")	
	return false
end

function zcFinish()
	go("后院", "丐帮")
	e("ask hong qigong about finish")
	return true
end

function zc()
	waitbusy()
	e("h;zuo cai")
	addListener("^你将原料放在一起，一会就做出了一盘香口美味的「玉笛谁家听落梅」。$", "s:return true", "zc")
	addListener("^你一时走神，放错了配料，浪费了制成「玉笛谁家听落梅」的大好机会。$", "s:return false", "zc")
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
	go("后院", "丐帮")
	e("ask hong qigong about job")
	addListener([[^洪七公在你的耳边悄声说道：听说\S+，你帮我去找来吧！$]], "s:return 'ok'", "zcAsk")
	addListener([[^你向洪七公打听有关『job』的消息。\n洪七公说道：「嗯？我不是告诉你了吗，快去取原料啊，不想做就算了！」$]], "s:return 'ok'", "zcAsk")
	addListener([[^你向洪七公打听有关『job』的消息。\n洪七公说道：「我现在不饿，你还是先去休息一会吧。」$]], "s:return 'busy'", "zcAsk")
	addListener([[^你向洪七公打听有关『job』的消息。\n洪七公说道：「这位\S+的潜能已经这么多了，还是先去用完再来吧！」$]], "s:return false", "zcAsk")
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
		go("聚宝斋", "苏州城")
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
	addListener("^你向" .. food.npc .. [[打听有关『]] .. food.name .. [[』的消息。\n]] .. food.npc .. [[说道：「嗯，你要的话，就拿去吧。」$]], "s:return 'ok'", "findFood")
	addListener("^你向" .. food.npc .. [[打听有关『]] .. food.name .. [[』的消息。\n]] .. food.npc .. [[说道：「嘿嘿，你总要表示表示吧？就(\S+)两银子吧。」$]], "s:return 'money', wildcards[1]", "findFood")
	addListener("^你向" .. food.npc .. [[打听有关『]] .. food.name .. [[』的消息。\n]] .. food.npc .. [[说道：「罗嗦什么啊？一口价，我都说了，不要就算了。」$]], "s:return 'money', '二十'", "findFood")
	addListener("^你向" .. food.npc .. [[打听有关『]] .. food.name .. [[』的消息。\n]] .. food.npc .. [[漫不经心的“嗯”了一声，似乎根本没在听你说什么。$]], "s:return 'ask'", "findFood")
	local result, money = listen()
	if result == "money" then
		local silver = trans(money)
		waitbusy()
		e("give " .. silver .. " silver to " .. id)
		listener([[^你拿出]] .. money .. [[两白银\(Silver\)给]] .. food.npc .. [[。$]])
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
	addListener("^你还有下列原料尚未找到：$", "s:return false", "zcjob")
	addListener("^你已经顺利完成了「玉笛谁家听落梅」的料理。$", "s:return 'finish'", "zcjob")
	addListener("^(一本菜谱，看来是教你如何烹饪「玉笛谁家听落梅」的书。|你要看什么？)$", "s:return 'notwork'", "zcjob")
	addListener([[^你已经找齐了原料，赶快做「玉笛谁家听落梅」\(zuo cai\)吧。$]], "s:return 'zc'", "zcjob")
	local result = listen()
	if result then
		return result
	end
	local foods = {}
	while true do
		addListener([[^(\S{4,8})\s+(\S+)\s+(\S+)]], "s:return wildcards[1],wildcards[2],wildcards[3]", "zcjob")
		addListener("^你已经找到的原料有：","s:return false", "zcjob")
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
			log.error("获取位置失败：" .. addr)
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
