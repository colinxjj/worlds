function getXtj()
	if not getXsz() then
		return false
	end
	if not buyFire() then
		return false
	end
	getXtj0()
end

function buyFire()
	local _i = i()
	if _i["fire"] > 0 then
		return true
	end
	go("������ջ")
	wait(2000)
	return buy("fire")
end

function getXsz()
	local _i = i()
	if _i["xiao shuzhi"] > 0 then
		return true
	end
	print("b")
	wait(2000)
	go("����ɽ")
	e("get xiao shuzhi")
	_i = i()
	if _i["xiao shuzhi"] > 0 then
		return true
	end
	print("c")
	wait(2000)
	go("����ɽ")
	e("get xiao shuzhi")_i = i()
	if _i["xiao shuzhi"] > 0 then
		return true
	else
		return false
	end
end

function getXtj0()
	go("��ɽ��", "��������")
	e("dian shuzhi")
	waitbusy()
	e("l qingtai;mo qingtai")
	waitbusy()
	e("l zi;l mu;kneel mu")
	waitbusy()
	e("zuan dong")
	waitbusy()
	e("nw;nu;#10 l shibi;mo shibi;cuan up;l zi")
	waitbusy()
	handFree()
	e("move stone;enter;ti xuantiejian")
end

local yaos = {
	"neixi wan", "buqi wan", "liaojing dan", "jinchuang yao",
	"yangjing dan", "xujing dan", "bushi dan", "bushui dan",
}
function calcPur()
	go("���ի")
	money(0, 50, 40)
	go("ҩ��", "�����")
	local pur = 0
	local count = 0
	while true do
		local _cha = cha()
		local p = _cha["trade"].practice
		for _, yao in pairs(yaos) do
			e("buy " .. yao)
		end
		_cha = cha()
		local improve = _cha["trade"].practice - p
		if improve > 0 then
			count = count + 1
			t = 40 - improve
		end
		if t and t > 0 then
			if t > pur then
				pur = t
			end
		end
		print(pur)
		if count > 40 then
			print("��� pur��" .. pur)
			break
		end
		wait(1000)
	end
	wait(2000)
	sellYao()
end

function checkPur()
	go("���ի")
	money(0, 0, 20)
	go("ҩ��", "�����")
	local pur = 0
	local count = 0
	local result = false
	while true do
		local _cha = cha()
		local p = _cha["trade"].practice
		for _, yao in pairs(yaos) do
			e("buy " .. yao)
		end
		_cha = cha()
		local improve = _cha["trade"].practice - p
		if improve > 0 then
			count = count + 1
			if improve >= 20 then
				print("pur ���� 30")
				break
			elseif improve == 10 then
				print("pur �� 30")
				result = true
				break
			elseif count > 20 then
				print("pur �ܸ�")
				break
			end
		end
		wait(1000)
	end
	wait(2000)
	sellYao()
end

function sellYao()
	go("����", "���ݳ�")
	while true do
		for _, yao in pairs(yaos) do
			e("sell " .. yao)
		end
		set("yao")
		addListener([[^��������ó�\S+��Ҫ���������ϰ塣$]], "s:return false", "yao")
		addSetListener("yao", "yao")
		if listen() then
			return true
		end
		wait(1000)
	end
end

function hsMb()
	go("˼����", "��ɽ")
	hsMb0()
end

function hsMb0()
	while true do
		local _hp = hp()
		if _hp.water < 50 or _hp.food < 50 then
			full(_hp)
			go("˼����", "��ɽ")
		end
		waitbusy()
		e("out;r;mianbi")
	end
end

function jnadd()
	while true do
		e("yq;yj;hp")
		dz(400)
		tn(250)
		dz(400)
	end
end

function jndz()
	while true do
		e("yq;yj;hp")
		dz(300)
	end
end

function checkMap()
	for k, v in pairs(map.rooms) do
		local ways = v.ways
		if count(ways) == 0 then
			print("û�г��ڣ�" .. k)
		end
		for a, b in pairs(ways) do
			if map.rooms[v] then
				print("����û���ҵ����䣺" .. k .. "��way = " .. a)
			end
		end
		local wayTo = getWayTo(k)
		if count(wayTo) == 0 then
			print("û�н���ķ��䣺" .. k)
		end
	end
end

function getWayTo(room)
	local wayTo = {}
	for k, v in pairs(map.rooms) do
		local ways = v.ways
		for a, b in pairs(ways) do
			if b == room then
				table.insert(wayTo, v)
			end
		end
	end
	return wayTo
end

