local dzMsg = {
	"���˹���ϣ�վ��������",
	"��һ�������н������������ӵ�վ��������",
	"�㽫��Ϣ���˸�С���죬���ص���չ�վ��������",
	"�㽫������Ϣ��ͨ���������������۾���վ��������",
	"���������������뵤������۾������������һ������",
	"��ֿ�˫�֣������������£����е��̹�Ҳ��������������",
	"�㽫��������������֮�ư�����һ�ܣ��о����������ˡ�",
	"��һ�����н�����,��ʱ����ů,�е������ھ�������һ�֡�",
	"�㽫��Ϣ����������ʮ�����죬���ص��ֻ����ȫ��ů����ġ�",
	"�������뵤�������ת�����������չ���˫��̧��վ��������",
	"�㽫��Ϣ������һ��С���죬�������뵤�˫��һ��վ��������",
	"������������������һ�����죬���������ڵ�������������۾���",
	"������������������һ�����죬�����������ڵ������̧�����۾���",
	"����Ƭ�̣���о��Լ��Ѿ��������޼������۵����������վ��������",
	"�㽫����������������������һȦ���������뵤������֣�������һ������",
	"��˫��΢�գ���������ؾ���֮����������,����ػָ��������չ�վ��������",
	"��ֻ����Ԫ��һ��ȫ�������������Ը��ӣ��̲�ס��Хһ��������վ��������",
	"�㽫��Ϣ����һ�����죬ֻ�е�ȫ��̩ͨ��������ů���ģ�˫��һ�֣�����վ��������",
	"������������һ��Ԫ����������˫�ۣ�ֻ����ȫ����������������������Ȼ����֮����",
	"��о�����ԽתԽ�죬�Ϳ�Ҫ������Ŀ����ˣ�����æ�ջض��غ���Ϣ����Цһ��վ��������",
	"��е��Լ��������Ϊһ�壬ȫ����ˬ��ԡ���磬�̲�ס�泩��������һ���������������۾���"
}
local dzHaltMsg = {
	"����ɫһ����Ѹ��������վ��������",
	"��˫��һ��������ѹ����Ϣվ��������",
	"������΢΢����������������վ��������",
	"��üͷһ�壬�������������ַ���������",
	"����Ϣһת��Ѹ��������ֹͣ����Ϣ����ת��",
	"����Ϣһת��Ѹ�������������չ�վ��������",
	"��˫��һ�֣�������ȭ����������Ѹ�ٽ������ڡ�",
	"��Ҵҽ���Ϣ���˻�ȥ����һ��������վ��������",
	"�㳤��һ����������Ϣ�������˻�ȥ��վ��������",
	"��ͻȻ˫������ǰһ��,ѹס������Ϣ,���Խ��",
	"������һ��������Ϣѹ�ص��˫��һ��վ��������",
	"��˫��һ�֣�ƽ̯���أ�Ѹ��������ֹͣ������������",
	"���͵�����˫�ۣ�˫��Ѹ�ٻظ���࣬��ϸ�������ܡ�",
	"��˫�ۻ����պϣ�Ƭ���͵������������̹⼱�������",
	"��΢һ��ü������Ϣѹ�ص������һ������վ��������",
	"��˫��һ�����������һ�����⣬��������һЦ��վ��������",
	"��е��������ͣ�ֻ��и����Ϣ������������������͸�����亹��"
}
local dzFailMsg = {
	"��������æ���ء�",
	"��Ҫ��������������",
	"��������Ҫ\\S+�������������",
	"���ʩ�ù��ڹ����������ϴ�����",
	"ս���в������ڹ������߻���ħ��",
	"��е�������Ϣ�Ҵܣ��޷�����������",
	"�����ھ��������޷�������Ϣ��������",
	"������ȫ������������޷��ټ��������ˡ�",
	"��û����ô�������������Ϣ����ȫ������",
}
local dzLeaveMsg = {
	"�˵ز���������",
	"�㻹��ר�Ĺ���ɣ�",
	"���޷���������������",
	"���ﲻ׼ս����Ҳ��׼������",
	"���Ҳ��ܴ�������Ӱ�������Ϣ��",
}
local tnFailMsg = {
	"��������æ���أ�",
	"��Ҫ�����پ����У�",
	"�����ھ����㣬�޷����о�����",
	"��е�������Ϣ�Ҵܣ��޷��������ɣ�",
	"ս��������, ̫С�������ˡ���������",
	"����������״��̫���ˣ��޷����о���",
	"����ڹ����л�û�иߵ�����˾�ȷ���ƣ�",
	"������ȫ������������޷��ټ��������ˡ�",
	"��������� enable ѡ����Ҫ�õ������ڹ���",
}
local tnLeaveMsg = {
	"�㻹��ר�Ĺ���ɣ�",
	"���޷���������������",
	"���ﲻ׼ս����Ҳ��׼���ɡ�",
	"���Ҳ������ɣ���Ӱ�������Ϣ��",
}
local healMsg = {
	"���ã���о�ͨ���Լ�����Ϣ���У����ϵ������Ѿ�ȫ���ˡ�",
	"�㲢û�����ˣ�",
}
local healHaltMsg = {
	"����ͷһ������æ������Ϣ��Ӳ��������Ϣѹ����ȥ��",
}
local healFailMsg = {
	"ս�����˹����ˣ�������",
	"��Ա���������о����������������ˡ�",
	"�㻹û��ѡ����Ҫʹ�õ��ڹ���",
	"����ڹ��ȼ���̫�ͣ������˹����ˡ�",
	"���������Ϊ������",
	"�������������",
	"�㲢û�����ˣ�",
	"���Ѿ����˹��أ����ܲ��������𵴣�",
}

