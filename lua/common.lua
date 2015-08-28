local dzMsg = {
	"你运功完毕，站了起来。",
	"你一个周天行将下来，精神抖擞的站了起来。",
	"你将内息走了个小周天，流回丹田，收功站了起来。",
	"你将周身内息贯通经脉，缓缓睁开眼睛，站了起来。",
	"你慢慢收气，归入丹田，睁开眼睛，轻轻的吐了一口气。",
	"你分开双手，黑气慢慢沉下，眼中的绿光也渐渐暗淡下来。",
	"你将寒冰真气按周天之势搬运了一周，感觉精神充沛多了。",
	"你一周天行将下来,顿时浑身发暖,感到腹中内劲又增加一分。",
	"你将内息在体内运行十二周天，返回丹田，只觉得全身暖洋洋的。",
	"你吸气入丹田，真气运转渐缓，慢慢收功，双手抬起，站了起来。",
	"你将内息又运了一个小周天，缓缓导入丹田，双臂一震，站了起来。",
	"你真气在体内运行了一个周天，缓缓收气于丹田，慢慢睁开了眼睛。",
	"你真气在体内运行了一个周天，冷热真气收于丹田，慢慢抬起了眼睛。",
	"过了片刻，你感觉自己已经将玄天无极神功气聚丹田，深吸口气站了起来。",
	"你将真气在体内沿脉络运行了一圈，缓缓纳入丹田，放下手，长吐了一口气。",
	"你双眼微闭，缓缓将天地精华之气吸入体内,见天地恢复清明，收功站了起来。",
	"你只觉神元归一，全身精力弥漫，无以复加，忍不住长啸一声，徐徐站了起来。",
	"你将内息走满一个周天，只感到全身通泰，丹田中暖烘烘的，双手一分，缓缓站了起来。",
	"你呼翕九阳，抱一含元，缓缓睁开双眼，只觉得全身真气流动，体内阳气已然充旺之极。",
	"你感觉毒素越转越快，就快要脱离你的控制了！你连忙收回毒素和内息，冷笑一声站了起来。",
	"你感到自己和天地融为一体，全身清爽如浴春风，忍不住舒畅的呻吟了一声，缓缓睁开了眼睛。"
}
local dzHaltMsg = {
	"你面色一沉，迅速收气，站了起来。",
	"你双眼一睁，极速压下内息站了起来。",
	"你周身微微颤动，长出口气，站了起来。",
	"你眉头一皱，急速运气，把手放了下来。",
	"你内息一转，迅速收气，停止了内息的运转。",
	"你内息一转，迅速收气，缓缓收功站了起来。",
	"你双掌一分，屈掌握拳，两股真气迅速交汇消融。",
	"你匆匆将内息退了回去，吸一口气缓缓站了起来。",
	"你长出一口气，将内息急速退了回去，站了起来。",
	"你突然双手向胸前一合,压住腹中内息,凌空越起。",
	"你心神一动，将内息压回丹田，双臂一振站了起来。",
	"你双掌一分，平摊在胸，迅速收气，停止真气的流动。",
	"你猛的睁开双眼，双手迅速回复体侧，仔细打量四周。",
	"你双眼缓缓闭合，片刻猛地睁开，两道绿光急射而出。",
	"你微一簇眉，将内息压回丹田，长出一口气，站了起来。",
	"你双眼一睁，眼中射出一道精光，接着阴阴一笑，站了起来。",
	"你感到烦躁难耐，只得懈了内息，轻吁口气，身上涔涔透出层冷汗。"
}
local dzFailMsg = {
	"你现在正忙着呢。",
	"你要花多少气练功？",
	"你至少需要\\S+点的气来打坐！",
	"你刚施用过内功，不能马上打坐。",
	"战斗中不能练内功，会走火入魔。",
	"你感到体内气息乱窜，无法聚气打坐！",
	"你现在精不够，无法控制内息的流动！",
	"你现在全身积满内力，无法再继续打坐了。",
	"你没有那么多的气来产生内息运行全身经脉。",
}
local dzLeaveMsg = {
	"此地不宜修练！",
	"你还是专心拱猪吧！",
	"你无法静下心来修炼。",
	"这里不准战斗，也不准打坐。",
	"卧室不能打坐，会影响别人休息。",
}
local tnFailMsg = {
	"你现在正忙着呢！",
	"你要花多少精修行？",
	"你现在精不足，无法修行精力！",
	"你感到体内气息乱窜，无法聚气吐纳！",
	"战斗中吐纳, 太小看对手了。想找死！",
	"你现在身体状况太差了，无法集中精神！",
	"你的内功修行还没有高到能如此精确控制！",
	"你现在全身积满精力，无法再继续修行了。",
	"你必须先用 enable 选择你要用的特殊内功。",
}
local tnLeaveMsg = {
	"你还是专心拱猪吧！",
	"你无法静下心来修炼。",
	"这里不准战斗，也不准吐纳。",
	"卧室不能吐纳，会影响别人休息。",
}
local healMsg = {
	"良久，你感觉通过自己的内息运行，身上的伤势已经全好了。",
	"你并没有受伤！",
}
local healHaltMsg = {
	"你心头一动，急忙吐气纳息，硬生生将内息压了下去。",
}
local healFailMsg = {
	"战斗中运功疗伤？找死吗？",
	"你对本草术理的研究还不够，不能疗伤。",
	"你还没有选择你要使用的内功。",
	"你的内功等级还太低，不能运功疗伤。",
	"你的内力修为不够。",
	"你的真气不够。",
	"你并没有受伤！",
	"你已经受伤过重，经受不起真气震荡！",
}

