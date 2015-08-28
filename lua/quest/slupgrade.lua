function slUpgrade()
	log.debug("slUpgrade")
	if getParty() ~= "������" then
		return false
	end
	currentJob = nil
	local _, _isLimit = isFullOrLimit()
	if not _isLimit or getTitle() == "�����ɵ���ʮ�������" then
		return false
	end
	local _hp = hp()
	if getTitle() == "�����ɵ���ʮһ������" then
		return upToQing()
	elseif getTitle() == "�����ɵ���ʮ������" and passMuren() then
		return upToDao()
	elseif getTitle() == "�����ɵ���ʮ�Ŵ�����" then
		return upToHui()
	elseif getTitle() == "�����ɵ���ʮ�˴�����" then
		return passLuohan()
	elseif getTitle() == "�����ɵ���ʮ�ߴ�����" then
		if getCha().literate.level < 120 then
			if isLimit("literate") then
				log.warn("��������д�ּ��𲻹���ȥ��Ե��")
				if not slHuayuan() then
					log.warn("����ûǮѧ����д�֣�����ȥ��")
					currentJob = "fishjob"
					fishjob()
				end
			elseif fullPot() then
				xue("literate")
				return slUpgrade()
			else
				return false
			end
		else
			return upToXuan()
		end
	elseif getTitle() == "�����ɵ���ʮ��������" then
		if getCha().literate.level < 150 then
			if isLimit("literate") then
				log.warn("���ɶ���д�ּ��𲻹���ȥ��Ե��")
				if not slHuayuan() then
					log.warn("����ûǮѧ����д�֣�����ȥ��")
					currentJob = "fishjob"
					fishjob()
				end
			elseif fullPot() then
				xue("literate")
				return slUpgrade()
			else
				return false
			end
		else
			return upToDu()
		end
	end
end

function slHuayuan()
	local huayuan = getVariable("huayuan")
	if huayuan then
		return false
	end
	local result = find("city/nandajie2", nil, 4, "�в�ɮ")
	if not result then
		return false
	end
	e("ask tuobo seng about ��Ե")
	set("huayuan")
	addListener([[^�����в�ɮ�����йء���Ե������Ϣ��\n�в�ɮ���˵�ͷ��Ц�������ް����ӷ����գ����գ�$]], "s:return true", "huayuan")
	addListener([[^����û������ˡ�$]], "s:return false", "huayuan")
	addSetListener("huayuan", "huayuan")
	local result = listen()
	if not result then
		return false
	else
		setVariable("huayuan", true)
		if result == "huayuan" then
			return false
		else
			score()
			return true
		end
	end
end

function upPrepare()
	e("jifa all;bei strike;bei finger;set wimpy 80;yq")
	Send("set wimpycmd yun qi\\hp")
end

function slEat()
	go("shaolin/fanting1")
	e("sit chair;knock luo;get qingshui hulu;#4 drink qingshui hulu;get yuanxiao;#4 eat yuanxiao;n;drop qingshui hulu;drop yuanxiao")
end

function slFull()
	slEat()
	upPrepare()
	wait(2000)
	dbj()
end

function upToQing()
	slFull()
	askdml()
	go("shaolin/gchange")
	e("l")
	set("up")
	addListener([[^  �����ɵ���ʮ������ ���ޱ���\(Qingwu biqiu\)$]], "s:return 'ok'", "up")
	addSetListener("up", "up")
	if listen() == "ok" then
		e("give damo ling to qingwu biqiu;f qingwu biqiu")
		addListener("^���ޱ��𽻸���һ���Ƽ��š�$", nil, "upToQing")
		addListener([[^�Է�����������������$]], nil, "upToQing")
		listen()
		wait(2000)
		prepare()
		go("�󱯵�")
		e("give tuijian xin1 to daozheng chanshi;bai daozheng chanshi")
		score()
		return true
	else
		wait(10000)
		return upToQing()
	end
end

