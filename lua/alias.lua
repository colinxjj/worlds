package.path = GetInfo(57) .. "lua/?.lua"

require("util")

function handFree()
	unwieldWeapon()
	unwieldCutweapon()
	unwieldIntweapon()
	return true
end

function wieldCutweapon()
	local cutweapon = getCutweapon()
	e("wield " .. cutweapon)
	return true
end

function unwieldCutweapon()
	local weapon = getWeapon()
	if weapon then
		return true
	end
	local cutweapon = getCutweapon()
	if cutweapon then
		e("unwield " .. cutweapon)
	end
	return true
end

function wieldIntweapon()
	local intweapon = intWeapon()
	if intweapon then
		e("wield " .. intweapon)
	end
end

function unwieldIntweapon()
	local intweapon = intWeapon()
	if intweapon then
		e("unwield " .. intweapon)
	end
end

function unwieldWeapon()
	local weapon = getWeapon()
	if weapon then
		e("unwield " .. weapon)
		return true
	end
	return true
end

function wieldWeapon()
	local weapon = getWeapon()
	if weapon then
		e("wield " .. weapon)
		return true
	end
	return true
end

function goSs()
	local _i = i()
	if _i["fire"] == 0 then
		go("������", "��Ĺ")
		e("#4 search qiangjiao")
		set("search")
		addListener("^����ǽ�ŵ���Ʒ���﷭����ȥ�ҳ�һ�ѻ��ۡ�$", "s:return false", "search")
		addSetListener("search", "search")
		if listen() then
			e("quit")
		end
		return goSs()
	end
	if hp().neili < 500 then
		db()
	end
	e("tang bed;move shiban")
end

function goThd()
	local _i = i()
	if _i.coin < 200 then
		go("��ի")
		money(200, false, false)
		go("����", "�һ���")
	end
	e("l rock;jump boat")
	listener("^�����ۡ���һ��ײ���˰��ߣ��㼱æ���������˰���$")
end

function goCkc()
	e(lookSign())
end

function outSd()
	e("#20 n")
	wait(2000)
	local _here = here()
	if _here.name == "ɽ��" then
		return true
	elseif _here.name == "ɽ��" then
		return outSd()
	else
		return false
	end
end

function goNp()
	local _hp = hp()
	if _hp.jing < 100 then
		if _hp.neili >= 20 then
			e("yun jing")
		elseif not dq() then
			wait(5000)
		end
		return goNp()
	end
	e("s")
	local _here = here()
	if _here.name == "ţ��" then
		return true
	end
	if _here.name == "����" then
		e("e")
		goNp()
	elseif _here.name == "�ݾ�" then
		e("s")
		goNp()
	else
		return false
	end
end

function goCj()
	local _hp = hp()
	if _hp.jing < 100 then
		if _hp.neili >= 20 then
			e("yun jing")
		elseif not dq() then
			wait(5000)
		end
		return goCj()
	end
	e("nd")
	local _here = here()
	if _here.name == "�ݾ�" then
		return true
	end
	if _here.name == "����" then
		e("e")
		goCj()
	elseif _here.name == "ţ��" then
		e("nd")
		goCj()
	else
		return false
	end
end

function outWg()
	e("ask sun jun about ���")
	set("outwg")
	addListener([[^������������йء���ݡ�����Ϣ��\n���������ü���ƺ������˵Щʲô��\n���˵��������λС�ֵ�û�й�����ͬ�⣬�ҿɲ������������뿪��ݡ���$]], "s:return false", "outwg")
	addSetListener("outwg", "outwg")
	local result = listen()
	waitbusy()
	if not result then
		go("��ů��")
		e("ask wan zhenshan about ���")
		waitbusy()
		go("����", "���")
		e("ask sun jun about ���")
		waitbusy()
	end
	return true
end

function outZl()
	e("#5 w;#7 n")
	wait(1000)
end

function outGb()
	if not validHere("����") then
		return false
	end
	e("#12 s")
	wait(1000)
	local _here = here()
	if _here.name == "С·" then
		return true
	elseif _here.name ~= "����" then
		return false
	else
		return outGb()
	end
end

function outThz()
	while minutes() > 1080 and minutes() < 1410 do
		wait(1000)
	end
	local ways = {"east", "west", "south", "north"}
	while true do
		local coins = {}
		for _, way in pairs(ways) do
			e("l " .. way)
			e("set coin " .. way)
			addListener([[^  (\S+)��ͭǮ\(Coin\)$]], "s:return trans(wildcards[1])", "coin")
			addListener([[^�趨����������coin = "]] .. way .. [["]], "s:return 0", "coin")
			local n = listen()
			coins[way] = n
		end
		local min = 10000
		local goWay
		for k, v in pairs(coins) do
			if v < min then
				min = v
				goWay = k
			end
		end
		e(goWay)
		if here().name == "СԺ" then
			return true
		else
			e("drop 1 coin")
			wait(1000)
		end
	end
end

function goYd()
	local _i = i()
	if _i["weight"] >= 20 then
		return false
	end
	if _i["nao gou"] == 0 or _i["tao suo"] == 0 then
		go("������")
		local id = getId("������ʦ")
		if not id then
			wait(2000)
			return goYd()
		end
		e("ask fangsheng dashi about �ӹ�")
		waitbusy()
		e("ask fangsheng dashi about ����")
		waitbusy()
		go("����ƺ")
	end
	e("gou naogou;shuai taosuo;pa up")
	set("yd")
	addListener("^��������е��ӹ�������ʩչ�Ṧ������ȥ��$", "s:return false", "yd")
	addSetListener("yd", "yd")
	if listen() then
		log.error("ȥ����������ʦʧ��")
	end
