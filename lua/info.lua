package.path = GetInfo(57) .. "lua/?.lua"

require("listener")
require("alias")

function infoInit()
	delVariable("score")
	delVariable("exp")
	delVariable("pot")
	delVariable("fullPot")
	delVariable("max_level")
	delVariable("max_neili")
	delVariable("jifa")
	delVariable("cha")
	delVariable("story")
	delVariable("weapon")
	delVariable("cutweapon")
	delVariable("lastTime")
	delVariable("hour")
	delVariable("minute")
end

function getWeapon()
	local weapon = getVariable("weapon")
	if not weapon then
		weapon = sets().weapon
	end
	if weapon == "empty" then
		return false
	else
		return weapon
	end
end

function getSetFullSkills()
	local fullSkills = getVariable("fullskills")
	if not fullSkills then
		fullSkills = sets().fullskills
	end
	local skills = {}
	if fullSkills ~= "empty" then
		for _, id in pairs(utils.split(fullSkills, ",")) do
			local skill = {}
			skill.id = id
			skill.full = true
			table.insert(skills, skill)
		end
	end
	return skills
end

function getPerform()
	local p = getVariable("perform")
	if not p then
		p = sets().perform
	end
	if p == "empty" then
		return false
	else
		return p
	end
end

function intWeapon()
	local p = getVariable("intweapon")
	if not p then
		p = sets().intweapon
	end
	if p == "empty" then
		return false
	else
		return p
	end
end

function getCutweapon()
	local cutWeapons = {
		"chang jian", "mu dao",
	}
	local cutweapon = getVariable("cutweapon")
	if not cutweapon then
		local _i = i()
		for _, v in pairs(cutWeapons) do
			if _i[v] > 0 then
				cutweapon = v
			end
		end
		setVariable("cutweapon", cutweapon)
	end
	if cutweapon == "empty" then
		return partyCutweapon()
	else
		return cutweapon, partyCutweapon()
	end
end

local partyCutweapons = {
	--[[
	["������"] = {
		id = "mu dao", getCmd = getMudao,
	},
	["����Ľ��"] = {
		id = "chang jian", name = "jian", getCmd = getMrWeapon,
	},
	["����"] = {
		id = "blade", name = "dao", getCmd = getMrWeapon,
	},
	--]]
}
function partyCutweapon()
	return partyCutweapons[getParty()] and partyCutweapons[getParty()].id or "chang jian"
end

function getPartyCutweapon()
	local _i = i()
	if _i["changjian"] > 0 then
		setVariable("cutweapon", "changjian")
		return true
	end
	if not getTzWeapon("chang jian", "jian") then
		return getMrWeapon("chang jian", "jian")
	else
		return true
	end
	--[[
	local partyCutweapon = partyCutweapons[getParty()]
	if not partyCutweapon then
		getTzWeapon("chang jian", "jian")
	elseif not partyCutweapon.getCmd(partyCutweapon.id, partyCutweapon.name) then
		getTzWeapon("chang jian", "jian")
	end
	--]]
end

local lastCond
function getJobbusy()
	local jobbusy = getVariable("jobbusy")
	if not jobbusy or not lastCond or os.time() - lastCond > 20 then
		lastCond = os.time()
		cond()
		jobbusy = getVariable("jobbusy")
	end
	return jobbusy
end

function getWeight()
	return getVariable("weight") or i().weight
end

function getScore()
	return getVariable("score") or score()
end

function getParty()
	return getScore().party
end

function getTitle()
	return getScore().title
end

function getSex()
	return getScore().sex
end

function getInt()
	return getScore().int
end

function getDex()
	return getScore().dex
end

function myId()
	return getScore().id
end

function fullId()
	return myId() .. "_" .. getSite()
end

function isVip()
	return getScore().vip
end

function getStory()
	local _story = getVariable("story")
	if _story then
		_story.xsfh = DefaultTable.new(0, _story.xsfh)
		_story.lcj = DefaultTable.new(0, _story.lcj)
	end
	return _story or story()
end

