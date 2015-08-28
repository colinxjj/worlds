local _haveCutweapon

function hsInit()
	e("unset hs_npc;unset hs_addr;unset hs_give")
end

local startTime
function hsjob()
	startTime = os.time()
	local _i = i()
	if _i["ling pai"] == 0 then
		local addr, name = hsInfo()
		if not addr then
			local _hp = hp()
			if _hp.shen < 10000 then
				if not addShen(10000) then
					return false
				end
			end
			local result = hsAsk()
			if not result then
				return false
			end
			if result == "already" then
				return hsFangqi()
			end
		else
			perform()
			wait(1000)
			if not hsGo(addr, name) then
				return hsFangqi()
			end
			return hsFinish()
		end
	else
		local _, _, give = hsInfo()
		if give then
			return hsFinish()
		end
	end
	local cutweapon = getCutweapon()
	if _i[cutweapon] > 0 then
		_haveCutweapon = true
	else
		_haveCutweapon = false
	end
	local addr, name = stealLing()
	perform()
	wait(1000)
	if not addr or not hsGo(addr, name) then
		return hsFangqi()
	end
	return hsFinish()
end

function hsFindSsl(name)
	return hsFind0(name) or hsFind3(name)
end

function hsFindHsc(name)
	return hsFind2(name) or hsFind3(name)
end

function hsFindHs(name)
	return hsFind2(name) or hsFind7(name)
end

local findPath = {
	{
		goals = {"松树林",},
		path = hsFindSsl, 
	},
	{
		goals = {"菜地", "碎石路", "玄坛庙", "玉泉院",},
		path = hsFindHsc,
	},
	{
		goals = {
			"苍龙岭", "侧廊", "朝阳峰", "猢狲愁", "瀑布", "千尺幢", "青柯坪",
			"莎萝坪", "舍身崖", "药房", "玉女峰", "镇岳宫", "山路", "小山路",
			"思过崖", "百尺峡", "老君沟", "后堂",
		},
		path = hsFindHs,
	},
}
function hsGo(addr, name)
	go("树林", "华山")
	for _, v in pairs(findPath) do
		for _, goal in pairs(v.goals) do
			if addr == goal then
				return v.path(name)
			end
		end
	end
end

function hsInfo()
	local _sets = sets()
	return _sets["hs_addr"], _sets["hs_npc"], _sets["hs_give"]
end

function hsFangqi()
	go("正气堂", "华山")
	e("ask yue buqun about fail")
	waitbusy()
	hsInit()
	local useTime = startTime and os.time() - startTime
	log.warn("华山任务失败" .. (useTime and ("，用时：" .. useTime .. " 秒") or ""))
	return false
end

function hsKill(id, name)
	hsInit()
	e("set hs_give")
	if id == "corpse" then
		return hsGet(name)
	end
	local result = hsKill0(id, name)
	if result == "timeout" then
		return false
	end
	return hsGet(name)
end

function hsKill0(id, name)
	e("l")
	fkill(id)
	addListener([[^  ]] .. name .. [[的尸体\(Corpse\)$]], "s:return 'die', wildcards[1]", "hsKill")
	addListener([[^]] .. name .. [[神志迷糊，脚下一个不稳，倒在地上昏了过去。$]], "s:return 'faint', wildcards[1]", "hsKill")
	addListener([[^]] .. name .. [[「啪」的一声倒在地上，挣扎着抽动了几下就死了。$]], "s:return 'die', wildcards[1]", "hsKill")
	local result = listen(120, function() return "timeout" end)
	if result == "faint" then
		noPerform()
		return hsKill0(id, name)
	elseif result == "timeout" then
		return "timeout"
	else
		noPerform()
		return true
	end
end

function hsGet(name)
	return _haveCutweapon and qieCorpse(name, {"ling pai"}) or getCorpse(name, {"ling pai"})
end

function hsFinish()
	if hsGive() then
		hsGiveYue()
	else
		return hsFangqi()
	end
end

function hsGiveYue()
	go("正气堂", "华山")
	hsInit()
	e("give ling pai to yue buqun")
	set("give")
	addListener([[^你获得了(\S+)点经验，(\S+)点潜能，(\S+)点正神。$]], "s:return trans(wildcards[1]), trans(wildcards[2]), trans(wildcards[3])", "give")
	addSetListener("give", "give")
	local exp, pot, shen = listen()
	local useTime = startTime and os.time() - startTime
	if exp == "give" then
		log.warn("华山任务失败" .. (useTime and ("，用时：" .. useTime .. " 秒") or ""))
	else
		log.info("华山任务完成，得到经验：" .. exp .. "，潜能：" .. pot .. "，神：" .. shen .. (useTime and ("，用时：" .. useTime .. " 秒") or "") .. "，每小时进帐：" .. getHourExp())
	end
end

function hsGive()
	go("祭坛", "华山")
	e("give shouji to yue lingshan;give corpse to yue lingshan")
	waitbusy()
	e("ask yue lingshan about 力不从心")
	waitbusy()
	return true
end

function stealLing(i)
	i = i or 0
	log.debug("第 : " .. i .. " 次寻找 mmr")
	if i > 20 then
		return false
	end
	go("山脚下", "华山")
	e("s")
	set("ling")
	addListener([[^(?:忽然|突然|猛地|冷不防|冷不丁)(?:从树林里|从树林深处)(?:窜出|杀出)一个蒙面人(?:一把夺下|夺下|一把抢去|抢去)你的令牌，向(\S+)(?:处|方向|处夺路|方向夺路)逃去。\n]] .. 
		[[你一把抓向蒙面人试图抢回令牌，但被蒙面人敏捷得躲了过去，你顺手扯下蒙面人的面罩，发现原来是曾经名震江湖的(\S+)。]], "s:return wildcards[1], wildcards[2]", "ling")
	addSetListener("ling", "ling")
	local addr, name = listen()
	if addr == "ling" then
		return stealLing(i + 1)
	else
		e("set hs_addr " .. addr)
		e("set hs_npc " .. name)
		return addr, name
	end