end

function goHt()
	local id = getId("����ֹ")
	if not id then
		wait(2000)
		return goHt()
	end
	e("ask gongsun zhi about �����")
	waitbusy()
	e("xian hua;zuan dao")
	return true
end

function goXtj()
	xtjStart()
	e("n;e;n;e;w;s;n;n")
end

function outXtj()
	xtjStart()
	e("s")
end

function xtjStart()
	if not validHere("����") then
		return false
	end
	local ways = {"e", "s", "n", "w"}
	local _, way = randomGet(ways)
	e(way)
	e("n;e;n;e;w;s;n;s;s;n")
	local _here = here()
	_here.exits = around(_here.exits)
	wait(2000)
	if _here.exits["south"].name == "ɽ·" then
		return true
	else
		return xtjStart()
	end
end

function yjh()
	if getExp() > 1200000 and getLcj().quest == 1 then
		e("w;get ye juhua;e;s")
	else
		e("s")
	end
end

function dmd()
	local _here = here()
	if _here.name ~= "����" then
		return false
	end
	randomMove(_here.exits)
	local exits = {"e", "s", "n", "w"}
	for i=1,5 do
		local _, exit = randomGet(exits)
		e(exit)
	end
	e("nw;n")
	if validHere("��Ħ��") then
		return true
	else
		return dmd()
	end
end

function outYs()
	local _hp = hp()
	if _hp.shen < 0 then
		e("#20 mianbi")
		wait(2000)
		return outYs()
	else
		e("ask di yun about �뿪")
		waitbusy()
		e("jump up")
		waitbusy()
	end
end

function outTlsSsl()
	local _here = here()
	if _here.name ~= "������" and _here.name ~= "ʯ��·" then
		return false
	end
	e("s;w;s;w")
	e("#11 s")
	wait(2000)
	if not validHere("�껨��") then
		return outTlsSsl()
	else
		return true
	end
end

function toXdt()
	e("#9 n;#6 e")
	return toXdt0(0)
end

function toXdt0(n)
	if n > 30 then
		return false
	end
	if validHere("С����") then
		return true
	end
	e("w;e")
	return toXdt0(n + 1)
end

function toRyp()
	if not validHere("ʯ��") then
		return false
	end
	local id = getId("�ֲ�")
	if id then
		e("whisper jia �����ĳ���£�һͳ����")
		e("whisper jia ����ǧ�����أ�һͳ����")
		e("whisper jia ��������Ϊ������������")
		e("whisper jia ������ּӢ���������Ų�")
		e("whisper jia �����������£��츣����")
		e("whisper jia ����ս�޲�ʤ�����޲���")
		e("whisper jia ��������ĳ���¡�����Ӣ��")
		e("whisper jia ��������ʥ�̣��󱻲���")
		e("wu")
		if validHere("����ƺ") then
			return true
		else
			return false
		end
	else
		wait(2000)
		return toRyp()
	end
end

function waityell(_hp)
	if isSafe() then
		local hereId = locateHere()
		goNofightRoom()
		wait(2000)
		go(hereId)
		return
	end
	if not dq(_hp, _hp.max_neili * 2 - _hp.neili - 1) and not tj(_hp, _hp.eff_jingli * 2 - _hp.jingli - 1) then
		wait(2000)
	end
end

function hmy(locate)
	local _here = here()
	if _here.name ~= "����ƺ" and _here.name ~= "�¶�" then
		return false
	end
	e("yun jingli")
	local _hp = hp()
	if getJifaDodge() >= 300 and getMaxNeili() >= 4000 and _hp.neili >= 1500 and _hp.jingli >= 1000 then
		local result = fly("zong")
		if result == "ok" then
			return true
		elseif result == "wait" then
			return hmy(locate)
		end
	end
	e("yell " .. locate .. ";r;tuna")
	set("hmy")
	addListener("^���ﲻ׼ս����Ҳ��׼���ɡ�$", "s:return true", "hmy")
	addSetListener("hmy", "hmy")
	if listen() == "hmy" then
		waityell(_hp)
		hmy(locate)
	else
		listener([[^��¨���˼��£���һ��ʯ��֮��ͣ��������$]])
		e("out")
	end
end

function outTl()
	e("set look")
	local _here = here()
	_here.exits[""] = true
	for k in pairs(_here.exits) do
		e("l " .. k)
		set("outtl")
		addListener("����Ժ", "s:return 'ok'", "outtl")
		addSetListener("outtl", "outtl")
		local result = listen()
		if result == "ok" then
			wait(2000)
			e(k)
			e("ne;n;nw;sw;w;ne;w;s;nw;sw;n")
			return true
		end
	end
	wait(2000)
	_here.exits[""] = nil
	randomMove(_here.exits)
	return outTl()
end

function toSsa()
	local _hp = hp()
	if _hp.qi >= 100 then
		e("climb")
		if validHere("��ʥ��") then
			return true
		else
			return toSsa()
		end
	elseif _hp.neili >= 20 then
		e("yun qi")
		return toSsa()
	else
		return false
	end
end

function wdSqd(i)
	i = i or 0
	if i > 10 then
		return false
	end
	if validHere("�����") then
		return true
	end
	e("n")
	return wdSqd(i+1)
end