function isFight()
	local noFight = {
		"你还是专心拱猪吧！",
		"你要花多少精修行？",
		"你无法静下心来修炼。",
		"这里不准战斗，也不准吐纳。",
		"你现在精不足，无法修行精力！",
		"卧室不能吐纳，会影响别人休息。",
		"你感到体内气息乱窜，无法聚气吐纳！",
		"你现在身体状况太差了，无法集中精神！",
		"你现在全身积满精力，无法再继续修行了。",
		"你的内功修行还没有高到能如此精确控制！",
		"你必须先用 enable 选择你要用的特殊内功。",
		"你现在手脚戴着镣铐，不能做出正确的姿势来吐纳。",
	}
	while true do
		addListener("^(" .. table.concat(noFight,"|") .. ")$", "s:return false", "noFight", trigger_flag.OmitFromOutput)
		addListener("^战斗中吐纳, 太小看对手了。想找死！$", "s:return true", "noFight", trigger_flag.OmitFromOutput)
		addListener("^你现在正忙着呢！$","s:return 'busy'", "noFight", trigger_flag.OmitFromOutput)
		hide("tuna")
		local status = listen()
		if status == "busy" then
			wait(500)
		else
			return status
		end
	end
end

function isBusy()
	local nobusy = {
		"你还是专心拱猪吧！",
		"你要花多少精修行？",
		"这里不准战斗，也不准吐纳。",
		"你现在精不足，无法修行精力！",
		"卧室不能吐纳，会影响别人休息。",
		"你感到体内气息乱窜，无法聚气吐纳！",
		"战斗中吐纳, 太小看对手了。想找死！",
		"你现在身体状况太差了，无法集中精神！",
		"你现在全身积满精力，无法再继续修行了。",
		"你的内功修行还没有高到能如此精确控制！",
		"你必须先用 enable 选择你要用的特殊内功。",
		"你现在手脚戴着镣铐，不能做出正确的姿势来吐纳。",
	}
	addListener("^(" .. table.concat(nobusy,"|") .. ")$", "s:return 'free'", "waitbusy", trigger_flag.OmitFromOutput)
	addListener("^你现在正忙着呢！$","s:return 'busy'", "waitbusy", trigger_flag.OmitFromOutput)
	addListener("^你无法静下心来修炼。$", "s:return 'halt'", "waitbusy", trigger_flag.OmitFromOutput)
	hide("tuna")
	local status = listen()
	if status == "free" then
		return false
	elseif status == "halt" then
		hide("halt")
		addListener("^你现在不忙。$", "s:return true", "halt")
		addListener("^你现在很忙，停不下来。$", "s:return false", "halt")
		if listen() then
			return false
		else
			return true
		end
	else
		return true
	end
end

function waitbusy()
	while isBusy() do
		wait(500)
	end
end

function waitjob()
	if isSafe() then
		wait(2000)
		return false
	end
	local _hp = hp()
	local max
	if _hp.max_neili >= _hp.neili_limit1 then
		max = _hp.max_neili * 2 - _hp.neili - 1
	end
	local work
	work = dq(_hp, max)
	if not work then
		work = tj(_hp)
	end
	if not work and _hp.neili < 20 then
		wait(2000)
	end
end

function waitperform()
	while true do
		e("perform none")
		set("waitperform")
		addListener("^你所使用的外功中没有这种功能。$", "s:return true", "waitperform")
		addSetListener("waitperform", "waitperform")
		if listen() == "waitperform" then
			wait(500)
		else
			break
		end
	end
end

function leaveNoFightRoom()
	e("fight")
	addListener("^这里禁止战斗。$", "s:return false", "outNfr", trigger_flag.OmitFromOutput)
	addListener("^你想攻击谁？$", "s:return true", "outNfr", trigger_flag.OmitFromOutput)
	if listen() then
		return true
	else
		randomMove(here().exits)
		wait(500)
		return leaveNoFightRoom()
	end
end

function tn(cost)
	if cost < 10 then
		log.error("tuna cost error " .. cost)
		return false
	end
	waitbusy()
	e("tuna " .. cost)
	addListener("^你吐纳完毕，睁开双眼，站了起来。$","s:return 'ok'","tn")
	addListener("^(" .. table.concat(tnFailMsg,"|") .. ")$","s:return 'fail'","tn")
	addListener("^(" .. table.concat(tnLeaveMsg,"|") .. ")$","s:return 'leave'","tn")
	addListener("^你猛吸几口大气，站了起来。$","s:return 'halt'","tn")
	addListener("^你必须先用 enable 选择你要用的特殊内功。$", "s:return 'enable'", "tn")
	local result = listen()
	if result == "leave" then
		leaveNoFightRoom()
		return tn(cost)
	elseif result == "enable" then
		e("jifa all")
		jifa()
		wait(2000)
		return result
	else
		return result
	end
end

function dz(cost)
	if cost < 10 then
		log.error("dazuo cost error " .. cost)
		return false
	end
	waitbusy()
	e("dazuo " .. cost)
	addListener("^(" .. table.concat(dzMsg,"|") .. ")$","s:return 'ok'","dz")
	addListener("^(" .. table.concat(dzFailMsg,"|") .. ")$","s:return 'fail'","dz")
	addListener("^(" .. table.concat(dzHaltMsg,"|") .. ")$","s:return 'halt'","dz")
	addListener("^(" .. table.concat(dzLeaveMsg,"|") .. ")$", "s:return 'leave'", "dz")
	addListener("^你必须先用 enable 选择你要用的特殊内功。$", "s:return 'enable'", "dz")
	local result = listen()
	if result == "leave" then
		leaveNoFightRoom()
		return dz(cost)
	elseif result == "enable" then
		e("jifa all")
		jifa()
		wait(2000)
		return result
	else
		return result
	end
