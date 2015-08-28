local sx2Level = 7
local sx2Info
local sx2Skill
local startTime
local sxAddr
local sxNpc

function sxInit()
	e("unset sx1_wait;unset sx2_wait")
end

function sxjob()
	startTime = os.time()
	sx2Info = nil
	sx2Skill = nil
	local name, city, npc, time = sxInfo()
	if not name then
		sxInit()
		name, city, npc, time = sxAsk()
		if not name then
			return sxFangqi()
		else
			e("set sx1_wait")
		end
	end
	local result = sxGo(name, city, npc, time)
	if not result then
		return sxFangqi()
	else
		return result
	end
end

function sxGo(name, city, npc, time)
	local _sets = sets()
	sx2Level = _sets["sx2_level"] and tonumber(sets()["sx2_level"]) or sx2Level
	if not _sets["sx2_wait"] then
		local result = sx1(name, city, npc, time, _sets)
		if not result then
			return false
		end
		if result == "ok" then
			return true
		end
		sx2Info = result
		local killerLevel = getKillerLevel(result)
		if killerLevel > sx2Level then
			e("no")
			local useTime = startTime and os.time() - startTime
			log.info("����������ɣ��õ����飺" .. exp .. "��Ǳ�ܣ�" .. pot .. (useTime and ("����ʱ��" .. useTime .. " ��") or ""))
			return true
		else
			e("set sx2_wait")
		end
	end
	return sx2()
end

function sx1(name, city, npc, time, _sets)
	if not name then
		name, city, npc, time = sxInfo()
		_sets = sets()
	end
	if not name then
		return false
	end
	if _sets["sx1_wait"] then
		sxWait()
		if not sxKill() then
			return false
		end
	end
	name, city, npc, time = sxInfo()
	if not name then
		log.warn("��û������")
		return false
	end
	db()
	return sxSx(name, city, npc, time)
end

function sx2()
	local name, city, npc, time = sxInfo()
	if not name then
		e("no")
		e("unset sx2_wait")
		return true
	end
	if not canFind(name, city, 0) then
		e("no")
		e("unset sx2_wait")
		return true
	end
	if sets()["sx2_wait"] then
		leaveNoFightRoom()
		if not sxKill() then
			return false
		end
	end
	name, city, npc, time = sxInfo()
	if not name then
		log.warn("��û������")
		return false
	end
	return sxSx(name, city, npc, time)
end

function getKillerLevel(killerLevel)
	local killerLevels = {
		["΢�����"] = 1,
		["������"] = 2,
		["С������"] = 3,
		["�ڻ��ͨ"] = 4,
		["��Ϊ�˵�"] = 5,
		["��������"] = 6,
		["���뻯��"] = 7,
	}
	return killerLevels[killerLevel]
end

local sx2Ignore = {
	["��ɽ�ȷ�"] = 40000000,
	["��������"] = 40000000,
	["����ذ��"] = 1000000,
	["��а����"] = 1000000,
}

