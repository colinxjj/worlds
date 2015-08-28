local sx2Level = 7
local sx2Info
local sx2Skill
local startTime
local sxAddr
local sxNpc

function sxInit()
	e("unset sx1_wait;unset sx2_wait")
end

function sxjob()
	startTime = os.time()
	sx2Info = nil
	sx2Skill = nil
	local name, city, npc, time = sxInfo()
	if not name then
		sxInit()
		name, city, npc, time = sxAsk()
		if not name then
			return sxFangqi()
		else
			e("set sx1_wait")
		end
	end
	local result = sxGo(name, city, npc, time)
	if not result then
		return sxFangqi()
	else
		return result
	end
end

function sxGo(name, city, npc, time)
	local _sets = sets()
	sx2Level = _sets["sx2_level"] and tonumber(sets()["sx2_level"]) or sx2Level
	if not _sets["sx2_wait"] then
		local result = sx1(name, city, npc, time, _sets)
		if not result then
			return false
		end
		if result == "ok" then
			return true
		end
		sx2Info = result
		local killerLevel = getKillerLevel(result)
		if killerLevel > sx2Level then
			e("no")
			local useTime = startTime and os.time() - startTime
			log.info("送信任务完成，得到经验：" .. exp .. "，潜能：" .. pot .. (useTime and ("，用时：" .. useTime .. " 秒") or ""))
			return true
		else
			e("set sx2_wait")
		end
	end
	return sx2()
end

function sx1(name, city, npc, time, _sets)
	if not name then
		name, city, npc, time = sxInfo()
		_sets = sets()
	end
	if not name then
		return false
	end
	if _sets["sx1_wait"] then
		sxWait()
		if not sxKill() then
			return false
		end
	end
	name, city, npc, time = sxInfo()
	if not name then
		log.warn("信没抢回来")
		return false
	end
	db()
	return sxSx(name, city, npc, time)
end

function sx2()
	local name, city, npc, time = sxInfo()
	if not name then
		e("no")
		e("unset sx2_wait")
		return true
	end
	if not canFind(name, city, 0) then
		e("no")
		e("unset sx2_wait")
		return true
	end
	if sets()["sx2_wait"] then
		leaveNoFightRoom()
		if not sxKill() then
			return false
		end
	end
	name, city, npc, time = sxInfo()
	if not name then
		log.warn("信没抢回来")
		return false
	end
	return sxSx(name, city, npc, time)
end

function getKillerLevel(killerLevel)
	local killerLevels = {
		["微不足道"] = 1,
		["马马虎虎"] = 2,
		["小有所成"] = 3,
		["融会贯通"] = 4,
		["颇为了得"] = 5,
		["极其厉害"] = 6,
		["已入化境"] = 7,
	}
	return killerLevels[killerLevel]
end

local sx2Ignore = {
	["天山杖法"] = 40000000,
	["玄阴剑法"] = 40000000,
	["腾龙匕法"] = 1000000,
	["辟邪剑法"] = 1000000,
}