function passMuren()
	if getExp() < 10000 then
		return false
	end
	slFull()
	go("�޺���һ��")
	e("ask chengguan luohan about ľ����")
	addListener([[^����ι۴����йء�ľ�������Ϣ��\n�ι�˵������\S+�����Ѿ�����ľ������ô���ɲ�Ҫ�����Ŀ������Ц����$]], "s:return false", "muren")
	addListener([[^����ι۴����йء�ľ�������Ϣ��\n�ι��������㿴����֪����Щʲô���⡣$]], "s:return true", "muren")
	if not listen() then
		return true
	end
	waitbusy()
	e("yes;yq")
	for i=1, 10 do
		e("n;yq")
	end
	return true
end

function upToDao()
	slFull()
	askdml()
	go("�󱯵�")
	e("give damo ling to daozheng chanshi;yq;f daozheng chanshi")
	addListener("^������ʦ������һ���Ƽ��š�$", nil, "upToDao")
	addListener([[^�Է�����������������$]], nil, "upToDao")
	listen()
	wait(2000)
	prepare()
	go("shaolin/sblu-1")
	e("give tuijian xin2 to huiming zunzhe;bai huiming zunzhe")
	score()
	return true
end

function upToHui()
	slFull()
	askdml()
	go("shaolin/sengshe1")
	e("give damo ling to huihe zunzhe;yq;f huihe zunzhe")
	addListener("^�ۺ����߽�����һ���Ƽ��š�$", nil, "upToHui")
	addListener([[^�Է�����������������$]], nil, "upToHui")
	listen()
	wait(2000)
	prepare()
	go("����������")
	e("give tuijian xin3 to chengsi luohan;bai chengsi luohan")
	score()
	return true
end

function passLuohan()
	slFull()
	fangqiSkills(80)
	go("�޺���", "������")
	e("ask xuanku dashi about �޺�����")
	addListener([[^���������ʦ�����йء��޺����󡻵���Ϣ��\n�����ʦ˵������\S+���۷����䣬�������������׼���㴳�޺����󣡡�$]],"s:return 'jly'", "lhz")
	addListener("^����˵�����ðɣ���ȥ�ټ��޺��ó��ϣ��Ժ����������䳡�ϵ��㡣$","s:return 'ok'", "lhz")
	if listen() == "jly" then
		goJly()
		return passLuohan()
	end
	waitbusy()
	go("������", "������")
	e("ask xuannan dashi about �޺�����")
	waitbusy()
	go("shaolin/hguangz2")
	passLuohan0()
	e("bai xuannan dashi")
	listener("^(���Ѵ�ʦ��������Ϊ���ӡ�|�㹧�������������Ѵ�ʦ��ͷ�밲���е�����ʦ������)$")
	score()
	listener("^���Ѵ�ʦҲ���˻��֣������ó������漴Ҳ�뿪���䳡��$")
	go("������", "������")
	e("bai xuanci dashi")
	score()
	return true
end

function passLuohan0(i)
	i = i or 0
	if i > 200 then
		return false
	end
	i = i + 1
	addListener("^�����ʦ���˻��֣� �޺��ó������漴����뿪���䳡��$")
	e("yq;hp")
	listen(1,passLuohan0,i)
end

function upToXuan()
	log.warn("׼������")
	slFull()
	fangqiSkills(120)
	go("�޺���", "������")
	e("zong bian;get baitie;jump down")
	local _i = i()
	if _i["baitie"] == 0 then
		wait(10000)
		return upToXuan()
	end
	upToXuan0()
	score()
	return true
end

