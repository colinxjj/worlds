function getXsfh()
	return getStory().xsfh
end

function getFightExp()
	return getVariable("fightExp") or 0
end

function getFightTime()
	return getVariable("fightTime") or 0
end

function getWaitTime()
	return getVariable("waitTime") or 0
end

function getAnswerTime()
	return getVariable("answerTime") or 0
end

local TRY_FIGHT_EXP = 5000
local TRY_FIGHT_TIME = 3600
local TRY_WAIT_TIME = 600
local TRY_ANSWER_TIME = 3600
function xsfh()
	if getXsfh().quest == 2 and getXsfh().fightHu == 3 and getExp() - getXsfh().questExp > 500000 then
		-- e("nick xsfh 2")
	elseif getXsfh().quest == 4 and getXsfh().fightMiao == 3 then
		-- e("nick xsfh 3")
	else
		-- e("nick none")
	end
	if getExp() > 30000 and getXsfh().quest == 1 then
		return xsfh1()
	end
	if getExp() > 300000 and getXsfh().quest == 2 and getXsfh().fightHu < 3
		and (getExp() - getFightExp() > TRY_FIGHT_EXP)
		and (os.time() - getFightTime() > TRY_FIGHT_TIME)
		and (os.time() - getWaitTime() > TRY_WAIT_TIME) then
		return xsfhFightHu()
	end
	if getXsfh().quest == 2 and getXsfh().fightHu == 3 and getExp() - getXsfh().questExp > 500000
		and (os.time() - getAnswerTime() > TRY_ANSWER_TIME) then
		return xsfh2()
	end
	if getXsfh().quest == 3 then
		return xsfh3()
	end
	if getXsfh().quest == 4 and getXsfh().fightMiao < 3 and (getExp() - getFightExp() > TRY_FIGHT_EXP)
		and (os.time() - getFightTime() > TRY_FIGHT_TIME)
		and (os.time() - getWaitTime() > TRY_WAIT_TIME) then
			return xsfhFightMiao()
	end
end

function xsfhFightHu()
	db()
	log.warn("�Һ�쳽������Ѿ�ʧ���� " .. getXsfh().fightHu .. " ��")
	cap("�Һ�쳽������Ѿ�ʧ���� " .. getXsfh().fightHu .. " ��")
	go("Ĺ��", "�ƺ�����")
	e("ask hu fei about ����")
	set("fighthu")
	addListener([[^�����쳴����йء�����������Ϣ��\n��쳶�����ҡ��ҡͷ��\n���˵�������������д赽����ɣ��Ժ�ɡ���$]], "s:return 'waittime'", "fighthu")
	addListener([[^�����쳴����йء�����������Ϣ��\n��쳶�����ҡ��ҡͷ��\n���˵���������书ûʲô��ı仯������ץ������ȥ�ɡ���$]], "s:return 'waitexp'", "fighthu")
	addListener([[^�����쳴����йء�����������Ϣ��\n��쳶�����ҡ��ҡͷ��\n���˵���������д��꣬�Ժ��д�ɡ���$]], "s:return 'wait'", "fighthu")
	addListener([[^����û������ˡ�$]], "s:return 'wait'", "fighthu")
	addListener([[^һ��ů�����Ե�������ȫ�������������ָֻ���֪������$]], "s:return 'fighthu'", "fighthu")
	addListener([[^�㼱��ææ���߽������䳡��$]], "s:return 'ok'", "fighthu")
	addSetListener("fighthu", "fighthu")
	local result = listen()
	print(result)
	if result == "fighthu" then
		cap("����ʧ��")
		return xsfhFightHu()
	elseif result == "wait" then
		cap("���æ")
		setVariable("waitTime", os.time())
		return false
	elseif result == "waitexp" then
		cap("�������Ӳ���")
		setVariable("fightExp", getExp())
		return false
	elseif result == "waittime" then
		cap("����ʱ��������")
		setVariable("fightTime", os.time())
		return false
	elseif result == "ok" then
		cap("�����ɹ���")
		setVariable("fightExp", getExp())
		setVariable("fightTime", os.time())
		e("unset wimpy;ok")
		listener("ͻȻһ������������㣬��ľ�����Ȼȫ���ָ��ˣ�")
		story()
		perform()
		return true
	end