end

function heal(_hp)
	_hp = _hp or hp()
	if mjHeal(_hp) then
		_hp = hp()
	end
	if xmhHeal(_hp) then
		_hp = hp()
	end
	if babyHeal(_hp) then
		_hp = hp()
	end
	if _hp.qi_limit > 98 then
		return "needless"
	end
	if _hp.qi_limit < 35 then
		local _i = i()
		if _i["chantui yao"] == 0 then
			local _score = score()
			if _score.bank > 5 then
				if _i["gold"] < 3 then
					go("大理钱庄", "大理城")
					money(0, 50, 3)
				end
				go("药铺", "大理城")
				if not buy("chantui yao") then
					return false
				end
			else
				return false
			end
		end
		e("fu chantui yao")
		set("heal")
		addListener("^你敷上一副蝉蜕金疮药，顿时感觉伤势好了不少。$", "s:return true", "heal")
		addSetListener("heal", "heal")
		if listen() == "heal" then
			return false
		else
			return heal()
		end
	end
	if _hp.max_neili >= 200 and getCha().force.level >= 50 and getCha().medicine.level >= 30 then
		if _hp.neili >= 50 then
			waitbusy()
			goNofightRoom()
			e("yun heal")
			addListener("^(" .. table.concat(healMsg,"|") .. ")$","s:return 'ok'","heal")
			addListener("^(" .. table.concat(healFailMsg,"|") .. ")$","s:return 'fail'","heal")
			addListener("^你正在运功疗伤，却发现自己所剩的内力不够了。$","s:return 'wound'","heal")
			addListener("^你已经受伤过重，经受不起真气震荡！$","s:return 'error'","heal")
			addListener("^(" .. table.concat(healHaltMsg,"|") .. ")$","s:return 'halt'","heal")
			local result = listen()
			if result == "error" then
				wait(2000)
			end
			if result == "ok" then
				return true
			else
				return false
			end
		elseif _hp.qi > _hp.min_dz * 2 and _hp.jing7 then
			if isSafe() then
				go("达摩院", "少林寺")
			end
			dz(_hp.min_dz)
			if isCycle() then
				e("yun qi")
			end
			return heal()
		end
	else
		return false
	end
end

function xmhHeal(_hp)
	_hp = _hp or hp()
	local xmh = Masters["薛慕华"]
	if getExp() < 500000 or _hp.qi_limit > 90 or xmh.die then
		return false
	end
	return xmhHeal0()
end

function xmhHeal0()
	local xmh = Masters["薛慕华"]
	go("正厅", "柳宗镇")
	local id = getId("薛慕华")
	if not id then
		return false
	end
	local xmhSkills = xmh.skills
	local teachSkills = {}
	for k, v in pairs(getCha()) do
		local xmhLevel = xmhSkills[k] and xmhSkills[k].level or 0
		if v.level >= 100 and v.level - xmhLevel >= 50 then
			teachSkills[k] = v
		end
	end
	if teachXmh(teachSkills) then
		e("ask xue muhua about 疗伤")
		waitbusy()
		return true
	else
		return false
	end
end

function mjHeal(_hp)
	if getParty() ~= "明教" or getScore().master ~= "张无忌" or (_hp.qi_limit >= 100 and _hp.jing_limit >=100) then
		return false
	end
	go("mingjiao/hdg/xfang4")
	e("ask hu qingniu about 疗伤")
	waitbusy()
	return true
end

function babyHeal(_hp)
	if getExp() > 50000 or _hp.qi_limit >= 100 then
		return false
	end
	go("药铺", "扬州城")
	e("ask yaopu laoban about 疗伤")
	waitbusy()
	return true
end

function teachXmh(skills, teachCount)
	if count(skills) == 0 then
		e("yun qi")
		if getExp() > 2000000 then
			Masters["薛慕华"].die = true
			pass("xue muhua")
		end
		return false
	end
	local id, skill = randomGet(skills)
	skills[id] = nil
	teachCount = teachCount or 0
	e("#" .. (5 - teachCount) .." teach xue " .. id)
	set("teach")
	while true do
		addListener("^你向薛慕华仔细地解说。$", "s:return false", "teach")
		addSetListener("teach", "teach")
		if listen() then
			break
		else
			teachCount = teachCount + 1
		end
	end
	if teachCount >= 5 then
		return true
	else
		wait(500)
		return teachXmh(skills, teachCount)
	end
end

function healJing(_hp)
	_hp = _hp or hp()
	if _hp.jing_limit > 90 then
		return "needless"
	end
	if mjHeal(_hp) then
		_hp = hp()
	end
	local _i = i()
	if _i["liaojing dan"] == 0 then
		local _score = score()
		if _score.bank > 2 then
			if _i["silver"] < 80 then
				go("大理钱庄", "大理城")
				money(0,80)
			end
			go("药铺", "大理城")
			if not buy("liaojing dan") then
				return false
			end
		else
			return false
		end
	end
	e("fu liaojing dan")
	set("healJing")
	addListener("^你服下一颗疗精丹，恢复了不少的精血。$", "s:return true", "healJing")
	addSetListener("healJing", "healJing")
	if listen() == "healJing" then
		return false
	else
		return true
	end
