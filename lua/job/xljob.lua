function xljob()
	local startTime = os.time()
	local step = getXlStep()
	if not step then
		findYwl()
		e("ask yin wulu about 巡逻")
		set("xljob")
		addListener([[^你向殷无禄打听有关『巡逻』的消息。\n殷无禄说道：「你上次明教巡逻任务刚做完，还是先休息一下吧。」$]], "s:return 'wait'", "xljob")
		addListener([[^你向殷无禄打听有关『巡逻』的消息。\n殷无禄说道：在下是出来游山玩水的，不回答问题。$]], "s:return 'wait'", "xljob")
		addListener([[^你向殷无禄打听有关『巡逻』的消息。\n\n殷无禄自言自语道：现在共有\S+名明尊弟子在光明顶巡逻。$]], "s:return 'ok'", "xljob")
		addListener([[^你向殷无禄打听有关『巡逻』的消息。\n殷无禄说道：「大胆!你竟然敢同时做别的任务！」$]], "s:return 'ok'", "xljob")
		addListener([[^你向殷无禄打听有关『巡逻』的消息。\n殷无禄说道：「你不是在巡逻吗，怎么还呆在这里？」$]], "s:return 'ok'", "xljob")
		addListener([[^你向殷无禄打听有关『巡逻』的消息。\n殷无禄说道：「你上次巡逻结束还没交差呢。」$]], "s:return 'ok'", "xljob")
		addListener([[^你向殷无禄打听有关『巡逻』的消息。\n殷无禄说道：「嗯，你刚刚巡逻完毕，还是先去休息休息吧。」$]], "s:return 'fail'", "xljob")
		addSetListener("xljob", "xljob")
		local result = listen()
		if result == "xljob" then
			return xljob()
		end
		if result == "wait" then
			waitjob()
			return xljob()
		end
		e("follow none")
		setXlStep(1)
	end
	while true do
		local step = getXlStep()
		if not step then
			return xljob()
		end
		if step == 8 then
			break
		end
		local stepResult = _G["xl" .. step]()
		print(step)
		if not stepResult then
			log.warn("上一步 xl 有问题")
			setXlStep(step - 1)
		else
			setXlStep(step + 1)
		end
	end
	xlFinish()
	local useTime = os.time() - startTime
	log.info("巡逻 job 用时：" .. useTime)
end

function xl1()
	local result = xlhy({name = "mingjiao/wu1"}, "zhang zhong", "张中")
	if result == "ok" then
		return true
	elseif not result then
		return false
	end
	go("厨房", "明教")
	wait(1000)
	go("兵器库", "明教")
	wait(1000)
	go("药房", "明教")
	wait(1000)
	go("碧水寒潭")
	wait(1000)
	while true do
		result = xlhy({name = "mingjiao/wu1"}, "zhang zhong", "张中")
		if not result then
			return false
		elseif result == "ok" then
			return true
		end
	end
end

function xl2()
	local result = xlhy({name = "厚土旗"}, "yan tan", "颜垣")
	if result == "ok" then
		return true
	elseif not result then
		return false
	end
	go("天字门")
	while true do
		result = xlhy({name = "厚土旗"}, "yan tan", "颜垣")
		if not result then
			return false
		elseif result == "ok" then
			return true
		end
	end
end

function xl3()
	local result = xlhy({name = "烈火旗"}, "xin ran", "辛然")
	if result == "ok" then
		return true
	elseif not result then
		return false
	end
	go("地字门")
	while true do
		result = xlhy({name = "烈火旗"}, "xin ran", "辛然")
		if not result then
			return false
		elseif result == "ok" then
			return true
		end
	end
end

function xl4()
	local result = xlhy({name = "洪水旗"}, "tang yang", "唐洋")
	if result == "ok" then
		return true
	elseif not result then
		return false
	end
	go("风字门")
	while true do
		result = xlhy({name = "洪水旗"}, "tang yang", "唐洋")
		if not result then
			return false
		elseif result == "ok" then
			return true
		end
	end
end

function xl5()
	local result = xlhy({name = "锐金旗"}, "zhuang zheng", "庄铮")
	if result == "ok" then
		return true
	elseif not result then
		return false
	end
	go("雷字门")
	while true do
		result = xlhy({name = "锐金旗"}, "zhuang zheng", "庄铮")
		if not result then
			return false
		elseif result == "ok" then
			return true
		end
	end
end

function xl6()
	local result = xlhy({name = "巨木旗"}, "wen cangsong", "闻苍松") 
	if result == "ok" then
		return true
	elseif not result then
		return false
	end
	go("mingjiao/didao/shenchu5")
	while true do
		result = xlhy({name = "巨木旗"}, "wen cangsong", "闻苍松")
		if not result then
			return false
		elseif result == "ok" then
			return true
		end
	end
end

