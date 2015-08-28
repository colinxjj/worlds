function getXsfh()
	return getStory().xsfh
end

function getFightExp()
	return getVariable("fightExp") or 0
end

function getFightTime()
	return getVariable("fightTime") or 0
end

function getWaitTime()
	return getVariable("waitTime") or 0
end

function getAnswerTime()
	return getVariable("answerTime") or 0
end

local TRY_FIGHT_EXP = 5000
local TRY_FIGHT_TIME = 3600
local TRY_WAIT_TIME = 600
local TRY_ANSWER_TIME = 3600
function xsfh()
	if getXsfh().quest == 2 and getXsfh().fightHu == 3 and getExp() - getXsfh().questExp > 500000 then
		-- e("nick xsfh 2")
	elseif getXsfh().quest == 4 and getXsfh().fightMiao == 3 then
		-- e("nick xsfh 3")
	else
		-- e("nick none")
	end
	if getExp() > 30000 and getXsfh().quest == 1 then
		return xsfh1()
	end
	if getExp() > 300000 and getXsfh().quest == 2 and getXsfh().fightHu < 3
		and (getExp() - getFightExp() > TRY_FIGHT_EXP)
		and (os.time() - getFightTime() > TRY_FIGHT_TIME)
		and (os.time() - getWaitTime() > TRY_WAIT_TIME) then
		return xsfhFightHu()
	end
	if getXsfh().quest == 2 and getXsfh().fightHu == 3 and getExp() - getXsfh().questExp > 500000
		and (os.time() - getAnswerTime() > TRY_ANSWER_TIME) then
		return xsfh2()
	end
	if getXsfh().quest == 3 then
		return xsfh3()
	end
	if getXsfh().quest == 4 and getXsfh().fightMiao < 3 and (getExp() - getFightExp() > TRY_FIGHT_EXP)
		and (os.time() - getFightTime() > TRY_FIGHT_TIME)
		and (os.time() - getWaitTime() > TRY_WAIT_TIME) then
			return xsfhFightMiao()
	end
end

function xsfhFightHu()
	db()
	log.warn("找胡斐较量：已经失败了 " .. getXsfh().fightHu .. " 次")
	cap("找胡斐较量：已经失败了 " .. getXsfh().fightHu .. " 次")
	go("墓地", "黄河流域")
	e("ask hu fei about 较量")
	set("fighthu")
	addListener([[^你向胡斐打听有关『较量』的消息。\n胡斐对着你摇了摇头。\n胡斐说道：「今天先切磋到这里吧，稍后吧。」$]], "s:return 'waittime'", "fighthu")
	addListener([[^你向胡斐打听有关『较量』的消息。\n胡斐对着你摇了摇头。\n胡斐说道：「你武功没什么大的变化，还是抓紧练武去吧。」$]], "s:return 'waitexp'", "fighthu")
	addListener([[^你向胡斐打听有关『较量』的消息。\n胡斐对着你摇了摇头。\n胡斐说道：「刚切磋完，以后切磋吧。」$]], "s:return 'wait'", "fighthu")
	addListener([[^这里没有这个人。$]], "s:return 'wait'", "fighthu")
	addListener([[^一股暖流发自丹田流向全身，慢慢地你又恢复了知觉……$]], "s:return 'fighthu'", "fighthu")
	addListener([[^你急急忙忙地走进了练武场。$]], "s:return 'ok'", "fighthu")
	addSetListener("fighthu", "fighthu")
	local result = listen()
	print(result)
	if result == "fighthu" then
		cap("较量失败")
		return xsfhFightHu()
	elseif result == "wait" then
		cap("胡斐忙")
		setVariable("waitTime", os.time())
		return false
	elseif result == "waitexp" then
		cap("经验增加不够")
		setVariable("fightExp", getExp())
		return false
	elseif result == "waittime" then
		cap("较量时间间隔过短")
		setVariable("fightTime", os.time())
		return false
	elseif result == "ok" then
		cap("较量成功！")
		setVariable("fightExp", getExp())
		setVariable("fightTime", os.time())
		e("unset wimpy;ok")
		listener("突然一道神光笼罩着你，你的精气神竟然全部恢复了！")
		story()
		perform()
		return true
	end
end