function getMaster(skill)
	if skill and skill == "literate" then
		if getParty() ~= "������" or getCha().literate.level >= 100 then
			return getMasterByName("������")
		end
	end
	if skill and skill == "duanzao" then
		return getMasterByName("����ʦ")
	end
	if skill and skill == "zhizao" then
		return getMasterByName("�ϲ÷�")
	end
	if skill and skill == "caikuang" then
		return getMasterByName("�ɿ�ʦ��")
	end
	if skill and skill == "nongsang" then
		return getMasterByName("��������")
	end
	local master = getMasterByName(getScore().master)
	if not master then
		log.debug("ʦ��û�ҵ���" .. tostring(getScore().master))
		return false
	end
	return master
end

function getMasterByName(name)
	local master = Masters[name]
	master.name = name
	return master
end

function fullPot()
	return getVariable("fullPot")
end

function getHp()
	return getVariable("hp") or hp()
end

function getExp()
	return getHp().exp
end

function getFood()
	return getHp().food
end

function getWater()
	return getHp().water
end

function getDummyExp()
	return getVariable("dummyExp") or expInfo().dummyExp
end

function getHourExp()
	return expInfo().hourExp
end

function getPot()
	return getHp().pot
end

function getMaxPot()
	return getHp().max_pot
end

function getMaxLevel()
	return getHp().max_level
end

function getMaxNeili()
	return getHp().max_neili
end

function getJifa()
	return getVariable("jifa") or jifa()
end

function getJifaForce()
	return getJifa().force.level
end

function getJifaDodge()
	return getJifa().dodge.level
end

function getCha()
	local _cha = getVariable("cha")
	if _cha then
		return DefaultTable.new({level = 0, practice = 0}, _cha)
	else
		return cha()
	end
end

function getDodge()
	return getCha().dodge.level
end

function hp(nosend)
	TraceOut("hp")
	addListener([[^����Ѫ��\s*(\d+) \/\s+(\d+) \(\s*(\d+)\%\)  ��������\s*(\d+) \/\s+(\d+)\((\d+)\)\n����Ѫ��\s*(\d+) \/\s+(\d+) \(\s*(\d+)\%\)  ��������\s*(\d+) \/\s*(\d+)\(\+(\d+)\)\n��(��|��)����\s+(.+)\s+���������ޡ�\s*(\d+) \/\s+(\d+)\n��ʳ�\s+(.+)\%              ��Ǳ�ܡ�\s+(\d+) \/\s+(\d+)\n����ˮ��\s+(.+)\%              �����顤\s+(.+) \((.+)\%\)$]]
		,"OnHp")
	if not nosend then
		hide("hp")
	end
	local _hp = listenCmd(function() return false end)
	if _hp then
		return _hp
	else
		return hp()
	end
end

function OnHp(name,line,wildcards)
	local _hp = {}
	_hp.jing = tonumber (wildcards[1])
	_hp.eff_jing = tonumber (wildcards[2])
	_hp.jing_limit = tonumber (wildcards[3])
	_hp.jing_limit = _hp.jing_limit == 0 and 1 or _hp.jing_limit
	_hp.max_jing = math.ceil(_hp.eff_jing * 100 / _hp.jing_limit)
	_hp.jingli = tonumber (wildcards [4])
	_hp.eff_jingli = tonumber (wildcards[5])
	_hp.max_jingli = tonumber (wildcards[6])
	_hp.qi = tonumber (wildcards [7])
	_hp.eff_qi = tonumber (wildcards[8])
	_hp.qi_limit = tonumber (wildcards[9])
	_hp.qi_limit = _hp.qi_limit == 0 and 1 or _hp.qi_limit
	_hp.max_qi = math.ceil(_hp.eff_qi * 100 / _hp.qi_limit)
	_hp.neili = tonumber (wildcards [10])
	_hp.max_neili = tonumber (wildcards[11])
	_hp.jiali = tonumber (wildcards[12])
	_hp.shen = string.gsub(wildcards[14],",","")
	_hp.shen = tonumber(_hp.shen)
	_hp.shen = wildcards[13] == "��" and _hp.shen or -_hp.shen
	_hp.neili_limit1 = tonumber (wildcards[15])
	_hp.neili_limit2 = tonumber (wildcards[16])
	_hp.food = tonumber(wildcards[17])
	_hp.pot = tonumber(wildcards[18])
	_hp.max_pot = tonumber(wildcards[19])
	_hp.water = tonumber(wildcards[20])
	_hp.exp = string.gsub(wildcards[21],",","")
	_hp.exp = tonumber(_hp.exp)
	_hp.upgrade_exp = tonumber(wildcards[22])
	-- ����ֵ������ʹ��	
	_hp.max_level = _hp.max_pot - 100
	_hp.min_dz = _hp.max_qi > 1000 and math.ceil(_hp.max_qi / 5) or math.ceil(_hp.max_qi / 10)
	_hp.jing7 = math.ceil(_hp.max_jing * 7 / 10)
	_hp.qi7 = math.ceil(_hp.max_qi * 7 / 10)
	_hp.jing3 = (_hp.jing - _hp.jing7) >= 10 and (_hp.jing - _hp.jing7)
	_hp.qi3 = (_hp.qi - _hp.qi7) >= _hp.min_dz and (_hp.qi - _hp.qi7)
	_hp.full_neili = _hp.neili >= _hp.max_neili * 2 - _hp.min_dz
	_hp.full_jingli = _hp.jingli >= _hp.eff_jingli * 2 - 10
	_hp.dq = (_hp.qi - _hp.qi7) >= _hp.min_dz and (_hp.qi - _hp.qi7)
	-- ����ȫ�ֱ���
	setVariable("hp", _hp)
	setVariable("food", _hp.food)
	setVariable("water", _hp.water)
	setVariable("fullPot", _hp.pot >= _hp.max_pot)
	setVariable("max_neili", _hp.max_neili)
	setVariable("exp", _hp.exp)
	setVariable("pot", _hp.pot)
	setVariable("max_pot", _hp.max_pot)
	setVariable("max_level", _hp.max_level)
	return _hp