function sxKill()
	perform()
	local killers = {}
	local ids = {}
	local target
	local faints = {}
	local dies = {}
	while true do
		addListener([[^(?:糟糕！有人要抢信|你紧张起来，不由一摸衣袋，不好！信被偷了)!\n(\S{4,8})说道：「(?:小子，乖乖把密函交出来吧|想跑，还不给我交出来)！！！」$]], "s:return 'killer', wildcards[1]", "sxKill")
		addListener([[^糟糕，又冲上来了个人！\n(\S{4,8})说道：「(?:师兄，点子硬得很，我来帮你|想跑，还不给我交出来)！！！」$]], "s:return 'killer', wildcards[1]", "sxKill")
		addListener([[^你紧张起来，不由一摸衣袋，不好！信被偷了!\n你定睛一看，原来是(\S{4,8})，而且此人武功极高，似乎用的是\S+的(\S+)！$]], "s:return 'killer', wildcards[1], wildcards[2]", "sxKill")
		addListener([[^  (?:天杀门|地煞门)(?:女)?杀手 (\S{4,8})\(([\w ]+)\)(?: <(战斗中|昏迷不醒)>)?$]], "s:return 'id', wildcards[1], string.lower(wildcards[2])", "sxKill")
		addListener([[^  (\S{4,8})的尸体\(Corpse\)$]], "s:return 'die', wildcards[1]", "sxKill")
		addListener([[^(\S{4,8})神志迷糊，脚下一个不稳，倒在地上昏了过去。$]], "s:return 'faint', wildcards[1]", "sxKill")
		addListener([[^(\S{4,8})「啪」的一声倒在地上，挣扎着抽动了几下就死了。$]], "s:return 'die', wildcards[1]", "sxKill")
		addListener([[^你只觉得头昏脑胀，眼前一黑，接着什么也不知道了……$]], "s:return 'fail'", "sxKill")
		addListener([[^逃跑成功$]], "s:return 'escape'", "sxKill")
		addListener([[^你「啪」的一声倒在地上，挣扎着抽动了几下就死了。$]], "s:return 'over'", "sxKill")
		local type, p1, p2 = listen(180, function() return "timeout" end)
		if type == "fail" then
			log.warn("被抢信杀手打昏了，级别：" .. tostring(sx2Info) .. "，功夫：" .. tostring(sx2Skill))
			listener([[^一股暖流发自丹田流向全身，慢慢地你又恢复了知觉……$]])
			e("yun qi;yun jingli;yun jing")
			return false
		end
		if type == "over" then
			log.error("被抢信杀手杀死，级别：" .. tostring(sx2Info) .. "，功夫：" .. tostring(sx2Skill))
			return false
		end
		if type == "escape" then
			log.warn("没打过抢信杀手，逃跑了，级别：" .. tostring(sx2Info) .. "，功夫：" .. tostring(sx2Skill))
			wait(2000)
			return false
		end
		if type == "timeout" then
			return false
		end
		if type == "killer" then
			if p2 then
				currentJob = "sxjob2"
				sx2Skill = p2
			else
				currentJob = "sxjob1"
			end
			if sx2Ignore[p2] and getExp() < sx2Ignore[p2] then
				escape()
				return sxFangqi()
			else
				sxInit()
				e("l")
				killers[p1] = true
			end
		end
		if type == "faint" and killers[p1] then
			e("kill " .. ids[p1])
			faints[p1] = true
		end
		if type == "die" and killers[p1] then
			faints[p1] = true
			dies[p1] = true
		end
		if type == "id" and killers[p1] then
			e("kill " .. p2)
			ids[p1] = p2
		end
		if killers[p1] then
			local allDead = true
			local allFaint = true
			for name in pairs(killers) do
				if not dies[name] then
					allDead = false
				end
				if not faints[name] then
					allFaint = false
				end
				if (not target or dies[target]) and not allFaint and target ~= name and ids[name] then
					target = name
					kill(ids[target])
				end
			end
			if allDead then
				break
			end
			if (type == "faint" or type == "die") and allFaint then
				noPerform()
			end
		end
	end
	currentJob = nil
	waitbusy()
	for name in pairs(killers) do
		local n = findCorpse(name)
		if not n then
			return false
		end
		e("get secret letter from corpse " .. n .. ";get silver from corpse " .. n)
	end
	return true
end