end

function sleep()
	waitbusy()
	addListener("^你一觉醒来，觉得精力充沛，该活动一下了。$","s:return 'ok'","sleep")
	addListener("^你一觉醒来，由于睡得太频繁，精神不是很好。$","s:return 'fail'","sleep")
	e("sleep")
	return listen()
end

function isCycle()
	local MIN_CYCLE_FORCE = 150
	return getJifaForce() >= MIN_CYCLE_FORCE
end

function dq(_hp, max)
	if not getJifa().force.jifaName then
		jifa()
		return false
	end
	_hp = _hp or hp()
	if _hp.neili >= 20 then
		if _hp.jing < _hp.jing7 and _hp.eff_jing - _hp.jing >= 20 then
			e("yun jing")
			return dq(nil, max)
		end
		if not _hp.dq then
			if isCycle() and _hp.eff_qi - _hp.qi >= 10 then
				e("yun qi")
				return true
			else
				return false
			end
		end
		return dq0(_hp, max)
	else
		if _hp.jing < _hp.jing7 or not _hp.dq then
			return false
		else
			return dq0(_hp, max)
		end
	end
end

function dq0(_hp, max)
	max = max or _hp.max_qi
	local q = _hp.dq > max and max or _hp.dq
	if q < _hp.min_dz then
		if _hp.eff_qi - _hp.qi >= 10 and _hp.neili >= 20 and isCycle() then
			e("yun qi")
			return true
		else
			return false
		end
	end
	dz(q)
	if isCycle() then
		e("yun qi")
	end
	return true
end

function tj(_hp, max)
	if not getJifa().force.jifaName then
		return false
	end
	_hp = _hp or hp()
	if _hp.neili >= 20 then
		if _hp.qi < _hp.qi7 and _hp.eff_qi - _hp.qi >= 10 then
			e("yun qi")
			return tj(nil, max)
		end
		if not _hp.jing3 and _hp.eff_jing - _hp.jing >= 20 then
			if isCycle() then
				e("yun jing")
				return true
			else
				return false
			end
		end
		return tj0(_hp, max)
	else
		if _hp.qi < _hp.qi7 or not _hp.jing3 then
			return false
		else
			return tj0(_hp, max)
		end
	end
end

function tj0(_hp, max)
	max = max or _hp.max_jing
	local j = _hp.jing3 > max and max or _hp.jing3
	if j < 10 then
		return false
	end
	tn(j)
	if isCycle() then
		e("yun jing")
	end
	return true
end

function db(jingli)
	if isSafe() then
		go("达摩院", "少林寺")
	end
	while true do
		local _hp = hp()
		local _healJing = healJing(_hp)
		local _heal = heal(_hp)
		if not _healJing or not _heal then
			wait(2000)
			if _hp.food < 50 or _hp.water < 50 then
				full(_hp)
				goSafeAddr()
			end
			return db(jingli)
		end
		if _hp.neili >= 20 and _hp.eff_jingli - _hp.jingli >= 10 then
			e("yun jingli")
			return db(jingli)
		end
		if dbCheck(_hp, jingli) then
			return true
		end
		local work = dq(_hp, _hp.max_neili * 2 - _hp.neili - 1) or tj(_hp, _hp.eff_jingli * 2 - _hp.jingli - 1)
		if not work then
			wait(2000)
		end
	end
end

function dbCheck(_hp, jingli)
	return _hp.eff_qi - _hp.qi < 10 and _hp.full_neili and (not jingli or _hp.full_jingli)
end

function dbj()
	db(true)
end

function saveGoods()
	local saver = getSaver()
	local saves = {
		"weilan's hammer", "canpian", "jin he", "yu",
	}
	e("fu wan;fu dan;read book")
	if saver then
		go("厨房", "长乐帮")
		e("#10 jiancha jinhe")
		for _, goods in pairs(saves) do
			e("give " .. goods .. " to " .. saver)
		end
		wait(2000)
	end
end

function cunGoods()
	local goods = {
		"weilan's hammer", "yitian canpian", "tulong canpian", "you yu", "ban yu", "liu yu",
		"du yu", "mi yu", "nan yu", "zhi yu", "xiangni yu", "lvyu sui", "fenglei yu",
	}
	local _i = i()
	for _, v in pairs(goods) do
		if _i[v] > 0 then
			go("杂货铺", "扬州城")
			e("cun " .. v)
		end
	end
	if _i.silver > 200 or _i.coin > 100 or _i.gold > 10 or _i["thousand-cash"] > 0 then
		go("天阁斋")
		money(0,50)
		return
	end
end

function getSaver()
	return getHelper("telldummy")
end

function getManager()
	return manager or loadstring("return " .. tostring(getInit():GetVariable(getSite() .. "manager")))()
end

function getGuard()
	return getHelper("guard")
end

function getHelper(var)
	local guards = {}
	local mySite = getSite()
	for _, name in pairs(GetWorldList()) do
		local id, site = string.gmatch(name, "(%w+)_(%w+)")()
		if site == mySite then
			local world = GetWorld(name)
			if world:GetVariable(var) then
				table.insert(guards, id)
			end
		end
	end
	return unpack(guards)
end

function isHelper(type)
	return GetVariable(type)
end

