function qqll()
	local partner = getPartner()
	e("follow none")
	partner.e("follow none")
	if jobtimes().jobname == "��������" then
		hsjob()
		return qqll()
	end
	if partner.jobtimes().jobname == "��������" then
		partner.hsjob()
	end
	full()
	partner.full()
	local name, id = qqllAsk()
	wait(2000)
	local path = askPlace()
	wait(2000)
	waitCyl()
	if i()["qiqiaolinglong yu"] > 0 then
		go("�ӻ���", "���ݳ�")
		e("cun qiqiaolinglong yu")
	end
end

function qqllFangqi()
	go("������")
	partner.reset()
	partner.go("������")
	e("ask ma yu about fangqi")
end

function qqllGo()
	askPlace()
	waitCyl()
	if i()["qiqiaolinglong yu"] > 0 then
		go("�ӻ���", "���ݳ�")
		e("cun qiqiaolinglong yu")
	end
end

function findPlaceId()
	while true do
		local player, id = getInfo("qqllname", "qqllid")
		local name, city = getIdAddr(id)
		print("shenyou name = " .. tostring(name) .. " , city = " .. tostring(city))
		local rooms = mapR:getRooms(name, city)
		print("shenyou name = " .. tostring(name) .. " , city = " .. tostring(city) .. " , room count = " .. table.getn(rooms))
		if table.getn(rooms) == 1 then
			local path = rooms[1]
			local partnerId = getPartnerId()
			local partner = getPartner()
			go(path)
			partner.here()
			partner.go(path)
			e("follow " .. partnerId)
			partner.e("follow " .. myId())
			if find(path, nil, 1, id) then
				return true
			end
		else
			wait(1000)
		end
	end
end

function askPlace()
	findPlaceId()
	if not askPlace0() then
		return askPlace()
	end
end

function askPlace0()
	local path
	local name, id = getInfo("qqllname", "qqllid")
	while true do
		wait(200)
		e("ask " .. id .. " about ������")
		local key = set()
		addListener([[^\S+����Ķ�������˵���������������Ѿ�ȥ(\S+)�ˡ�$]], "s:return wildcards[1]", "place")
		addListener([[^��Ҫ��˭ʲô�£�$]], "s:return false", "place")
		addListener([[^����û������ˡ�$]], "s:return false", "place")
		addSetListener(key, "place")
		local result = listen()
		if not result then
			return false
		end
		if result ~= "place" then
			local rooms = map:getRooms(result)
			if table.getn(rooms) == 1 then
				path = rooms[1]
				setInfo("qqllPath", path)
				getIdAddrOk()
				return path
			end
		end
	end
end

function qqllAsk()
	if i()["qiyan shi"] > 0 then
		return getInfo("qqllname", "qqllid")
	end
	local partnerId = getPartnerId()
	local partner = getPartner()
	db()
	partner.db()
	go("������")
	partner.reset()
	partner.go("������")
	e("team dismiss;team with " .. partnerId)
	e("follow " .. partnerId)
	partner.e("team dismiss;team with " .. myId())
	partner.e("follow " .. myId())
	e("ask ma yu about ����ʯ")
	waitbusy()
	e("ask ma yu about job")
	set("qqllAsk")
	addListener([[^��������Ķ�������˵���������������ײ���β���ϴ�(\S+)\((\w+)\)����(\S+)���������ټ��������ȥ����������$]], "s:return wildcards[1], wildcards[2]", "qqllAsk")
	addSetListener("qqllAsk", "qqllAsk")
	local name, id = listen()
	if name == "qqllAsk" then
		return qqllAsk()
	else
		setInfo({qqllname = name, qqllid = id})
		return name, id
	end
end

function getPartner()
	return Proxy:new(getPartnerId())
end

function waitCyl()
	local partnerId = getPartnerId()
	local partner = Proxy:new(partnerId)
	while true do
		local cyl = getId("������")
		if cyl then
			e("ask chunyu lan about ����ʯ;#waitbusy;give qiyan shi to chunyu lan")
			listener("^����������һ������ʯ��$")
			e("follow none")
			partner.e("follow none")
			go("������")
			partner.go("������")
			e("ask ma yu about ���")
			return true
		else
			repeatMove(path)
			wait(3000)
		end
	end
end

function repeatMove(path)
	local partnerId = getPartnerId()
	local partner = Proxy:new(partnerId)
	db()
	partner.db()
	if not path then
		path = getInfo("qqllPath")
	end
	go(path)
	partner.here()
	partner.go(path)
	wait(3000)
	local _here = here()
	local way = randomGet(_here.exits)
	local re = reverse(way)
	e("#10 {go " .. way .. ";go " .. re .. "}")
	set("move")
	addListener([[^����������е���ʯԽ��Խ��������ٲ�ά�衭����\nһ������ɱ�ִ�·�����˳����������ȵ��������������ı������£���Ȼȡ�����������\n(\S+)����������һ���ж���$]], "s:return wildcards[1]", "move")
	addSetListener("move", "move")
	local name = listen()
	if name ~= "move" then
		local id = getId(name)
		kill(id)
		partner.kill(id)
		listener("^" .. name .. "����һЩ�ƽ�$")
		waitbusy()
		e("get gold")
	end
end

local partnerId
function getPartnerId()
	partnerId = partnerId or getInfo("partner")
	return partnerId
end