function upToXuan0()
	go("����ƺ", "������")
	e("give baitie to huiyun zunzhe;ask huiyun zunzhe about ��������")
	addListener([[^����������ߴ����йء��������ϡ�����Ϣ��\n��������˵������\S+���۷����䣬�����������Ȼ�ȥ��ڰɣ���$]], "s:return 'jly'", "upToXuan")
	addListener([[^����������ߴ����йء��������ϡ�����Ϣ��\n\n����˵�����ðɣ���������ʯ����أ�������þͻ���Ϊ��\(huadi\)׼������ɡ�$]], "s:return 'ok'", "upToXuan")
	if listen() == "jly" then
		goJly()
		return upToXuan0()
	end
	waitbusy()
	e("huadi")
	upToXuan1()
	e("n;bai fangsheng dashi")
	listener("^������ʦ��������Ϊ���ӡ�$")
	e("eat puti zi")
	addListener("^�����һ�������ӣ���Ȼ��ֻ��һ�ɺƵ�������ֱ�嶥�š���$", nil, "ptz")
	addListener([[^һ��ů�����Ե�������ȫ�����������ָֻ���֪������$]], nil, "ptz")
	listen()
end

function upToXuan1(i)
	i = i or 0
	if i > 200 then
		return false
	end
	i = i + 1
	addListener("^���ƴ�ʦ�������أ� ʯ�����漴����뿪��$")
	e("yq;hp")
	listen(1,upToXuan1,i)
end

function upToDu()
	slFull()
	go("С��", "������")
	e("ask murong bo about ��Ը")
	addListener([[^����Ľ�ݲ������йء���Ը������Ϣ��\nĽ�ݲ�˵��������ʦ��ż���ᵽ��������ʦ��������ʦ�������ȥѰ��һ����Ħ��ʦ��д�Ľ�վ�,$]], nil, "xy")
	addListener([[^����Ľ�ݲ������йء���Ը������Ϣ��\nĽ�ݲ�˵������\S+�Ҳ��Ǻ���˵������\?�㵱��Ľ�ݲ�ʲ����\?��$]], nil, "xy")
	listen()
	go("ʯ����")
	local id = getId("�η�����")
	if not id then
		return false
	end
	e("ask seng ren about name")
	listener([[^�����η������ʵ�������\S+���մ�����\n�η������������㿴����֪����Щʲô���⡣\n�η�����˵���������ķ�������������.��$]])
	waitbusy()
	e("ask seng ren about here")
	listener([[^�����η������ʵ�����λ\S+��\S+�����󱦵أ���֪������Щʲô�������飿\n�η������������㿴����֪����Щʲô���⡣\n�η�����˵�������˵���ʯ������ǰ����λ�ܹ��ɽ���żȻ�õ�һ�����Ľ�վ�������֮��$]])
	waitbusy()
	e("ask seng ren about ����")
	listener([[^�����η����д����йء���������Ϣ��\n�η�����˵������\S+�����ڴ�Ĭ����վ�,������������֮��\.��$]])
	waitbusy()
	if mosong() then
		e("ask seng ren about ����")
		listener([[^�����η����д����йء���������Ϣ��\n�η����ж�������΢Ц�š�\n�η�����˵��������ǰ�и������ţ�����������Ϣ�����д���Ҫ����������������������$]])
		e("say ����Σ�ѣ��ܲ���������ǣ�ۣ��������ڡ�")
		addListener("^��ͦ�ش���˵����������Σ�ѣ��ܲ���������ǣ�ۣ��������ڡ���$", "s:return true", "jgj")
		addListener([[^��ɮȻ��΢΢һЦ˵��������һ������\S+�����Ѿ�����ȡ�ߣ��´������Ե�ɺϣ��������˽��۷𷨡�$]], "s:return false", "jgj")
		local result = listen()
		killSr()
		if not result then
			return false
		end
		go("С��", "������")
		e("ask murong bo about ����")
		waitbusy()
		e("give fanwen jing to wuming laoseng;bai wuming laoseng")
		listener("^������ɮ��������Ϊ���ӡ�$")
		score()
		slHuayuan()
		return true
	end
	return false
end