function isFight()
	local noFight = {
		"�㻹��ר�Ĺ���ɣ�",
		"��Ҫ�����پ����У�",
		"���޷���������������",
		"���ﲻ׼ս����Ҳ��׼���ɡ�",
		"�����ھ����㣬�޷����о�����",
		"���Ҳ������ɣ���Ӱ�������Ϣ��",
		"��е�������Ϣ�Ҵܣ��޷��������ɣ�",
		"����������״��̫���ˣ��޷����о���",
		"������ȫ������������޷��ټ��������ˡ�",
		"����ڹ����л�û�иߵ�����˾�ȷ���ƣ�",
		"��������� enable ѡ����Ҫ�õ������ڹ���",
		"�������ֽŴ�����������������ȷ�����������ɡ�",
	}
	while true do
		addListener("^(" .. table.concat(noFight,"|") .. ")$", "s:return false", "noFight", trigger_flag.OmitFromOutput)
		addListener("^ս��������, ̫С�������ˡ���������$", "s:return true", "noFight", trigger_flag.OmitFromOutput)
		addListener("^��������æ���أ�$","s:return 'busy'", "noFight", trigger_flag.OmitFromOutput)
		hide("tuna")
		local status = listen()
		if status == "busy" then
			wait(500)
		else
			return status
		end
	end
end

function isBusy()
	local nobusy = {
		"�㻹��ר�Ĺ���ɣ�",
		"��Ҫ�����پ����У�",
		"���ﲻ׼ս����Ҳ��׼���ɡ�",
		"�����ھ����㣬�޷����о�����",
		"���Ҳ������ɣ���Ӱ�������Ϣ��",
		"��е�������Ϣ�Ҵܣ��޷��������ɣ�",
		"ս��������, ̫С�������ˡ���������",
		"����������״��̫���ˣ��޷����о���",
		"������ȫ������������޷��ټ��������ˡ�",
		"����ڹ����л�û�иߵ�����˾�ȷ���ƣ�",
		"��������� enable ѡ����Ҫ�õ������ڹ���",
		"�������ֽŴ�����������������ȷ�����������ɡ�",
	}
	addListener("^(" .. table.concat(nobusy,"|") .. ")$", "s:return 'free'", "waitbusy", trigger_flag.OmitFromOutput)
	addListener("^��������æ���أ�$","s:return 'busy'", "waitbusy", trigger_flag.OmitFromOutput)
	addListener("^���޷���������������$", "s:return 'halt'", "waitbusy", trigger_flag.OmitFromOutput)
	hide("tuna")
	local status = listen()
	if status == "free" then
		return false
	elseif status == "halt" then
		hide("halt")
		addListener("^�����ڲ�æ��$", "s:return true", "halt")
		addListener("^�����ں�æ��ͣ��������$", "s:return false", "halt")
		if listen() then
			return false
		else
			return true
		end
	else
		return true
	end
end

function waitbusy()
	while isBusy() do
		wait(500)
	end
end

function waitjob()
	if isSafe() then
		wait(2000)
		return false
	end
	local _hp = hp()
	local max
	if _hp.max_neili >= _hp.neili_limit1 then
		max = _hp.max_neili * 2 - _hp.neili - 1
	end
	local work
	work = dq(_hp, max)
	if not work then
		work = tj(_hp)
	end
	if not work and _hp.neili < 20 then
		wait(2000)
	end
end

function waitperform()
	while true do
		e("perform none")
		set("waitperform")
		addListener("^����ʹ�õ��⹦��û�����ֹ��ܡ�$", "s:return true", "waitperform")
		addSetListener("waitperform", "waitperform")
		if listen() == "waitperform" then
			wait(500)
		else
			break
		end
	end
end

function leaveNoFightRoom()
	e("fight")
	addListener("^�����ֹս����$", "s:return false", "outNfr", trigger_flag.OmitFromOutput)
	addListener("^���빥��˭��$", "s:return true", "outNfr", trigger_flag.OmitFromOutput)
	if listen() then
		return true
	else
		randomMove(here().exits)
		wait(500)
		return leaveNoFightRoom()
	end
end

function tn(cost)
	if cost < 10 then
		log.error("tuna cost error " .. cost)
		return false
	end
	waitbusy()
	e("tuna " .. cost)
	addListener("^��������ϣ�����˫�ۣ�վ��������$","s:return 'ok'","tn")
	addListener("^(" .. table.concat(tnFailMsg,"|") .. ")$","s:return 'fail'","tn")
	addListener("^(" .. table.concat(tnLeaveMsg,"|") .. ")$","s:return 'leave'","tn")
	addListener("^���������ڴ�����վ��������$","s:return 'halt'","tn")
	addListener("^��������� enable ѡ����Ҫ�õ������ڹ���$", "s:return 'enable'", "tn")
	local result = listen()
	if result == "leave" then
		leaveNoFightRoom()
		return tn(cost)
	elseif result == "enable" then
		e("jifa all")
		jifa()
		wait(2000)
		return result
	else
		return result
	end
end