function sxKill()
	perform()
	local killers = {}
	local ids = {}
	local target
	local faints = {}
	local dies = {}
	while true do
		addListener([[^(?:��⣡����Ҫ����|���������������һ���´������ã��ű�͵��)!\n(\S{4,8})˵������(?:С�ӣ��Թ԰��ܺ���������|���ܣ��������ҽ�����)��������$]], "s:return 'killer', wildcards[1]", "sxKill")
		addListener([[^��⣬�ֳ������˸��ˣ�\n(\S{4,8})˵������(?:ʦ�֣�����Ӳ�úܣ���������|���ܣ��������ҽ�����)��������$]], "s:return 'killer', wildcards[1]", "sxKill")
		addListener([[^���������������һ���´������ã��ű�͵��!\n�㶨��һ����ԭ����(\S{4,8})�����Ҵ����书���ߣ��ƺ��õ���\S+��(\S+)��$]], "s:return 'killer', wildcards[1], wildcards[2]", "sxKill")
		addListener([[^  (?:��ɱ��|��ɷ��)(?:Ů)?ɱ�� (\S{4,8})\(([\w ]+)\)(?: <(ս����|���Բ���)>)?$]], "s:return 'id', wildcards[1], string.lower(wildcards[2])", "sxKill")
		addListener([[^  (\S{4,8})��ʬ��\(Corpse\)$]], "s:return 'die', wildcards[1]", "sxKill")
		addListener([[^(\S{4,8})��־�Ժ�������һ�����ȣ����ڵ��ϻ��˹�ȥ��$]], "s:return 'faint', wildcards[1]", "sxKill")
		addListener([[^(\S{4,8})��ž����һ�����ڵ��ϣ������ų鶯�˼��¾����ˡ�$]], "s:return 'die', wildcards[1]", "sxKill")
		addListener([[^��ֻ����ͷ�����ͣ���ǰһ�ڣ�����ʲôҲ��֪���ˡ���$]], "s:return 'fail'", "sxKill")
		addListener([[^���ܳɹ�$]], "s:return 'escape'", "sxKill")
		addListener([[^�㡸ž����һ�����ڵ��ϣ������ų鶯�˼��¾����ˡ�$]], "s:return 'over'", "sxKill")
		local type, p1, p2 = listen(180, function() return "timeout" end)
		if type == "fail" then
			log.warn("������ɱ�ִ���ˣ�����" .. tostring(sx2Info) .. "������" .. tostring(sx2Skill))
			listener([[^һ��ů�����Ե�������ȫ�����������ָֻ���֪������$]])
			e("yun qi;yun jingli;yun jing")
			return false
		end
		if type == "over" then
			log.error("������ɱ��ɱ��������" .. tostring(sx2Info) .. "������" .. tostring(sx2Skill))
			return false
		end
		if type == "escape" then
			log.warn("û�������ɱ�֣������ˣ�����" .. tostring(sx2Info) .. "������" .. tostring(sx2Skill))
			wait(2000)
			return false
		end
		if type == "timeout" then
			return false
		end
		if type == "killer" then
			if p2 then
				currentJob = "sxjob2"
				sx2Skill = p2
			else
				currentJob = "sxjob1"
			end
			if sx2Ignore[p2] and getExp() < sx2Ignore[p2] then
				escape()
				return sxFangqi()
			else
				sxInit()
				e("l")
				killers[p1] = true
			end
		end
		if type == "faint" and killers[p1] then
			e("kill " .. ids[p1])
			faints[p1] = true
		end
		if type == "die" and killers[p1] then
			faints[p1] = true
			dies[p1] = true
		end
		if type == "id" and killers[p1] then
			e("kill " .. p2)
			ids[p1] = p2
		end
		if killers[p1] then
			local allDead = true
			local allFaint = true
			for name in pairs(killers) do
				if not dies[name] then
					allDead = false
				end
				if not faints[name] then
					allFaint = false
				end
				if (not target or dies[target]) and not allFaint and target ~= name and ids[name] then
					target = name
					kill(ids[target])
				end
			end
			if allDead then
				break
			end
			if (type == "faint" or type == "die") and allFaint then
				noPerform()
			end
		end
	end
	currentJob = nil
	waitbusy()
	for name in pairs(killers) do
		local n = findCorpse(name)
		if not n then
			return false
		end
		e("get secret letter from corpse " .. n .. ";get silver from corpse " .. n)
	end
	return true
end