function ggsOver()
	if not isVip() then
		return false
	end
	local hour, minute, status, leftTime = time(true)
	if not status then
		return false
	else
		go("茶馆", "大理城")
		e("ask ying gu about over")
		wait(3000)
		hour, minute, status, leftTime = time(true)
		if status then
			return ggsOver()
		else
			return true
		end
	end
end

function ggsStart()
	if not isVip() then
		return false
	end
	local hour, minute, status, leftTime = time(true)
	if status or not leftTime then
		return false
	else
		go("茶馆", "大理城")
		wait(3000)
		e("ask ying gu about start")
		hour, minute, status, leftTime = time(true)
		if not status then
			ggsStart()
		end
		return true
	end
end

function time(force)
	local lastTime = getVariable("lastTime")
	local hour = getVariable("hour")
	local minute = getVariable("minute")
	local status = getVariable("status") or false
	local leftTime = getVariable("leftTime")
	local status, leftTime
	if force or not lastTime or not hour or not minute or os.time() - lastTime > 30 then
		setVariable("lastTime", os.time())
		e("time")
		hour, minute = listener([[^现在是书剑\S{4}年\S+月\S+日(\S{2})时(?:(\S{2})刻|正)。$]], "s:return wildcards[1], wildcards[2]")
		hour = getHour(hour)
		minute = getMinute(minute)
		if minute >= 60 then
			hour = hour + 1
			minute = minute - 60
		end
		setVariable("hour", hour)
		setVariable("minute", minute)
		addListener([[^鬼谷算术状态：当前你没有进行鬼谷算术，本周还可以使用(\S+)。$]], "s:return false, wildcards[1]", "gg")
		addListener([[^鬼谷算术状态：已经使用\S+,本周还可以使用(\S+)。$]], "s:return true, wildcards[1]", "gg")
		addListener([[^鬼谷算术状态：你不是贵宾，不能使用鬼谷算术，如何成为贵宾请看\( help vip \)。$]], "s:return false, '零秒'", "gg")
		status, leftTime = listen()
		leftTime = leftTime ~= "零秒"
		setVariable("status", status)
		setVariable("leftTime", leftTime)
	end
	return hour, minute, status, leftTime
end

function minutes()
	local hour, minute = time()
	local minutes = hour * 60 + minute
	return minutes
end

function getHour(hour)
	local hours = {"子", "丑", "寅", "卯", "辰", "巳", "午", "未", "申", "酉", "戌", "亥"}
	for k, v in pairs(hours) do
		if v == hour then
			return ((k * 2) + 21) % 24
		end
	end
end

function getMinute(minute)
	if not minute then
		return 0
	else
		return trans(minute) * 30
	end
end

function isTelldummy()
	return GetVariable("telldummy")
end

function isGuard()
	return GetVariable("guard")
end

function tune()
	if isTelldummy() or table.getn(GetWorldList()) == 2 then
		e("tune all;tune chat;tune rumor;tune party;tune sj;tune declare;tune irc")
	else
		e("tune all;tune irc")
	end
end

function findCorpse(npc, start)
	local i = start or 1
	while true do
		e("l corpse " .. i)
		addListener([[^(\S+)的尸体\(Corpse\)$]], "s:return wildcards[1]", "gc")
		addListener([[^无头尸体\(Corpse\)$]], "s:return 'none'", "gc")
		addListener([[^腐烂的(男|女)尸\([\w ]+\)$]], "s:return 'none'", "gc")
		addListener("^你要看什么？$", "s:return false", "gc")
		local result = listen()
		if not result then
			return false
		end
		if result == npc then
			return i
		else
			i = i + 1
		end
	end
end

function getId(npc, corpse)
	if not npc then
		return getScore().id
	end
	e("l")
	local key = set()
	addListener([[^  .*?]] .. npc .. [[\(([\w ]+)\)(?: <(发呆\S+|战斗中|昏迷不醒)>)?$]], "s:return string.lower(wildcards[1]), wildcards[2]", "getId")
	addListener([[^  ]] .. npc .. [[正在运功疗伤$]], "s:return 'heal'", "getId")
	if corpse then
		addListener([[^  ]] .. npc .. [[的尸体\(Corpse\)$]], "s:return 'corpse', 'die'", "getId")
	end	
	addSetListener(key, "getId")
	local id, status = listen()
	if id == 'heal' then
		local things = lookGoal()
		for k, v in pairs(things) do
			if v == npc then
				return k, "heal"
			end
		end
		return nil, "heal"
	end
	if id == key then
		return false
	end
	if not status then
		status = "general"
	elseif status == "战斗中" then
		status = "fight"
	elseif status == "昏迷不醒" then
		status = "faint"
	elseif string.find(status, "发呆") then
		status = "idle"
	end
	return id, status
end

function haveCutweapon(_i)
	local _i = _i or i()
	local cutweapon, partyCutweapon = getCutweapon()
	if _i[cutweapon] == 0 and _i[partyCutweapon] == 0 then
		return false
	else
		return true
	end
end

function getCorpse(npc, goods, start)
	waitbusy()
	local n = findCorpse(npc)
	if not n then
		return false
	end
	e("h;get corpse " .. n)
	if goods then
		for _, v in pairs(goods) do
			e("get " .. v .. " from corpse")
		end
	end
	set("gc")
	addListener([[^你将(\S+)的尸体扶了起来背在背上。$]], "s:return 'ok', wildcards[1]", "gc")
	addListener([[^(\S+)的尸体对你而言太重了。$]], "s:return 'overweight', wildcards[1]", "gc")
	addSetListener("gc", "gc")
	local result, name = listen()
	if result == "gc" then
		return false
	elseif result == "ok" then
		if name == npc then
			return "corpse"
		else
			e("h;drop corpse")
			return getCorpse(npc, goods, n + 1)
		end
	elseif result == "overweight" then
		if name == npc then
			log.error(npc .. "的 corpse 拿不动，身上有" .. save(i()))
			e("quit")
			error()
		else
			return getCorpse(npc, goods, n + 1)
		end
	end