function dz(cost)
	if cost < 10 then
		log.error("dazuo cost error " .. cost)
		return false
	end
	waitbusy()
	e("dazuo " .. cost)
	addListener("^(" .. table.concat(dzMsg,"|") .. ")$","s:return 'ok'","dz")
	addListener("^(" .. table.concat(dzFailMsg,"|") .. ")$","s:return 'fail'","dz")
	addListener("^(" .. table.concat(dzHaltMsg,"|") .. ")$","s:return 'halt'","dz")
	addListener("^(" .. table.concat(dzLeaveMsg,"|") .. ")$", "s:return 'leave'", "dz")
	addListener("^��������� enable ѡ����Ҫ�õ������ڹ���$", "s:return 'enable'", "dz")
	local result = listen()
	if result == "leave" then
		leaveNoFightRoom()
		return dz(cost)
	elseif result == "enable" then
		e("jifa all")
		jifa()
		wait(2000)
		return result
	else
		return result
	end
end

function heal(_hp)
	_hp = _hp or hp()
	if mjHeal(_hp) then
		_hp = hp()
	end
	if xmhHeal(_hp) then
		_hp = hp()
	end
	if babyHeal(_hp) then
		_hp = hp()
	end
	if _hp.qi_limit > 98 then
		return "needless"
	end
	if _hp.qi_limit < 35 then
		local _i = i()
		if _i["chantui yao"] == 0 then
			local _score = score()
			if _score.bank > 5 then
				if _i["gold"] < 3 then
					go("����Ǯׯ", "�����")
					money(0, 50, 3)
				end
				go("ҩ��", "�����")
				if not buy("chantui yao") then
					return false
				end
			else
				return false
			end
		end
		e("fu chantui yao")
		set("heal")
		addListener("^�����һ�����ɽ�ҩ����ʱ�о����ƺ��˲��١�$", "s:return true", "heal")
		addSetListener("heal", "heal")
		if listen() == "heal" then
			return false
		else
			return heal()
		end
	end
	if _hp.max_neili >= 200 and getCha().force.level >= 50 and getCha().medicine.level >= 30 then
		if _hp.neili >= 50 then
			waitbusy()
			goNofightRoom()
			e("yun heal")
			addListener("^(" .. table.concat(healMsg,"|") .. ")$","s:return 'ok'","heal")
			addListener("^(" .. table.concat(healFailMsg,"|") .. ")$","s:return 'fail'","heal")
			addListener("^�������˹����ˣ�ȴ�����Լ���ʣ�����������ˡ�$","s:return 'wound'","heal")
			addListener("^���Ѿ����˹��أ����ܲ��������𵴣�$","s:return 'error'","heal")
			addListener("^(" .. table.concat(healHaltMsg,"|") .. ")$","s:return 'halt'","heal")
			local result = listen()
			if result == "error" then
				wait(2000)
			end
			if result == "ok" then
				return true
			else
				return false
			end
		elseif _hp.qi > _hp.min_dz * 2 and _hp.jing7 then
			if isSafe() then
				go("��ĦԺ", "������")
			end
			dz(_hp.min_dz)
			if isCycle() then
				e("yun qi")
			end
			return heal()
		end
	else
		return false
	end
end

function xmhHeal(_hp)
	_hp = _hp or hp()
	local xmh = Masters["ѦĽ��"]
	if getExp() < 500000 or _hp.qi_limit > 90 or xmh.die then
		return false
	end
	return xmhHeal0()
end

function xmhHeal0()
	local xmh = Masters["ѦĽ��"]
	go("����", "������")
	local id = getId("ѦĽ��")
	if not id then
		return false
	end
	local xmhSkills = xmh.skills
	local teachSkills = {}
	for k, v in pairs(getCha()) do
		local xmhLevel = xmhSkills[k] and xmhSkills[k].level or 0
		if v.level >= 100 and v.level - xmhLevel >= 50 then
			teachSkills[k] = v
		end
	end
	if teachXmh(teachSkills) then
		e("ask xue muhua about ����")
		waitbusy()
		return true
	else
		return false
	end
end

function mjHeal(_hp)
	if getParty() ~= "����" or getScore().master ~= "���޼�" or (_hp.qi_limit >= 100 and _hp.jing_limit >=100) then
		return false
	end
	go("mingjiao/hdg/xfang4")
	e("ask hu qingniu about ����")
	waitbusy()
	return true
end

function babyHeal(_hp)
	if getExp() > 50000 or _hp.qi_limit >= 100 then
		return false
	end
	go("ҩ��", "���ݳ�")
	e("ask yaopu laoban about ����")
	waitbusy()
	return true
end

function teachXmh(skills, teachCount)
	if count(skills) == 0 then
		e("yun qi")
		if getExp() > 2000000 then
			Masters["ѦĽ��"].die = true
			pass("xue muhua")
		end
		return false
	end
	local id, skill = randomGet(skills)
	skills[id] = nil
	teachCount = teachCount or 0
	e("#" .. (5 - teachCount) .." teach xue " .. id)
	set("teach")
	while true do
		addListener("^����ѦĽ����ϸ�ؽ�˵��$", "s:return false", "teach")
		addSetListener("teach", "teach")
		if listen() then
			break
		else
			teachCount = teachCount + 1
		end
	end
	if teachCount >= 5 then
		return true
	else
		wait(500)
		return teachXmh(skills, teachCount)
	end
end

function healJing(_hp)
	_hp = _hp or hp()
	if _hp.jing_limit > 90 then
		return "needless"
	end
	if mjHeal(_hp) then
		_hp = hp()
	end
	local _i = i()
	if _i["liaojing dan"] == 0 then
		local _score = score()
		if _score.bank > 2 then
			if _i["silver"] < 80 then
				go("����Ǯׯ", "�����")
				money(0,80)
			end
			go("ҩ��", "�����")
			if not buy("liaojing dan") then
				return false
			end
		else
			return false
		end
	end
	e("fu liaojing dan")
	set("healJing")
	addListener("^�����һ���ƾ������ָ��˲��ٵľ�Ѫ��$", "s:return true", "healJing")
	addSetListener("healJing", "healJing")
	if listen() == "healJing" then
		return false
	else
		return true
	end
