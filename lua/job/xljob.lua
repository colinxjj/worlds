function xljob()
	local startTime = os.time()
	local step = getXlStep()
	if not step then
		findYwl()
		e("ask yin wulu about Ѳ��")
		set("xljob")
		addListener([[^��������»�����йء�Ѳ�ߡ�����Ϣ��\n����»˵���������ϴ�����Ѳ����������꣬��������Ϣһ�°ɡ���$]], "s:return 'wait'", "xljob")
		addListener([[^��������»�����йء�Ѳ�ߡ�����Ϣ��\n����»˵���������ǳ�����ɽ��ˮ�ģ����ش����⡣$]], "s:return 'wait'", "xljob")
		addListener([[^��������»�����йء�Ѳ�ߡ�����Ϣ��\n\n����»��������������ڹ���\S+����������ڹ�����Ѳ�ߡ�$]], "s:return 'ok'", "xljob")
		addListener([[^��������»�����йء�Ѳ�ߡ�����Ϣ��\n����»˵��������!�㾹Ȼ��ͬʱ��������񣡡�$]], "s:return 'ok'", "xljob")
		addListener([[^��������»�����йء�Ѳ�ߡ�����Ϣ��\n����»˵�������㲻����Ѳ������ô�����������$]], "s:return 'ok'", "xljob")
		addListener([[^��������»�����йء�Ѳ�ߡ�����Ϣ��\n����»˵���������ϴ�Ѳ�߽�����û�����ء���$]], "s:return 'ok'", "xljob")
		addListener([[^��������»�����йء�Ѳ�ߡ�����Ϣ��\n����»˵�������ţ���ո�Ѳ����ϣ�������ȥ��Ϣ��Ϣ�ɡ���$]], "s:return 'fail'", "xljob")
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
			log.warn("��һ�� xl ������")
			setXlStep(step - 1)
		else
			setXlStep(step + 1)
		end
	end
	xlFinish()
	local useTime = os.time() - startTime
	log.info("Ѳ�� job ��ʱ��" .. useTime)
end

function xl1()
	local result = xlhy({name = "mingjiao/wu1"}, "zhang zhong", "����")
	if result == "ok" then
		return true
	elseif not result then
		return false
	end
	go("����", "����")
	wait(1000)
	go("������", "����")
	wait(1000)
	go("ҩ��", "����")
	wait(1000)
	go("��ˮ��̶")
	wait(1000)
	while true do
		result = xlhy({name = "mingjiao/wu1"}, "zhang zhong", "����")
		if not result then
			return false
		elseif result == "ok" then
			return true
		end
	end
end

function xl2()
	local result = xlhy({name = "������"}, "yan tan", "��ԫ")
	if result == "ok" then
		return true
	elseif not result then
		return false
	end
	go("������")
	while true do
		result = xlhy({name = "������"}, "yan tan", "��ԫ")
		if not result then
			return false
		elseif result == "ok" then
			return true
		end
	end
end

function xl3()
	local result = xlhy({name = "�һ���"}, "xin ran", "��Ȼ")
	if result == "ok" then
		return true
	elseif not result then
		return false
	end
	go("������")
	while true do
		result = xlhy({name = "�һ���"}, "xin ran", "��Ȼ")
		if not result then
			return false
		elseif result == "ok" then
			return true
		end
	end
end

function xl4()
	local result = xlhy({name = "��ˮ��"}, "tang yang", "����")
	if result == "ok" then
		return true
	elseif not result then
		return false
	end
	go("������")
	while true do
		result = xlhy({name = "��ˮ��"}, "tang yang", "����")
		if not result then
			return false
		elseif result == "ok" then
			return true
		end
	end
end

function xl5()
	local result = xlhy({name = "�����"}, "zhuang zheng", "ׯ�")
	if result == "ok" then
		return true
	elseif not result then
		return false
	end
	go("������")
	while true do
		result = xlhy({name = "�����"}, "zhuang zheng", "ׯ�")
		if not result then
			return false
		elseif result == "ok" then
			return true
		end
	end
end

function xl6()
	local result = xlhy({name = "��ľ��"}, "wen cangsong", "�Ų���") 
	if result == "ok" then
		return true
	elseif not result then
		return false
	end
	go("mingjiao/didao/shenchu5")
	while true do
		result = xlhy({name = "��ľ��"}, "wen cangsong", "�Ų���")
		if not result then
			return false
		elseif result == "ok" then
			return true
		end
	end
end

