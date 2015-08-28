package.path = GetInfo(57) .. "lua/?.lua"

require("path")
require("sj")
require("firstword")
require("job/jobs")
require("quest/quests")
require("temp")
require("guard")
require("test")

map  = Proxy:new("init", "map", {
	minutes = true,
	getJobbusy = true,
	getParty = true,
	getExp = true,
	getSex = true,
	getStory = true,
	getTitle = true,
	getJifa = true,
	getScore = true,
	getDodge = true,
	getCha = true,
	getWeight = true,
})

mapR = Proxy:new("init", "map")

function jobinit()
	gbInit()
	sxInit()
	wdInit()
	clbInit()
	hsInit()
end

function init()
	tune()
	waitbusy()
	log.debug("prepare")
	reset()
	help = nil
	move = nil
	hereId = nil
	prepare()
	if isTelldummy() then
		return
	end
	if isGuard() then
		return doGuard()
	end
	if isHama() then
		return doHama()
	end
	log.debug("get init function")
	local _sets = sets()
	local _score = score()
	--[[
	local age = _score.age
	local kar = _sets["kar"]
	if kar == 30 and age.year >= 16 and age.year < 18 then
		log.error("��Ե 30 ׼��ȥ�� hama")
		quit(false, 240 * 60 * 60)
	end
	--]]
	local _init = _sets.init
	if not _init then
		if getParty() == "ؤ��"
			-- or getParty() == "������"
			then
			_init = "fishall"
		else
			_init = "doall"
		end
	end
	local initFunc = _G[_init]
	if initFunc then
		log.debug("execute init function")
		initFunc()
	end
end

function doGuard()
	while true do
		checkquit()
		print("doGuard")
		local _hp = hp()
		if not guardCmd then
			wait(5000)
			if _hp.eff_qi - _hp.qi < 10 and _hp.full_neili and (not jingli or _hp.full_jingli) then
				go("����", "���ְ�")
				full(_hp)
			else
				go("��", "���ְ�")
				dbj()
			end
		else
			local cmd = _G[guardCmd]
			print(guardCmd)
			print(cmd)
			if cmd then
				run(cmd, guardId, guardName)
				wait(3000)
			end
			print("guard ok")
			guardCmd = nil
			guardId = nil
			guardName = nil
		end
	end
end

function isHama()
	return GetVariable("hama")
end

function doHama()
	if here().city == "���" then
		e("answer n")
		go("˯��", "���")
		e("ask qi fang about ��ʫѡ��")
		listener("^һ��ů�����Ե�������ȫ�����������ָֻ���֪������$")
	end
	local _hp = hp()
	if _hp.food < 50 or _hp.water < 50 then
		full(_hp)
	end
	go("������ջ")
	local id = fullId()
	local rm = askWanRm()
	if not rm then
		local msg = id .. " : ��ò�������ǵ�һ"
		log.write("uglily", "uglily", "aqua", msg)
	elseif rm == true then
		local msg = id .. " �� ��ò 30"
		log.write("beauty", "beauty", "red", msg)
	else
		print("��ô��������")
		e("l")
		addListener([[^  ��ѩ�������¹ Ц�������б�ԧ ����ѧʿ\(Zha xueshi\)$]], nil, "zha")
		addListener([[^����ѧʿ����ææ�����˹�����$]], nil, "zha")
		addListener([[^����ѧʿ��\S+���˹�����$]], nil, "zha")
		listen(60, doHama)
		e("ask zha xueshi about beauty")
		set("beauty")
		addListener([[^�������ѧʿ�����йء�beauty������Ϣ��\n����ѧʿ˵������\S+����ò��Ŀǰ������ʿ��������(\S+)����]], "s:return wildcards[1]", "beauty")
		addSetListener("beauty", "beauty")
		local result = listen()
		if result == "beauty" then
			return doHama()
		else
			local top = trans(result)
			if top == 1 then
				local msg = id .. " �� ��ò 30"
				log.write("beauty", "beauty", "red", msg)
			else
				local msg = id .. " : ��ò���� " .. top
				log.write("uglily", "uglily", "aqua", msg)
			end
		end
	end
	wait(math.random(1000, 5000))
	quit(true)
end

function doall()
	wait(2000)
	job()
end

function prepare()
	e("remove all;wear all;wear all;jifa all")
	initWeapon()
	e("unset ����")
	-- e("set no_steal;set no_beg;set show_mode;set no_accept")
	perform()
	wait(2000)
	Send([[alias np unset target;set wimpy 100;set wimpycmd kaichu\hp]])
end

function job()
	while true do
		 choice()
		 checkquit()
		 wait(2000)
	end
end

function choice()
	local _hp = hp()
	local _cha = getCha()
	log.debug("check money")
	local _i = i()
	if _i.silver > 200 or _i.coin > 100 or _i.gold > 10 or _i["thousand-cash"] > 0 then
		go("���ի")
		money(0,50)
		return
	end
	log.debug("check guigu shu")
	ggsOver()
	log.debug("check sl huayuan")
	local yjj = getCha()["yijin-jing"].level
	if _hp.exp > 150000 and yjj >= 120 and yjj <= 200 and getScore().bank < 50 then
		slHuayuan()
	end
	log.debug("check get cut weapon")
	if _hp.exp >= 150000 then
		local haveCutweapon = false
		for _, v in pairs({getCutweapon()}) do
			if _i[v] > 0 then
				haveCutweapon = true
			end
		end
		if not haveCutweapon then
			getPartyCutweapon()
		end
		wait(2000)
	end
	log.debug("check weapon")
	if _hp.exp >= 150000 and getWeapon() and _i[getWeapon()] == 0 then
		log.error("����Ϊʲôû�ˣ�")
		-- e("quit")
		-- return false
	end
	--[[
	log.debug("check full neili")
	if (_hp.exp > 30000 and (_hp.exp >= 150000 or getTitle() ~= "�����ɵ���ʮ�˴�����")) and _hp.neili_limit1 - _hp.max_neili > 100 then
		return fullNeili()
	end
	log.debug("check full jingli")
	if _hp.exp > 30000
		and (getJifaForce() >= 180 or getParty() == "��Ĺ��")
		and _hp.max_jingli - _hp.eff_jingli > 100 then
		return fullJingli()
	end
	--]]
	log.debug("check sl upgrade")
	slUpgrade()
	log.debug("check full skills")
	if getPot() > getMaxPot() * 7 / 10 then
		if _hp.exp < 100000 and getParty() == "��Ĺ��" then
			fullGmSkill()
		else
			fullSkills()
		end
	end
	log.debug("check read medicine")
	readMedicine()
	log.debug("check repair weapon")
	repair()
	log.debug("check add shen")
	addShen()
	log.debug("check do job")
	dojob()
	log.debug("check xsfh quest")
	xsfh()
	log.debug("check lcj quest")
	lcjquest(_i)
	log.debug("calc kar")
	mjKar()
	--[[
	log.debug("check hama quest")
	hamaQuest()
	--]]
end