end

function qieCorpse(npc, goods, start)
	waitbusy()
	if not getWeapon() then
		waitperform()
	end
	local i = findCorpse(npc, start)
	if not i then
		return false
	end
	e("h;wield " .. getCutweapon())
	if goods then
		for _, v in pairs(goods) do
			e("get " .. v .. " from corpse " .. i)
		end
	end
	e("qie corpse " .. i)
	set("qc")
	addListener("^(乱切别人杀的人干嘛啊？|那具尸体已经没有首级了。)$", "s:return 'wrong'", "qc")
	addListener([[^只听“咔”的一声，你将(\S+)的首级斩了下来，提在手中。$]], "s:return wildcards[1]", "qc")
	addSetListener("qc", "qc")
	local result = listen()
	waitbusy()
	e("h")
	unwieldCutweapon()
	if result == "wrong" then
		return qieCorpse(npc, goods, i + 1)
	elseif result == "qc" then
		return false
	elseif result == npc then
		return "shouji"
	else
		e("drop shouji")
		return qieCorpse(npc, goods, i + 1)
	end
end

function all(...)
	for k, v in pairs(GetWorldList()) do
		GetWorld(v):Execute(table.concat({...}," "))
	end
end

function world(worldId, ...)
	getWorld(worldId):Execute(table.concat({...}, " "))
end

function site(s, ...)
	for k, v in pairs(GetWorldList()) do
		local _, n = string.find(v, s)
		if n and n == string.len(v) then
			GetWorld(v):Execute(table.concat({...}," "))
		end
	end
end

function buy(goods)
	e("buy " .. goods)
	set("buy")
	addListener([[^你以\S+的价格从\S{4,8}那里买下了\S+。$]], "s:return 'ok'", "buy")
	addListener("^哟，抱歉啊，我这儿正忙着呢……您请稍候。$", "s:return 'busy'", "buy")
	addSetListener("buy", "buy")
	local result = listen()
	if result == "ok" then
		return true
	elseif result == "busy" then
		wait(1000)
		return buy(goods)
	else
		return false
	end
end

function full(_hp, force)
	if _hp and type(_hp) ~= "table" then
		return full(nil, true)
	end
	_hp = _hp or hp()
	if (_hp.food >= 80 and _hp.water >= 80) or
		(_hp.food >= 50 and _hp.water >= 50 and not force) then
		return false
	end
	if _hp.food >= _hp.water then
		fullWater(_hp)
		fullFood(_hp)
	else
		fullFood(_hp)
		fullWater(_hp)
	end
	saveGoods()
	return true
end

function fullFood(_hp)
	if fullFoodWd(_hp) then
		return true
	else
		return fullFoodClb(_hp)
	end
end

function fullFoodWd(_hp)
	_hp = _hp or hp()
	if _hp.food < 80 and go("茶亭", "武当山") then
		if getId("桃花姑娘") then
			e("sit chair;knock table;get mi tao;#4 eat mi tao;drop mi tao;get dawan cha;drop dawan cha")
			wait(2000)
			fullFoodWd()
			return true
		else
			return false
		end
	else
		return false
	end
end

function fullFoodClb(_hp)
	_hp = _hp or hp()
	if _hp.food < 80 and go("厨房","长乐帮") then
		e("get rice;#4 eat rice;drop rice")
		e("ask xiao tong about 食物")
		waitbusy()
		e("get rice;#4 eat rice;drop rice")
		wait(2000)
		fullFoodClb()
		return true
	else
		return false
	end
end

function fullWater(_hp)
	_hp = _hp or hp()
	if _hp.water < 80 then
		go("会客室")
		e("#4 drink")
		wait(2000)
		fullWater()
		return true
	else
		return false
	end
end

function money(coin,silver,gold,cash)
	e("qu")
	set("money")
	addListener([[^命令格式：withdraw\|qu <数量> <货币单位>$]],"s:return 'ok'","money")
	addListener([[^[^\s->]+说道：“哟，抱歉啊，我这儿正忙着呢……您请稍候。”$]],"s:return 'ok'","money")
	addSetListener("money","money")
	if listen() == "money" then
		return false
	end
	local _i = i()
	if not holdMoney(_i["thousand-cash"],cash,"thousand-cash") or
		not holdMoney(_i.gold,gold,"gold") or
		not holdMoney(_i.silver,silver,"silver") or
		not holdMoney(_i.coin,coin,"coin") then
		set("money")
		addListener([[^您目前已有存款\S+，再存那么多的钱，小号可难保管了。$]],"s:return 'full'","money")
		addListener([[^你没有存那么多的钱。$]],"s:return 'fail'","money")
		addSetListener("money", "money")
		local result = listen()
		if result == "fail" then
			log.error("没有钱可以取了！")
		end
		if result == "fail" or result == "full" then
			cash = false
			gold = false
			silver = false
			_i = i()
			if _i.gold >= 10 then
				e("duihuan " .. (math.floor(_i.gold / 10) * 10) .. " gold to cash")
			end
			if _i.silver >= 1000 then
				e("duihuan " .. (math.floor(_i.silver / 1000) * 1000) .. " silver to cash")
			elseif _i.silver >= 100 then
				e("duihuan " .. (math.floor(_i.silver / 100) * 100) .. " silver to gold")
			end
			return money(coin,silver,gold,cash)
		end
		wait(1000)
		return money(coin,silver,gold,cash)
	end
	score()
	return true