end

function xsfhFightMiao()
	db()
	log.warn("�����˷�������Ѿ�ʧ���� " .. getXsfh().fightMiao .. " ��")
	cap("�����˷�������Ѿ�ʧ���� " .. getXsfh().fightMiao .. " ��")
	go("����", "���ݳ�")
	waitbusy()
	e("ask miao renfeng about ����")
	set("fightmiao")
	addListener([[^�������˷�����йء�����������Ϣ��\n���˷������ҡ��ҡͷ��\n���˷�˵�������������д赽����ɣ��Ժ�ɡ���$]], "s:return 'waittime'", "fightmiao")
	addListener([[^�������˷�����йء�����������Ϣ��\n���˷������ҡ��ҡͷ��\n���˷�˵���������书ûʲô��ı仯������ץ������ȥ�ɡ���$]], "s:return 'waitexp'", "fightmiao")
	addListener([[^�������˷�����йء�����������Ϣ��\n���˷������ҡ��ҡͷ��\n���˷�˵��������������û��ʲô��˼�д��书�ˡ���$]], "s:return 'wait'", "fightmiao")
	addListener([[^����û������ˡ�$]], "s:return 'wait'", "fightmiao")
	addListener([[^һ��ů�����Ե�������ȫ�������������ָֻ���֪������$]], "s:return 'fightmiao'", "fightmiao")
	addListener([[^�㼱��ææ���߽������䳡��$]], "s:return 'ok'", "fightmiao")
	addSetListener("fightmiao", "fightmiao")
	local result = listen()
	print(result)
	if result == "fightmiao" then
		cap("����ʧ��")
		return xsfhFightMiao()
	elseif result == "wait" then
		cap("���˷�æ")
		setVariable("waitTime", os.time())
		return false
	elseif result == "waitexp" then
		cap("�������Ӳ���")
		setVariable("fightExp", getExp())
		return false
	elseif result == "waittime" then
		cap("����ʱ��������")
		setVariable("fightTime", os.time())
		return false
	elseif result == "ok" then
		cap("�����ɹ���")
		setVariable("fightExp", getExp())
		setVariable("fightTime", os.time())
		perform()
		e("set wimpycmd p\\hp;ok")
		listener("ͻȻһ������������㣬��ľ�����Ȼȫ���ָ��ˣ�")
		story()
		perform()
		return true
	end
end

function xsfh1()
	local guard = getGuard()
	if not guard then
		return false
	end
	log.warn("׼��ȥ����ҳ����")
	go("��ɽ", "�置")
	local id = getId("�ֻ�")
	if not id then
		wait(2000)
		return false
	end
	e("tell " .. guard .. " helpxsfh1")
	addListener([[^[^->\s]{4,8}\((\w+)\)�����㣺ok$]], "s:return string.lower(wildcards[1])", "xsfh")
	addListener("^�ֻ���ž����һ�����ڵ��ϣ������ų鶯�˼��¾����ˡ�$", "s:return 'die'", "xsfh")
	local result = listen(60, function() return "timeout" end)
	if result == "timeout" or result == "die" or result ~= guard then
		return false
	end
	go("Ĺ��", "�ƺ�����")	
	e("ask hu fei about �ҳ�")
	waitbusy()
	e("ask hu fei about ���ҵ���")
	set("lydf")
	addListener([[^�����쳴����йء����ҵ���������Ϣ��\n��쳺���һ����$]], "s:return false", "lydf")
	addListener([[^�����쳴����йء����ҵ���������Ϣ��\n���ҧ���гݵض�����մ�У��������죡��$]], "s:return false", "lydf")
	addSetListener("lydf", "lydf")
	if listen() then
		e("tell " .. guard .. " ok")
		return false
	end
	waitbusy()
	go("��ɽ", "�置")
	e("ask yan ji about ��һ��")
	waitbusy()
	e("ask yan ji about �¶�")
	waitbusy()
	e("ask yan ji about ���")
	addListener([[^[^->\s]{4,8}\((\w+)\)�����㣺kill$]], "s:return string.lower(wildcards[1])")
	local result = listen(60, function() return "timeout" end)
	if result == "timeout" or result ~= guard then
		return false
	else
		e("yun qi;ask yan ji about ��ҳ����")
		addListener([[^�����ֻ������йء���ҳ����������Ϣ��\n�ֻ�¶���Ի�����顣$]], "s:return false", "lydf")
		addListener("^�ֻ���������ҳֽ����������ź��ҵ�����$", "s:return true", "lydf")
		local result = listen()
		if result then
			go("Ĺ��", "�ƺ�����")
			e("give liangye daofa to hu fei")
			listener([[^����\S+�⿪ѩɽ�ɺ���ҳ����ƪ�����\d+�����������\d+�㾭�齱���Լ�\d+��������$]])
			story()
			return true
		else
			waitbusy()
		end
	end