function sortPath(path)
	local sp = path
	sp = string.gsub(sp,"east","e")
	sp = string.gsub(sp,"west","w")
	sp = string.gsub(sp,"south","s")
	sp = string.gsub(sp,"north","n")
	sp = string.gsub(sp,"enter","r")
	sp = string.gsub(sp,"out","o")
	sp = string.gsub(sp,"up","u")
	sp = string.gsub(sp,"down","d")
	local pathArray = utils.split(sp,";")
	local result = {}
	local count = 1
	local pre
	for _, v in pairs(pathArray) do
		if pre then
			if v == pre then
				count = count + 1
			else
				local curPath
				if count == 1 then
					curPath = pre
				else
					curPath = "#" .. count .. " " .. pre
				end
				table.insert(result,curPath .. ";")
				count = 1
			end
		end
		pre = v
	end
	Note(table.concat(result))
	SetClipboard(table.concat(result))
end

function colors()
	local cs = {"aqua", "black", "blue", "fuchsia", "gray", "green", "lime", "maroon", "navy", "olive", "purple", "red", "silver", "teal", "white", "yellow"}
	for _, v in pairs(cs) do
		cap(v, nil, v)
	end
end

function askWanRm()
	e("ask wanshi tong about beauty")
	set("rm")
	addListener([[^��������ͨ�����йء�beauty������Ϣ��\n����ͨ�������������������ڡ��齣������(.+)��Ӣ������$]],"s:return wildcards[1]", "rm")
	addListener([[^��������ͨ�����йء�beauty������Ϣ��\n�㷢�����鲻����ˣ�������˵��������$]],"s:return false", "rm")
	addListener("^����ͨ���㷭�˷����ۣ�˵��������ô��ôjjww�ģ���������Ҫ�շѵģ������Ķ��ƽ��ȡ�$", "s:return false", "rm")
	addSetListener("rm", "rm")
	local result = listen()
	if not result then
		return 'fail'
	elseif result == "rm" then
		return askWanRm()
	elseif string.find(string.lower(result), myId()) then
		return true
	else
		return false
	end
end

function calcKar()
	local _here = here()
	if _here.name ~= "ţ��" and _here.name ~= "����" and _here.name ~= "�ݾ�" then
		log.error("�㸣Եλ�ò���")
		return false
	end
	local kar = 10
	local n = 0
	while n < 80 do
		wait(200)
		local _hp = hp()
		print(n)
		if _hp.jing > _hp.jing7 + 68 or _hp.eff_jing - _hp.jing < 10 then
			local jing = _hp.jing
			_here = here()
			if _here.name == "ţ��" then
				e("nd")
			elseif _here.name == "����" then
				e("n")
			elseif _here.name == "�ݾ�" then
				e("s")
			else
				return false
			end
			local cost = jing - hp().jing
			print("cost = " .. cost)
			local currentKar = ((cost - 10) / 2) + 1
			if currentKar > 0 then
				n = n + 1
			end
			print("current kar = " .. currentKar)
			kar = currentKar > kar and currentKar or kar
			print("kar = " .. kar)
			if kar == 30 then
				log.error("��Ե��30")
				break
			end
		elseif _hp.neili >= 20 then
			e("yun jing")
		elseif not dq() then
			wait(5000)
		end
	end
	log.info("��Ե��" .. kar)
	e("set kar_age " .. getScore().age.year * 100 + getScore().age.month)
	e("set kar " .. kar)
	return kar
end

function mjKar()
	if true then
		return true
	end
	local guard = getGuard()
	if not guard then
		return false
	end
	local _sets = sets()
	local karAge = _sets["kar_age"] or 1511
	local _score = score()
	if _score.age.year * 100 + _score.age.month > karAge then
		if not go("ţ��") then
			go("ɽ��", "������")
			e("tell " .. guard .. " bohc")
			local result = listener([[^[^\s-]{4,8}���˲���Χ�Ļ��ԣ�ͻȻ�����ұ�\(Right\)������һ��С·��$]], "s:return 'ok'", 30, function() return "timeout" end)
			if result == "timeout" then
				return false
			end
			e("right")
			if here().name ~= "������" then
				return false
			end
			go("ţ��")
		end
		return calcKar()
	end
	return false
end

function bohc()
	go("ɽ��", "������")
	e("bo huacong")
	return true
end

function addHmg()
	while true do
		local _hp = hp()
		if _hp.food < 50 or _hp.water < 50 then
			e("drink ru lao")
			_hp = hp()
		end
		local cost = 20
		local count = math.floor(math.min((_hp.jing - _hp.jing7) / cost, _hp.neili / cost / 2, _hp.jingli / cost))
		if count > 0 then
			e("#" .. count .. " strike stone")
			wait(1000)
		elseif _hp.neili >=20 then
			if _hp.jing - _hp.jing7 < cost then
				e("yun jing")
			else
				e("yun jingli")
			end
		elseif not dq(_hp, _hp.max_neili * 2 - _hp.neili - 1) then
			wait(5000)
		end
	end
end