end

function holdMoney(now,hold,type)
	if hold == false then
		return true
	end
	hold = hold or 0
	if hold - now < 0 then
		e("cun " .. (now - hold) .. " " .. type)
	elseif hold - now > 0 then
		e("qu " .. (hold - now) .. " " .. type)
	elseif hold - now == 0 then
		return true
	end
end

function bigChat(word)
	local w = {}
	local n = 1
	local index = 1
	for i=1,string.len(word) do
		local c = string.sub(word,n,i)
		if string.find(c,"%w") or i == n + 1 then
			w[index] = getBigWords()[c]
			n = i + 1
			index = index + 1
		end
	end
	local ids = getSiteIds()
	for i=1,16 do
		local line = {}
		for j=1,table.getn(w) do
			line[j] = w[j][i]
		end
		local id = ids[i]
		if id then
			send("tell " .. id .. " chat",unpack(line))
			wait(100)
		end
	end
end

function waitSeconds(id)
	local time = readFile(GetInfo(57) .. "time/" .. id)
	if not time then
		return false
	end
	local seconds = tonumber(time) - os.time()
	return seconds > 0 and seconds or false
end

local telling = false
local tellfail = 0
function telldummy()
	if tellfail > 2 then
		tellfail = 0
		telling = false
	end
	if isTelldummy() and not telling then
		go("厨房", "长乐帮")
		e("unset no_accept")
		telling = true
		full()
		cunGoods()
		getJinhe()
		local _sets = sets()
		local tellInit = _sets["tell_init"]
		if tellInit and _G[tellInit] then
			_G[tellInit]()
		end
		local ids = getSiteIds()
		local allquit = true
		for _, v in pairs(ids) do
			e("tell " .. v .. " check " .. v)
			set("tell" .. v)
			addListener([[^你告诉\S{4,8}：check ]] .. v .. [[\n可是\S{4,8}已经发呆有(\S+)分钟了，恐怕不能立刻回答你。$]], "s:return 'idle', wildcards[1]", "tell")
			addListener([[^没有这个人。$]], "s:return 'offline'", "tell")
			addListener([[^这个人断线了。$]], "s:return 'break'", "tell")
			addSetListener("tell" .. v, "tell")
			local result, time = listen(nil, function() return "timeout" end)
			local w = getWorld(v)
			if w then
				if result == "offline" then
					local id = w:GetInfo(2)
					local seconds = waitSeconds(id)
					if seconds then
						log.debug(v .. " : 等待上线")
					else
						log.warn(v .. " ： 不在线")
						if w:GetConnectDuration() > 60 then
							w:Disconnect()
						end
					end
				else
					allquit = false
					if result == "idle" and trans(time) >= 3 then
						log.error(v .. " ：在发呆呢")
						w:Execute("init")
						if GetVariable("activate") then
							w:Activate()
						end
					elseif result == "break" then
						log.warn(v .. " ：断线了")
						if w:GetConnectDuration() > 60 then
							w:Disconnect()
						end
					elseif result == "timeout" then
						log.warn(v .. " : 超时了")
					end
				end
			end
		end
		if allquit then
			checkquit()
		end
		telling = false
		return true
	else
		tellfail = tellfail + 1
		return false
	end
end

function getSite()
	local site = getVariable("site")
	if not site then
		site = GetVariable("site")
		setVariable("site", site)
	end
	return site
end

function getSiteIds()
	local mySite = getSite()
	local ids = {}
	for _, name in pairs(GetWorldList()) do
		local id, site = string.gmatch(name, "(%w+)_(%w+)")()
		if id ~= myId() and site == mySite then
			table.insert(ids, id)
		end
	end
	return ids
end

function goSafeAddr()
	local safeAddrs = {
		{name = "柴房", city = "长乐帮"},
		{name = "卧室", city = "长乐帮"},
		{name = "花园", city = "长乐帮"},
		{name = "甬道", city = "长乐帮"},
		{name = "石室", city = "长乐帮"},
		{name = "八角亭", city = "长乐帮"},
		{name = "小屋", city = "长乐帮"},
	}
	local _, addr = randomGet(safeAddrs)
	go(addr.name, addr.city)
end

function fullNeili()
	e("unset 积蓄")
	goSafeAddr()
	repeat
		checkquit()
		mjKar()
		local _hp = hp()
		if _hp.eff_qi < _hp.max_qi then
			return heal()
		elseif _hp.max_jing - _hp.eff_jing > _hp.max_jing / 10 then
			return healJing()
		end
		if full(_hp) then
			goSafeAddr()
		end
		if not dq(_hp) and not tj(_hp) then
			wait(5000)
		end
	until _hp.max_neili > _hp.neili_limit1 -50
end

function fullJingli()
	e("unset 积蓄")
	goSafeAddr()
	repeat
		checkquit()
		mjKar()
		local _hp = hp()
		if _hp.eff_qi < _hp.max_qi then
			return heal()
		elseif _hp.max_jing - _hp.eff_jing > _hp.max_jing / 10 then
			return healJing()
		end
		if full(_hp) then
			goSafeAddr()
		end
		if not dq(_hp, _hp.max_neili * 2 - _hp.neili - 1) then
			if not tj(_hp) and _hp.neili < 20 then
				wait(5000)
			else
				e("yun jing")
			end
		end
	until _hp.eff_jingli > _hp.max_jingli -50