end

function xsfh2()
	local guard1, guard2, guard3 = getGuard()
	if not guard3 then
		return false
	end
	log.error("Ҫȥ�⸴�𣬺���Ҫ������")
	db()
	full()
	go("��ɽ", "�置")
	local id = getId("�ֻ�")
	if not id then
		wait(2000)
		return false
	end
	wait(2000)
	go("Ĺ��", "�ƺ�����")
	id = getId("���")
	if not id then
		wait(2000)
		return false
	end
	e("tell " .. guard1 .. " helpxsfh2")
	e("tell " .. guard2 .. " helpxsfh2")
	e("tell " .. guard3 .. " helpxsfh2")
	local readyGuards = {}
	while true do
		addListener([[^[^->\s]{4,8}\((\w+)\)�����㣺ok$]], "s:return 'ok', string.lower(wildcards[1])", "xsfh")
		addListener([[^[^->\s]{4,8}\((\w+)\)�����㣺fail$]], "s:return 'fail', string.lower(wildcards[1])", "xsfh")
		local type, result = listen(60, function() return "timeout" end)
		if type == "timeout" or type == "fail" then
			e("tell " .. guard1 .. " ok")
			e("tell " .. guard2 .. " ok")
			e("tell " .. guard3 .. " ok")
			return false
		end
		readyGuards[result] = true
		if readyGuards[guard1] and readyGuards[guard2] and readyGuards[guard3] then
			break
		end
	end
	log.error("guard �Ѿ���λ����ʼ����")
	e("ask hu fei about ����")
	waitbusy()
	e("answer yes")
	set("answer")
	addListener("^�������̾�˿�����˵����������ι���ҲӦ���и�ˮ��ʯ�����ҾͰ���ȥһ�����ׯ�ɡ�$", "s:return 'ok'", "answer")
	addSetListener("answer", "answer")
	if listen() == "answer" then
		setVariable("answerTime", os.time())
		story()
		e("tell " .. guard1 .. " ok")
		e("tell " .. guard2 .. " ok")
		e("tell " .. guard3 .. " ok")
		return false
	end
	go("���ׯ�ſ�", "���ݳ�")
	while true do
		addListener("^�������������ֵܡ��������š��������Ǿ�ʶ���ֺ�������ծ���ģ�ȴ�������������˵ʲô���㲻�ɺ�������$", "s:return true")
		local result = listen(10, function() return false end)
		if result then
			break
		else
			log.error("��Ҫ�������⸴��ʱû���������ˣ��Զ����ԣ�")
			wait(2000)
			waitbusy()
			e("e;w")
		end
	end
	noPerform()
	for i=1, 60 do
		wait(500)
		e("yun qi;compare heiyi ren")
		addListener([[^����ϸ����ǰ������(\S+)һ����$]], "s:return false", "pass")
		addListener("^heiyi ren ��������$", "s:return 'ok'", "pass")
		if listen(1, function() return false end) then
			e("tell " .. guard1 .. " ok")
			e("tell " .. guard2 .. " ok")
			e("tell " .. guard3 .. " ok")
			break
		end
	end
	e("n")
	waitbusy()
	e("ask miao renfeng about ��һ��")
	waitbusy()
	e("ask miao renfeng about ����")
	listener("^�������˵һ���Ĭ�����ɱ�������ĺ������ж���ֻ���������б��飡������һ�����ֻ���ֻ���������ˣ�$")
	log.error("�⸴��ȥѯ���ֻ���")
	go("miaojiang/shanlu")
	while true do
		e("push grass;nw;find")
		set("yj")
		addListener("^���ڸ���$", "s:return true", "yj")
		addSetListener("yj", "yj")
		if listen() == true then
			break
		else
			e("se")
			wait(10000)
		end
	end
	while true do
		id = getId("�ֻ�")
		if not id then
			log.error("�⸴���ֻ�û�ˣ�ע��")
			wait(2000)
		else
			e("ask yan ji about ����")
			listener([[^�����ֻ������йء����ࡻ����Ϣ��\n�ֻ������ŵ��������ˡ�$]])
			break
		end
	end
	go("huanghe/shulin6")
	e("n")
	while true do
		addListener("^���ͷ����������ȥ���ׯ�������鲻����������ЪϢΪ�$", "s:return true")
		local result = listen(10, function() return false end)
		if result then
			log.error("��������ˣ���ϲ������")
			waitbusy()
			story()
			return true
		else
			wait(2000)
			e("s;n")
		end
	end