function sx(npc, n)
	n = n or 1
	local id, status = getId(npc)
	if not id then
		return false
	end
	if status == "faint" then
		wait(1000)
		sx(npc, n)
	end
	e("h;songxin " .. id .. " " .. n)
	set("sx")
	addListener([[^\S+道：这封信不是给我的，你是不是送错了？$]], "s:return 'wrong'", "sx")
	addListener([[^\S+奇怪道：你看清楚，是否送错人了，和我同名的人可不少哦。$]], "s:return 'wrong'", "sx")
	addListener([[^这封信不是送给这个人的。$]], "s:return 'wrong'", "sx")
	addListener([[^好！任务完成，你被奖励了：(\S+)点实战经验，(\S+)点潜能。你为镇南王府成功送信\S+次。$]], "s:return 'ok', trans(wildcards[1]), trans(wildcards[2])", "sx")
	addListener("^你正忙着呢。$", "s:return 'busy'", "sx")
	addListener("^你要送给谁？$", "s:return 'fail'", "sx")
	addSetListener("sx", "sx")
	local result, exp, pot = listen()
	if result == "ok" then
		local useTime = startTime and os.time() - startTime
		local msg = "送信任务完成，得到经验：" .. exp .. "，潜能：" .. pot .. (useTime and ("，用时：" .. useTime .. " 秒") or "")
		if sx2Info then
			msg = msg .. "，任务信息，级别：" .. sx2Info .. "，功夫：" .. tostring(sx2Skill)
		end
		log.info(msg)
		return true
	elseif result == "wrong" then
		return sx(npc, n + 1)
	elseif result == "busy" then
		return sx(npc, n)
	elseif result == "sx" then
		return false
	end
end

function sxFangqi()
	sxInit()
	go("驿站", "大理城")
	e("ask zhu wanli about fangqi")
	local useTime = startTime and os.time() - startTime
	local msg = "送信任务失败，位置：" .. tostring(sxAddr) .. "，收信人：" .. tostring(sxNpc)
	if sx2Info then
		msg = msg .. "，级别：" .. sx2Info .. "，功夫：" .. tostring(sx2Skill)
	end
	log.warn(msg)
	return false
end

function sxSx(name, city, npc, time)
	if not name then
		name, city, npc, time = sxInfo()
	end
	if not name then
		return false
	end
	if not canFind(name, city, 0) then
		return false
	end
	local around = 0
	if isMove(npc) then
		around = 4
	end
	local found = find(name, city, around, npc, "all", sx, npc, 1)
	if not found then
		if around > 0 then
			return false
		else
			found = find(name, city, 4, npc, "all", sx, npc, 1)
			if not found then
				return false
			end
		end
	end
	set("sx2")
	addListener("^" .. npc .. [[在你的耳边悄声说道：可能有个武功和你相比(微不足道|马马虎虎|小有所成|融会贯通|颇为了得|极其厉害|已入化境)的家伙要来抢你的信，\S+。$]], "s:return wildcards[1]", "sx2")
	addSetListener("sx2", "sx2")
	local result = listen()
	if result == "sx2" then
		return "ok"
	else
		return result
	end
end

function isMove(npc)
	local moveNpc = {
		"李捕头", "陈近南", "中年乞丐", "托钵僧",
	}
	for _, n in pairs(moveNpc) do
		if npc == n then
			return true
		end
	end
	return false
end

function sxInfo()
	e("l secret letter")
	set("sxInfo")
	addListener([[^    「(\S+) (\S+)」 亲启。$]], "s:return wildcards[1], wildcards[2]", "sxInfo")
	addListener([[^    「$]], "s:return 'bigword'", "sxInfo")
	addSetListener("sxInfo", "sxInfo")
	local addr, npc = listen()
	if addr == "sxInfo" then
		return false
	elseif addr == "bigword" then
		addr = getBigWord()
		npc = listener([[^ (\S{4,8})」 亲启。$]], "s:return wildcards[1]")
	end
	sxAddr = addr
	sxNpc = npc
	addListener("^你现在有充足的时间去送信。$", "s:return 0", "sxInfo") -- > 3/4
	addListener("^已经过去一小半时间了。$", "s:return 1", "sxInfo") -- 4/3 ~ 1/2
	addListener("^你还有一半的时间去送信。$", "s:return 2", "sxInfo") -- 1/2 ~ 1/4
	addListener("^你的时间已经不多了。$", "s:return 3", "sxInfo") -- 1/4 ~ 1/8
	addListener("^时间将至，任务即将失败。$", "s:return 4", "sxInfo") -- < 1/8
	local time = listen()
	local name, city = getAddr(addr)
	return name, city, npc, time