end

uniques = {
	["bencao gangmu"] = true,
	["bencao jizhu"] = true,
}
function ticktime()
	for _, v in pairs(Masters) do
		v.die = false
	end
	for k in pairs(uniques) do
		uniques[k] = true
	end
end

function OnNoFood()
	run(noFood)
end

function noFood()
	local _hp = hp()
	if _hp.jing_limit < 50 or _hp.qi_limit < 50 then
		quit()
	else
		reset()
		init()
	end
end

function OnNoWater()
	OnNoFood()
end

function OnLongTime(name, line, wildcards)
	run(longTime, wildcards[1])
end

function longTime(time)
	if isVip() then
		return false
	end
	if not time then
		e("yun jingli")
		quit()
	else
		time = trans(time)
		if time > 45 then
			safequit()
		end
	end
end

function addShen(shen)
	-- 支持 shen > 0
	shen = shen or 0
	if type(shen) == "string" then
		shen = tonumber(shen)
	end
	posShen()
	local _hp = hp()
	if _hp.shen < shen then
		if eatZhengqi() then
			return addShen(shen)
		else
			return false
		end
	else
		return true
	end
end

function eatZhengqi()
	local _i = i()
	if _i["zhengqi dan"] == 0 then
		if getScore().bank < 5 then
			log.error("没有钱买正气丹")
			wait(2000)
			return false
		else
			go("大理钱庄", "大理城")
			money(0, 50, 2)
		end
		go("药铺", "大理城")
		if not buy("zhengqi dan") then
			return false
		end
	end
	e("fu zhengqi dan")
	local _i = i()
	if _i["zhengqi dan"] == 0 then
		return true
	else
		wait(2000)
		return eatZhengqi()
	end
end

function posShen()
	if hp().shen >= 0 then
		return true
	end
	full()
	go("岩石", "大雪山")
	while hp().shen < 0 do
		wait(2000)
		e("#20 mianbi")
	end
	return true
end

function getBigWord()
	local word = {}
	for i=1, 16 do
		word[i] = listener("^.*$", "s:return wildcards[0]")
	end
	return remoteInvoke("recognise", word)
end

function getRoomsByFirstWord(info)
	local world = info.world
	local name = info.name
	local city = info.city
	local type = info.type or "all"
	local isLookCity = type == "all" or type == "look"
	local isTaskCity = type == "all" or type == "task"
	if string.find(name,"/") then
		return {name}
	end
	local isNameFw = string.find(name,"^%l+$")
	local isCityFw = city and string.find(city,"^%l+$")
	local rooms = {}
	for id,room in pairs(map.rooms) do
		local roomName = isNameFw and getFirstWord(room.name) or room.name
		if roomName == name then
			if not city then
				table.insert(rooms,id)
			else
				local lookCity = isCityFw and getFirstWord(getLookCity(room.id)) or getLookCity(room.id)
				local taskCity = isCityFw and getFirstWord(getCity(room.id)) or getCity(room.id)
				if (isLookCity and city == lookCity) or (isTaskCity and city == taskCity) or (room.outdoor and room.outdoor == city) then
					table.insert(rooms,id)
				end
			end
		end
	end
	if count(rooms) == 0 then
		log.debug(world .. " : 没找到房间：name = " .. name .. " , city = " .. tostring(city) .. " , type = " .. type)
	end
	return rooms
end

function getJobInfo(name, ...)
	local _sets = sets()
	local info = _sets[name]
	if not info then
		return false
	end
	local infos = utils.split(info, ",")
	for k, v in pairs(infos) do
		infos[k] = tonumber(v) or v
	end
	for _, v in pairs({...}) do
		table.insert(infos, _sets[v])
	end
	return unpack(infos)
end

function di()
	autoconnect = false
	Disconnect()
end

function con()
	autoconnect = false
	Connect()
end

function getInfo(...)
	e("alias")
	set("alias")
	local info = ""
	while true do
		addListener([[^(\w+)\s+= (.+)$]], "s:return wildcards[1], wildcards[2]", "alias")
		addSetListener("alias", "alias")
		local key, value = listen()
		if key == "alias" then
			break
		else
			if key == "info" then
				info = value
				break
			end
		end
	end
	local entries = utils.split(info, ",")
	local infos = {}
	for _, entry in pairs(entries) do
		local _, _, k, v = entry:find("(.*)=(.*)")
		if k then
			infos[k] = v
		end
	end
	if ... then
		local result = {}
		for k, v in pairs({...}) do
			result[k] = infos[v] or false
		end
		return unpack(result)
	else
		return infos
	end
end

function setInfo(name, value)
	local infos = getInfo()
	if type(name) == "table" then
		for k, v in pairs(name) do
			infos[k] = v
		end
	else
		infos[name] = value
	end
	setInfos(infos)
end

function delInfo(name)
	local infos = getInfo()
	infos[name] = nil
	setInfos(infos)
end

function setInfos(infos)
	local infoStr = ""
	for name, value in pairs(infos) do
		infoStr = infoStr .. name .. "=" .. value .. ","
	end
	infoStr = string.sub(infoStr, 1, string.len(infoStr) - 1)
	e("alias info " .. infoStr)
end