end

function sleep()
	waitbusy()
	addListener("^��һ�����������þ������棬�ûһ���ˡ�$","s:return 'ok'","sleep")
	addListener("^��һ������������˯��̫Ƶ���������Ǻܺá�$","s:return 'fail'","sleep")
	e("sleep")
	return listen()
end

function isCycle()
	local MIN_CYCLE_FORCE = 150
	return getJifaForce() >= MIN_CYCLE_FORCE
end

function dq(_hp, max)
	if not getJifa().force.jifaName then
		jifa()
		return false
	end
	_hp = _hp or hp()
	if _hp.neili >= 20 then
		if _hp.jing < _hp.jing7 and _hp.eff_jing - _hp.jing >= 20 then
			e("yun jing")
			return dq(nil, max)
		end
		if not _hp.dq then
			if isCycle() and _hp.eff_qi - _hp.qi >= 10 then
				e("yun qi")
				return true
			else
				return false
			end
		end
		return dq0(_hp, max)
	else
		if _hp.jing < _hp.jing7 or not _hp.dq then
			return false
		else
			return dq0(_hp, max)
		end
	end
end

function dq0(_hp, max)
	max = max or _hp.max_qi
	local q = _hp.dq > max and max or _hp.dq
	if q < _hp.min_dz then
		if _hp.eff_qi - _hp.qi >= 10 and _hp.neili >= 20 and isCycle() then
			e("yun qi")
			return true
		else
			return false
		end
	end
	dz(q)
	if isCycle() then
		e("yun qi")
	end
	return true
end

function tj(_hp, max)
	if not getJifa().force.jifaName then
		return false
	end
	_hp = _hp or hp()
	if _hp.neili >= 20 then
		if _hp.qi < _hp.qi7 and _hp.eff_qi - _hp.qi >= 10 then
			e("yun qi")
			return tj(nil, max)
		end
		if not _hp.jing3 and _hp.eff_jing - _hp.jing >= 20 then
			if isCycle() then
				e("yun jing")
				return true
			else
				return false
			end
		end
		return tj0(_hp, max)
	else
		if _hp.qi < _hp.qi7 or not _hp.jing3 then
			return false
		else
			return tj0(_hp, max)
		end
	end
end

function tj0(_hp, max)
	max = max or _hp.max_jing
	local j = _hp.jing3 > max and max or _hp.jing3
	if j < 10 then
		return false
	end
	tn(j)
	if isCycle() then
		e("yun jing")
	end
	return true
end

function db(jingli)
	if isSafe() then
		go("��ĦԺ", "������")
	end
	while true do
		local _hp = hp()
		local _healJing = healJing(_hp)
		local _heal = heal(_hp)
		if not _healJing or not _heal then
			wait(2000)
			if _hp.food < 50 or _hp.water < 50 then
				full(_hp)
				goSafeAddr()
			end
			return db(jingli)
		end
		if _hp.neili >= 20 and _hp.eff_jingli - _hp.jingli >= 10 then
			e("yun jingli")
			return db(jingli)
		end
		if dbCheck(_hp, jingli) then
			return true
		end
		local work = dq(_hp, _hp.max_neili * 2 - _hp.neili - 1) or tj(_hp, _hp.eff_jingli * 2 - _hp.jingli - 1)
		if not work then
			wait(2000)
		end
	end
end

function dbCheck(_hp, jingli)
	return _hp.eff_qi - _hp.qi < 10 and _hp.full_neili and (not jingli or _hp.full_jingli)
end

function dbj()
	db(true)
end

function saveGoods()
	local saver = getSaver()
	local saves = {
		"weilan's hammer", "canpian", "jin he", "yu",
	}
	e("fu wan;fu dan;read book")
	if saver then
		go("����", "���ְ�")
		e("#10 jiancha jinhe")
		for _, goods in pairs(saves) do
			e("give " .. goods .. " to " .. saver)
		end
		wait(2000)
	end
end

function cunGoods()
	local goods = {
		"weilan's hammer", "yitian canpian", "tulong canpian", "you yu", "ban yu", "liu yu",
		"du yu", "mi yu", "nan yu", "zhi yu", "xiangni yu", "lvyu sui", "fenglei yu",
	}
	local _i = i()
	for _, v in pairs(goods) do
		if _i[v] > 0 then
			go("�ӻ���", "���ݳ�")
			e("cun " .. v)
		end
	end
	if _i.silver > 200 or _i.coin > 100 or _i.gold > 10 or _i["thousand-cash"] > 0 then
		go("���ի")
		money(0,50)
		return
	end
end

function getSaver()
	return getHelper("telldummy")
end

function getManager()
	return manager or loadstring("return " .. tostring(getInit():GetVariable(getSite() .. "manager")))()
end

function getGuard()
	return getHelper("guard")
end

function getHelper(var)
	local guards = {}
	local mySite = getSite()
	for _, name in pairs(GetWorldList()) do
		local id, site = string.gmatch(name, "(%w+)_(%w+)")()
		if site == mySite then
			local world = GetWorld(name)
			if world:GetVariable(var) then
				table.insert(guards, id)
			end
		end
	end
	return unpack(guards)
end

function isHelper(type)
	return GetVariable(type)
