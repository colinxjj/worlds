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
	go("С��", "���ְ�")
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
	go("С��", "���ְ�")
	e("ask bei haishi about fangqi")
	clbInit()
	waitbusy()
	return false
end

function clbAsk()
	go("С��", "���ְ�")
	e("ask bei haishi about job")
	addListener([[^���򱴺�ʯ�����йء�job������Ϣ��\n����ʯ�����㹪�����˸�Ҿ��\n����ʯ����Ķ�������˵�����ҽӵ��ɸ봫�飬(\S+)���°���(\S+)��(\S+)������Ϯ������Ͽ�ǰȥ��Ԯ��$]],
		"s:return wildcards[1], wildcards[2], wildcards[3]", "clbask")
	addListener([[^���򱴺�ʯ�����йء�job������Ϣ��\n����ʯ˵�������㲻���Ѿ���չ��һ���ز��ˣ����Ǽ���Ŭ���ɣ���$]], "s:return 'ok'", "clbask")
	addListener([[^���򱴺�ʯ�����йء�job������Ϣ��\n����ʯ˵�������Ұ����ڱȽϿ��У���ʱ��û����������ȥ������$]], "s:return 'busy'", "clbask")
	addListener([[^���򱴺�ʯ�����йء�job������Ϣ��\n����ʯ˵��������ʱû��������Ҫ������(��)?��һ��������ɡ���$]], "s:return 'busy'", "clbask")
	addListener([[^���򱴺�ʯ�����йء�job������Ϣ��\n����ʯ˵�������Ҳ��Ǹ����������Ұ�������\S+����Ϯ�����㻹���Ͽ�ǰȥ��Ԯ����$]], "s:return false", "clbask")
	addListener([[^���򱴺�ʯ�����йء�job������Ϣ��\n����ʯ˵������������곤�ְ����񣬻�����ȥ��Ϣһ��ɡ���$]], "s:return false", "clbask")
	local title, npc, addr = listen()
	if title == "busy" then
		waitbusy()
		waitjob()
		return clbAsk()
	end
	return title, npc, addr
end
