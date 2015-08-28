function gbjob()
	local npc, addr = gbInfo()
	if npc and addr then
		local _i = i()
		if _i.corpse > 0 and _i.names.corpse == npc .. "的尸体" then
			if not gbGive("corpse") then
				return gbFangqi()
			else
				return true
			end
		elseif _i.shouji > 0 and _i.names.shouji == npc .. "的首级" then
			if not gbGive("shouji") then
				return gbFangqi()
			else
				return true
			end
		end
	else
		npc, addr = gbAsk()
		if not npc then
			return gbFangqi()
		end
	end
	if not npc then
		return false
	end
	local name, city = getAddr(addr)
	if not name then
		return gbFangqi()
	end
	if isIgnore(npc) then
		return gbFangqi()
	end
	if not canFind(name, city, 0) then
		return gbFangqi()
	end
	if not gbGo(name, city, npc) then
		return gbFangqi()
	else
		return true
	end
end

function gbInfo()
	local _sets = sets()
	local npc = _sets["gb_npc"]
	local addr = _sets["gb_addr"]
	return npc, addr
end

function gbGo(name, city, npc)
	if not name then
		local addr
		npc, addr = gbInfo()
		name, city = getAddr(addr)
		if not npc or not name then
			return false
		end
	end
	if find(name, city, 0,npc) then
		local result, woods = gbKill(npc)
		if not result then
			return false
		end
		return gbGive(woods)
	else
		return false
	end
end

function gbAsk()
	go("渔港码头", "福州城")
	db()
	go("船舱", "福州城")
	local npc, addr = gbAsk0()
	if not npc then
		return false
	elseif npc == "jobInfo" then
		local npc, addr = gbInfo()
		return npc, addr
	elseif npc == "jobBusy" then
		waitbusy()
		e("out")
		waitjob()
		return gbAsk()
	elseif npc == "fangqi" then
		return gbFangqi()
	elseif npc == "test" then
		go("墓室", "扬州城")
		e("ask jieyin dizi about 入帮")
		waitbusy()
		e("test")
		return false
	else
		e("set gb_npc " .. npc)
		e("set gb_addr " .. addr)
		return npc, addr
	end
end

function gbAsk0()
	e("ask wu zhanglao about job")
	addListener([[^你向吴长老打听有关『job』的消息。\n吴长老说道：「好吧，最近「(\S+)」一直和我丐帮作对，你前去设法将此人除掉！」$]], "s:return 'ok', wildcards[1]", "askgbjob")
	addListener([[^你向吴长老打听有关『job』的消息。\n吴长老说道：「没看见我正忙着吗,你等一会。」$]], "s:return 'busy'", "askgbjob")
	addListener([[^你向吴长老打听有关『job』的消息。\n吴长老说道：「现在我可没有给你的任务，等会怎么样？」$]], "s:return 'busy'", "askgbjob")
	addListener([[^你向吴长老打听有关『job』的消息。\n吴长老说道：「现在我可没有给你的任务，等会再来吧！」$]], "s:return 'jobBusy'", "askgbjob")
	addListener([[^你向吴长老打听有关『job』的消息。\n吴长老说道：「你是消遣我来着？叫你等会儿就是等会儿！」\n吴长老一脚正好踢中你的屁股！$]], "s:return 'jobBusy'", "askgbjob")
	addListener([[^你向吴长老打听有关『job』的消息。\n吴长老说道：「现在我这里没有给你的任务，你去其他地方看看吧？」$]], "s:return false", "askgbjob")
	addListener([[^你向吴长老打听有关『job』的消息。\n吴长老说道：「你连上个任务去都不想去，是想找近的吧？等会再来！」$]], "s:return 'jobInfo'", "askgbjob")
	addListener([[^你向吴长老打听有关『job』的消息。\n吴长老说道：「你没有通过接引弟子的考验，我可不敢用你。」$]], "s:return 'test'", "askgbjob")
	local result, name = listen()
	if result == "ok" then
		local addr = listener([[^吴长老说道：「此人现在在(\S+)一带，务必在\S+之前赶回来。」$]], "s:return wildcards[1]")
		return name, addr
	elseif result == "busy" then
		waitbusy()
		return gbAsk0()
	else
		return result
	end
end

function gbInit()
	e("unset gb_npc;unset gb_addr")
end

function gbFangqi()
	gbInit()
	go("船舱", "福州城")
	waitbusy()
	e("ask wu zhanglao about fangqi")
	return false
end

function gbKill(npc, n)
	n = n or 1
	local id, status = getId(npc)
	if not id or status == "faint" then
		if n > 60 then
			return false
		else
			wait(2000)
			return gbKill(npc, n+1)
		end
	end
	local _haveCutweapon = haveCutweapon()
	fkill(id)
	local result = gbKill0(npc)
	if result == "timeout" then
		return false
	end
	waitbusy()
	if _haveCutweapon then
		if not qieCorpse(npc, {"silver", "gold"}) then
			return gbKill(npc)
		else
			return true, "shouji"
		end
	else
		if not getCorpse(npc, {"silver", "gold"}) then
			return gbKill(npc)
		else
			return true, "corpse"
		end
	end
end

function gbKill0(npc)
	addListener("^" .. npc .. "神志迷糊，脚下一个不稳，倒在地上昏了过去。$", "s:return 'faint'", "gbKill")
	addListener("^" .. npc .. "「啪」的一声倒在地上，挣扎着抽动了几下就死了。$", "s:return 'die'", "gbKill")
	local result = listen(120, function() return "timeout" end)
	if result == "faint" then
		noPerform()
		return gbKill0(npc)
	elseif result == "timeout" then
		return "timeout"
	else
		noPerform()
		return true
	end
end

function gbGive(woods)
	go("船舱", "福州城")
	if woods then
		e("give " .. woods .. " to wu zhanglao")
	else
		e("give shouji to wu zhanglao;give corpse to wu zhanglao")
	end
	set("gbgive")
	addListener([[^吴长老说道：「我现在正忙着呢，你稍等一下吧。」\n对方不接受这样东西。$]], "s:return 'busy'", "gbgive")
	addListener([[^你给吴长老一具\S{4,8}的尸体。$]], "s:return 'ok'", "gbgive")
	addListener([[^你给吴长老一颗\S{4,8}的首级。$]], "s:return 'ok'", "gbgive")
	addSetListener("gbgive", "gbgive")
	local result = listen()
	if result == "busy" then
		return gbGive()
	elseif result == "gbgive" then
		e("drop corpse;drop shouji")
		return false
	else
		listener([[^你觉得脑中豁然开朗，增加了\S+点潜能和\S+点经验！$]])
		e("unset gb_npc;unset gb_addr")
		return true
	end
end

local function isIgnore(name)
	local ignores = {
		"忽必烈",
		"出尘子",
		"吕文德",
	}
	for _, ignoreName in pairs(ignores) do
		if name == ignoreName then
			return true
		end
	end
	return false
end