end

function xsfh3()
	local guard, other = getGuard()
	if not guard or other then
		return false
	end
	log.warn("׼��ȥ��ѩɽ�ɺ���ҩƪ")
	go("���ի")
	money(0, 200)
	wait(2000)
	local _i = i()
	if _i["fire"] == 0 then
		go("������ջ")
		if not buy("fire") then
			return false
		end
		wait(2000)
	end
	if _i["jiu dai"] == 0 and _i["huadiao jiudai"] == 0 then
		go("С�Ե�", "���ݳ�")
		if not buy("jiu dai") then
			return false
		end
		wait(2000)
	end
	go("���", "���ݳ�")
	e("fill jiu dai")
	wait(2000)
	go("��ɽ", "�置")
	local id = getId("�ֻ�")
	if not id then
		wait(2000)
		log.warn("ѩɽ�ɺ���ҩƪ�ֻ�����")
		return false
	end
	e("tell " .. guard .. " helpxsfh3")
	addListener([[^[^->\s]{4,8}\((\w+)\)�����㣺ok$]], "s:return string.lower(wildcards[1])", "xsfh")
	addListener("^�ֻ���ž����һ�����ڵ��ϣ������ų鶯�˼��¾����ˡ�$", "s:return 'die'", "xsfh")
	local result = listen(60, function() return "timeout" end)
	if result == "timeout" or result == "die" or result ~= guard then
		return false
	end
	go("����", "���ݳ�")
	e("ask miao renfeng about ��ҩ")
	go("ҩ����")
	e("ask cheng lingsu about ��ҩ")
	go("��ɽ", "�置")
	e("tell " .. guard .. " ok")
	addListener([[^[^->\s]{4,8}\((\w+)\)�����㣺kill$]], "s:return string.lower(wildcards[1])")
	local result = listen(60, function() return "timeout" end)
	if result == "timeout" or result ~= guard then
		return false
	else
		e("yun qi;ask yan ji about ���Ǻ���")
		addListener("^�ֻ���ž����һ�����ڵ��ϣ������ų鶯�˼��¾����ˡ�$", "s:return true", "lydf")
		local result = listen()
		if result then
			addListener([[^[^->\s]{4,8}\((\w+)\)�����㣺search$]], "s:return string.lower(wildcards[1])")
			local result = listen(60, function() return "timeout" end)
			if result == "timeout" or result ~= guard then
				return false
			end
			go("ҩ����")
			e("give qixing haitang to cheng lingsu")
			-- listener([[^���������һ�����Ǻ��ġ�$]])
			wait(2000)
			while true do
				if not go("��԰", "�置") then
					log.error("Ϊʲôȥ���˹�԰��")
					return false
				end
				db()
				go("��԰", "�置")
				e("search di")
				addListener("^�����˰��죬ʲôҲû�ҵ���$", "s:return false", "search")
				addListener("^�����ڷ���һ����ɫҩ����������ȥժ��������$", "s:return true", "search")
				local result = listen()
				waitbusy()
				if result then
					break
				end
			end
			perform()
			for i=1, 60 do
				wait(1000)
				e("yun qi;compare du she;compare lang gou;k du she;k lang gou")
				set("pass")
				addListener([[^����ϸ����ǰ������(\S+)һ����$]], "s:return false", "pass")
				addSetListener("pass", "pass")
				if listen(1, function() return false end) then
					e("tell " .. guard .. " ok")
					break
				end
			end
			wait(2000)
			go("ҩ����")
			e("give lanse yaohua to cheng lingsu")
			listener([[^���������һ����ɫҩ����$]])
			listener("^�����ظ���һ��ҩ����$")
			if not xsfhAoyao() then
				return false
			end
			go("����", "���ݳ�")
			local n = 0
			while true do
				addListener([[^����\S+�⿪ѩɽ�ɺ���ҩƪ�����\d+�����������\d+�㾭�齱����\d+��������$]], "s:return true")
				local result = listen(60, function() return false end)
				if result then
					break
				else
					n = n + 1
					if n > 5 then
						return false
					end
				end
			end
			log.error("��ѩɽ�ɺ���ҩƪ�ɹ���")
			story()
			return true
		else
			waitbusy()
		end
	end
