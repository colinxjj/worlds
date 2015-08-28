function wdInit()
	e("unset wd_info;unset wd_finish")
end

local wdIgnores = {
	["天山杖法"] = 40000000,
	["玄阴剑法"] = 40000000,
	["金刚降伏轮"] = 10000000,
	["韦陀杵"] = 10000000,
	["弹指神通"] = 2000000,
}

local startTime
local npc, addr, length, skill, party, level
function wdjob()
	startTime = os.time()
	npc, addr, length, skill, party, level, finish = wdInfo()
	if not npc then
		npc, addr, length, skill, party, level = wdAsk()
		if not npc then
			return "skip"
		elseif npc == "fangqi" then
			return wdFangqi()
		end
	end
	if finish then
		local id = getId(npc)
		if id then
			if not wdKill(npc, id) then
				return wdFangqi()
			end
		end
		return wdFinish()
	end
	if wdIgnores[skill] and getExp() < wdIgnores[skill] then
		return wdFangqi()
	end
	local name, city = getAddr(addr)
	if not name then
		return wdFangqi()
	end
	if not canFind(name, city, length) then
		return wdFangqi()
	end
	waitbusy()
	perform()
	wait(2000)
	if not wdFind(name, city, length, npc) then
		return wdFangqi()
	end
	return wdFinish()
end

function wdFind(name, city, length, npc)
	local found = find(name, city, length,
	{npc = npc, msg = "^" .. npc .. [[(对着你说道：嘿嘿！有胆敢跟过来，老子不客气了！|对着你发出一阵阴笑，说道：既然被你这个\S+撞见了，那也就只能算你命短了！|对着你发出一阵阴笑，说道：\S+，这里地方太小，有种跟\S+到外面比划比划！)$]]}
	-- npc
	, "all", wdKill, npc)
	if found == "fail" then
		return false
	end
	if not found then
		if length < 5 then
			return wdFind(name, city, 5, npc)
		end
		return false
	end
	return true
end

function wdFinish()
	if go("天乙真庆宫", "武当山") then
		return wdFinish0()
	else
		wait(10000)
		return wdFinish()
	end
end

function wdFinish0()
	e("r")
	set("sqd")
	addListener([[^你获得了(\S+)点经验，(\S+)点潜能！你的侠义正气增加了！$]], "s:return trans(wildcards[1]), trans(wildcards[2])", "sqd")
	addSetListener("sqd", "sqd")
	local exp, pot = listen()
	if exp == "sqd" then
		return wdFangqi()
	else
		local useTime = startTime and os.time() - startTime
		log.info("武当任务完成，得到经验：" .. exp .. "，潜能：" .. pot .. (useTime and ("，用时：" .. useTime .. " 秒") or "") .. "，任务信息，位置：" .. addr .. "，距离：" .. length .. "，门派：" .. party .. "，功夫：" .. skill .. "，级别：" .. level .. "，每小时进帐：" .. getHourExp())
		wdInit()
		wait(1000)
		return true
	end
end

function wdKill(npc, id)
	if not id then
		id = getId(npc)
		if not id then
			return false
		end
	end
	e("set wd_finish")
	e("follow " .. id .. ";kill " .. id .. ";kick " .. id)
	currentJob = "wdjob"
	perform(id)
	addListener("^这里没有 " .. id .. "。$", "s:return 'continue'", "wdKill")
	addListener("^" .. npc .. [[对着你发出一阵阴笑，说道：\S+，这里地方太小，有种跟\S+到外面比划比划！$]], "s:return 'kick'", "wdKill")
	addListener([[^你忍不住想狠狠踢\(kick\)这个家伙一脚。$]], "s:return 'kick'", "wdKill")
	addListener("^" .. npc .. "大喊一声：不好！！转身几个起落就不见了。$", "s:return 'ok'", "wdKill")
	addListener("^" .. npc .. "「啪」的一声倒在地上，挣扎着抽动了几下就死了。$", "s:return 'die'", "wdKill")
	addListener([[^你只觉得头昏脑胀，眼前一黑，接着什么也不知道了……$]], "s:return 'fail'", "wdKill")
	addListener([[^你「啪」的一声倒在地上，挣扎着抽动了几下就死了。$]], "s:return 'over'", "wdKill")
	addListener([[^逃跑成功$]], "s:return 'escape'", "wdKill")
	local result = listen()
	if result == "continue" then
		e("unset wd_finish")
		npc, addr, length, skill, party, level, finish = wdInfo()
		if not npc then
			return false
		end
		local name, city = getAddr(addr)
		if not name then
			return false
		end
		return wdFind(name, city, length, npc)
	end
	if result == "fail" then
		log.warn("被武当任务杀手打昏，位置：" .. addr .. "，距离：" .. length .. "，门派：" .. party .. "，功夫：" .. skill .. "，级别：" .. level)
		listener([[^一股暖流发自丹田流向全身，慢慢地你又恢复了知觉……$]])
		e("yun qi;yun jingli;yun jing")
		return "fail"
	end
	if result == "kick" then
		e("kick " .. id)
		return wdKill(npc, id)
	end
	if result == "escape" then
		log.warn("没打过武当任务杀手，逃跑了，位置：" .. addr .. "，距离：" .. length .. "，门派：" .. party .. "，功夫：" .. skill .. "，级别：" .. level)
		wait(2000)
		return "fail"
	end
	if result == "die" then
		waitbusy()
		local i = findCorpse(npc)
		if i then
			e("h;get silver from corpse " .. i .. ";get gold from corpse " .. i)
		end
	end
	if result == "over" then
		log.error("被武当任务杀手杀死，位置：" .. addr .. "，距离：" .. length .. "，门派：" .. party .. "，功夫：" .. skill .. "，级别：" .. level)
		return false
	end
	return true