end

function ggsOver()
	if not isVip() then
		return false
	end
	local hour, minute, status, leftTime = time(true)
	if not status then
		return false
	else
		go("���", "�����")
		e("ask ying gu about over")
		wait(3000)
		hour, minute, status, leftTime = time(true)
		if status then
			return ggsOver()
		else
			return true
		end
	end
end

function ggsStart()
	if not isVip() then
		return false
	end
	local hour, minute, status, leftTime = time(true)
	if status or not leftTime then
		return false
	else
		go("���", "�����")
		wait(3000)
		e("ask ying gu about start")
		hour, minute, status, leftTime = time(true)
		if not status then
			ggsStart()
		end
		return true
	end
end

function time(force)
	local lastTime = getVariable("lastTime")
	local hour = getVariable("hour")
	local minute = getVariable("minute")
	local status = getVariable("status") or false
	local leftTime = getVariable("leftTime")
	local status, leftTime
	if force or not lastTime or not hour or not minute or os.time() - lastTime > 30 then
		setVariable("lastTime", os.time())
		e("time")
		hour, minute = listener([[^�������齣\S{4}��\S+��\S+��(\S{2})ʱ(?:(\S{2})��|��)��$]], "s:return wildcards[1], wildcards[2]")
		hour = getHour(hour)
		minute = getMinute(minute)
		if minute >= 60 then
			hour = hour + 1
			minute = minute - 60
		end
		setVariable("hour", hour)
		setVariable("minute", minute)
		addListener([[^�������״̬����ǰ��û�н��й�����������ܻ�����ʹ��(\S+)��$]], "s:return false, wildcards[1]", "gg")
		addListener([[^�������״̬���Ѿ�ʹ��\S+,���ܻ�����ʹ��(\S+)��$]], "s:return true, wildcards[1]", "gg")
		addListener([[^�������״̬���㲻�ǹ��������ʹ�ù����������γ�Ϊ����뿴\( help vip \)��$]], "s:return false, '����'", "gg")
		status, leftTime = listen()
		leftTime = leftTime ~= "����"
		setVariable("status", status)
		setVariable("leftTime", leftTime)
	end
	return hour, minute, status, leftTime
end

function minutes()
	local hour, minute = time()
	local minutes = hour * 60 + minute
	return minutes
end

function getHour(hour)
	local hours = {"��", "��", "��", "î", "��", "��", "��", "δ", "��", "��", "��", "��"}
	for k, v in pairs(hours) do
		if v == hour then
			return ((k * 2) + 21) % 24
		end
	end
end

function getMinute(minute)
	if not minute then
		return 0
	else
		return trans(minute) * 30
	end
end

function isTelldummy()
	return GetVariable("telldummy")
end

function isGuard()
	return GetVariable("guard")
end

function tune()
	if isTelldummy() or table.getn(GetWorldList()) == 2 then
		e("tune all;tune chat;tune rumor;tune party;tune sj;tune declare;tune irc")
	else
		e("tune all;tune irc")
	end
end

function findCorpse(npc, start)
	local i = start or 1
	while true do
		e("l corpse " .. i)
		addListener([[^(\S+)��ʬ��\(Corpse\)$]], "s:return wildcards[1]", "gc")
		addListener([[^��ͷʬ��\(Corpse\)$]], "s:return 'none'", "gc")
		addListener([[^���õ�(��|Ů)ʬ\([\w ]+\)$]], "s:return 'none'", "gc")
		addListener("^��Ҫ��ʲô��$", "s:return false", "gc")
		local result = listen()
		if not result then
			return false
		end
		if result == npc then
			return i
		else
			i = i + 1
		end
	end
end

function getId(npc, corpse)
	if not npc then
		return getScore().id
	end
	e("l")
	local key = set()
	addListener([[^  .*?]] .. npc .. [[\(([\w ]+)\)(?: <(����\S+|ս����|���Բ���)>)?$]], "s:return string.lower(wildcards[1]), wildcards[2]", "getId")
	addListener([[^  ]] .. npc .. [[�����˹�����$]], "s:return 'heal'", "getId")
	if corpse then
		addListener([[^  ]] .. npc .. [[��ʬ��\(Corpse\)$]], "s:return 'corpse', 'die'", "getId")
	end	
	addSetListener(key, "getId")
	local id, status = listen()
	if id == 'heal' then
		local things = lookGoal()
		for k, v in pairs(things) do
			if v == npc then
				return k, "heal"
			end
		end
		return nil, "heal"
	end
	if id == key then
		return false
	end
	if not status then
		status = "general"
	elseif status == "ս����" then
		status = "fight"
	elseif status == "���Բ���" then
		status = "faint"
	elseif string.find(status, "����") then
		status = "idle"
	end
	return id, status
end

function haveCutweapon(_i)
	local _i = _i or i()
	local cutweapon, partyCutweapon = getCutweapon()
	if _i[cutweapon] == 0 and _i[partyCutweapon] == 0 then
		return false
	else
		return true
	end
end

function getCorpse(npc, goods, start)
	waitbusy()
	local n = findCorpse(npc)
	if not n then
		return false
	end
	e("h;get corpse " .. n)
	if goods then
		for _, v in pairs(goods) do
			e("get " .. v .. " from corpse")
		end
	end
	set("gc")
	addListener([[^�㽫(\S+)��ʬ������������ڱ��ϡ�$]], "s:return 'ok', wildcards[1]", "gc")
	addListener([[^(\S+)��ʬ��������̫���ˡ�$]], "s:return 'overweight', wildcards[1]", "gc")
	addSetListener("gc", "gc")
	local result, name = listen()
	if result == "gc" then
		return false
	elseif result == "ok" then
		if name == npc then
			return "corpse"
		else
			e("h;drop corpse")
			return getCorpse(npc, goods, n + 1)
		end
	elseif result == "overweight" then
		if name == npc then
			log.error(npc .. "�� corpse �ò�����������" .. save(i()))
			e("quit")
			error()
		else
			return getCorpse(npc, goods, n + 1)
		end
	end