end

function sxAsk()
	db()
	local result = sxAsk0()
	if result == "join" then
		go("王府大厅", "大理王府")
		e("ask fu sigui about join")
		waitbusy()
		return sxAsk()
	elseif result == "busy" then
		return false
	elseif result == "jobBusy" then
		waitbusy()
		e("#2 w")
		waitjob()
		return sxAsk()
	end
	local name, city, npc, time = sxInfo()
	if not name then
		return false
	end
	if not canFind(name, city, 0, "look") then
		return false
	end
	return name, city, npc, time
end

function sxAsk0()
	go("驿站", "大理城")
	wait(2000)
	e("ask zhu wanli about job")
	addListener([[^你向褚万里打听有关『job』的消息。\n褚万里说道：「\S+，你不是本王府随从，此话从何说起？」$]], "s:return 'join'", "sxjob")
	addListener([[^你向褚万里打听有关『job』的消息。\n褚万里说道：「你不是已经领了送信的任务吗？还不快去做。」$]], "s:return 'ok'", "sxjob")
	addListener([[^你向褚万里打听有关『job』的消息。\n褚万里说道：「你刚做完大理送信任务，还是去休息一会吧。」$]], "s:return 'busy'", "sxjob")
	addListener([[^你向褚万里打听有关『job』的消息。\n褚万里说道：「现在暂时没有给你的任务，再等\S+个时辰吧。」$]], "s:return 'jobBusy'", "sxjob")
	addListener([[^你向褚万里打听有关『job』的消息。\n褚万里说道：「暂时没有信需要送，你过一会儿再来吧。」$]], "s:return 'jobBusy'", "sxjob")
	addListener([[^你向褚万里打听有关『job』的消息。\n褚万里说道：「你先去休息一会吧！」$]], "s:return 'jobBusy'", "sxjob")
	addListener("^褚万里交给你一封密函。$", "s:return 'ok'", "sxjob")
	return listen()
end

function sxWait()
	local waitAddrs = {
		{name = "澄江抚仙湖", city = "大理城东"},
		{name = "阳宗海", city = "大理城东"},
		{name = "路南大叠水", city = "大理城东"},
		{name = "望海楼", city = "大理城东"},
		{name = "西山森林", city = "大理城东"},
		{name = "石林", city = "大理城东"},
		{name = "燕子洞"},
		{name = "燕子洞口", city = "大理城东"},
		{name = "第一天", city = "大理城东"},
		{name = "第二天", city = "大理城东"},
		{name = "第三天", city = "大理城东"},
		{name = "观景楼", city = "大理城东"},
		{name = "观景楼边", city = "大理城东"},
		{name = "洞顶", city = "大理城东"},
		{name = "燕子窝", city = "大理城东"},
		{name = "梅里雪山"},
		{name = "轿子雪山", city = "大理城西"},
		{name = "玉龙雪山", city = "大理城西"},
		{name = "天池半山", city = "大理城西"},
		{name = "天池", city = "大理城西"},
		{name = "虎跳峡", city = "大理城西"},
		{name = "宁浪泸沽湖", city = "大理城西"},
		{name = "怒江", city = "大理城西"},
		{name = "下关风", city = "大理城南"},
		{name = "大观楼", city = "大理城南"},
		{name = "荷花池", city = "大理城南"},
		{name = "游园会", city = "大理城南"},
		{name = "海埂", city = "大理城南"},
		{name = "海埂南", city = "大理城南"},
		{name = "海埂北", city = "大理城南"},
		{name = "土林"},
		{name = "秀山", city = "大理城南"},
		{name = "西双版纳", city = "大理城南"},
	}
	local _, addr = randomGet(waitAddrs)
	perform()
	go(addr.name, addr.city)
end
