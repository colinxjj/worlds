function fishall()
	full()
	db()
	while true do
		local _hp = hp()
		local isFull, isLimit = isFullOrLimit()
		if _hp.pot >= _hp.max_pot then
			dropPot()
			--[[
			if isLimit then
				dropPot()
			else
				fullSkills()
			end
			--]]
		end
		fishjob()
	end
end

function proxySell()
	e("unset no_accept")
	while true do
		go("当铺", "福州城")
		local _i = i()
		if _i["hai gui"] > 0 then
			e("sell hai gui")
		else
			wait(500)
			local _hp = hp()
			if _hp.water < 50 or _hp.food < 50 then
				go("茶楼", "福州城")
				e("#4 drink")
				goDropAddr()
				e("get yu;#4 eat yu")
			end
			local _i = i()
			if _i.gold > 200 or _i.silver > 2000 then
				go("通宝斋")
				money(0, 50, nil, false)
			end
		end
	end
end

function fishjob()
	while true do
		local _hp = hp()
		if _hp.pot >= _hp.max_pot then
			return true
		end
		checkquit()
		fishjob0(_hp)
	end
end

function fishjob0(_hp)
	_hp = _hp or hp()
	if _hp.pot >= _hp.max_pot then
		return true
	end
	if _hp.water < 80 then
		go("茶楼", "福州城")
		e("#4 drink")
	end
	findYugan()
	return fish()
end

function fish()
	go("礁石", "福州城")
	while true do
		local _hp = hp()
		if _hp.jingli < _hp.eff_jingli / 2 then
			if _hp.neili >= 20 then
				e("yun jingli")
			else
				db()
			end
		end
		e("fish")
		set("fish")
		addListener("^你还是多花点时间练功吧，免得武功荒废了。$", "s:return 'wrong'", "fish")
		addListener("^临渊羡鱼，不如退而结网。没有鱼竿，你想怎么个钓法？$", "s:return false", "fish")
		addListener("^你正拿起鱼竿想要放线出去，一只大海龟慢腾腾爬过来，在你的脚上咬了一口。你疼地跳了起来。$", "s:return 'sell'", "fish")
		addListener("^地上已经那么多鱼了，不要暴敛天物啊。$", "s:return 'get'", "fish")
		addListener("^钓鱼是休闲运动，把潜能发掘完再来吧。$", "s:return 'pot'", "fish")
		addListener([[^你突然觉得手中鱼竿一颤，有鱼上钩了！快收线\(shouxian\)！！$]], "s:return 'ok'", "fish")
		addListener([[^先收线吧，有鱼咬着你的钩呢。$]], "s:return 'ok'", "fish")
		addSetListener("fish", "fish")
		local result = listen()
		waitbusy()
		if not result then
			return false
		elseif result == "pot" then
			return false
		elseif result == "ok" then
			break
		elseif result == "wrong" then
			log.error("连钓龟也不行了，饿死吧")
			error("连钓龟也不行了，饿死吧")
		elseif result == "get" then
			e("get yu")
		elseif result == "sell" then
			if not sellHaigui() then
				goDropAddr()
				e("eat yu;drop yu;drop duan yugan")
			end
			return true
		end
	end
	while true do
		local _hp = hp()
		if _hp.jingli < _hp.eff_jingli / 2 then
			if _hp.neili >= 20 then
				e("yun jingli")
			else
				db()
			end
		end
		e("shouxian")
		set("shouxian")
		addListener("^你的鱼竿呢？$", "s:return false", "shouxian")
		addListener("^不甩竿就想收线？有个性！$", "s:return 'fish'", "shouxian")
		addListener("^一股暖流发自丹田流向全身，慢慢地你又恢复了知觉……$", "s:return 'shouxian'", "shouxian")
		addSetListener("shouxian", "shouxian")
		local result = listen()
		e("i")
		waitbusy()
		if not result then
			return false
		elseif result == "fish" then
			return fish()
		else
			break
		end
	end
	if not sellHaigui() then
		goDropAddr()
		e("eat yu;drop yu;drop duan yugan")
	end
	return true
end

function goDropAddr()
	local dropAddrs = {
		{name = "fuzhou/island1"},
		{name = "fuzhou/island3"},
		{name = "fuzhou/island4"},
		{name = "fuzhou/island5"},
		{name = "巨岩", city = "福州城"},
		{name = "小木棚", city = "福州城"},
	}
	local _, addr = randomGet(dropAddrs)
	go(addr.name, addr.city)
end

function sellHaigui()
	local _i = i()
	if _i.silver > 200 or _i.coin > 100 or _i.gold > 5 or _i["thousand-cash"] > 0 then
		go("通宝斋")
		money(0,50)
		go("礁石", "福州城")
	end
	if _i["hai gui"] == 0 then
		return false
	end
	go("当铺", "福州城")
	e("give hai gui to lvyybaby;give hai gui to sjsh")
	e("sell hai gui")
	score()
	wait(1000)
	sellHaigui()
	return true
end

function findYugan()
	local _i = i()
	if _i["yu gan"] == 0 then
		askYugan()
		go("小木棚", "福州城")
		while true do
			e("get yu gan;find")
			set("find")
			addListener("^你找了半天，没发现什么对你有用的东西。$", "s:return false", "find")
			addListener("^你找到了一把不知道谁放在这里的旧鱼竿。$", "s:return 'ok'", "find")
			addListener("^你身上不是有了鱼竿么！$", "s:return 'ok'", "find")
			addSetListener("find", "find")
			local result = listen()
			waitbusy()
			if not result then
				return findYugan()
			elseif result == "ok" then
				return true
			end
		end
	else
		return true
	end
end

function askYugan()
	go("小岛", "福州城")
	askYugan0()
	e("n")
	askYugan0()
	e("n")
	askYugan0()
	e("r")
	askYugan0()
	e("o")
	askYugan0()
	e("s")
	askYugan0()
	e("w")
	askYugan0()
	e("s")
	askYugan0()
	e("eu")
	askYugan0()
	set("askyugan")
	addListener("^你向老者打听有关『鱼竿』的消息。$", "s:return 'ok'", "askyugan")
	addSetListener("askyugan", "askyugan")
	if listen() == "ok" then
		return true
	end
	if askYugan1("e") or askYugan1("s") or askYugan1("w") then
		return true
	end
	return false
end

function askYugan1(way)
	go("fuzhou/island1")
	e(way)
	e("ask lao zhe about 鱼竿")
	set("askyugan")
	addListener("^你向老者打听有关『鱼竿』的消息。$", "s:return 'ok'", "askyugan")
	addSetListener("askyugan", "askyugan")
	if listen() == "ok" then
		return true
	end
end

function askYugan0()
	e("ask lao zhe about 鱼竿")
end

function dropPot()
	log.debug("dropPot")
	-- fullSkills()
	local master = getMaster()
	go(master.addr.name, master.addr.city)
	local dropId
	for id in pairs(master.skills) do
		if getCha()[id].level < 50 then
			dropId = id
			break
		end
	end
	while true do
		local _hp = hp()
		if _hp.pot == 0 then
		-- if _hp.pot < _hp.max_pot * 4 / 5 then
			return true
		end
		if _hp.neili < 20 then
			db()
		elseif not _hp.jing3 then
			e("yun jing")
		end
		e("#10 xue " .. dropId .. " from " .. master.id .. ";fangqi " .. dropId)
		waitbusy()
	end
end