end

function xsfhAoyao()
	local _i = i()
	if _i["fire"] == 0 then
		return false
	end
	if _i["jiu dai"] == 0 and _i["huadiao jiudai"] == 0 then
		return false
	end
	go("ҩ��", "�置")
	e("open lu")
	e("add qixing haitang in lu;add lanse yaohua in lu;add zang honghua in lu")
	e("add ren shen in lu;add jinyin hua in lu;pour jiu dai to lu")
	e("close lu;dianhuo;burn lu")
	waitbusy()
	e("aoyao")
	listener("^ҩ�찾���ˣ��Ͻ����ɣ�$")
	waitbusy()
	e("miehuo")
	waitbusy()
	e("open lu;qu jie yao from lu")
	local _i = i()
	if _i["jie yao"] == 0 then
		return false
	end
	return true
end

function helpxsfh1(id, name)
	go("��ɽ", "�置")
	e("tell " .. id .. " ok")
	addListener("^" .. name .. "���ֻ������йء���쳡�����Ϣ��$", "s:return 'ok'", "helpxsfh1")
	addListener([[^[^->\s]{4,8}\((\w+)\)�����㣺ok$]], "s:return string.lower(wildcards[1])", "helpxsfh1")
	local result = listen(60, function() return "timeout" end)
	if result == id or result == "timeout" then
		return false
	end
	if fightYj() then
		e("tell " .. id .. " kill")
		listener("^" .. name .. "���ֻ������йء���ҳ����������Ϣ��$")
		currentJob = "xsfh"
		kill("ji")
		listener("^�ֻ���ž����һ�����ڵ��ϣ������ų鶯�˼��¾����ˡ�$")
		waitbusy()
		print("help xsfh1 ok")
		return true
	else
		return false
	end
end

function helpxsfh2(id, name)
	currentJob = "xsfh"
	if not go("ǰ��", "���ݳ�") then
		e("tell " .. id .. " fail")
		return false
	end
	e("tell " .. id .. " ok")
	perform()
	local i = getGuardIndex() or 1
	return timeKillHyr(id, i)
