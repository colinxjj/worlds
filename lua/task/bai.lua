function bai()
	local party = getInit():GetVariable("party")
	local baiParty = {
		sl = baiSl,
		gm = baiGm,
		mr = baiMr,
	}
	baiParty[party]()
end

function baiSl()
	go("shaolin/guangchang")
	e("bai qingfa biqiu")
	addListener("^�巨�����������Ϊ���ӡ�$", "s:return true", "bai")
	addListener("^�㹧�����������巨�����ͷ�밲���е�����ʦ������$", "s:return true", "bai")
	addListener("^�����˭Ϊʦ��$", "s:return false", "bai")
	local result = listen()
	if not result then
		wait(2000)
		return baiSl()
	end
	score()
	e("ask qingfa biqiu about ���")
	waitbusy()
	e("kneel")
	addListener("^�巨����������ƣ�����ͷ�������Ħ���˼��£������ͷ��������ȥ��$")
	listen()
	score()
	baiSl0()
	return true
end

function baiSl0()
	go("ǰ��", "������")
	waitbusy()
	e("bai qingshan biqiu")
	addListener("^���Ʊ����������Ϊ���ӡ�$", "s:return true", "bai")
	addListener("^�㹧�������������Ʊ����ͷ�밲���е�����ʦ������$", "s:return true", "bai")
	addListener("^�����˭Ϊʦ��$", "s:return false", "bai")
	local result = listen()
	if not result then
		wait(2000)
		return baiSl0()
	end
	score()
	return true
end

function baiMr()
	local _i = i()
	if _i.silver < 50 then
		getMoney()
	end
	go("�ƽ�¥")
	e("bai wang furen")
	score()
end

function baiGm()
	go("�", "��Ĺ")
	e("tiao gou")
	set("bai")
	addListener("^�����������������ǡ���ô����������ڹ�Ĺ���ǰ��$", "s:return 'ok'", "bai")
	addSetListener("bai", "bai")
	if listen() == "bai" then
		log.error("���ܰݹ�Ĺ")
		quit(true)
		return false
	end
	go("����", "��Ĺ")
	e("#2 tuo eastpic;#4 ketou westpic")
	score()
end