function wdYm()
	if not validHere("С��") then
		return false
	end
	e("s")
	return wdYm0()
end

function wdYm0()
	if validHere("Ժ��") then
		return true
	end
	local ways = {
		["��"] = "east",
		["��"] = "south",
		["��"] = "west",
		["��"] = "north",
	}
	local result = listener([[^��վ��С���ϣ����ܴ������·𿴼�(\S+)����Щ���⡣$]], "s:return wildcards[1]")
	e(ways[result])
	return wdYm0()
end

function outJgSq()
	outJg()
	if validHere("��ʯ��") then
		return true
	else
		return go("��ʯ��", "����ׯ")
	end
end

function outJgZq()
	outJg()
	if validHere("����ׯǰ") then
		return true
	else
		return go("����ׯǰ", "����ׯ")
	end
end

function outJg()
	local _here = here()
	if _here.name == "����ׯǰ" or _here.name == "��ʯ��" then
		return true
	end
	if not validHere("�Ź��һ���") then
		return false
	end
	wait(2000)
	e("#2 n;#2 w")
	getTaohua()
	e("e")
	getTaohua()
	e("e")
	getTaohua()
	e("s")
	getTaohua()
	e("w")
	getTaohua()
	e("w")
	getTaohua()
	e("s")
	getTaohua()
	e("e")
	getTaohua()
	e("e")
	getTaohua()
	wait(2000)
	e("drop 5 taohua;w;drop 5 taohua;w;drop 5 taohua;n;drop 5 taohua;e;drop 5 taohua;e;drop 5 taohua;n;drop 5 taohua;w;drop 5 taohua;w;drop 5 taohua")
end

function getTaohua()
	e("l")
	addListener([[^    ����һƬï�ܵ��һ��ԣ���һ�߽�������ʧ�˷��򡣵�����(\S+)���һ�\(taohua\)��$]],"s:return wildcards[1]", "taohua")
	addListener([[^    ����һƬï�ܵ��һ��ԣ���һ�߽�������ʧ�˷��򡣵���һ���һ�\(taohua\)Ҳû�С�$]],"s:return false", "taohua")
	local result = listen()
	if result then
		e("get " .. trans(result) .. " taohua")
	end
end

function stToSd()
	if not validHere("ˮ��") then
		return false
	end
	e("eu")
	if validHere("ɽ��ƽ��") then
		return true
	elseif validHere("����") then
		zlToSt()
		return stToSd()
	else
		return false
	end
end

function zlToSt()
	if validHere("ˮ��") then
		return true
	end
	if not validHere("����") then
		return false
	end
	wait(500)
	findInZl()
	e("wd")
	return zlToSt()
end

function findInZl()
	local exits = {
		east = true,
		west = true,
		south = true,
		north = true,
	}
	randomMove(exits)
end

function mzRoom()
	local mzRoom = {}
	hide("set look")
	e("l")
	set("mzRoom")
	while true do
		addListener([[^��������������(\S+)��$]],"s:return 'city',wildcards[1]","mzRoom")
		addListener([[^�Ĵ���ض���÷����֦Ҷï�ܵ�����ն�����ס�ˣ����ѿ�����Χ�������$]],"s:return 'north', true","mzRoom")
		addListener([[^��һ����ׯԺ���Ĵ���ض���÷����֦Ҷï�ܵ�����ն�����ס�ˣ����ѿ���$]],"s:return 'south', true","mzRoom")
		addListener([[^(\S+) - $]],"s:return 'name',wildcards[1]","mzRoom")
		addListener([[^(?:    ����û���κ����Եĳ�·|    ����Ψһ�ĳ����� (\S+)|    �������Եĳ����� (.+))��$]],"OnExits","mzRoom")
		addSetListener("mzRoom","mzRoom")
		local k,v = listen()
		if k == "mzRoom" then
			break
		else
			mzRoom[k] = v
		end
	end
	return mzRoom
end

function outMl(way)
	local places = {
		north = "south",
		south = "north",
		east = "west",
		west = "east",
	}
	way = places[way]
	local place = way
	while true do
		local _here = mzRoom()
		if _here.name == "÷��" then
			direction = getNextWay(_here, place, way)
			e(direction)
			place = places[direction]
			wait(200)
		else
			break
		end
	end
end

function getNextWay(_here, direction, ignoreExit)
	local exits = _here.exits
	local ways = {
		north = "east",
		east = "south",
		south = "west",
		west = "north",
	}
	local goalExit = ways[ways[ignoreExit]]
	while true do
		direction = ways[direction]
		if exits[direction] then
			if direction == goalExit and _here[goalExit] then
				return goalExit
			end
			if direction ~= ignoreExit then
				return direction
			elseif not _here[ignoreExit] then
				return direction
			end
		end
	end
end

function toSc()
	local _here = here()
	local _around = around(_here.exits)
	for exit, room in pairs(_around) do
		if room.name == "�����" then
			e(exit)
			return
		end
	end
end

function toXcm()
	if not haveCutweapon() then
		while true do
			if getPartyCutweapon() then
				return toXcm()
			else
				wait(5000)
			end
		end
	end
	go("���ɽ�", "��ɽ")
	wieldCutweapon()
	e("zhan tielian")
	waitbusy()
	unwieldCutweapon()
	e("jump duimian")
	waitbusy()
end