function mosong()
	local _hp = hp()
	if _hp.jingli < 100 then
		e("yun jingli")
		return mosong()
	end
	e("mosong stone")
	set("mosong")
	addListener("^����ר���ж�ʯƺ�ϵġ���վ�����$", "s:return false", "mosong")
	addListener("^�����ʯƺ�ϵġ���վ�����ĥ��һ�ض����ƺ���һЩ��������Щ���ʡ�$", "s:return 'ok'", "mosong")
	addSetListener("mosong", "mosong")
	local result = listen()
	if result == "mosong" then
		return false
	end
	if not result then
		wait(500)
		return mosong()
	else
		return true
	end
end

function killSr()
	go("���ի")
	money(0, 200)
	go("ʯ����")
	e("l")
	while true do
		local id, status = getId("�η�����")
		if not id then
			return false
		end
		if status == "faint" then
			wait(2000)
		else
			e("bei none;jiali 0;set wimpy 100;set wimpycmd halt")
			e("throw silver at seng ren")
			waitbusy()
			e("throw silver at seng ren")
			waitbusy()
			e("throw silver at seng ren")
			perform()
			addListener("^�η����С�ž����һ�����ڵ��ϣ������ų鶯�˼��¾����ˡ�$", "s:return true")
			if listen(60, function() return false end) then
				return true
			end
		end
	end
end

function askdml()
	fangqiSkills(30)
	local _i = i()
	if _i["damo ling"] == 0 then
		go("ǰ��", "������")
		e("ask qingshan biqiu about ��Ħ��")
		listener("^����һ���Ħ�$")
		waitbusy()
		return true
	else
		return false
	end
end

function getConfirmPassword()
	local pwd = GetVariable("confirmPassword")
	if not pwd then
		return false
	end
	return pwd
end

function fangqiSkills(level, skips)
	skips = skips or {}
	local _cha = cha()
	for _, skill in pairs(_cha) do
		if skill.level < level and not ignoreFangqi(skill.id) and not skips[skill.id] then
			e("fangqi " .. skill.id)
			addListener([[^��û������ȷ������\(help passwd\)���޷�����\S+��$]], "s:return 'set'", "fangqi")
			addListener([[^��Ҫ�����书��������ȷ�����룺$]], "s:return 'confirmPassword'", "fangqi")
			addListener([[^�������\S+��$]], "s:return 'ok'", "fangqi")
			addListener([[^ע�⣡�㽫Ҫ����ȫ�� \S+\(\w+\) ��ȷ����\[Y|N\] >$]], "s:return 'confirm'", "fangqi")
			local result = listen()
			local confirmPassword = getConfirmPassword()
			if result == "set" then
				if not confirmPassword then
					return false
				else
					e("passwd -c;;" .. confirmPassword .. ";" .. confirmPassword)
					return fangqiSkills(level, skips)
				end
			elseif result == "confirmPassword" then
				if not confirmPassword then
					return false
				else
					e(confirmPassword .. ";y")
				end
			elseif result == "confirm" then
				e("y")
			end
			waitbusy()
		end
	end
	cha()
end

function ignoreFangqi(skill)
	local ignores = {
		"yijin-jing", "xuantian-wuji", "shenyuan-gong",
		"force", "literate", "dodge", "parry",
		"buddhism", "art", "hamagong",
		"shaolin-shenfa", "xunlei-jianfa",
	}
	for _, v in pairs(ignores) do
		if v == skill then
			return true
		end
	end
	return false
end

function slTs()
	go("���", "������")
	e("ask huikong zunzhe about ��ˮ")
	wait(3000)
	e("get tong")
	while not slTs0() do
	end
end

function slTs0()
	local _hp = hp()
	if _hp.jingli > _hp.max_jingli / 2 then
		go("���ľ�", "������")
		e("fill tong")
		go("���", "������")
		e("dao gang")
		set("ts")
		addListener("^����������������Ͱ�����˸�������$", "s:return false", "ts")
		addSetListener("ts", "ts")
		if not listen() then
			return init()
		else
			return false
		end
	else
		wait(2000)
		e("yun jingli")
		return slTs0()
	end
end