end

function score()
	local _score = {}
	hide("score")
	set("score")
	addListener([[^��ͷ    �Σ�(\S+)\s*����  ������(\d+)/(\d+)��\s*��  �ǣ���(\d+)/(\d+)��\s*��$]],"OnScore1")
	local title,str,born_str,con,born_con = listen()
	addListener([[^����    ����(\S+)\((\w+)\)\s+����  ������(\d+)/(\d+)��\s*��  �ԣ���(\d+)/(\d+)��\s*��$]],"OnScore2")
	local char,id,dex,born_dex,int,born_int = listen()
	addListener([[^����    �䣺((\S+)��(?:��(\S+)����)?)\s*��    ����.+��$]],"OnScore3")
	local age = listen()
	addListener([[^����    ��(\S+)��(��������)?\s+.+��$]],"s:return wildcards[1], wildcards[2] and true or false")
	local sex, robot = listen()
	addListener([[^��Ǯׯ��(?:(\S+)���ƽ�|����)\s*ʦ    �У���(\S+?)��(?:��(\S+?)��)?\s*��$]],"s:return trans(wildcards[1]), wildcards[2], wildcards[3]")
	local bank, party, master = listen()
	addListener([[^��ע�᣺(������|��ͨ���).+��$]],"s:return wildcards[1] == '������'")
	local vip = listen()
	addSetListener("score")
	listen()
	_score.title = title
	_score.str = str
	_score.born_str = born_str
	_score.con = con
	_score.born_con = born_con
	_score.char = char
	_score.id = id
	_score.dex = dex
	_score.born_dex = born_dex
	_score.int = int
	_score.born_int = born_int
	_score.age = age
	_score.sex = sex
	_score.robot = robot
	if robot then
		e("robot")
	end
	_score.bank = bank
	_score.party = party
	_score.master = master
	_score.vip = vip
	setVariable("score", _score)
	return _score
end

function OnScore1(name, line, wildcards)
	local title = wildcards[1]
	local str = tonumber(wildcards[2])
	local born_str = tonumber(wildcards[3])
	local con = tonumber(wildcards[4])
	local born_con = tonumber(wildcards[5])
	return title,str,born_str,con,born_con
end

function OnScore2(name, line, wildcards)
	local char = wildcards[1]
	local id = string.lower(wildcards[2])
	local dex = tonumber(wildcards[3])
	local born_dex = tonumber(wildcards[4])
	local int = tonumber(wildcards[5])
	local born_int = tonumber(wildcards[6])
	return char,id,dex,born_dex,int,born_int
end