function getMudao()
	go("������", "������")
	e("get mu dao")
	e("ask daochen chanshi about ľ��")
	waitbusy()
	local _i = i()
	if _i["mu dao"] > 0 then
		setVariable("cutweapon", "mu dao")
		return true
	else
		local id = getId("������ʦ")
		if not id then
			return false
		else
			db()
			e("kill daochen chanshi")
			addListener("^������ʦ��ž����һ�����ڵ��ϣ������ų鶯�˼��¾����ˡ�$", nil, "mudao")
			addListener("^����û������ˡ�$", nil, "mudao")
			listen()
		end
	end
end

function getMrWeapon(id, name)
	local _i = i()
	if _i[id] == 0 then
		go("�ӻ���", "��٢��ɽׯ")
		e("na " .. name .. " from jia")
		addListener([[^��ӱ��������ó�һ��\S+��$]], "s:return true", "mr")
		addListener("^���Ѿ��ù��ˡ�$", "s:return false", "mr")
		if not listen() then
			waitbusy()
			e("quit")
			return false
		end
	end
	setVariable("cutweapon", id)
	return true
end

function getTzWeapon(id, name)
	local _i = i()
	if _i[id] == 0 then
		if not go("������", "����ɽ") then
			return false
		end
		e("na " .. name .. " from jia")
		addListener([[^��ӱ��������ó�һ��\S+��$]], "s:return true", "tz")
		addListener("^���Ѿ��ù��ˡ�$", "s:return false", "tz")
		if not listen() then
			log.error("�Ѿ�������ɽ�ù������ˣ��˳�������")
			waitbusy()
			e("quit")
			return false
		end
	end
	setVariable("cutweapon", id)
	return true
end

function outSld()
	if not stealLingpai() then
		return false
	end
	go("�ɿ�", "������")
	e("give ling pai to chuan fu")
	local result = listener("^������һԾ������С����$", nil, 30, function() return "timeout" end)
	if result == "timeout" then
		return outSld()
	end
	e("order ����")
	listener("^������һԾ�����˴���$")
end

function stealLingpai()
	if not validHere("½������") then
		return false
	end
	e("steal lingpai")
	addListener("^���Ѿ��������ƣ���͵��������$", "s:return true", "ling")
	addListener("^��ɹ���͵���˿�ͨ������!$", "s:return true", "ling")
	addListener([[^½����һ�Ű�\S+���˳�ȥ��$]], "s:return false", "ling")
	local result = listen()
	if result then
		return true
	else
		e("h;r")
		wait(500)
		return stealLingpai()
	end
end

function toSld()
	if not validHere("��̲") then
		return false
	end
	local _i = i()
	if not haveCutweapon(_i) then
		while true do
			if getPartyCutweapon() then
				go("��̲", "������")
				return toSld()
			else
				wait(5000)
			end
		end
	end
	if _i["cu shengzi"] == 0 then
		if _i.silver < 50 then
			go("Ǯׯ", "������")
			money(0, 50)
			go("��̲", "������")
		end
		e("get cu shengzi;buy cu shengzi")
		wait(1000)
		return toSld()
	end
	wieldCutweapon()
	e("chop tree")
	unwieldCutweapon()
	e("bang mu tou;zuo mufa")
	addListener("^ľ����û����ʵ�����������ɡ�$", "s:return false", "mf")
	addListener("^�����û�����������ֿ���$", "s:return false", "mf")
	addListener("^ֻ��������һԾ��������ľ���ϡ�$", "s:return true", "mf")
	if not listen() then
		return toSld()
	end
	huaMufa()
	listener("^���ͷһ����Сľ��ײ��ɢ�ܣ����������ˡ�$")
end

function huaMufa()
	e("hua mufa")
	set("sld")
	addListener("^������ľ���ϵ�һ��ľͷ����ľ����ǰ��ȥ��$", "s:return 'hua'", "sld")
	addSetListener("sld", "sld")
	if listen() == "sld" then
		return true
	else
		listener("^Сľ��˳�ź��磬һֱ��Ʈȥ��$")
		return huaMufa()
	end
end

function outSsl()
	if not validHere("������") then
		return false
	end
	while true do
		e("n;e;e;e;e")
		wait(1000)
		if validHere("ʯ��") then
			return true
		end
	end
end

function toQc()
	if not validHere("ɳĮ") then
		return false
	end
	e("n;n")
	for i=0, 5 do
		e("#10 e")
		local _here = here()
		if validHere("���") then
			return true
		end
		e("n")
		wait(1000)
	end
	quit()
	return false
end

function hsToQyg()
	e("move stone")
	addListener("^��˫��Ͼ����Ὺ�˴�ʯͷ��$", "s:return true", "move")
	addListener("^��ʹ���˳��̵�������Ҳû�Ὺ��ʯͷ��$", "s:return false", "move")
	local result = listen()
	if result then
		e("nd")
	else
		hsToQyg()
	end
end

function enterJqg()
	if not validHere("СϪ��") then
		return false
	end
	e("l boat;jump boat")
	listener("^�ֻ��������Ϫ�ĺ��оſ��ʯӭ����������������һ�㣬��ס������ȥ·��$")
	e("out")
end

function outJqg()
	if not validHere("������") then
		return false
	end
	unwieldWeapon()
	e("tui boat;jump boat")
	wieldWeapon()
	listener("^�ֻ��������Ϫ�����ۣ�С�۾������˼�������ֻص�Ϫ�ߡ�$")
	e("out")
end