function xl7()
	local result = xlhy({name = "��̳ǰ��"}, "yin yewang", "��Ұ��")
	if result == "ok" then
		return true
	elseif not result then
		return false
	end
	go("����", "����")
	wait(1000)
	go("��ɽ��", "����")
	wait(1000)
	go("�᷿", "����")
	wait(1000)
	while true do
		result = xlhy({name = "��̳ǰ��"}, "yin yewang", "��Ұ��")
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
	e("ask yin wulu about ����")
	e("follow none")
	e("unset xlstep")
	return false
end

function findYwl()
	while true do
		go("��̳ǰ��")
		e("ask yin yewang about yin wulu")
		addListener([[^������Ұ�������йء�yin wulu������Ϣ��\n��Ұ��˵�������ţ�����»������(\S+)һ��Ѳ�ߡ���$]], "s:return wildcards[1]", "xladdr")
		addListener([[^������Ұ�������йء�yin wulu������Ϣ��\n��Ұ��˵�����������������������棬������»�����˸�ɱ�ˡ���$]], "s:return false", "xladdr")
		local name = listen()
		waitbusy()
		if name and find(name, "����", 0, "����»") then
			e("follow yin wulu")
			return true
		end
	end
end

function xlFinish()
	findYwl()
	e("ask yin wulu about ���")
	waitbusy()
	e("give xunluo ling to yin wulu")
	listener("^����»����һƬѲ���$", nil, 30, function() return "timeout" end)
	local _i = i()
	if _i["xunluo ling"] == 0 then
		return xlFangqi()
	end
	e("follow none")
	go("�㳡", "����")
	e("give xunluo ling to wei yixiao")
	e("unset xlstep")
end

function xlhy(addr, id, name)
	go(addr.name, addr.city)
	while true do
		e("ask " .. id .. " about ��ӡ")
		addListener([[^]] .. name .. [[����(\S+)�󺰣�С�ֵܣ����ͣ����ͣ�$]], "s:return 'killer', wildcards[1]", "xlhy")
		addListener([[^]] .. name .. [[����(\S+)���������ִ�Ĵָ�������ġ�$]], "s:return 'ok', wildcards[1]", "xlhy")
		addListener([[^]] .. name .. [[����(\S+)ҡ��ҡͷ��$]], "s:return false, wildcards[1]", "xlhy")
		-- addListener([[^����]] .. name .. [[�����йء���ӡ������Ϣ��\n]] .. name .. [[˵�������ȵȣ������ڼ���ء���$]], "s:return 'wait'", "xlhy")
		addListener([[^����]] .. name .. [[�����йء���ӡ������Ϣ��\n]] .. name .. [[˵��������ȥ��ĵط��������Ȼ������Ѳ���������$]], "s:return false", "xlhy")
		addListener([[^����]] .. name .. [[�����йء���ӡ������Ϣ��\n]] .. name .. [[˵����������û��Ѳ�ߣ�Ҫ�һ�ӡ�����$]], "s:return false", "xlhy")
		addListener([[^����]] .. name .. [[�����йء���ӡ������Ϣ��\n]] .. name .. [[��������˵�ͷ��$]], "s:return 'waitme'", "xlhy")
		addListener([[^����]] .. name .. [[�����йء���ӡ������Ϣ��\n]] .. name .. [[˵�������ף����ǽ���ȥ������û�п��ɵ�������ô��ûȥ����$]], "s:return 'killer'", "xlhy")
		addListener([[^����]] .. name .. [[�����йء���ӡ������Ϣ��\n]] .. name .. [[˵������������Ѿ�Ѳ�����ˣ���ȥ��ĵط������ɡ���$]], "s:return 'ok'", "xlhy")
		local result, flag = listen(5, xlhy, addr, id, name)
		print(result, flag)
		if not flag or flag == "��" then
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
	go("��ľ��")
	while true do
		addListener("^һ����ӰͻȻ�������˳�������ס���ȥ·��$", "s:return 'ok'", "killer")
		addListener("^̽��һ�Բ�����������������ǰ��$", "s:return 'ok'", "killer")
		addSetListener("killer", "killer")
		e("w;h;e;w;h;e;w;h;e;w;h;e;w;h;e")
		set("killer")
		local killer = listen()
		if killer == "ok" then
			while true do
				perform()
				local name = "(�����|������|������|��������|ɽ��|̽��|��ʿ)"
				addListener("^" .. name .. "ת��������Ͳ����ˡ�$", nil, "killer")
				addListener("^" .. name .. "��ž����һ�����ڵ��ϣ������ų鶯�˼��¾����ˡ�$", nil, "killer")
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