function OnScore3(name, line, wildcards, styles)
	local days = {teal = 0, olive = 5, yellow = 10, lime = 15, cyan = 20, red = 25,}
	local text = wildcards[1]
	local year = trans(wildcards[2])
	local month = wildcards[3] and trans(wildcards[3]) or 0
	local day
	for _, v in pairs(styles) do
		if v.text == text then
			local colourName = RGBColourToName(v.textcolour)
			day = days[colourName]
			break
		end
	end
	local age = {year = year, month = month, day = day}
	return age
end

function cha(master)
	local _cha = DefaultTable.new({level = 0, practice = 0})
	if master then
		hide("cha " .. master)
	else
		hide("cha")
	end
	addListener([[^(?:[^\s->]{4,8}|��)Ŀǰѧ��(\S+)�ּ��ܣ�$]], "s:return trans(wildcards[1])","cha")
	addListener([[^(?:[^\s->]{4,8}|��)Ŀǰѧ��(\S+)�ּ��ܣ�����ѧ����̫�ӣ�������Ӱ�����Ժ�Ľ�����$]], "s:return trans(wildcards[1])","cha")
	addListener("^��Ҫ�쿴˭�ļ��ܣ�$", "s:return false","cha")
	addListener("^��Ŀǰ��û��ѧ���κμ��ܡ�$", "s:return false","cha")
	local count = listen()
	if not count then
		dodge = 0
		return _cha
	end
	for i = 1,count do
		addListener([[^(?:  |��)(\S+)\s+\((\S+)\)\s+- \S+\s+(\d+)/\s*(\d+)$]],"OnCha")
		local id,name,level,practice = listen()
		_cha[id] = {id = id, name = name, level = level, practice = practice}
	end
	if not master then
		setVariable("cha", _cha)
	end
	-- print(save(_cha))
	return _cha
end

function OnCha(name,line,wildcards)
	local name = wildcards[1]
	local id = wildcards[2]
	local level = tonumber(wildcards[3])
	local practice = tonumber(wildcards[4])
	return id,name,level,practice
end

function jifa()
	local _jifa = DefaultTable.new({level = 0})
	hide("jifa")
	set("jifa")
	while true do
		addListener([[^  (\S+) \((\w+)\)\s+�� (\S+)\s+��Ч�ȼ���\s*(\d+)$]],"OnJifa","jifa")
		addListener("^������û��ʹ���κ����⼼�ܡ�$", "c:jifa all", "jifa")
		addSetListener("jifa","jifa")
		local id, name, jifaName, level = listen()
		if id == "jifa" then
			break
		elseif id then
			_jifa[id] = {id = id, name = name, jifaName = jifaName, level = level}
		end
	end
	setVariable("jifa", _jifa)
	return _jifa
end

function OnJifa(name, line, wildcards)
	local name = wildcards[1]
	local id = wildcards[2]
	local jifaName = wildcards[3] ~= "��" and wildcards[3] or false
	local level = tonumber(wildcards[4])
	return id, name, jifaName, level
end

function sets()
	local _sets = {}
	hide("set")
	set("sets")
	while true do
		addSetListener("sets", "sets")
		addListener([[^(\S+)\s+(?:"(.+?)"|(-?\d+))$]], "s:return wildcards[1], wildcards[2], wildcards[3]", "sets")
		local name, value, number = listen()
		value = value ~= "" and value or tonumber(number)
		if tonumber(name) then
			e("unset " .. name)
		end
		if name == "sets" then
			break
		end
		_sets[name] = value
	end
	_sets["weapon"] = _sets["weapon"] or "empty"
	setVariable("weapon", _sets["weapon"])
	if _sets["cutweapon"] then
		setVariable("cutweapon", _sets["cutweapon"])
	end
	_sets["intweapon"] = _sets["intweapon"] or "empty"
	setVariable("intweapon", _sets["intweapon"])
	_sets["perform"] = _sets["perform"] or "empty"
	setVariable("perform", _sets["perform"])
	_sets["fullskills"] = _sets["fullskills"] or "empty"
	setVariable("fullskills", _sets["fullskills"])
	local karAge = _sets["kar_age"]
	local kar = _sets["kar"]
	if kar and karAge == getScore().age.year * 100 + getScore().age.month then
		_sets["kar"] = kar
	else
		_sets["kar"] = 10
	end
	return _sets
end