function outJld()
	e("leave")
	addListener([[^����ûͷ��Ӭһ���ڶ���Ϲ�꣬���һͷײ�ڶ����ϡ�\n��������κ����ģ��ƺ�ײɵ�ˡ�$]], "s:return false", "outJld")
	addListener([[^��ת��תȥ������ת���˶��ڡ�$]], "s:return true", "outJld")
	if listen() then
		return true
	else
		return outJld()
	end
end

function yzwToSz()
	if not validHere("����") then
		return false
	end
	e("yell boat;r;tuna")
	set("boat")
	addListener("^���ﲻ׼ս����Ҳ��׼���ɡ�$", "s:return true", "yzwToSz")
	addSetListener("boat", "yzwToSz")
	if listen() == "boat" then
		local _hp = hp()
		waityell(_hp)
		yzwToSz()
	else
		listener([[^����˵���������ϰ��ɡ����漴��һ��̤�Ű���ϵ̰���$]])
		e("out")
	end
end

function szToXz()
	e("qu xiaozhu")
	addListener("^���ڿڴ��﷭����ȥ���Ҵ�Ǯ��$", "s:return 'ok'", "szToXz")
	addListener("^��⵰��һ�ߴ���ȥ��$", "s:return 'nomoney'", "szToXz")
	local result = listen()
	if result == "nomoney" then
		log.error("ûǮ������Ľ�ٻ�ȥ�ˣ�������Ǯ��")
	end
	listener("^�����С�ۿ��ڰ��ߣ����´��ɡ�$")
	e("out")
end

function szToYzw()
	e("qu yanziwu")
	addListener("^���ڿڴ��﷭����ȥ���Ҵ�Ǯ��$", "s:return 'ok'", "szToXz")
	addListener("^��⵰��һ�ߴ���ȥ��$", "s:return 'nomoney'", "szToXz")
	local result = listen()
	if result == "nomoney" then
		log.error("ûǮ������Ľ�ٻ�ȥ�ˣ�������Ǯ��")
	end
	listener("^�����С�ۿ��ڰ��ߣ����´��ɡ�$")
	e("out")
end

function xzToSz()
	if not validHere("�����") then
		return false
	end
	e("play qin")
	listener("^���ڵ��˰��ߣ������С�ۿ��ڰ��ߣ����´��ɡ�$")
	e("out")
end

function outXz()
	if not validHere("С����") then
		return false
	end
	e("yell boat;r;tuna")
	set("boat")
	addListener("^���ﲻ׼ս����Ҳ��׼���ɡ�$", "s:return true", "outXz")
	addSetListener("boat", "outXz")
	if listen() == "boat" then
		local _hp = hp()
		waityell(_hp)
		outXz()
	else
		addListener([[^����˵���������ϰ��ɡ����漴��һ��̤�Ű���ϵ̰���$]], nil, "xz")
		addListener([[^��������˵���������´��ɣ���ҲҪ��ȥ�ˡ���$]], nil, "xz")
		listen()
		e("out")
	end
end

function outYzw()
	if not validHere("����") then
		return false
	end
	e("yell boat;r;tuna")
	set("boat")
	addListener("^���ﲻ׼ս����Ҳ��׼���ɡ�$", "s:return true", "outYzw")
	addSetListener("boat", "outYzw")
	if listen() == "boat" then
		local _hp = hp()
		waityell(_hp)
		outYzw()
	else
		addListener([[^����˵���������ϰ��ɡ����漴��һ��̤�Ű���ϵ̰���$]], nil, "yzw")
		addListener([[^��������˵���������´��ɣ���ҲҪ��ȥ�ˡ���$]], nil, "yzw")
		listen()
		e("out")
	end
end

function quMr()
	if not validHere("��ͷ") then
		return false
	end
	local _i = i()
	if _i.silver < 50 then
		go("�۱�ի", "���ݳ�")
		money(0, 50)
		go("��ͷ", "����Ľ��")
	end
	e("qu mr")
	addListener("^���ڿڴ��﷭����ȥ���Ҵ�Ǯ��$", "s:return 'ok'", "quMr")
	addListener("^��⵰��һ�ߴ���ȥ��$", "s:return 'nomoney'", "quMr")
	local result = listen()
	if result == "nomoney" then
		return quMr()
	end
	listener("^���ڵ���С���ߣ������С�ۿ��ڰ��ߣ����´��ɡ�$")
	e("out")
end

function quYzw()
	if not validHere("��ͷ") then
		return false
	end
	local _i = i()
	if _i.silver < 50 then
		go("�۱�ի", "���ݳ�")
		money(0, 50)
		go("��ͷ", "����Ľ��")
	end
	e("qu yanziwu")
	addListener("^���ڿڴ��﷭����ȥ���Ҵ�Ǯ��$", "s:return 'ok'", "quYzw")
	addListener("^��⵰��һ�ߴ���ȥ��$", "s:return 'nomoney'", "quYzw")
	local result = listen()
	if result == "nomoney" then
		return quYzw()
	end
	listener("^�����С�ۿ��ڰ��ߣ����´��ɡ�$")
	e("out")
end

function outcd()
	waitbusy()
	local _hp = hp()
	if _hp.jingli <= 100 then
		e("yun jingli")
		wait(1000)
		outcd()
	else
		e("#4 n")
		set("outcd")
		addListener("^��������һͨ����Ȼ�����Լ��߻���ԭ�ء�$", "s:return true", "outcd")
		addSetListener("outcd", "outcd")
		if listen() == "outcd" then
			outcd()
		end
	end
end

function findZyl()
	local ways = {"e", "s", "n", "w"}
	local _, way = randomGet(ways)
	e(way)