function sx(npc, n)
	n = n or 1
	local id, status = getId(npc)
	if not id then
		return false
	end
	if status == "faint" then
		wait(1000)
		sx(npc, n)
	end
	e("h;songxin " .. id .. " " .. n)
	set("sx")
	addListener([[^\S+��������Ų��Ǹ��ҵģ����ǲ����ʹ��ˣ�$]], "s:return 'wrong'", "sx")
	addListener([[^\S+��ֵ����㿴������Ƿ��ʹ����ˣ�����ͬ�����˿ɲ���Ŷ��$]], "s:return 'wrong'", "sx")
	addListener([[^����Ų����͸�����˵ġ�$]], "s:return 'wrong'", "sx")
	addListener([[^�ã�������ɣ��㱻�����ˣ�(\S+)��ʵս���飬(\S+)��Ǳ�ܡ���Ϊ���������ɹ�����\S+�Ρ�$]], "s:return 'ok', trans(wildcards[1]), trans(wildcards[2])", "sx")
	addListener("^����æ���ء�$", "s:return 'busy'", "sx")
	addListener("^��Ҫ�͸�˭��$", "s:return 'fail'", "sx")
	addSetListener("sx", "sx")
	local result, exp, pot = listen()
	if result == "ok" then
		local useTime = startTime and os.time() - startTime
		local msg = "����������ɣ��õ����飺" .. exp .. "��Ǳ�ܣ�" .. pot .. (useTime and ("����ʱ��" .. useTime .. " ��") or "")
		if sx2Info then
			msg = msg .. "��������Ϣ������" .. sx2Info .. "������" .. tostring(sx2Skill)
		end
		log.info(msg)
		return true
	elseif result == "wrong" then
		return sx(npc, n + 1)
	elseif result == "busy" then
		return sx(npc, n)
	elseif result == "sx" then
		return false
	end
end

function sxFangqi()
	sxInit()
	go("��վ", "�����")
	e("ask zhu wanli about fangqi")
	local useTime = startTime and os.time() - startTime
	local msg = "��������ʧ�ܣ�λ�ã�" .. tostring(sxAddr) .. "�������ˣ�" .. tostring(sxNpc)
	if sx2Info then
		msg = msg .. "������" .. sx2Info .. "������" .. tostring(sx2Skill)
	end
	log.warn(msg)
	return false
end

function sxSx(name, city, npc, time)
	if not name then
		name, city, npc, time = sxInfo()
	end
	if not name then
		return false
	end
	if not canFind(name, city, 0) then
		return false
	end
	local around = 0
	if isMove(npc) then
		around = 4
	end
	local found = find(name, city, around, npc, "all", sx, npc, 1)
	if not found then
		if around > 0 then
			return false
		else
			found = find(name, city, 4, npc, "all", sx, npc, 1)
			if not found then
				return false
			end
		end
	end
	set("sx2")
	addListener("^" .. npc .. [[����Ķ�������˵���������и��书�������(΢�����|������|С������|�ڻ��ͨ|��Ϊ�˵�|��������|���뻯��)�ļһ�Ҫ��������ţ�\S+��$]], "s:return wildcards[1]", "sx2")
	addSetListener("sx2", "sx2")
	local result = listen()
	if result == "sx2" then
		return "ok"
	else
		return result
	end
end

function isMove(npc)
	local moveNpc = {
		"�ͷ", "�½���", "������ؤ", "�в�ɮ",
	}
	for _, n in pairs(moveNpc) do
		if npc == n then
			return true
		end
	end
	return false
end

function sxInfo()
	e("l secret letter")
	set("sxInfo")
	addListener([[^    ��(\S+) (\S+)�� ������$]], "s:return wildcards[1], wildcards[2]", "sxInfo")
	addListener([[^    ��$]], "s:return 'bigword'", "sxInfo")
	addSetListener("sxInfo", "sxInfo")
	local addr, npc = listen()
	if addr == "sxInfo" then
		return false
	elseif addr == "bigword" then
		addr = getBigWord()
		npc = listener([[^ (\S{4,8})�� ������$]], "s:return wildcards[1]")
	end
	sxAddr = addr
	sxNpc = npc
	addListener("^�������г����ʱ��ȥ���š�$", "s:return 0", "sxInfo") -- > 3/4
	addListener("^�Ѿ���ȥһС��ʱ���ˡ�$", "s:return 1", "sxInfo") -- 4/3 ~ 1/2
	addListener("^�㻹��һ���ʱ��ȥ���š�$", "s:return 2", "sxInfo") -- 1/2 ~ 1/4
	addListener("^���ʱ���Ѿ������ˡ�$", "s:return 3", "sxInfo") -- 1/4 ~ 1/8
	addListener("^ʱ�佫�������񼴽�ʧ�ܡ�$", "s:return 4", "sxInfo") -- < 1/8
	local time = listen()
	local name, city = getAddr(addr)
	return name, city, npc, time