function i()
	local _i = DefaultTable.new(0)
	_i.names = DefaultTable.new("")
	local units = {
		"��", "��", "��", "��", "��", "��",
		"��", "��", "ö", "��", "��", "��",
		"��",
	}
	hide("i")
	set("i")
	while true do
		addSetListener("i","i")
		addListener([[^�����ϴ���\S+������\(����\s+([\d\.]+)%\)��$]], "s:return tonumber(wildcards[1]), '����', 'weight'", "i")
		addListener([[^(?:  |��)(?:(\S+)(?:]] .. table.concat(units,"|") .. [[))?(\S+)\((.+)\)$]],"OnI","i")
		local count, name, type = listen()
		if count == "i" then
			break
		end
		_i[type] = count
		_i.names[type] = name
	end
	setVariable("weight", _i.weight)
	return _i
end

function OnI(name, line, wildcards)
	local count = trans(wildcards[1])
	count = count == 0 and 1 or count
	local name = wildcards[2]
	local type = string.lower(wildcards[3])
	return count, name, type
end

function getJobname()
	return jobtimes().jobname
end

function jobtimes()
	local _jobtimes = {}
	hide("jobtimes")
	set("jobtimes")
	addListener([[^������������(\S+)����]], "s:return wildcards[1]", "jobtimes")
	addSetListener("jobtimes", "jobtimes")
	local jobname = listen()
	if jobname ~= "jobtimes" then
		_jobtimes.jobname = jobname
	end
	return _jobtimes
end

function cond()
	local types = {
		["����æ״̬"] = "job_busy",
	}
	local _cond = DefaultTable.new(0)
	hide("cond")
	set("cond")
	addListener("^�����ϰ�����������״̬��$", "s:return true", "precond")
	addListener("^������û�а����κ�����״̬��$", "s:return false", "precond")
	if listen() then
		while true do
			addListener([[^��(\S+)\s+\S{2}(\S+)(��|��)\s+\S{2} (\S+) ��$]], "s:return wildcards[1], wildcards[2], wildcards[3], wildcards[4]", "cond")
			addSetListener("cond", "cond")
			local name, time, timeType, type = listen()
			if name == "cond" then
				break
			else
				local time = trans(time)
				if timeType == "��" then
					time = time * 60
				end
				_cond[types[name] or name] = time
			end
		end
	end
	setVariable("jobbusy", _cond["job_busy"])
	return _cond
end