function xsfhFightMiao()
	db()
	log.warn("找苗人凤较量：已经失败了 " .. getXsfh().fightMiao .. " 次")
	cap("找苗人凤较量：已经失败了 " .. getXsfh().fightMiao .. " 次")
	go("正厅", "兰州城")
	waitbusy()
	e("ask miao renfeng about 较量")
	set("fightmiao")
	addListener([[^你向苗人凤打听有关『较量』的消息。\n苗人凤对着你摇了摇头。\n苗人凤说道：「今天先切磋到这里吧，稍后吧。」$]], "s:return 'waittime'", "fightmiao")
	addListener([[^你向苗人凤打听有关『较量』的消息。\n苗人凤对着你摇了摇头。\n苗人凤说道：「你武功没什么大的变化，还是抓紧练武去吧。」$]], "s:return 'waitexp'", "fightmiao")
	addListener([[^你向苗人凤打听有关『较量』的消息。\n苗人凤对着你摇了摇头。\n苗人凤说道：「在下现在没有什么心思切磋武功了。」$]], "s:return 'wait'", "fightmiao")
	addListener([[^这里没有这个人。$]], "s:return 'wait'", "fightmiao")
	addListener([[^一股暖流发自丹田流向全身，慢慢地你又恢复了知觉……$]], "s:return 'fightmiao'", "fightmiao")
	addListener([[^你急急忙忙地走进了练武场。$]], "s:return 'ok'", "fightmiao")
	addSetListener("fightmiao", "fightmiao")
	local result = listen()
	print(result)
	if result == "fightmiao" then
		cap("较量失败")
		return xsfhFightMiao()
	elseif result == "wait" then
		cap("苗人凤忙")
		setVariable("waitTime", os.time())
		return false
	elseif result == "waitexp" then
		cap("经验增加不够")
		setVariable("fightExp", getExp())
		return false
	elseif result == "waittime" then
		cap("较量时间间隔过短")
		setVariable("fightTime", os.time())
		return false
	elseif result == "ok" then
		cap("较量成功！")
		setVariable("fightExp", getExp())
		setVariable("fightTime", os.time())
		perform()
		e("set wimpycmd p\\hp;ok")
		listener("突然一道神光笼罩着你，你的精气神竟然全部恢复了！")
		story()
		perform()
		return true
	end
end

function xsfh1()
	local guard = getGuard()
	if not guard then
		return false
	end
	log.warn("准备去拿两页刀法")
	go("后山", "苗疆")
	local id = getId("阎基")
	if not id then
		wait(2000)
		return false
	end
	e("tell " .. guard .. " helpxsfh1")
	addListener([[^[^->\s]{4,8}\((\w+)\)告诉你：ok$]], "s:return string.lower(wildcards[1])", "xsfh")
	addListener("^阎基「啪」的一声倒在地上，挣扎着抽动了几下就死了。$", "s:return 'die'", "xsfh")
	local result = listen(60, function() return "timeout" end)
	if result == "timeout" or result == "die" or result ~= guard then
		return false
	end
	go("墓地", "黄河流域")	
	e("ask hu fei about 家仇")
	waitbusy()
	e("ask hu fei about 胡家刀法")
	set("lydf")
	addListener([[^你向胡斐打听有关『胡家刀法』的消息。\n胡斐哼了一声。$]], "s:return false", "lydf")
	addListener([[^你向胡斐打听有关『胡家刀法』的消息。\n胡斐咬牙切齿地对着天空大叫：“贼老天！”$]], "s:return false", "lydf")
	addSetListener("lydf", "lydf")
	if listen() then
		e("tell " .. guard .. " ok")
		return false
	end
	waitbusy()
	go("后山", "苗疆")
	e("ask yan ji about 胡一刀")
	waitbusy()
	e("ask yan ji about 下毒")
	waitbusy()
	e("ask yan ji about 胡斐")
	addListener([[^[^->\s]{4,8}\((\w+)\)告诉你：kill$]], "s:return string.lower(wildcards[1])")
	local result = listen(60, function() return "timeout" end)
	if result == "timeout" or result ~= guard then
		return false
	else
		e("yun qi;ask yan ji about 两页刀法")
		addListener([[^你向阎基打听有关『两页刀法』的消息。\n阎基露出迷惑的神情。$]], "s:return false", "lydf")
		addListener("^阎基交给你两页纸，上面记载着胡家刀法。$", "s:return true", "lydf")
		local result = listen()
		if result then
			go("墓地", "黄河流域")
			e("give liangye daofa to hu fei")
			listener([[^你于\S+解开雪山飞狐两页刀法篇，获得\d+点最大内力、\d+点经验奖励以及\d+点声望。$]])
			story()
			return true
		else
			waitbusy()
		end
	end
end