end

function helpxsfh3(id, name)
	go("��ɽ", "�置")
	e("tell " .. id .. " ok")
	addListener([[^[^->\s]{4,8}\((\w+)\)�����㣺ok$]], "s:return string.lower(wildcards[1])")
	local result = listen(nil, function() return "timeout" end)
	if result == "timeout" then
		return false
	elseif result == id then
		if fightYj() then
			e("tell " .. id .. " kill")
			listener("^" .. name .. "���ֻ������йء����Ǻ��ġ�����Ϣ��$")
			currentJob = "xsfh"
			kill("ji")
			listener("^�ֻ���ž����һ�����ڵ��ϣ������ų鶯�˼��¾����ˡ�$")
			go("��԰", "�置")
			e("tell " .. id .. " search")
			return timeKillSheAndDog(id)
		else
			return false
		end
	end
end

function timeKillSheAndDog(id, n)
	currentJob = "xsfh"
	n = n or 1
	if n > 240 then
		return true
	end
	e("kill du she;kill lang gou")
	addListener([[^[^->\s]{4,8}\((\w+)\)�����㣺ok$]], "s:return string.lower(wildcards[1])", "timekill")
	local result = listen(0.5, function() return false end)
	if result == id then
		return true
	end
	return timeKillSheAndDog(id, n + 1)
end

function timeKillHyr(id, i, n)
	currentJob = "xsfh"
	n = n or 1
	if n > 240 then
		return true
	end
	e("kill heiyi ren " .. i .. ";p")
	for j=1, 4 do
		e("kill heiyi ren " .. j)
	end
	addListener([[^[^->\s]{4,8}\((\w+)\)�����㣺ok$]], "s:return string.lower(wildcards[1])", "timekill")
	local result = listen(1, function() return false end)
	print(result, id)
	if result == id then
		return true
	end
	return timeKillHyr(id, i, n + 1)
end

function getGuardIndex()
	local guards = {getGuard()}
	for k, v in pairs(guards) do
		if v == myId() then
			return k
		end
	end
end

function fightYj(i)
	i = i or 0
	if i > 10 then
		return false
	end
	local id = getId("�ֻ�")
	if id or yjHeal() then
		e("fight ji")
		currentJob = "fightYj"
		perform("ji")
		currentJob = nil
		while true do
			wait(3000)
			if not isFight() then
				break
			end
		end
		if yjHeal() then
			return true
		else
			return fightYj(i + 1)
		end
	else
		return false
	end
end

function yjHeal(i)
	e("l")
	set("yjHeal")
	addListener("^  �ֻ������˹�����$", "s:return false", "yjHeal")
	addSetListener("yjHeal", "yjHeal")
	if listen() then
		return false
	else
		return true
	end
end

function xsfh4()
	go("����", "���ݳ�")
	while true do
		waitbusy()
		e("ask miao renfeng about ����")
		set("mrf")
		addListener("^���˷ｻ����һ�ű���ͼ��$", "s:return false", "mrf")
		addSetListener("mrf", "mrf")
		if not listen() then
			break
		end
	end
	go("Ĺ��", "�ƺ�����")
	while true do
		e("wa di")
		set("lyd")
		addListener("^�ڵ����ߣ���е�˫����ָͬʱ����һ�������Ӳ֮�����������������һ�����ʵĵ�����$", "s:return false", "lyd")
		addSetListener("lyd", "lyd")
		if not listen() then
			break
		end
	end
	while true do
		waitbusy()
		e("yanjiu lengyue")
		set("lyd")
		addListener("^�㷢�����±��������Ͽ�����������·���ƺ��Ͳر�ͼ���Զ��ա�$", "s:return false", "lyd")
		addSetListener("lyd", "lyd")
		if not listen() then
			break
		end
	end
	waitbusy()
	e("guanzhu lengyue")
	waitbusy()
	e("duizhao lengyue")
end


