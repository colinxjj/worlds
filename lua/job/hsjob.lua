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
		goals = {"������",},
		path = hsFindSsl, 
	},
	{
		goals = {"�˵�", "��ʯ·", "��̳��", "��ȪԺ",},
		path = hsFindHsc,
	},
	{
		goals = {
			"������", "����", "������", "�����", "�ٲ�", "ǧ�ߴ�", "���ƺ",
			"ɯ��ƺ", "������", "ҩ��", "��Ů��", "������", "ɽ·", "Сɽ·",
			"˼����", "�ٳ�Ͽ", "�Ͼ���", "����",
		},
		path = hsFindHs,
	},
}
function hsGo(addr, name)
	go("����", "��ɽ")
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
	go("������", "��ɽ")
	e("ask yue buqun about fail")
	waitbusy()
	hsInit()
	local useTime = startTime and os.time() - startTime
	log.warn("��ɽ����ʧ��" .. (useTime and ("����ʱ��" .. useTime .. " ��") or ""))
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
	addListener([[^  ]] .. name .. [[��ʬ��\(Corpse\)$]], "s:return 'die', wildcards[1]", "hsKill")
	addListener([[^]] .. name .. [[��־�Ժ�������һ�����ȣ����ڵ��ϻ��˹�ȥ��$]], "s:return 'faint', wildcards[1]", "hsKill")
	addListener([[^]] .. name .. [[��ž����һ�����ڵ��ϣ������ų鶯�˼��¾����ˡ�$]], "s:return 'die', wildcards[1]", "hsKill")
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
	go("������", "��ɽ")
	hsInit()
	e("give ling pai to yue buqun")
	set("give")
	addListener([[^������(\S+)�㾭�飬(\S+)��Ǳ�ܣ�(\S+)������$]], "s:return trans(wildcards[1]), trans(wildcards[2]), trans(wildcards[3])", "give")
	addSetListener("give", "give")
	local exp, pot, shen = listen()
	local useTime = startTime and os.time() - startTime
	if exp == "give" then
		log.warn("��ɽ����ʧ��" .. (useTime and ("����ʱ��" .. useTime .. " ��") or ""))
	else
		log.info("��ɽ������ɣ��õ����飺" .. exp .. "��Ǳ�ܣ�" .. pot .. "����" .. shen .. (useTime and ("����ʱ��" .. useTime .. " ��") or "") .. "��ÿСʱ���ʣ�" .. getHourExp())
	end
end

function hsGive()
	go("��̳", "��ɽ")
	e("give shouji to yue lingshan;give corpse to yue lingshan")
	waitbusy()
	e("ask yue lingshan about ��������")
	waitbusy()
	return true
end

function stealLing(i)
	i = i or 0
	log.debug("�� : " .. i .. " ��Ѱ�� mmr")
	if i > 20 then
		return false
	end
	go("ɽ����", "��ɽ")
	e("s")
	set("ling")
	addListener([[^(?:��Ȼ|ͻȻ|�͵�|�䲻��|�䲻��)(?:��������|�������)(?:�ܳ�|ɱ��)һ��������(?:һ�Ѷ���|����|һ����ȥ|��ȥ)������ƣ���(\S+)(?:��|����|����·|�����·)��ȥ��\n]] .. 
		[[��һ��ץ����������ͼ�������ƣ��������������ݵö��˹�ȥ����˳�ֳ��������˵����֣�����ԭ�����������𽭺���(\S+)��]], "s:return wildcards[1], wildcards[2]", "ling")
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
	go("��Ժ", "��ɽ")
	db()
	go("������", "��ɽ")
	return hsAsk0()
end

function hsAsk0()
	e("ask yue buqun about job")
	addListener([[^��������Ⱥ�����йء�job������Ϣ��\n����Ⱥ˵����������¶�׹�, ����ȥ�Ͷ�����\?��$]], "s:return false", "hsAsk")
	addListener([[^��������Ⱥ�����йء�job������Ϣ��\n����Ⱥ˵�������㲻�ܹ�˵ѽ������������ɼ����ҿ�������$]], "s:return 'already'", "hsAsk")
	addListener([[^��������Ⱥ�����йء�job������Ϣ��\n����Ⱥ˵����������û����˵�ж���Ϊ�����գ����Լ�ȥ��ϰ�书ȥ�ɣ���$]], "s:return false", "hsAsk")
	addListener([[^��������Ⱥ�����йء�job������Ϣ��\n����Ⱥ˵��������������æ�������������أ���$]], "s:return 'busy'", "hsAsk")
	addListener([[^��������Ⱥ�����йء�job������Ϣ��\n����Ⱥ˵����������������û�и���������㻹���ȴ����������������˵�ɡ���$]], "s:return 'quest'", "hsAsk")
	addListener([[^����Ⱥ������һ�����ơ�$]], "s:return 'ok'", "hsAsk")
	local result = listen()
	waitbusy()
	if result == "busy" then
		go("��Ժ", "��ɽ")
		waitjob()
		return hsAsk()
	elseif result == "quest" then
		e("quit")
	end
	return result
end

-- Ѱ��������
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

-- Ѱ��ɽ��
function hsFind1(name)
	e("e;s;sd;sw;ne;se;nw;ne;eu;se") -- �� shulin3
	local id = getId(name, true)
	if id then
		return hsKill(id, name)
	else
		wait(1000)
		return hsFind2(name)
	end
end

-- ��������
function hsFind2(name)
	e("n;n;e;e;e;e;e;w;s")
	local id = getId(name, true)
	if id then
		return hsKill(id, name)
	elseif here().name ~= "ɽ����" then
		wait(1000)
		return hsFind2(name)
	else
		wait(1000)
		return false
	end
end

-- ɽ�ŵ�������
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

-- �����ĵ��������˵�
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

-- �˵س���
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
	elseif here().name == "�˵�" then
		return hsFind5(name)
	else
		wait(1000)
		return hsFind6(name)
	end
end

-- �����ĵ�ɽ����
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

-- ɽ������ɽ����
function hsFind7(name)
	if getDex() > 30 then
		return hsFind71(name)
	else
		return hsFind70(name)
	end
end

-- ɽ���µ�ǧ�ߴ�
function hsFind70(name)
	e("se;ne;sw;su;eu")
	local id = getId(name, true)
	if id then
		return hsKill(id, name)
	elseif here().name == "ɽ����" then
		wait(1000)
		return hsFind7(name)
	else
		wait(2000)
		return hsFind8(name)
	end
end

-- ɽ���µ���Ů��
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

-- ǧ�ߴ�����Ů��
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

-- ��Ů��
function hsFind9(name)
	e("s;se;sw;ne;su;su;s;s;s;n;w;s;n;w;n;n;e;e;e;e;s;s;w;s;n;w")
	local id = getId(name, true)
	if id then
		return hsKill(id, name)
	else
		return false
	end
end