end

function outJjl()
	local _here = here()
	if _here.name == "ɽ��СϪ" then
		return true
	end
	if _here.name == "ɽ·" then
		wait(500)
		e("s")
		return outJjl()
	end
end

function outZyl()
	if here().name ~= "��Ҷ��" then
		return false
	end
	local _hp = hp()
	if _hp.jingli < 100 then
		e("yun jingli")
		outZyl()
	else
		wait(2000)
		e("#10 w;#10 e;#10 n;#10 s")
		set("outzyl")
		addListener("^���۵ð���������ҵ�����ȷ�ķ���$", "s:return 'ok'", "outzyl")
		addSetListener("outzyl", "outzyl")
		local result = listen()
		wait(2000)
		if result == "ok" then
			return true
		else
			return outZyl()
		end
	end
end

function tianMen()
	mjMen("������")
end

function leiMen()
	mjMen("������")
end

function diMen()
	mjMen("������")
end

function fengMen()
	mjMen("������")
end

function outzsl()
	while true do
		local _here = here()
		if _here.name ~= "��ɼ��"
			and _here.name ~= "������"
			and _here.name ~= "������"
			and _here.name ~= "������"
			and _here.name ~= "������" then
			return false
		end
		_here.exits = around(_here.exits, "�����|��ˮ��|������|�һ���")
		if _here.exits.west and _here.exits.west.name == "�����" then
			e("w;#3 s")
			_here = here()
		elseif _here.exits.west and _here.exits.west.name == "��ˮ��" then
			e("w")
			_here = here()
		elseif _here.exits.east and _here.exits.east.name == "������" then
			e("#5 e;#3 s")
			_here = here()
		elseif _here.exits.east and _here.exits.east.name == "�һ���" then
			e("#5 e")
			_here = here()
		else
			local flag = false
			for k, v in pairs(_here.exits) do
				if v.goal then
					e(k)
					flag = true
					break
				end
			end
			if not flag then
				e("nw;n")
			end
		end
		if _here.name == "��ˮ��" then
			return true
		end
		wait(800)
	end
end

function mjMen(name)
	while true do
		local _hp = hp()
		if _hp.jingli < 100 then
			if _hp.neili >= 20 then
				e("yun jingli")
			else
				wait(2000)
			end
		else
			local here = here()
			if here.name == name then
				return true
			end
			if here.name == "��ɼ��" then
				here.exits = around(here.exits, "����")
				for way, room in pairs(here.exits) do
					if room.name == name then
						e(way)
						return true
					end
				end
				local flag = false
				for way, room in pairs(here.exits) do
					if room.goal then
						e(way)
						flag = true
						break
					end
				end
				if not flag then
					e("n")
				end
			elseif string.find(here.name, "����") then
				e("ne")
			else
				return false
			end
			wait(800)
		end
	end
end

function passGb()
	if getExp() > 165000 then
		return pass("guan bing")
	else
		wait(2000)
	end
end

function pass(...)
	local id = table.concat({...}," ")
	while true do
		e("compare " .. id)
		addListener([[^����ϸ����ǰ������(\S+)һ����\n.+\n���Ա�����Ϊ�ж�\1(?:��)?����������Լ��(\S+)�ļ�����$]], "s:return wildcards[1], wildcards[2]", "pass")
		addListener("^" .. id .. [[ ��������$]], "s:return false", "pass")
		local name, level = listen(30)
		if name then
			local pfm = level ~= "�����������"
			passKill(id, name, pfm)
		else
			return true
		end
	end
end

function passKill(id, name, pfm)
	if not pfm then
		noPerform()
	end
	e("kill " .. id)
	if pfm then
		perform(id)
	end
	addListener("^" .. name .. [[��־�Ժ�������һ�����ȣ����ڵ��ϻ��˹�ȥ��$]], "s:return 'faint'", "pass")
	addListener("^" .. name .. [[��ž����һ�����ڵ��ϣ������ų鶯�˼��¾����ˡ�$]], "s:return 'die'", "pass")
	addListener("^" .. name .. [[��\S+��\S+��Ķ����ˡ�$]], "s:return 'away'", "pass")
	addListener("^" .. name .. [[�����������㲽Ѹ���쳣�����߼��籼�����������ȥ��$]], "s:return 'away'", "pass")
	local result = listen()
	if result == "die" then
		e("get silver from corpse;get gold from corpse")
	elseif result == "faint" then
		passKill(id, name)
	end
end

function fly(cmd)
	if isSafe() then
		return false
	end
	e(cmd)
	addListener("^�����ô�صİ�������·�������⣬��˵���ˣ�$", "s:return 'boat'", "fly")
	addListener("^�����Ϊ������$", "s:return 'jifa'", "fly")
	addListener("^�����ˮ̫��̫������ɲ���ȥ��$", "s:return 'boat'", "fly")
	addListener("^����¨������ȥ�ɡ�$", "s:return 'wait'", "fly")
	addListener("^�д������������Cool����$", "s:return 'wait'", "fly")
	addListener("^(��|��)��̫���ˣ����û����;�����ĵط�����û����Խ��ȥ��$", "s:return 'wait'", "fly")
	addListener("^�ͱ�ʵ��̫���ˣ����û����;�����ĵط�����û������(��|��)ȥ��$", "s:return 'wait'", "fly")
	addListener([[^����(��|��)�жɴ�������һ�㣬������������\S+����$]], "s:return 'ok'", "fly")
	addListener([[^��һ����Ϣ����׼���¼���¨λ�ã�ʹ�������־�������Ҫ����(��|��)�¡�$]], "s:return 'ok'", "fly")
	local result = listen()
	if result == "ok" then
		waitbusy()
		return "ok"
	elseif result == "wait" then
		wait(1000)
		return "wait"
	elseif result == "jifa" then
		e("jifa all")
		wait(1000)
		return "wait"
	else
		return false
	end
