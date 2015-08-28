function clbjob()
	local title, npc, addr = clbInfo()
	if not title then
		title, npc, addr = clbAsk()
		if title == "ok" then
			return clbFinish()
		end
		if not title then
			return clbFangqi()
		else
			e("set clb_title " .. title)
			e("set clb_npc " .. npc)
			e("set clb_addr " .. addr)
		end
	end
	local name, city = getAddr(addr)
	if not name then
		return clbFangqi()
	elseif find(name, city, 0, npc) then
		wait(2000)
		if clbChakan(npc) then
			return clbFinish()
		else
			return clbFangqi()
		end
	else
		return clbFangqi()
	end
end

function clbInfo()
	local _sets = sets()
	local title = _sets["clb_title"]
	local npc = _sets["clb_npc"]
	local addr = _sets["clb_addr"]
	return title, npc, addr
end

function clbInit()
	e("unset clb_title;unset clb_npc;unset clb_addr")
end

function clbFinish()
	go("小厅", "长乐帮")
	e("ask bei haishi about finish")
	clbInit()
	return true
end

function clbChakan(npc)
	local id = getId(npc, true)
	if not id then
		return false
	else
		local i = findCorpse(npc)
		if not i then
			wait(2000)
			return clbChakan(npc)
		end
		waitbusy()
		e("h;get cu bu from corpse " .. i .. ";chakan cu bu;chakan corpse")
		clbInit()
		return true
	end
end

function clbFangqi()
	go("小厅", "长乐帮")
	e("ask bei haishi about fangqi")
	clbInit()
	waitbusy()
	return false
end

function clbAsk()
	go("小厅", "长乐帮")
	e("ask bei haishi about job")
	addListener([[^你向贝海石打听有关『job』的消息。\n贝海石对着你躬身作了个揖。\n贝海石在你的耳边悄声说道：我接到飞鸽传书，(\S+)属下帮众(\S+)在(\S+)处遇到袭击，你赶快前去救援！$]],
		"s:return wildcards[1], wildcards[2], wildcards[3]", "clbask")
	addListener([[^你向贝海石打听有关『job』的消息。\n贝海石说道：「你不是已经进展到一定地步了，还是继续努力吧！」$]], "s:return 'ok'", "clbask")
	addListener([[^你向贝海石打听有关『job』的消息。\n贝海石说道：「我帮现在比较空闲，暂时还没有任务让你去做。」$]], "s:return 'busy'", "clbask")
	addListener([[^你向贝海石打听有关『job』的消息。\n贝海石说道：「暂时没有任务需要做，你(就)?过一会儿再来吧。」$]], "s:return 'busy'", "clbask")
	addListener([[^你向贝海石打听有关『job』的消息。\n贝海石说道：「我不是告诉你了吗，我帮有人在\S+遇到袭击，你还不赶快前去救援！」$]], "s:return false", "clbask")
	addListener([[^你向贝海石打听有关『job』的消息。\n贝海石说道：「你刚做完长乐帮任务，还是先去休息一会吧。」$]], "s:return false", "clbask")
	local title, npc, addr = listen()
	if title == "busy" then
		waitbusy()
		waitjob()
		return clbAsk()
	end
	return title, npc, addr
end