function getRl()
	while true do
		go("hj/hsk")
		full()
		e("get ru lao")
		wait(2000)
	end
end

function fullLit()
	full()
	db()
	while true do
		hp()
		if getPot() < getMaxPot() * 7 / 10 then
			zcjob()
		end
		fullSkill("literate")
		ggsOver()
	end
end

function fullDuanzao()
	while true do
		local _hp = hp()
		if _hp.pot < _hp.max_pot * 7 / 10 then
			zcjob()
		end
		fullSkill("duanzao")
	end
end

function fullZhizao()
	e("drop shoes;wear all")
	while true do
		local _hp = hp()
		if _hp.pot < _hp.max_pot * 7 / 10 then
			zcjob()
		end
		fullSkill("zhizao")
	end
end

function fullTrade()
	go("����", "�����")
	while true do
		local _hp = hp()
		if _hp.food < 50 or _hp.water < 50 then
			full()
			go("����", "�����")
		end
		local _i = i()
		if _i.silver < 10 then
			go("����Ǯׯ")
			money(0, 200)
			go("����", "�����")
		end
		e("sell junfu;buy junfu;verify trade")
		set("trade")
		addListener("^���ϰ�˵������junfu�� ������Ķ���������û�С���$", "s:return false", "trade")
		addSetListener("trade", "trade")
		if not listen() then
			getJunfu()
			go("����", "�����")
		end
	end
end

function getJunfu()
	go("����", "���ݳ�")
	pass("guan bing")
	e("get junfu from corpse;get junfu from corpse 2")
end


function fullTrade2()
	go("����", "������")
	while true do
		local _hp = hp()
		if _hp.food < 50 or _hp.water < 50 then
			full()
			go("����", "������")
		end
		local _i = i()
		if _i.silver < 10 then
			go("����Ǯׯ")
			money(0, 200)
			go("����", "������")
		end
		e("sell junfu;buy junfu;verify trade")
		set("trade")
		addListener("^�����ϰ�˵������junfu�� ������Ķ���������û�С���$", "s:return false", "trade")
		addSetListener("trade", "trade")
		if not listen() then
			getJunfu2()
			go("����", "������")
		end
	end
end

function getJunfu2()
	go("������", "������")
	pass("guan bing")
	e("get junfu from corpse;get junfu from corpse 2")
end

function goldId()
	return getHelper("gold")
end

function wantGold()
	local id = goldId()
	if id then
		id = Proxy.new(id)
		
	else
		return false
	end
end

function xtg()
	while true do
		full()
		go("��ţɽ", "����ɽ")
		e("jifa force xiantian-gong;wo stone;huxi;jifa force none;verify xiantian-gong")
		wait(500)
	end
end

function yaoInfo()
	local yaos = {}
	e("list")
	set("yaoInfo")
	while true do
		addListener([[^��\S+\((.*)\)\s*(?:(\S+)���ƽ�)?(?:��)?(?:(\S+)������)?(?:��)?(?:(\S+)��ͭǮ)?\s+(\d+)/\s+\d+\s+��$]], "s:return wildcards[1], wildcards[2], wildcards[3], wildcards[4], tonumber(wildcards[5])", "yaoInfo")
		addSetListener("yaoInfo", "yaoInfo")
		local id, gold, silver, coin, count = listen()
		if id == "yaoInfo" then
			break
		end
		id = string.lower(id)
		gold = trans(gold)
		silver = trans(silver)
		coin = trans(coin)
		local value = gold * 10000 + silver * 100 + coin
		local yao = {id = id, value = value, count = count}
		yaos[id] = yao
	end
	return yaos
end

function minYao()
	local addrs = {
		{name = "ҩ��", city = "�����"},
		{name = "ҩ��", city = "�ɶ���"},
	}
	for _, addr in pairs(addrs) do
		go(addr.name, addr.city)
		local yaos = yaoInfo()
		local minValue = 100000
		local yaoId
		for id, yao in pairs(yaos) do
			local count = yao["count"]
			local value = yao["value"]
			if count > 0 and value < minValue then
				minValue = value
				yaoId = id
			end
		end
		if yaoId then
			print(yaoId)
			return yaoId
		end
	end
	log.error("û��ҩ����")
end

function cp()
	local count = 0
	ensureMoney(0, 0, 20)
	while true do
		local id = minYao()
		local _cha = cha()
		local p = _cha["trade"].practice
		e("buy " .. id)
		_cha = cha()
		local improve = _cha["trade"].practice - p
		if improve > 0 then
			count = count + 1
			log.info("���� trade " .. improve)
		end
		if count > 20 then
			log.error("û����� cp")
			return false
		end
		if improve > 19 then
			log.error("cp ���� 30")
			quit()
			return false
		end
		if improve == 10 then
			log.error("�ɹ����������� cp �� 30")
			return true
		end
		wait(1000)
	end
end