end

function qieCorpse(npc, goods, start)
	waitbusy()
	if not getWeapon() then
		waitperform()
	end
	local i = findCorpse(npc, start)
	if not i then
		return false
	end
	e("h;wield " .. getCutweapon())
	if goods then
		for _, v in pairs(goods) do
			e("get " .. v .. " from corpse " .. i)
		end
	end
	e("qie corpse " .. i)
	set("qc")
	addListener("^(���б���ɱ���˸��ﰡ��|�Ǿ�ʬ���Ѿ�û���׼��ˡ�)$", "s:return 'wrong'", "qc")
	addListener([[^ֻ�����ǡ���һ�����㽫(\S+)���׼�ն���������������С�$]], "s:return wildcards[1]", "qc")
	addSetListener("qc", "qc")
	local result = listen()
	waitbusy()
	e("h")
	unwieldCutweapon()
	if result == "wrong" then
		return qieCorpse(npc, goods, i + 1)
	elseif result == "qc" then
		return false
	elseif result == npc then
		return "shouji"
	else
		e("drop shouji")
		return qieCorpse(npc, goods, i + 1)
	end
end

function all(...)
	for k, v in pairs(GetWorldList()) do
		GetWorld(v):Execute(table.concat({...}," "))
	end
end

function world(worldId, ...)
	getWorld(worldId):Execute(table.concat({...}, " "))
end

function site(s, ...)
	for k, v in pairs(GetWorldList()) do
		local _, n = string.find(v, s)
		if n and n == string.len(v) then
			GetWorld(v):Execute(table.concat({...}," "))
		end
	end
end

function buy(goods)
	e("buy " .. goods)
	set("buy")
	addListener([[^����\S+�ļ۸��\S{4,8}����������\S+��$]], "s:return 'ok'", "buy")
	addListener("^Ӵ����Ǹ�����������æ���ء��������Ժ�$", "s:return 'busy'", "buy")
	addSetListener("buy", "buy")
	local result = listen()
	if result == "ok" then
		return true
	elseif result == "busy" then
		wait(1000)
		return buy(goods)
	else
		return false
	end
end

function full(_hp, force)
	if _hp and type(_hp) ~= "table" then
		return full(nil, true)
	end
	_hp = _hp or hp()
	if (_hp.food >= 80 and _hp.water >= 80) or
		(_hp.food >= 50 and _hp.water >= 50 and not force) then
		return false
	end
	if _hp.food >= _hp.water then
		fullWater(_hp)
		fullFood(_hp)
	else
		fullFood(_hp)
		fullWater(_hp)
	end
	saveGoods()
	return true
end

function fullFood(_hp)
	if fullFoodWd(_hp) then
		return true
	else
		return fullFoodClb(_hp)
	end
end

function fullFoodWd(_hp)
	_hp = _hp or hp()
	if _hp.food < 80 and go("��ͤ", "�䵱ɽ") then
		if getId("�һ�����") then
			e("sit chair;knock table;get mi tao;#4 eat mi tao;drop mi tao;get dawan cha;drop dawan cha")
			wait(2000)
			fullFoodWd()
			return true
		else
			return false
		end
	else
		return false
	end
end

function fullFoodClb(_hp)
	_hp = _hp or hp()
	if _hp.food < 80 and go("����","���ְ�") then
		e("get rice;#4 eat rice;drop rice")
		e("ask xiao tong about ʳ��")
		waitbusy()
		e("get rice;#4 eat rice;drop rice")
		wait(2000)
		fullFoodClb()
		return true
	else
		return false
	end
end

function fullWater(_hp)
	_hp = _hp or hp()
	if _hp.water < 80 then
		go("�����")
		e("#4 drink")
		wait(2000)
		fullWater()
		return true
	else
		return false
	end
end

function money(coin,silver,gold,cash)
	e("qu")
	set("money")
	addListener([[^�����ʽ��withdraw\|qu <����> <���ҵ�λ>$]],"s:return 'ok'","money")
	addListener([[^[^\s->]+˵������Ӵ����Ǹ�����������æ���ء��������Ժ򡣡�$]],"s:return 'ok'","money")
	addSetListener("money","money")
	if listen() == "money" then
		return false
	end
	local _i = i()
	if not holdMoney(_i["thousand-cash"],cash,"thousand-cash") or
		not holdMoney(_i.gold,gold,"gold") or
		not holdMoney(_i.silver,silver,"silver") or
		not holdMoney(_i.coin,coin,"coin") then
		set("money")
		addListener([[^��Ŀǰ���д��\S+���ٴ���ô���Ǯ��С�ſ��ѱ����ˡ�$]],"s:return 'full'","money")
		addListener([[^��û�д���ô���Ǯ��$]],"s:return 'fail'","money")
		addSetListener("money", "money")
		local result = listen()
		if result == "fail" then
			log.error("û��Ǯ����ȡ�ˣ�")
		end
		if result == "fail" or result == "full" then
			cash = false
			gold = false
			silver = false
			_i = i()
			if _i.gold >= 10 then
				e("duihuan " .. (math.floor(_i.gold / 10) * 10) .. " gold to cash")
			end
			if _i.silver >= 1000 then
				e("duihuan " .. (math.floor(_i.silver / 1000) * 1000) .. " silver to cash")
			elseif _i.silver >= 100 then
				e("duihuan " .. (math.floor(_i.silver / 100) * 100) .. " silver to gold")
			end
			return money(coin,silver,gold,cash)
		end
		wait(1000)
		return money(coin,silver,gold,cash)
	end
	score()
	return true
