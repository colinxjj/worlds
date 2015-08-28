function gbjob()
	local npc, addr = gbInfo()
	if npc and addr then
		local _i = i()
		if _i.corpse > 0 and _i.names.corpse == npc .. "��ʬ��" then
			if not gbGive("corpse") then
				return gbFangqi()
			else
				return true
			end
		elseif _i.shouji > 0 and _i.names.shouji == npc .. "���׼�" then
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
	go("�����ͷ", "���ݳ�")
	db()
	go("����", "���ݳ�")
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
		go("Ĺ��", "���ݳ�")
		e("ask jieyin dizi about ���")
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
	addListener([[^�����ⳤ�ϴ����йء�job������Ϣ��\n�ⳤ��˵�������ðɣ������(\S+)��һֱ����ؤ�����ԣ���ǰȥ�跨�����˳�������$]], "s:return 'ok', wildcards[1]", "askgbjob")
	addListener([[^�����ⳤ�ϴ����йء�job������Ϣ��\n�ⳤ��˵������û��������æ����,���һ�ᡣ��$]], "s:return 'busy'", "askgbjob")
	addListener([[^�����ⳤ�ϴ����йء�job������Ϣ��\n�ⳤ��˵�����������ҿ�û�и�������񣬵Ȼ���ô������$]], "s:return 'busy'", "askgbjob")
	addListener([[^�����ⳤ�ϴ����йء�job������Ϣ��\n�ⳤ��˵�����������ҿ�û�и�������񣬵Ȼ������ɣ���$]], "s:return 'jobBusy'", "askgbjob")
	addListener([[^�����ⳤ�ϴ����йء�job������Ϣ��\n�ⳤ��˵������������ǲ�����ţ�����Ȼ�����ǵȻ������\n�ⳤ��һ�������������ƨ�ɣ�$]], "s:return 'jobBusy'", "askgbjob")
	addListener([[^�����ⳤ�ϴ����йء�job������Ϣ��\n�ⳤ��˵����������������û�и����������ȥ�����ط������ɣ���$]], "s:return false", "askgbjob")
	addListener([[^�����ⳤ�ϴ����йء�job������Ϣ��\n�ⳤ��˵�����������ϸ�����ȥ������ȥ�������ҽ��İɣ��Ȼ���������$]], "s:return 'jobInfo'", "askgbjob")
	addListener([[^�����ⳤ�ϴ����йء�job������Ϣ��\n�ⳤ��˵��������û��ͨ���������ӵĿ��飬�ҿɲ������㡣��$]], "s:return 'test'", "askgbjob")
	local result, name = listen()
	if result == "ok" then
		local addr = listener([[^�ⳤ��˵����������������(\S+)һ���������\S+֮ǰ�ϻ�������$]], "s:return wildcards[1]")
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
	go("����", "���ݳ�")
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
	addListener("^" .. npc .. "��־�Ժ�������һ�����ȣ����ڵ��ϻ��˹�ȥ��$", "s:return 'faint'", "gbKill")
	addListener("^" .. npc .. "��ž����һ�����ڵ��ϣ������ų鶯�˼��¾����ˡ�$", "s:return 'die'", "gbKill")
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
	go("����", "���ݳ�")
	if woods then
		e("give " .. woods .. " to wu zhanglao")
	else
		e("give shouji to wu zhanglao;give corpse to wu zhanglao")
	end
	set("gbgive")
	addListener([[^�ⳤ��˵��������������æ���أ����Ե�һ�°ɡ���\n�Է�����������������$]], "s:return 'busy'", "gbgive")
	addListener([[^����ⳤ��һ��\S{4,8}��ʬ�塣$]], "s:return 'ok'", "gbgive")
	addListener([[^����ⳤ��һ��\S{4,8}���׼���$]], "s:return 'ok'", "gbgive")
	addSetListener("gbgive", "gbgive")
	local result = listen()
	if result == "busy" then
		return gbGive()
	elseif result == "gbgive" then
		e("drop corpse;drop shouji")
		return false
	else
		listener([[^��������л�Ȼ���ʣ�������\S+��Ǳ�ܺ�\S+�㾭�飡$]])
		e("unset gb_npc;unset gb_addr")
		return true
	end
end

local function isIgnore(name)
	local ignores = {
		"������",
		"������",
		"���ĵ�",
	}
	for _, ignoreName in pairs(ignores) do
		if name == ignoreName then
			return true
		end
	end
	return false
end