end

function xxdk(locate)
	if not validHere("���Ķɿ�") then
		return false
	end
	e("yun jingli")
	local _hp = hp()
	if getJifaDodge() >= 250 and getMaxNeili() >= 3000 and _hp.neili > 900 and _hp.jingli > 1000 then
		local result = fly("duhe")
		if result == "ok" then
			return true
		elseif result == "wait" then
			return xxdk(locate)
		end
	end
	e("yell boat;r;tuna")
	set("boat")
	addListener("^���ﲻ׼ս����Ҳ��׼���ɡ�$", "s:return 'ok'", "xxdk")
	addListener("^��������������ȴ�������ϴ���Ǯ�����ˡ�$","s:return 'nomoney'","xxdk")
	addSetListener("boat","xxdk")
	local result = listen()
	if result == "boat" then
		waityell(_hp)
		xxdk(locate)
	elseif result == "nomoney" then
		if locate == "nw" then
			go("����Ǯׯ")
			money(0,5)
			go("lanzhou/road2")
			xxdk(locate)
		else
			go("���ի�ֵ�")
			money(0,5)
			go("lanzhou/road3")
			xxdk(locate)
		end
	else
		listener([[^˵�Ž�һ��̤�Ű���ϵ̰����γ�һ����ȥ\(out\)�Ľ��ݡ�$]])
		e("out")
	end
end

function lzdk(locate)
	if not validHere("��ɿ�") then
		return false
	end
	e("yun jingli")
	local _hp = hp()
	if getJifaDodge() >= 250 and getMaxNeili() >= 3000 and _hp.neili > 900 and _hp.jingli > 1000 then
		local result = fly("duhe")
		if result == "ok" then
			return true
		elseif result == "wait" then
			return lzdk(locate)
		end
	end
	e("yell boat;r")
	set("boat")
	addListener("^���ͳ�һ�������ݸ����ң�����Ծ���˶ɴ���$","s:return 'ok'","lzdk")
	addListener("^��������������ȴ�������ϴ���Ǯ�����ˡ�$","s:return 'nomoney'","lzdk")
	addSetListener("boat","lzdk")
	local result = listen()
	if result == "boat" then
		waityell(_hp)
		lzdk(locate)
	elseif result == "nomoney" then
		if locate == "w" then
			go("����Ǯׯ")
			money(0,5)
			go("lanzhou/road2")
			lzdk(locate)
		else
			go("���ի�ֵ�")
			money(0,5)
			go("lanzhou/road3")
			lzdk(locate)
		end
	else
		listener([[^˵�Ž�һ��̤�Ű���ϵ̰����γ�һ����ȥ\(out\)�Ľ��ݡ�$]])
		e("out")
	end
end

function hhdk(locate)
	if not validHere("��ɿ�") then
		return false
	end
	e("yun jingli")
	local _hp = hp()
	if getJifaDodge() >= 250 and getMaxNeili() >= 3000 and _hp.neili > 900 and _hp.jingli > 1000 then
		local result = fly("duhe")
		if result == "ok" then
			return true
		elseif result == "wait" then
			return hhdk(locate)
		end
	end
	e("yell boat;r;tuna")
	set("boat")
	addListener("^���ﲻ׼ս����Ҳ��׼���ɡ�$", "s:return 'ok'", "hhdk")
	addListener("^��������������ȴ�������ϴ���Ǯ�����ˡ�$","s:return 'nomoney'","hhdk")
	addSetListener("boat","hhdk")
	local result = listen()
	if result == "boat" then
		waityell(_hp)
		hhdk(locate)
	elseif result == "nomoney" then
		if locate == "n" then
			go("���ի")
			money(0,5)
			go("huanghe/road2")
			hhdk(locate)
		else
			go("������")
			money(0,5)
			go("huanghe/road3")
			hhdk(locate)
		end
	else
		listener([[^˵�Ž�һ��̤�Ű���ϵ̰����γ�һ����ȥ\(out\)�Ľ��ݡ�$]])
		e("out")
	end
end

function sjdk(locate)
	if not validHere("�½��ɿ�") then
		return false
	end
	e("yun jingli")
	local _hp = hp()
	if getJifaDodge() >= 250 and getMaxNeili() >= 3000 and _hp.neili > 900 and _hp.jingli > 1000 then
		local result = fly("duhe")
		if result == "ok" then
			return true
		elseif result == "wait" then
			return sjdk(locate)
		end
	end
	e("yell boat;r;tuna")
	set("boat")
	addListener("^���ﲻ׼ս����Ҳ��׼���ɡ�$", "s:return 'ok'", "sjdk")
	addListener("^��������������ȴ�������ϴ���Ǯ�����ˡ�$", "s:return 'nomoney'", "sjdk")
	addSetListener("boat", "sjdk")
	local result = listen()
	if result == "boat" then
		waityell(_hp)
		sjdk(locate)
	elseif result == "nomoney" then
		if locate == "n" then
			go("����Ǯׯ")
			money(0,5)
			go("huanghe/road2")
			sjdk(locate)
		else
			go("������")
			money(0,5)
			go("huanghe/road3")
			sjdk(locate)
		end
	else
		listener([[^˵�Ž�һ��̤�Ű���ϵ̰����γ�һ����ȥ\(out\)�Ľ��ݡ�$]])
		e("out")
	end