end

function holdMoney(now,hold,type)
	if hold == false then
		return true
	end
	hold = hold or 0
	if hold - now < 0 then
		e("cun " .. (now - hold) .. " " .. type)
	elseif hold - now > 0 then
		e("qu " .. (hold - now) .. " " .. type)
	elseif hold - now == 0 then
		return true
	end
end

function bigChat(word)
	local w = {}
	local n = 1
	local index = 1
	for i=1,string.len(word) do
		local c = string.sub(word,n,i)
		if string.find(c,"%w") or i == n + 1 then
			w[index] = getBigWords()[c]
			n = i + 1
			index = index + 1
		end
	end
	local ids = getSiteIds()
	for i=1,16 do
		local line = {}
		for j=1,table.getn(w) do
			line[j] = w[j][i]
		end
		local id = ids[i]
		if id then
			send("tell " .. id .. " chat",unpack(line))
			wait(100)
		end
	end
end

function waitSeconds(id)
	local time = readFile(GetInfo(57) .. "time/" .. id)
	if not time then
		return false
	end
	local seconds = tonumber(time) - os.time()
	return seconds > 0 and seconds or false
end

local telling = false
local tellfail = 0
function telldummy()
	if tellfail > 2 then
		tellfail = 0
		telling = false
	end
	if isTelldummy() and not telling then
		go("����", "���ְ�")
		e("unset no_accept")
		telling = true
		full()
		cunGoods()
		getJinhe()
		local _sets = sets()
		local tellInit = _sets["tell_init"]
		if tellInit and _G[tellInit] then
			_G[tellInit]()
		end
		local ids = getSiteIds()
		local allquit = true
		for _, v in pairs(ids) do
			e("tell " .. v .. " check " .. v)
			set("tell" .. v)
			addListener([[^�����\S{4,8}��check ]] .. v .. [[\n����\S{4,8}�Ѿ�������(\S+)�����ˣ����²������̻ش��㡣$]], "s:return 'idle', wildcards[1]", "tell")
			addListener([[^û������ˡ�$]], "s:return 'offline'", "tell")
			addListener([[^����˶����ˡ�$]], "s:return 'break'", "tell")
			addSetListener("tell" .. v, "tell")
			local result, time = listen(nil, function() return "timeout" end)
			local w = getWorld(v)
			if w then
				if result == "offline" then
					local id = w:GetInfo(2)
					local seconds = waitSeconds(id)
					if seconds then
						log.debug(v .. " : �ȴ�����")
					else
						log.warn(v .. " �� ������")
						if w:GetConnectDuration() > 60 then
							w:Disconnect()
						end
					end
				else
					allquit = false
					if result == "idle" and trans(time) >= 3 then
						log.error(v .. " ���ڷ�����")
						w:Execute("init")
						if GetVariable("activate") then
							w:Activate()
						end
					elseif result == "break" then
						log.warn(v .. " ��������")
						if w:GetConnectDuration() > 60 then
							w:Disconnect()
						end
					elseif result == "timeout" then
						log.warn(v .. " : ��ʱ��")
					end
				end
			end
		end
		if allquit then
			checkquit()
		end
		telling = false
		return true
	else
		tellfail = tellfail + 1
		return false
	end
end

function getSite()
	local site = getVariable("site")
	if not site then
		site = GetVariable("site")
		setVariable("site", site)
	end
	return site
end

function getSiteIds()
	local mySite = getSite()
	local ids = {}
	for _, name in pairs(GetWorldList()) do
		local id, site = string.gmatch(name, "(%w+)_(%w+)")()
		if id ~= myId() and site == mySite then
			table.insert(ids, id)
		end
	end
	return ids
end

function goSafeAddr()
	local safeAddrs = {
		{name = "��", city = "���ְ�"},
		{name = "����", city = "���ְ�"},
		{name = "��԰", city = "���ְ�"},
		{name = "��", city = "���ְ�"},
		{name = "ʯ��", city = "���ְ�"},
		{name = "�˽�ͤ", city = "���ְ�"},
		{name = "С��", city = "���ְ�"},
	}
	local _, addr = randomGet(safeAddrs)
	go(addr.name, addr.city)
end

function fullNeili()
	e("unset ����")
	goSafeAddr()
	repeat
		checkquit()
		mjKar()
		local _hp = hp()
		if _hp.eff_qi < _hp.max_qi then
			return heal()
		elseif _hp.max_jing - _hp.eff_jing > _hp.max_jing / 10 then
			return healJing()
		end
		if full(_hp) then
			goSafeAddr()
		end
		if not dq(_hp) and not tj(_hp) then
			wait(5000)
		end
	until _hp.max_neili > _hp.neili_limit1 -50
end