end

function sxAsk()
	db()
	local result = sxAsk0()
	if result == "join" then
		go("��������", "��������")
		e("ask fu sigui about join")
		waitbusy()
		return sxAsk()
	elseif result == "busy" then
		return false
	elseif result == "jobBusy" then
		waitbusy()
		e("#2 w")
		waitjob()
		return sxAsk()
	end
	local name, city, npc, time = sxInfo()
	if not name then
		return false
	end
	if not canFind(name, city, 0, "look") then
		return false
	end
	return name, city, npc, time
end

function sxAsk0()
	go("��վ", "�����")
	wait(2000)
	e("ask zhu wanli about job")
	addListener([[^��������������йء�job������Ϣ��\n������˵������\S+���㲻�Ǳ�������ӣ��˻��Ӻ�˵�𣿡�$]], "s:return 'join'", "sxjob")
	addListener([[^��������������йء�job������Ϣ��\n������˵�������㲻���Ѿ��������ŵ������𣿻�����ȥ������$]], "s:return 'ok'", "sxjob")
	addListener([[^��������������йء�job������Ϣ��\n������˵�����������������������񣬻���ȥ��Ϣһ��ɡ���$]], "s:return 'busy'", "sxjob")
	addListener([[^��������������йء�job������Ϣ��\n������˵������������ʱû�и���������ٵ�\S+��ʱ���ɡ���$]], "s:return 'jobBusy'", "sxjob")
	addListener([[^��������������йء�job������Ϣ��\n������˵��������ʱû������Ҫ�ͣ����һ��������ɡ���$]], "s:return 'jobBusy'", "sxjob")
	addListener([[^��������������йء�job������Ϣ��\n������˵����������ȥ��Ϣһ��ɣ���$]], "s:return 'jobBusy'", "sxjob")
	addListener("^�����ｻ����һ���ܺ���$", "s:return 'ok'", "sxjob")
	return listen()
end

function sxWait()
	local waitAddrs = {
		{name = "�ν����ɺ�", city = "����Ƕ�"},
		{name = "���ں�", city = "����Ƕ�"},
		{name = "·�ϴ��ˮ", city = "����Ƕ�"},
		{name = "����¥", city = "����Ƕ�"},
		{name = "��ɽɭ��", city = "����Ƕ�"},
		{name = "ʯ��", city = "����Ƕ�"},
		{name = "���Ӷ�"},
		{name = "���Ӷ���", city = "����Ƕ�"},
		{name = "��һ��", city = "����Ƕ�"},
		{name = "�ڶ���", city = "����Ƕ�"},
		{name = "������", city = "����Ƕ�"},
		{name = "�۾�¥", city = "����Ƕ�"},
		{name = "�۾�¥��", city = "����Ƕ�"},
		{name = "����", city = "����Ƕ�"},
		{name = "������", city = "����Ƕ�"},
		{name = "÷��ѩɽ"},
		{name = "����ѩɽ", city = "�������"},
		{name = "����ѩɽ", city = "�������"},
		{name = "��ذ�ɽ", city = "�������"},
		{name = "���", city = "�������"},
		{name = "����Ͽ", city = "�������"},
		{name = "���������", city = "�������"},
		{name = "ŭ��", city = "�������"},
		{name = "�¹ط�", city = "�������"},
		{name = "���¥", city = "�������"},
		{name = "�ɻ���", city = "�������"},
		{name = "��԰��", city = "�������"},
		{name = "����", city = "�������"},
		{name = "������", city = "�������"},
		{name = "������", city = "�������"},
		{name = "����"},
		{name = "��ɽ", city = "�������"},
		{name = "��˫����", city = "�������"},
	}
	local _, addr = randomGet(waitAddrs)
	perform()
	go(addr.name, addr.city)
end