function xl7()
	local result = xlhy({name = "总坛前厅"}, "yin yewang", "殷野王")
	if result == "ok" then
		return true
	elseif not result then
		return false
	end
	go("茶室", "明教")
	wait(1000)
	go("半山腰", "明教")
	wait(1000)
	go("厢房", "明教")
	wait(1000)
	while true do
		result = xlhy({name = "总坛前厅"}, "yin yewang", "殷野王")
		if not result then
			return false
		elseif result == "ok" then
			return true
		end
	end
end

function getXlStep()
	local step = sets().xlstep
	if step == 0 then
		return false
	end
	return step
end

function setXlStep(step)
	if step <= 0 then
		e("unset xlstep")
	else
		e("set xlstep " .. step)
	end
end

function xlFangqi()
	findYwl()
	e("ask yin wulu about 放弃")
	e("follow none")
	e("unset xlstep")
	return false
end

function findYwl()
	while true do
		go("总坛前厅")
		e("ask yin yewang about yin wulu")
		addListener([[^你向殷野王打听有关『yin wulu』的消息。\n殷野王说道：「嗯，殷无禄好象在(\S+)一带巡逻。」$]], "s:return wildcards[1]", "xladdr")
		addListener([[^你向殷野王打听有关『yin wulu』的消息。\n殷野王说道：「刚有名弟子上来报告，我殷无禄好象被人给杀了。」$]], "s:return false", "xladdr")
		local name = listen()
		waitbusy()
		if name and find(name, "明教", 0, "殷无禄") then
			e("follow yin wulu")
			return true
		end
	end
end

function xlFinish()
	findYwl()
	e("ask yin wulu about 完成")
	waitbusy()
	e("give xunluo ling to yin wulu")
	listener("^殷无禄给你一片巡逻令。$", nil, 30, function() return "timeout" end)
	local _i = i()
	if _i["xunluo ling"] == 0 then
		return xlFangqi()
	end
	e("follow none")
	go("广场", "明教")
	e("give xunluo ling to wei yixiao")
	e("unset xlstep")
end

function xlhy(addr, id, name)
	go(addr.name, addr.city)
	while true do
		e("ask " .. id .. " about 画印")
		addListener([[^]] .. name .. [[冲着(\S+)大喊：小兄弟，加油，加油！$]], "s:return 'killer', wildcards[1]", "xlhy")
		addListener([[^]] .. name .. [[对着(\S+)竖起了右手大拇指，好样的。$]], "s:return 'ok', wildcards[1]", "xlhy")
		addListener([[^]] .. name .. [[对着(\S+)摇了摇头。$]], "s:return false, wildcards[1]", "xlhy")
		-- addListener([[^你向]] .. name .. [[打听有关『画印』的消息。\n]] .. name .. [[说道：「等等，我正在检查呢。」$]], "s:return 'wait'", "xlhy")
		addListener([[^你向]] .. name .. [[打听有关『画印』的消息。\n]] .. name .. [[说道：「先去别的地方看看，等会儿再来巡逻这儿。」$]], "s:return false", "xlhy")
		addListener([[^你向]] .. name .. [[打听有关『画印』的消息。\n]] .. name .. [[说道：「你又没在巡逻，要我画印干嘛？」$]], "s:return false", "xlhy")
		addListener([[^你向]] .. name .. [[打听有关『画印』的消息。\n]] .. name .. [[对着你点了点头。$]], "s:return 'waitme'", "xlhy")
		addListener([[^你向]] .. name .. [[打听有关『画印』的消息。\n]] .. name .. [[说道：「咦，不是叫你去看看有没有可疑的人吗？怎么还没去？」$]], "s:return 'killer'", "xlhy")
		addListener([[^你向]] .. name .. [[打听有关『画印』的消息。\n]] .. name .. [[说道：「这边你已经巡逻完了，再去别的地方看看吧。」$]], "s:return 'ok'", "xlhy")
		local result, flag = listen(5, xlhy, addr, id, name)
		print(result, flag)
		if not flag or flag == "你" then
			if not result then
				return false
			elseif result == "waitme" then
				return "waitme"
			elseif result == "ok" then
				return "ok"
			elseif result == "killer" then
				killAttacker()
				go(addr.name, addr.city)
			end
		end
	end
end

function killAttacker()
	db()
	go("巨木旗")
	while true do
		addListener("^一个人影突然从旁跳了出来，拦住你的去路！$", "s:return 'ok'", "killer")
		addListener("^探子一言不发，闪身拦在你面前！$", "s:return 'ok'", "killer")
		addSetListener("killer", "killer")
		e("w;h;e;w;h;e;w;h;e;w;h;e;w;h;e")
		set("killer")
		local killer = listen()
		if killer == "ok" then
			while true do
				perform()
				local name = "(蒙面客|黑衣人|神秘人|黑衣忍者|山贼|探子|死士)"
				addListener("^" .. name .. "转身几个起落就不见了。$", nil, "killer")
				addListener("^" .. name .. "「啪」的一声倒在地上，挣扎着抽动了几下就死了。$", nil, "killer")
				listen()
				if not isFight() then
					e("e")
					here()
					break
				end
			end
			break
		else
			wait(1000)
		end
	end
end