function fullJingli()
	e("unset ����")
	goSafeAddr()
	repeat
		checkquit()
		mjKar()
		local _hp = hp()
		if _hp.eff_qi < _hp.max_qi then
			return heal()
		elseif _hp.max_jing - _hp.eff_jing > _hp.max_jing / 10 then
			return healJing()
		end
		if full(_hp) then
			goSafeAddr()
		end
		if not dq(_hp, _hp.max_neili * 2 - _hp.neili - 1) then
			if not tj(_hp) and _hp.neili < 20 then
				wait(5000)
			else
				e("yun jing")
			end
		end
	until _hp.eff_jingli > _hp.max_jingli -50
end

uniques = {
	["bencao gangmu"] = true,
	["bencao jizhu"] = true,
}
function ticktime()
	for _, v in pairs(Masters) do
		v.die = false
	end
	for k in pairs(uniques) do
		uniques[k] = true
	end
end

function OnNoFood()
	run(noFood)
end

function noFood()
	local _hp = hp()
	if _hp.jing_limit < 50 or _hp.qi_limit < 50 then
		quit()
	else
		reset()
		init()
	end
end

function OnNoWater()
	OnNoFood()
end

function OnLongTime(name, line, wildcards)
	run(longTime, wildcards[1])
end

function longTime(time)
	if isVip() then
		return false
	end
	if not time then
		e("yun jingli")
		quit()
	else
		time = trans(time)
		if time > 45 then
			safequit()
		end
	end
end

function addShen(shen)
	-- ֧�� shen > 0
	shen = shen or 0
	if type(shen) == "string" then
		shen = tonumber(shen)
	end
	posShen()
	local _hp = hp()
	if _hp.shen < shen then
		if eatZhengqi() then
			return addShen(shen)
		else
			return false
		end
	else
		return true
	end
end

function eatZhengqi()
	local _i = i()
	if _i["zhengqi dan"] == 0 then
		if getScore().bank < 5 then
			log.error("û��Ǯ��������")
			wait(2000)
			return false
		else
			go("����Ǯׯ", "�����")
			money(0, 50, 2)
		end
		go("ҩ��", "�����")
		if not buy("zhengqi dan") then
			return false
		end
	end
	e("fu zhengqi dan")
	local _i = i()
	if _i["zhengqi dan"] == 0 then
		return true
	else
		wait(2000)
		return eatZhengqi()
	end
end

function posShen()
	if hp().shen >= 0 then
		return true
	end
	full()
	go("��ʯ", "��ѩɽ")
	while hp().shen < 0 do
		wait(2000)
		e("#20 mianbi")
	end
	return true
end

function getBigWord()
	local word = {}
	for i=1, 16 do
		word[i] = listener("^.*$", "s:return wildcards[0]")
	end
	return remoteInvoke("recognise", word)
end

function getRoomsByFirstWord(info)
	local world = info.world
	local name = info.name
	local city = info.city
	local type = info.type or "all"
	local isLookCity = type == "all" or type == "look"
	local isTaskCity = type == "all" or type == "task"
	if string.find(name,"/") then
		return {name}
	end
	local isNameFw = string.find(name,"^%l+$")
	local isCityFw = city and string.find(city,"^%l+$")
	local rooms = {}
	for id,room in pairs(map.rooms) do
		local roomName = isNameFw and getFirstWord(room.name) or room.name
		if roomName == name then
			if not city then
				table.insert(rooms,id)
			else
				local lookCity = isCityFw and getFirstWord(getLookCity(room.id)) or getLookCity(room.id)
				local taskCity = isCityFw and getFirstWord(getCity(room.id)) or getCity(room.id)
				if (isLookCity and city == lookCity) or (isTaskCity and city == taskCity) or (room.outdoor and room.outdoor == city) then
					table.insert(rooms,id)
				end
			end
		end
	end
	if count(rooms) == 0 then
		log.debug(world .. " : û�ҵ����䣺name = " .. name .. " , city = " .. tostring(city) .. " , type = " .. type)
	end
	return rooms
end

function getJobInfo(name, ...)
	local _sets = sets()
	local info = _sets[name]
	if not info then
		return false
	end
	local infos = utils.split(info, ",")
	for k, v in pairs(infos) do
		infos[k] = tonumber(v) or v
	end
	for _, v in pairs({...}) do
		table.insert(infos, _sets[v])
	end
	return unpack(infos)
end

function di()
	autoconnect = false
	Disconnect()
end

function con()
	autoconnect = false
	Connect()
end

function getInfo(...)
	e("alias")
	set("alias")
	local info = ""
	while true do
		addListener([[^(\w+)\s+= (.+)$]], "s:return wildcards[1], wildcards[2]", "alias")
		addSetListener("alias", "alias")
		local key, value = listen()
		if key == "alias" then
			break
		else
			if key == "info" then
				info = value
				break
			end
		end
	end
	local entries = utils.split(info, ",")
	local infos = {}
	for _, entry in pairs(entries) do
		local _, _, k, v = entry:find("(.*)=(.*)")
		if k then
			infos[k] = v
		end
	end
	if ... then
		local result = {}
		for k, v in pairs({...}) do
			result[k] = infos[v] or false
		end
		return unpack(result)
	else
		return infos
	end
end

function setInfo(name, value)
	local infos = getInfo()
	if type(name) == "table" then
		for k, v in pairs(name) do
			infos[k] = v
		end
	else
		infos[name] = value
	end
	setInfos(infos)
end

function delInfo(name)
	local infos = getInfo()
	infos[name] = nil
	setInfos(infos)
end

function setInfos(infos)
	local infoStr = ""
	for name, value in pairs(infos) do
		infoStr = infoStr .. name .. "=" .. value .. ","
	end
	infoStr = string.sub(infoStr, 1, string.len(infoStr) - 1)
	e("alias info " .. infoStr)
end
