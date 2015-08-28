local pker
local addr
local PK_RELOGIN_SECONDS = 3600

fPker = false
function OnPK(name, line, wildcards)
	local name = wildcards[1]
	local id = wildcards[2] and string.lower(wildcards[2]) or ""
	run(onPk, name, id)
end

function onPk(name, id)
	e("set pker " .. name .. id)
	e("irc /join pking justpk")
	e("irc " .. name .. "(" .. id .. ")�� pk �ң�������")
	log.error(name .. "(" .. id .. ")�� pk �ң�������")
	e("halt")
	gosafe()
	if move then
		e("irc λ���� " .. move.name)
		randomMove(move.exits)
	else
		local _here = here()
		e("irc λ���� " .. _here.city .. " �� " .. _here.name)
		randomMove(_here.exits)
	end
	OnRisk()
	reset()
	if not isPk() then
		perform()
		e("halt")
		OnRisk()
		writeFile(GetInfo(57) .. "time/" .. fullId(), PK_RELOGIN_SECONDS + os.time())
		quit()
	end
end

function gosafe(value)
	if value then
		safe = nil
		setVariable("safe", nil)
	else
		safe = true
		setVariable("safe", true)
	end
end

function gopk(value)
	if value then
		pk = nil
		setVariable("pk", nil)
	else
		pk = true
		setVariable("pk", true)
	end
end

function isPk()
	return pk or getVariable("pk")
end

function isQk()
	return qk or getVariable("qk")
end

function OnCome(name, line, wildcards)
	run(onCome, wildcards[1])
end

local qkTime = {}
local MAX_QK_TIME = 4
local WITHIN = 2
function onCome(name)
	if not isQk() or not isPk() then
		return false
	end
	local id = getPkId(name) or isPkId(name)
	if id and getQkTime() < MAX_QK_TIME and not isFight() then
		table.insert(qkTime, os.clock())
		e("perform qiankun " .. id)
		set("qk")
		addListener("^�����΢Ц����˫��£������֮�У�ָ���������а���������һ���������޵�΢������\S+Ϯȥ��$", "s:return 'ok'", "qk")
		addListener("^��Ҫ��˭ʹ�á�����Ǭ������$", "s:return 'ok'", "qk")
		addSetListener("qk", "qk")
		if listen() == "qk" then
			e("jiali max;bei none;jifa finger wuxiang-zhi;jifa parry wuxiang-zhi;jifa cuff luohan-quan;bei finger;bei cuff;perform qiankun " .. id)
		end
	end
end

local pker = {
	["�����Ѽ�"] = "jscqxbb",
}
function getPkId(name)
	return pker[name]
end

function isPkId(id)
	for k, v in pairs(pker) do
		if string.lower(id) == v then
			return v
		end
	end
	return false
end

function getQkTime()
	local count = 0
	for k, v in pairs(qkTime) do
		if v > os.clock() - WITHIN then
			count = count + 1
		end
	end
	if count == 0 then
		qkTime = {}
	end
	return count
end

function OnPlay(name, line, wildcards)
	run(onPlay)
end

function onPlay()
	e("halt")
	if move then
		randomMove(move.exits)
	else
		local _here = here()
		randomMove(_here.exits)
	end
end

function OnPKRumor(name, line, wildcards)
	if fPker then
		pker = wildcards[1]
		addr = wildcards[2]
		e("set pker " .. pker)
		e("set pker_addr " .. addr)
	end
end

function noFollowPker()
	fPker = false
end

function followPker()
	fPker = true
	while fPker do
		local _hp = hp()
		full(_hp)
		local _sets = sets()
		local pker = _sets.pker
		local addr = _sets.pker_addr
		if pker then
			local name, city = getAddr(addr)
			if name then
				run(goPker,name,city,pker)
			end
		end
		wait(5000)
	end
end

function goPker(name, city, pker)
	if canFind(name,city, 0) then
		find(name, city, 0, pker)
	end
end

function OnQk(name, line, wildcards)
	run(onQk, wildcards[1], name)
end

function onQk(name, type)
	if type == "qkok" then
		e("irc wxjz ���ˣ���" .. name .. "������֧Ԯ��")
	elseif type == "qkfail" then
		e("irc wxjz û�У���ɱ�ˣ�������" .. name .. "������֧Ԯ��")
	elseif type == "qknone" then
		e("irc wxjz û�У�û��ɱ��������" .. name .. "������֧Ԯ��")
	end
	local id = getId(name)
	id = id or "û�ҵ�"
	local _here = here()
	e("irc id �ǡ�" .. tostring(id) .. "����λ���ǡ�" .. tostring(_here.city) .. "���ġ�" .. tostring(_here.name) .. "����")
end

function OnQkBy(name, line, wildcards)
	local name = wildcards[1]
	run(onQkBy, name)
end

function onQkBy(name)
	if name then
		e("irc �ұ���" .. name .. "���� wxjz����ɱ����֧Ԯ������")
	else
		e("irc �ұ� wxjz ���У���֧Ԯ������")
	end
	local _here = here()
	e("irc λ���ǡ�" .. tostring(_here.city) .. "���ġ�" .. tostring(_here.name) .. "����")
	local ids = lookGoal()
	local msg
	for k, v in pairs(ids) do
		if not string.find(v, " ") and v ~= myId() then
			if not msg then
				msg = k .. " = " .. v
			else
				msg = msg .. "��" .. k .. " = " .. v
			end
		end
	end
	if msg then
		e("irc �������У�" .. msg)
	end 
end