function story()
	local storys = {
		xsfh = DefaultTable.new(0),
		lcj = DefaultTable.new(0),
		quest = DefaultTable.new(0),
	}
	waitbusy()
	hide("story")
	set("story")
	while true do
		addListener("��ѩɽ�ɺ���", "s:return 'quest', 'current', 'xsfh'", "story")
		addListener("�����Ǿ���", "s:return 'quest', 'current', 'lcj'", "story")
		addListener("(��Ŀǰ����ѩɽ�ɺ���û���κμ�¼��|��Ϸ��¼���ҡ��㻹��ҪŬ����|��һ������ΰ�����쳽�һ�����ƺ��ҵ�����|��һ��̽�������Ѱ��ʧ��������ҳ������)", "s:return 'xsfh', 'quest', 1", "story")
		addListener("(���ֻ������ù�һЩ���£���һ��������١�|���������˷�����һ���������ׯ��)", "s:return 'xsfh', 'quest', 2", "story")
		addListener("(�����Ѿ����ˣ������˷��ж�����δ������һ����Ѱ�ҽ�ҩ��|20��ǰ�������Ѿ����ˣ�Ŀǰ�ؼ������Ѱ���������˷�Ľ�ҩ��)", "s:return 'xsfh', 'quest', 3", "story")
		addListener("(20��ǰ�ľ����Ѿ����ˣ�����֮˵Ҳ��һ����ᡣ|������С�˰��㣬���˷��ж�����δ����)", "s:return 'xsfh', 'quest', 3", "story")
		addListener("���Ѿ����ѩɽ�ɺ��Ļ�����ڣ�����漰��һ�����ء�", "s:return 'xsfh', 'quest', 4", "story")
		addListener("���Ѿ��ھ������������ı����ö�������", "s:return 'xsfh', 'quest', 5", "story")
		addListener([[�������쳽��й�(\S+)�ν�����]], "s:return 'xsfh', 'fightHu', trans(wildcards[1])", "story")
		addListener([[���������˷���й�(\S+)�ν�������ϧһ��Ҳû��ʤ����]], "s:return 'xsfh', 'fightMiao', trans(wildcards[1])", "story")
		addListener([[���������˷���й�\S+�ν����������һ��ʤ����]], "s:return 'xsfh', 'fightMiao', 3", "story")
		addListener([[��Ϸ��¼����(\S+)��]], "s:return 'current', 'questExp', trans(wildcards[1])", "story")
		addListener([[(��Ŀǰ�������Ǿ���û���κμ�¼��|��ʾ�������ڲ��£�Ѱ��ѩ�ȵ��ơ�)]], "s:return 'lcj', 'quest', 1", "story")
		addListener([[(���Ǵ�˵�еľ����书�����ǲƱ�������������Σ�|��һ������̽��ݡ�Ҳ��������Զ����һ���ա�)]], "s:return 'lcj', 'quest', 2", "story")
		addListener([[������ӵ���������վ��Ļ��ᡣ��������ʵ���ʱ����̶��䡣]], "s:return 'lcj', 'szj', 0", "story")
		addListener([[��ʧȥ�Ӷ����������վ���(\S+)�λ��ᣬ]], "s:return 'lcj', 'szj', trans(wildcards[1])", "story")
		addListener([[��ʧȥ�Ӷ����������վ��Ļ��ᣬ]], "s:return 'lcj', 'szj', 3", "story")
		addListener([[������ӵ�дӵ��ƴ�������߲�����վ��Ļ��ᡣ��������ʵ���ʱ����̵��ơ�]], "s:return 'lcj', 'quest', 3", "story")
		addListener([[��ʧȥ�˵��ƴ��������վ���(\S+)�λ���]], "s:return 'lcj', 'szj', trans(wildcards[1])", "story")
		addListener([[������ʧȥ�˴ӵ��ƴ�ѧϰ���վ����߲�ε�������ᡣ]], "s:return 'lcj', 'szj', 3", "story")
		addListener([[�书��¼���飺(\d+)��]], "s:return 'current', 'exp', wildcards[1]", "story")
		addSetListener("story", "story")
		local quest, type, value = listen()
		if quest == "current" then
			quest = storys.quest.current
		end
		if quest == "story" then
			break
		else
			storys[quest][type] = value
		end
	end
	if storys.xsfh.questExp > 0 then
		storys.xsfh.questExp = getExp() - storys.xsfh.questExp
	end
	setVariable("story", storys)
	return storys
end

function expInfo()
	local _expInfo = DefaultTable.new(0)
	hide("exp")
	set("exp")
	while true do
		addListener([[^����������(\S+)�롣$]], "s:return 'hour', wildcards[1]", "exp")
		addListener([[^ÿСʱ���ʣ�(\S+)�㾭�顣$]], "s:return 'hourExp', trans(wildcards[1])", "exp")
		addListener([[^�������ٽ羭��ֵ��(\d+)$]], "s:return 'dummyExp', trans(wildcards[1])", "exp")
		addSetListener("exp", "exp")
		local type, value = listen()
		if type == "exp" then
			break
		end
		_expInfo[type] = value
	end
	setVariable("dummyExp", _expInfo.dummyExp)
	return _expInfo
end

function worker()
	hide("worker")
	addListener("^�����Ѿ�ѧ��Ĵ�����Ŀ�С�$", "s:return true", "worker")
	addListener("^ ��Ŀǰ�в�������κζ�����$", "s:return false", "worker")
	local _worker = listen()
	setVariable("worker", _worker)
	return _worker
end

function getWorker()
	return getVariable("worker") or worker()
end

local repairCache = Cache:new(10, 60 * 30)
function armorInfo(armor)
	local result = repairCache:get(armor)
	if result ~= nil then
		return result
	end
	e("l " .. armor)
	set("armor")
	addListener("^(��������Ҫ�����ˡ�|���������Ͼ�Ҫ���ˡ�)$", "s:return false", "armor")
	addSetListener("armor", "armor")
	result = not listen()
	repairCache:add(armor, result)
	if result then
		repairArmor(armor)
		repairCache:clear(armor)
	end
	return result
end