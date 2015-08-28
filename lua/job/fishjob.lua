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
		go("����", "���ݳ�")
		local _i = i()
		if _i["hai gui"] > 0 then
			e("sell hai gui")
		else
			wait(500)
			local _hp = hp()
			if _hp.water < 50 or _hp.food < 50 then
				go("��¥", "���ݳ�")
				e("#4 drink")
				goDropAddr()
				e("get yu;#4 eat yu")
			end
			local _i = i()
			if _i.gold > 200 or _i.silver > 2000 then
				go("ͨ��ի")
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
		go("��¥", "���ݳ�")
		e("#4 drink")
	end
	findYugan()
	return fish()
end

function fish()
	go("��ʯ", "���ݳ�")
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
		addListener("^�㻹�Ƕ໨��ʱ�������ɣ�����书�ķ��ˡ�$", "s:return 'wrong'", "fish")
		addListener("^��Ԩ���㣬�����˶�������û����ͣ�������ô��������$", "s:return false", "fish")
		addListener("^�������������Ҫ���߳�ȥ��һֻ�󺣹�������������������Ľ���ҧ��һ�ڡ����۵�����������$", "s:return 'sell'", "fish")
		addListener("^�����Ѿ���ô�����ˣ���Ҫ�������ﰡ��$", "s:return 'get'", "fish")
		addListener("^�����������˶�����Ǳ�ܷ����������ɡ�$", "s:return 'pot'", "fish")
		addListener([[^��ͻȻ�����������һ���������Ϲ��ˣ�������\(shouxian\)����$]], "s:return 'ok'", "fish")
		addListener([[^�����߰ɣ�����ҧ����Ĺ��ء�$]], "s:return 'ok'", "fish")
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
			log.error("������Ҳ�����ˣ�������")
			error("������Ҳ�����ˣ�������")
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
		addListener("^�������أ�$", "s:return false", "shouxian")
		addListener("^��˦�;������ߣ��и��ԣ�$", "s:return 'fish'", "shouxian")
		addListener("^һ��ů�����Ե�������ȫ�����������ָֻ���֪������$", "s:return 'shouxian'", "shouxian")
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
		{name = "����", city = "���ݳ�"},
		{name = "Сľ��", city = "���ݳ�"},
	}
	local _, addr = randomGet(dropAddrs)
	go(addr.name, addr.city)
end

function sellHaigui()
	local _i = i()
	if _i.silver > 200 or _i.coin > 100 or _i.gold > 5 or _i["thousand-cash"] > 0 then
		go("ͨ��ի")
		money(0,50)
		go("��ʯ", "���ݳ�")
	end
	if _i["hai gui"] == 0 then
		return false
	end
	go("����", "���ݳ�")
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
		go("Сľ��", "���ݳ�")
		while true do
			e("get yu gan;find")
			set("find")
			addListener("^�����˰��죬û����ʲô�������õĶ�����$", "s:return false", "find")
			addListener("^���ҵ���һ�Ѳ�֪��˭��������ľ���͡�$", "s:return 'ok'", "find")
			addListener("^�����ϲ����������ô��$", "s:return 'ok'", "find")
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
	go("С��", "���ݳ�")
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
	addListener("^�������ߴ����йء���͡�����Ϣ��$", "s:return 'ok'", "askyugan")
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
	e("ask lao zhe about ���")
	set("askyugan")
	addListener("^�������ߴ����йء���͡�����Ϣ��$", "s:return 'ok'", "askyugan")
	addSetListener("askyugan", "askyugan")
	if listen() == "ok" then
		return true
	end
end

function askYugan0()
	e("ask lao zhe about ���")
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