end

function cj(nowait)
	local _here = here()
	if _here.name ~= "�����ϰ�" and _here.name ~= "��������" then
		return false
	end
	e("yun jingli")
	local _hp = hp()
	if getJifaDodge() >= 270 and getMaxNeili() >= 3500 and _hp.neili >= 1300 and _hp.jingli >= 1350 then
		local result = fly("dujiang")
		if result == "ok" then
			return true
		elseif result == "wait" then
			return cj(true)
		end
	end
	if not nowait then
		wait(2000)
	end
	e("yell boat;r;w;yell boat;r;#2 e;yell boat;r;w;tuna")
	set("boat")
	addListener("^���ﲻ׼ս����Ҳ��׼���ɡ�$", "s:return true", "cj")
	addSetListener("boat", "cj")
	if listen() == "boat" then
		waityell(_hp)
		cj(true)
	else
		listener([[^˵�Ž�һ��̤�Ű���ϵ̰����γ�һ����ȥ\(out\)�Ľ��ݡ�$]])
		e("out;#2 w;e")
	end
end

function lcj()
	if not validHere("���׽���") then
		return false
	end
	e("yun jingli")
	local _hp = hp()
	if getJifaDodge() >= 270 and getMaxNeili() >= 3500 and _hp.neili >= 1300 and _hp.jingli >= 1350 then
		local result = fly("dujiang")
		if result == "ok" then
			return true
		elseif result == "wait" then
			return lcj()
		end
	end
	e("yell boat;r;tuna")
	set("boat")
	addListener("^���ﲻ׼ս����Ҳ��׼���ɡ�$", "s:return true", "lcj")
	addSetListener("boat", "lcj")
	if listen() == "boat" then
		waityell(_hp)
		lcj()
	else
		listener([[^˵�Ž�һ��̤�Ű���ϵ̰����γ�һ����ȥ\(out\)�Ľ��ݡ�$]])
		e("out")
	end
end

function getJinhe(i)
	i = i or 1
	e("l jin he " .. i)
	addListener([[^����Լ��\(jiancha\)��������������ʲô���ܡ�$]], "s:return false", "jinhe")
	addListener([[^��Ҫ��ʲô��$]], "s:return 'no'", "jinhe")
	addListener([[^���ݺὭ��ʱ����(\S+)����Щ�����£�����Ե��ǰȥ�ھ�\(dig\)��$]], "s:return wildcards[1]", "jinhe")
	local addr = listen()
	if addr == "no" then
		return false
	end
	if not addr then
		e("#5 jiancha jinhe")
		wait(1000)
		return getJinhe(i)
	end
	local name, city = getAddr(addr)
	if not name or not find(name, city, 0, true, "all", digJinhe) then
		return getJinhe(i + 1)
	end
end

function digJinhe()
	e("dig")
	set("dig")
	addListener("^���϶���һ������߰ߵ������ӣ�����˲�ע�⣬Ѹ�ٰ����д��뻳�С�$", "s:return false", "dig")
	addSetListener("dig", "dig")
	return not listen()
end

function validHere(name)
	local _here = here()
	return _here.name == name
end

function OnFightRoom(name, line, wildcards)
	run(leaveFightRoom)
end

function leaveFightRoom()
	wait(5000)
	randomMove(here().exits)
	init()
end

function goBgz()
	-- go("����", "�һ���")
	e("l bagua")
	local text = listener([[^һ����ֵ������ԣ����水˳ʱ��˳�������ţ�(\S+)��$]], "s:return wildcards[1]")
	local numbers = {}
	for v in string.gmatch(text, "(..)") do
		local number = getBgNumber(v)
		table.insert(numbers, number)
	end
	go("ɽ��", "�һ���")
	for _, v in pairs(numbers) do
		bgStep(v)
		wait(500)
	end
end

function getBgNumber(text)
	local baguaName = {"��","��","��","��","��","��","��","Ǭ"}
	for k, v in pairs(baguaName) do
		if v == text then
			return k - 1
		end
	end
	log.error("δ�ҵ�����")
	return -1
end

function bgStep(n)
	local steps = getBgSteps(n)
	local _here
	for _, k in pairs(steps) do
		local way = getBgWay(k, _here)
		_here = k
		e(way)
	end
end

function getBgWay(goal, _here)
	local ways = getBgAddr(_here)
	local way = ways[goal]
	return way
end

function getBgSteps(n)
	local steps = {}
	while true do
		if n == 0 and table.getn(steps) == 3 then
			break
		end
		if n % 2 == 0 then
			table.insert(steps, 1, 1)
			n = n / 2
		else
			table.insert(steps, 1, 2)
			n = (n - 1) / 2
		end
	end
	return steps
end

function getBgAddr(_here)
	if not _here then
		e("l")
		addListener("^�м�¶��һ��С����$", "s:return 1", "addr")
		addListener("^���ܵ�û��һ˿��϶��$", "s:return 2", "addr")
		addListener("^ɽ�� - $", "s:return 3", "addr")
		_here = listen()
	end
	local ways = {
		{"south", "west"},
		{"west", "south"},
		{"west", "east"},
	}
	return ways[_here]
end
