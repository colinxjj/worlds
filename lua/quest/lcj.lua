function getLcj()
	return getStory().lcj
end

function getWaitTime()
	return getVariable("waitTime") or 0
end

local TRY_WAIT_TIME = 3600

function lcjquest(_i)
	if getLcj().quest < 3 then
		szj(_i)
	end
	if getLcj().quest == 3 and getLcj().szj < 3 and getExp() - getLcj().exp >= 50000
		and os.time() - getWaitTime() > TRY_WAIT_TIME then
		szj2()
	end
end

function szj2()
	go("��ʯ", "��ѩɽ")
	e("ask di yun about ���վ�")
	set("szj")
	addListener([[haha]], "s:return 'waittime'", "szj")
	addSetListener("szj", "szj")
	if listen() == "waittime" then
		setVariable("waitTime", os.time())
		return false
	end
	waitbusy()
	story()
end

function szj(_i)
	if getExp() < 1200000 then
		return false
	end
	_i = _i or i()
	if _i["ye juhua"] == 0 then
		return false
	end
	go("С�̹�", "���ݳ�")
	e("give ye juhua to ju you")
	wait(2000)
	_i = i()
	if _i["tong yaoshi"] == 0 then
		return false
	end
	go("��Ժ", "���ݳ�")
	pass("ling tuisi")
	e("kai men;n")
	e("ask ling shuanghua about ����")
	addListener([[^������˪�������йء����䡻����Ϣ��\n��˪��˵�������������Ƕ��������Ѱ����Ҹ��ڻ�԰�����˾綾�Ľ�Ѯ�������ȥ����ס�����Ϳ����ˡ���$]], nil, "ljh")
	addListener([[^������˪�������йء����䡻����Ϣ��\n��˪��˵�������Ҳ��Ǹ��������������Ҳ̫�Ǹ��ˡ���$]], nil, "ljh")
	listen()
	waitbusy()
	e("w;get lu juhua;e")
	wait(2000)
	go("����", "���ݳ�")
	e("give lu juhua to ding dian")
	listener([[^����ݸ���һ���ڲ��¡�$]])
	waitbusy()
	e("ask ding dian about ����")
	go("���Ŀ�", "��ѩɽ")
	waitbusy()
	e("ask bao xiang about ����")
	go("ѩ��", "��ѩɽ")
	e("ask xuedao laozu about ����")
	go("��ʯ", "��ѩɽ")
	e("give wucan yi to di yun")
	listener("^�㶨��һ������Ȼ���������϶�����ƽǹ�������ɡ�$")
	kill("hua tiegan")
	listener("^�����ɺٺٽ��˼������µ��������뿪�ˡ�$")
	waitbusy()
	e("ask di yun about �ݳ���")
	waitbusy()
	e("ask di yun about ԩ��")
	waitbusy()
	go("����", "���ݳ�")
	e("ask ding dian about ���վ�")
	waitbusy()
	story()
	return true
end