function xsfh2()
	local guard1, guard2, guard3 = getGuard()
	if not guard3 then
		return false
	end
	log.error("要去解复仇，很重要！！！")
	db()
	full()
	go("后山", "苗疆")
	local id = getId("阎基")
	if not id then
		wait(2000)
		return false
	end
	wait(2000)
	go("墓地", "黄河流域")
	id = getId("胡斐")
	if not id then
		wait(2000)
		return false
	end
	e("tell " .. guard1 .. " helpxsfh2")
	e("tell " .. guard2 .. " helpxsfh2")
	e("tell " .. guard3 .. " helpxsfh2")
	local readyGuards = {}
	while true do
		addListener([[^[^->\s]{4,8}\((\w+)\)告诉你：ok$]], "s:return 'ok', string.lower(wildcards[1])", "xsfh")
		addListener([[^[^->\s]{4,8}\((\w+)\)告诉你：fail$]], "s:return 'fail', string.lower(wildcards[1])", "xsfh")
		local type, result = listen(60, function() return "timeout" end)
		if type == "timeout" or type == "fail" then
			e("tell " .. guard1 .. " ok")
			e("tell " .. guard2 .. " ok")
			e("tell " .. guard3 .. " ok")
			return false
		end
		readyGuards[result] = true
		if readyGuards[guard1] and readyGuards[guard2] and readyGuards[guard3] then
			break
		end
	end
	log.error("guard 已经到位，开始复仇")
	e("ask hu fei about 复仇")
	waitbusy()
	e("answer yes")
	set("answer")
	addListener("^你深深地叹了口气，说道：恩，这段公案也应该有个水落石出！我就帮你去一次苗家庄吧。$", "s:return 'ok'", "answer")
	addSetListener("answer", "answer")
	if listen() == "answer" then
		setVariable("answerTime", os.time())
		story()
		e("tell " .. guard1 .. " ok")
		e("tell " .. guard2 .. " ok")
		e("tell " .. guard3 .. " ok")
		return false
	end
	go("苗家庄门口", "兰州城")
	while true do
		addListener("^你听到“锺氏兄弟”、“书信”，好像是旧识，又好像是讨债来的，却听不清楚具体在说什么，你不由好奇心起。$", "s:return true")
		local result = listen(10, function() return false end)
		if result then
			break
		else
			log.error("重要！！！解复仇时没遇到黑衣人，自动重试！")
			wait(2000)
			waitbusy()
			e("e;w")
		end
	end
	noPerform()
	for i=1, 60 do
		wait(500)
		e("yun qi;compare heiyi ren")
		addListener([[^你仔细的上前打量了(\S+)一番。$]], "s:return false", "pass")
		addListener("^heiyi ren 不在这里$", "s:return 'ok'", "pass")
		if listen(1, function() return false end) then
			e("tell " .. guard1 .. " ok")
			e("tell " .. guard2 .. " ok")
			e("tell " .. guard3 .. " ok")
			break
		end
	end
	e("n")
	waitbusy()
	e("ask miao renfeng about 胡一刀")
	waitbusy()
	e("ask miao renfeng about 真相")
	listener("^你听完解说一阵沉默，不由被胡与苗的豪情所感动，只怕其中真有别情！你想了一会儿，只有阎基这个线索了！$")
	log.error("解复仇去询问阎基！")
	go("miaojiang/shanlu")
	while true do
		e("push grass;nw;find")
		set("yj")
		addListener("^你在干吗？$", "s:return true", "yj")
		addSetListener("yj", "yj")
		if listen() == true then
			break
		else
			e("se")
			wait(10000)
		end
	end
	while true do
		id = getId("阎基")
		if not id then
			log.error("解复仇阎基没了，注意")
			wait(2000)
		else
			e("ask yan ji about 真相")
			listener([[^你向阎基打听有关『真相』的消息。\n阎基被你吓得脸都白了。$]])
			break
		end
	end
	go("huanghe/shulin6")
	e("n")
	while true do
		addListener("^你点头道：我马上去苗家庄，你心情不定，还是先歇息为妙。$", "s:return true")
		local result = listen(10, function() return false end)
		if result then
			log.error("复仇解完了，恭喜！！！")
			waitbusy()
			story()
			return true
		else
			wait(2000)
			e("s;n")
		end
	end
end