end

function hsAsk()
	startTime = os.time()
	go("书院", "华山")
	db()
	go("正气堂", "华山")
	return hsAsk0()
end

function hsAsk0()
	e("ask yue buqun about job")
	addListener([[^你向岳不群打听有关『job』的消息。\n岳不群说道：「你眼露凶光, 还想去惩恶扬善\?」$]], "s:return false", "hsAsk")
	addListener([[^你向岳不群打听有关『job』的消息。\n岳不群说道：「你不能光说呀，倒是做出点成绩给我看看！」$]], "s:return 'already'", "hsAsk")
	addListener([[^你向岳不群打听有关『job』的消息。\n岳不群说道：「现在没有听说有恶人为害百姓，你自己去修习武功去吧！」$]], "s:return false", "hsAsk")
	addListener([[^你向岳不群打听有关『job』的消息。\n岳不群说道：「你现在正忙着做其他任务呢！」$]], "s:return 'busy'", "hsAsk")
	addListener([[^你向岳不群打听有关『job』的消息。\n岳不群说道：「现在我这里没有给你的任务，你还是先处理好你其他事情再说吧。」$]], "s:return 'quest'", "hsAsk")
	addListener([[^岳不群给了你一块令牌。$]], "s:return 'ok'", "hsAsk")
	local result = listen()
	waitbusy()
	if result == "busy" then
		go("书院", "华山")
		waitjob()
		return hsAsk()
	elseif result == "quest" then
		e("quit")
	end
	return result
end

-- 寻找松树林
function hsFind0(name)
	e("n;w;n;w;n;w;n;w;n;w;n;w;n;w;n;w;n;w;n;w;")
	local id = getId(name, true)
	if id then
		return hsKill(id, name)
	else
		wait(1000)
		return hsFind1(name)
	end
end

-- 寻找山涧
function hsFind1(name)
	e("e;s;sd;sw;ne;se;nw;ne;eu;se") -- 到 shulin3
	local id = getId(name, true)
	if id then
		return hsKill(id, name)
	else
		wait(1000)
		return hsFind2(name)
	end
end

-- 出松树林
function hsFind2(name)
	e("n;n;e;e;e;e;e;w;s")
	local id = getId(name, true)
	if id then
		return hsKill(id, name)
	elseif here().name ~= "山脚下" then
		wait(1000)
		return hsFind2(name)
	else
		wait(1000)
		return false
	end
end

-- 山脚到村中心
function hsFind3(name)
	e("n;s;w;w;w;n;s;w;w;n;s;w;s;n;nw;w;e;se;e;e")
	local id = getId(name, true)
	if id then
		return hsKill(id, name)
	else
		wait(2000)
		return hsFind4(name)
	end
end

-- 村中心到其它到菜地
function hsFind4(name)
	e("s;e;w;s;w;e;s;s;s;nw;se;se;nw;n;n;n;n;n;nw")
	local id = getId(name, true)
	if id then
		return hsKill(id, name)
	else
		wait(2000)
		return hsFind5(name)
	end
end

-- 菜地出来
function hsFind5(name)
	local _hp = hp()
	waitbusy()
	if _hp.jingli < _hp.max_jingli / 2 then
		e("yun jingli")
	end
	e("#4 n")
	local id = getId(name, true)
	if id then
		return hsKill(id, name)
	elseif here().name == "菜地" then
		return hsFind5(name)
	else
		wait(1000)
		return hsFind6(name)
	end
end

-- 树中心到山脚下
function hsFind6(name)
	e("e;e;e;e;n;s")
	local id = getId(name, true)
	if id then
		return hsKill(id, name)
	else
		wait(1000)
		return hsFind7(name)
	end
end

-- 山脚下向山上走
function hsFind7(name)
	if getDex() > 30 then
		return hsFind71(name)
	else
		return hsFind70(name)
	end
end

-- 山脚下到千尺幢
function hsFind70(name)
	e("se;ne;sw;su;eu")
	local id = getId(name, true)
	if id then
		return hsKill(id, name)
	elseif here().name == "山脚下" then
		wait(1000)
		return hsFind7(name)
	else
		wait(2000)
		return hsFind8(name)
	end
end

-- 山脚下到玉女峰
function hsFind71(name)
	e("se;ne;sw;su;eu;su;eu;su;su;wu;ed;sd;eu;wd;su;w;e;nw;nw;wu;r;out;ed;se;se;e;r;out;w")
	local id = getId(name, true)
	if id then
		return hsKill(id, name)
	else
		wait(2000)
		return hsFind9(name)
	end
end

-- 千尺幢到玉女峰
function hsFind8(name)
	e("su;eu;su;su;wu;ed;sd;eu;wd;su;w;e;nw;nw;wu;r;out;ed;se;se;e;r;out;w")
	local id = getId(name, true)
	if id then
		return hsKill(id, name)
	else
		wait(2000)
		return hsFind9(name)
	end
end

-- 玉女峰
function hsFind9(name)
	e("s;se;sw;ne;su;su;s;s;s;n;w;s;n;w;n;n;e;e;e;e;s;s;w;s;n;w")
	local id = getId(name, true)
	if id then
		return hsKill(id, name)
	else
		return false
	end
end
