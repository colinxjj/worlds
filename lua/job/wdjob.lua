function wdInit()
	e("unset wd_info;unset wd_finish")
end

local wdIgnores = {
	["��ɽ�ȷ�"] = 40000000,
	["��������"] = 40000000,
	["��ս�����"] = 10000000,
	["Τ����"] = 10000000,
	["��ָ��ͨ"] = 2000000,
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
	{npc = npc, msg = "^" .. npc .. [[(������˵�����ٺ٣��е��Ҹ����������Ӳ������ˣ�|�����㷢��һ����Ц��˵������Ȼ�������\S+ײ���ˣ���Ҳ��ֻ�����������ˣ�|�����㷢��һ����Ц��˵����\S+������ط�̫С�����ָ�\S+������Ȼ��Ȼ���)$]]}
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
	if go("�������칬", "�䵱ɽ") then
		return wdFinish0()
	else
		wait(10000)
		return wdFinish()
	end
end

function wdFinish0()
	e("r")
	set("sqd")
	addListener([[^������(\S+)�㾭�飬(\S+)��Ǳ�ܣ�����������������ˣ�$]], "s:return trans(wildcards[1]), trans(wildcards[2])", "sqd")
	addSetListener("sqd", "sqd")
	local exp, pot = listen()
	if exp == "sqd" then
		return wdFangqi()
	else
		local useTime = startTime and os.time() - startTime
		log.info("�䵱������ɣ��õ����飺" .. exp .. "��Ǳ�ܣ�" .. pot .. (useTime and ("����ʱ��" .. useTime .. " ��") or "") .. "��������Ϣ��λ�ã�" .. addr .. "�����룺" .. length .. "�����ɣ�" .. party .. "������" .. skill .. "������" .. level .. "��ÿСʱ���ʣ�" .. getHourExp())
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
	addListener("^����û�� " .. id .. "��$", "s:return 'continue'", "wdKill")
	addListener("^" .. npc .. [[�����㷢��һ����Ц��˵����\S+������ط�̫С�����ָ�\S+������Ȼ��Ȼ���$]], "s:return 'kick'", "wdKill")
	addListener([[^���̲�ס��ݺ���\(kick\)����һ�һ�š�$]], "s:return 'kick'", "wdKill")
	addListener("^" .. npc .. "��һ�������ã���ת��������Ͳ����ˡ�$", "s:return 'ok'", "wdKill")
	addListener("^" .. npc .. "��ž����һ�����ڵ��ϣ������ų鶯�˼��¾����ˡ�$", "s:return 'die'", "wdKill")
	addListener([[^��ֻ����ͷ�����ͣ���ǰһ�ڣ�����ʲôҲ��֪���ˡ���$]], "s:return 'fail'", "wdKill")
	addListener([[^�㡸ž����һ�����ڵ��ϣ������ų鶯�˼��¾����ˡ�$]], "s:return 'over'", "wdKill")
	addListener([[^���ܳɹ�$]], "s:return 'escape'", "wdKill")
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
		log.warn("���䵱����ɱ�ִ�裬λ�ã�" .. addr .. "�����룺" .. length .. "�����ɣ�" .. party .. "������" .. skill .. "������" .. level)
		listener([[^һ��ů�����Ե�������ȫ�����������ָֻ���֪������$]])
		e("yun qi;yun jingli;yun jing")
		return "fail"
	end
	if result == "kick" then
		e("kick " .. id)
		return wdKill(npc, id)
	end
	if result == "escape" then
		log.warn("û����䵱����ɱ�֣������ˣ�λ�ã�" .. addr .. "�����룺" .. length .. "�����ɣ�" .. party .. "������" .. skill .. "������" .. level)
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
		log.error("���䵱����ɱ��ɱ����λ�ã�" .. addr .. "�����룺" .. length .. "�����ɣ�" .. party .. "������" .. skill .. "������" .. level)
		return false
	end
	return true
end

function wdInfo()
	return getJobInfo("wd_info", "wd_finish")
end

function wdAsk()
	db()
	go("�����", "�䵱ɽ")
	e("ask song yuanqiao about job")
	addListener([[^������Զ�Ŵ����йء�job������Ϣ��\n��Զ��˵��������������䵱�������񣬻�����ȥ��Ϣһ��ɡ���$]], "s:return false", "wdAsk1")
	addListener([[^������Զ�Ŵ����йء�job������Ϣ��\n��Զ��˵����������������û�и���������㻹���ȴ����������������˵�ɡ���$]], "s:return 'quit'", "wdAsk1")
	addListener([[^������Զ�Ŵ����йء�job������Ϣ��\n��Զ��˵������������ʱû���ʺ���Ĺ�������$]], "s:return false", "wdAsk1")
	addListener([[^������Զ�Ŵ����йء�job������Ϣ��\n��Զ��˵�������������\S+���񣬻�������Ϣһ��ɡ���$]], "s:return 'busy'", "wdAsk1")
	addListener([[^������Զ�Ŵ����йء�job������Ϣ��\n��Զ��˵����������æ�ű�������ء���$]], "s:return 'busy'", "wdAsk1")
	addListener([[^������Զ�Ŵ����йء�job������Ϣ��\n��Զ��˵�������Ҳ��Ǹ��������������ڵ��ҡ���Ϳ�ȥ�ɣ���$]], "s:return 'fangqi'", "wdAsk1")
	addListener([[^������Զ�Ŵ����йء�job������Ϣ��\n��Զ��˵������\S+�����������������޷�����������������񣡡�$]], "s:return 'shen'", "wdAsk1")
	addListener([[^��Զ������Ķ�������˵������˵\S{8}(\S+)����$]], "s:return 'bigword', wildcards[1], wildcards[2]", "wdAsk1")
	addListener([[^��Զ������Ķ�������˵������˵\S{8}(\S+)����(\S+?)(?:��Χ��Բ(\S{2})��֮��)?���ң�������ȥ����Ѳ��һȦ��$]],
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
		go("������", "�䵱ɽ")
		waitjob()
		return wdAsk()
	end
	if type == "shen" then
		addShen(10000)
		return wdAsk()
	end
	if type == "bigword" then
		addr = getBigWord()
		addListener([[^(?:��Χ��Բ(\S{2})��֮��)?���ң�������ȥ����Ѳ��һȦ��$]], "s:return wildcards[1]", "wdAsk2")
		length = listen()
	end
	if length then
		length = trans(length)
	else
		length = 1
	end
	addListener([[^��Զ������Ķ�������˵����\S+��׷�鵽���������䵱������Ϊ�ó�(\S+)�Ĺ���\n\S+���ܽ�����ɱ������Ϊ������ȥһ����Ҳ��Ϊ\S+�ָ��������Ե��м�������$]],
		"s:return '�䵱��', wildcards[1]", "wdAsk3")
	addListener([[^��Զ������Ķ�������˵���������ɵ�������������������(\S+)��(?:��ͽ|����)����Ϊ�ó�(\S+)�Ĺ���$]], "s:return wildcards[1], wildcards[2]", "wdAsk3")
	local party, skill = listen()
	set("wdLevel")
	addListener([[^��Զ������Ķ�������˵�������˵��书��Ϊ�˵ã���ɵ�С�ĶԸ�Ŷ��$]], "s:return 1", "wdAsk4")
	addListener([[^��Զ������Ķ�������˵�������˵��书������������ɵ�С��Ӧ����$]], "s:return 2", "wdAsk4")
	addListener([[^��Զ������Ķ�������˵�������˵��书���뻯�����򲻹��ɲ�Ҫ���ܡ�$]], "s:return 3", "wdAsk4")
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
	go("�����", "�䵱ɽ")
	e("ask song yuanqiao about fangqi")
	wdInit()
	local useTime = startTime and os.time() - startTime
	log.warn("�䵱����ʧ�ܣ�λ�ã�" .. addr .. "�����룺" .. length .. "�����ɣ�" .. party .. "������" .. skill .. "������" .. level)
	return false
end