function xsfh3()
	local guard, other = getGuard()
	if not guard or other then
		return false
	end
	log.warn("准备去解雪山飞狐解药篇")
	go("天阁斋")
	money(0, 200)
	wait(2000)
	local _i = i()
	if _i["fire"] == 0 then
		go("宝昌客栈")
		if not buy("fire") then
			return false
		end
		wait(2000)
	end
	if _i["jiu dai"] == 0 and _i["huadiao jiudai"] == 0 then
		go("小吃店", "扬州城")
		if not buy("jiu dai") then
			return false
		end
		wait(2000)
	end
	go("茶馆", "扬州城")
	e("fill jiu dai")
	wait(2000)
	go("后山", "苗疆")
	local id = getId("阎基")
	if not id then
		wait(2000)
		log.warn("雪山飞狐解药篇阎基不在")
		return false
	end
	e("tell " .. guard .. " helpxsfh3")
	addListener([[^[^->\s]{4,8}\((\w+)\)告诉你：ok$]], "s:return string.lower(wildcards[1])", "xsfh")
	addListener("^阎基「啪」的一声倒在地上，挣扎着抽动了几下就死了。$", "s:return 'die'", "xsfh")
	local result = listen(60, function() return "timeout" end)
	if result == "timeout" or result == "die" or result ~= guard then
		return false
	end
	go("正厅", "兰州城")
	e("ask miao renfeng about 解药")
	go("药王居")
	e("ask cheng lingsu about 解药")
	go("后山", "苗疆")
	e("tell " .. guard .. " ok")
	addListener([[^[^->\s]{4,8}\((\w+)\)告诉你：kill$]], "s:return string.lower(wildcards[1])")
	local result = listen(60, function() return "timeout" end)
	if result == "timeout" or result ~= guard then
		return false
	else
		e("yun qi;ask yan ji about 七星海棠")
		addListener("^阎基「啪」的一声倒在地上，挣扎着抽动了几下就死了。$", "s:return true", "lydf")
		local result = listen()
		if result then
			addListener([[^[^->\s]{4,8}\((\w+)\)告诉你：search$]], "s:return string.lower(wildcards[1])")
			local result = listen(60, function() return "timeout" end)
			if result == "timeout" or result ~= guard then
				return false
			end
			go("药王居")
			e("give qixing haitang to cheng lingsu")
			-- listener([[^你给程灵素一份七星海棠。$]])
			wait(2000)
			while true do
				if not go("果园", "苗疆") then
					log.error("为什么去不了果园？")
					return false
				end
				db()
				go("果园", "苗疆")
				e("search di")
				addListener("^你找了半天，什么也没找到。$", "s:return false", "search")
				addListener("^你终于发现一颗蓝色药花。你伸手去摘了下来。$", "s:return true", "search")
				local result = listen()
				waitbusy()
				if result then
					break
				end
			end
			perform()
			for i=1, 60 do
				wait(1000)
				e("yun qi;compare du she;compare lang gou;k du she;k lang gou")
				set("pass")
				addListener([[^你仔细的上前打量了(\S+)一番。$]], "s:return false", "pass")
				addSetListener("pass", "pass")
				if listen(1, function() return false end) then
					e("tell " .. guard .. " ok")
					break
				end
			end
			wait(2000)
			go("药王居")
			e("give lanse yaohua to cheng lingsu")
			listener([[^你给程灵素一棵蓝色药花。$]])
			listener("^程灵素给你一份药方。$")
			if not xsfhAoyao() then
				return false
			end
			go("正厅", "兰州城")
			local n = 0
			while true do
				addListener([[^你于\S+解开雪山飞狐解药篇，获得\d+点最大内力、\d+点经验奖励、\d+点声望。$]], "s:return true")
				local result = listen(60, function() return false end)
				if result then
					break
				else
					n = n + 1
					if n > 5 then
						return false
					end
				end
			end
			log.error("解雪山飞狐解药篇成功！")
			story()
			return true
		else
			waitbusy()
		end
	end
end

function xsfhAoyao()
	local _i = i()
	if _i["fire"] == 0 then
		return false
	end
	if _i["jiu dai"] == 0 and _i["huadiao jiudai"] == 0 then
		return false
	end
	go("药房", "苗疆")
	e("open lu")
	e("add qixing haitang in lu;add lanse yaohua in lu;add zang honghua in lu")
	e("add ren shen in lu;add jinyin hua in lu;pour jiu dai to lu")
	e("close lu;dianhuo;burn lu")
	waitbusy()
	e("aoyao")
	listener("^药快熬好了，赶紧灭火吧！$")
	waitbusy()
	e("miehuo")
	waitbusy()
	e("open lu;qu jie yao from lu")
	local _i = i()
	if _i["jie yao"] == 0 then
		return false
	end
	return true
end