end

function wdInfo()
	return getJobInfo("wd_info", "wd_finish")
end

function wdAsk()
	db()
	go("三清殿", "武当山")
	e("ask song yuanqiao about job")
	addListener([[^你向宋远桥打听有关『job』的消息。\n宋远桥说道：「你刚做完武当锄奸任务，还是先去休息一会吧。」$]], "s:return false", "wdAsk1")
	addListener([[^你向宋远桥打听有关『job』的消息。\n宋远桥说道：「现在我这里没有给你的任务，你还是先处理好你其他事情再说吧。」$]], "s:return 'quit'", "wdAsk1")
	addListener([[^你向宋远桥打听有关『job』的消息。\n宋远桥说道：「现在暂时没有适合你的工作。」$]], "s:return false", "wdAsk1")
	addListener([[^你向宋远桥打听有关『job』的消息。\n宋远桥说道：「你刚做完\S+任务，还是先休息一会吧。」$]], "s:return 'busy'", "wdAsk1")
	addListener([[^你向宋远桥打听有关『job』的消息。\n宋远桥说道：「你正忙着别的事情呢。」$]], "s:return 'busy'", "wdAsk1")
	addListener([[^你向宋远桥打听有关『job』的消息。\n宋远桥说道：「我不是告诉你了吗，有人在捣乱。你就快去吧！」$]], "s:return 'fangqi'", "wdAsk1")
	addListener([[^你向宋远桥打听有关『job』的消息。\n宋远桥说道：「\S+的正气还不够，我无法放心让你做这个任务！」$]], "s:return 'shen'", "wdAsk1")
	addListener([[^宋远桥在你的耳边悄声说道：据说\S{8}(\S+)正在$]], "s:return 'bigword', wildcards[1], wildcards[2]", "wdAsk1")
	addListener([[^宋远桥在你的耳边悄声说道：据说\S{8}(\S+)正在(\S+?)(?:周围方圆(\S{2})里之内)?捣乱，你马上去给我巡视一圈。$]],
		"s:return 'minword', wildcards[1], wildcards[2], wildcards[3], wildcards[4]", "wdAsk1")
	local type, npc, addr, length = listen()
	if not type then
		return false
	end
	if type == "quit" then
		waitbusy()
		e("quit")
		return false
	end
	if type == "fangqi" then
		return "fangqi"
	end
	if type == "busy" then
		go("飞升崖", "武当山")
		waitjob()
		return wdAsk()
	end
	if type == "shen" then
		addShen(10000)
		return wdAsk()
	end
	if type == "bigword" then
		addr = getBigWord()
		addListener([[^(?:周围方圆(\S{2})里之内)?捣乱，你马上去给我巡视一圈。$]], "s:return wildcards[1]", "wdAsk2")
		length = listen()
	end
	if length then
		length = trans(length)
	else
		length = 1
	end
	addListener([[^宋远桥在你的耳边悄声说道：\S+已追查到此人是我武当出身，尤为擅长(\S+)的功夫。\n\S+若能将其诛杀，不但为江湖除去一害，也能为\S+讨个公道，自当感激不尽。$]],
		"s:return '武当派', wildcards[1]", "wdAsk3")
	addListener([[^宋远桥在你的耳边悄声说道：据门派弟子来报，此人是来自(\S+)的(?:叛徒|高手)，尤为擅长(\S+)的功夫。$]], "s:return wildcards[1], wildcards[2]", "wdAsk3")
	local party, skill = listen()
	set("wdLevel")
	addListener([[^宋远桥在你的耳边悄声说道：此人的武功颇为了得，你可得小心对付哦。$]], "s:return 1", "wdAsk4")
	addListener([[^宋远桥在你的耳边悄声说道：此人的武功极其厉害，你可得小心应付。$]], "s:return 2", "wdAsk4")
	addListener([[^宋远桥在你的耳边悄声说道：此人的武功已入化境，打不过可不要逞能。$]], "s:return 3", "wdAsk4")
	addSetListener("wdLevel", "wdAsk4")
	local level = listen()
	if level == "wdLevel" then
		level = 0
	end
	log.debug(npc, addr, length, skill, party, level)
	e("set wd_info " .. npc .. "," .. addr .. "," .. length .. "," .. skill .. "," .. party .. "," .. level)
	return npc, addr, length, skill, party, level
end

function wdFangqi()
	go("三清殿", "武当山")
	e("ask song yuanqiao about fangqi")
	wdInit()
	local useTime = startTime and os.time() - startTime
	log.warn("武当任务失败，位置：" .. addr .. "，距离：" .. length .. "，门派：" .. party .. "，功夫：" .. skill .. "，级别：" .. level)
	return false
end