function helpxsfh1(id, name)
	go("后山", "苗疆")
	e("tell " .. id .. " ok")
	addListener("^" .. name .. "向阎基打听有关『胡斐』的消息。$", "s:return 'ok'", "helpxsfh1")
	addListener([[^[^->\s]{4,8}\((\w+)\)告诉你：ok$]], "s:return string.lower(wildcards[1])", "helpxsfh1")
	local result = listen(60, function() return "timeout" end)
	if result == id or result == "timeout" then
		return false
	end
	if fightYj() then
		e("tell " .. id .. " kill")
		listener("^" .. name .. "向阎基打听有关『两页刀法』的消息。$")
		currentJob = "xsfh"
		kill("ji")
		listener("^阎基「啪」的一声倒在地上，挣扎着抽动了几下就死了。$")
		waitbusy()
		print("help xsfh1 ok")
		return true
	else
		return false
	end
end

function helpxsfh2(id, name)
	currentJob = "xsfh"
	if not go("前厅", "兰州城") then
		e("tell " .. id .. " fail")
		return false
	end
	e("tell " .. id .. " ok")
	perform()
	local i = getGuardIndex() or 1
	return timeKillHyr(id, i)
end

function helpxsfh3(id, name)
	go("后山", "苗疆")
	e("tell " .. id .. " ok")
	addListener([[^[^->\s]{4,8}\((\w+)\)告诉你：ok$]], "s:return string.lower(wildcards[1])")
	local result = listen(nil, function() return "timeout" end)
	if result == "timeout" then
		return false
	elseif result == id then
		if fightYj() then
			e("tell " .. id .. " kill")
			listener("^" .. name .. "向阎基打听有关『七星海棠』的消息。$")
			currentJob = "xsfh"
			kill("ji")
			listener("^阎基「啪」的一声倒在地上，挣扎着抽动了几下就死了。$")
			go("果园", "苗疆")
			e("tell " .. id .. " search")
			return timeKillSheAndDog(id)
		else
			return false
		end
	end
end

function timeKillSheAndDog(id, n)
	currentJob = "xsfh"
	n = n or 1
	if n > 240 then
		return true
	end
	e("kill du she;kill lang gou")
	addListener([[^[^->\s]{4,8}\((\w+)\)告诉你：ok$]], "s:return string.lower(wildcards[1])", "timekill")
	local result = listen(0.5, function() return false end)
	if result == id then
		return true
	end
	return timeKillSheAndDog(id, n + 1)
end

function timeKillHyr(id, i, n)
	currentJob = "xsfh"
	n = n or 1
	if n > 240 then
		return true
	end
	e("kill heiyi ren " .. i .. ";p")
	for j=1, 4 do
		e("kill heiyi ren " .. j)
	end
	addListener([[^[^->\s]{4,8}\((\w+)\)告诉你：ok$]], "s:return string.lower(wildcards[1])", "timekill")
	local result = listen(1, function() return false end)
	print(result, id)
	if result == id then
		return true
	end
	return timeKillHyr(id, i, n + 1)
end

function getGuardIndex()
	local guards = {getGuard()}
	for k, v in pairs(guards) do
		if v == myId() then
			return k
		end
	end
end

function fightYj(i)
	i = i or 0
	if i > 10 then
		return false
	end
	local id = getId("阎基")
	if id or yjHeal() then
		e("fight ji")
		currentJob = "fightYj"
		perform("ji")
		currentJob = nil
		while true do
			wait(3000)
			if not isFight() then
				break
			end
		end
		if yjHeal() then
			return true
		else
			return fightYj(i + 1)
		end
	else
		return false
	end
end

function yjHeal(i)
	e("l")
	set("yjHeal")
	addListener("^  阎基正在运功疗伤$", "s:return false", "yjHeal")
	addSetListener("yjHeal", "yjHeal")
	if listen() then
		return false
	else
		return true
	end
end

function xsfh4()
	go("正厅", "兰州城")
	while true do
		waitbusy()
		e("ask miao renfeng about 宝藏")
		set("mrf")
		addListener("^苗人凤交给你一张宝藏图。$", "s:return false", "mrf")
		addSetListener("mrf", "mrf")
		if not listen() then
			break
		end
	end
	go("墓地", "黄河流域")
	while true do
		e("wa di")
		set("lyd")
		addListener("^挖地三尺，你感到双手手指同时碰到一件冰冷坚硬之物，再向两旁摸索，是一柄带鞘的单刀。$", "s:return false", "lyd")
		addSetListener("lyd", "lyd")
		if not listen() then
			break
		end
	end
	while true do
		waitbusy()
		e("yanjiu lengyue")
		set("lyd")
		addListener("^你发现冷月宝刀刀身上刻有着数条脉路，似乎和藏宝图可以对照。$", "s:return false", "lyd")
		addSetListener("lyd", "lyd")
		if not listen() then
			break
		end
	end
	waitbusy()
	e("guanzhu lengyue")
	waitbusy()
	e("duizhao lengyue")
end



