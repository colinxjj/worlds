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
	["少林派"] = {
		id = "mu dao", getCmd = getMudao,
	},
	["姑苏慕容"] = {
		id = "chang jian", name = "jian", getCmd = getMrWeapon,
	},
	["明教"] = {
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
		if getParty() ~= "少林派" or getCha().literate.level >= 100 then
			return getMasterByName("顾炎武")
		end
	end
	if skill and skill == "duanzao" then
		return getMasterByName("铸剑师")
	end
	if skill and skill == "zhizao" then
		return getMasterByName("老裁缝")
	end
	if skill and skill == "caikuang" then
		return getMasterByName("采矿师傅")
	end
	if skill and skill == "nongsang" then
		return getMasterByName("养蚕婆婆")
	end
	local master = getMasterByName(getScore().master)
	if not master then
		log.debug("师父没找到：" .. tostring(getScore().master))
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
	addListener([[^·精血·\s*(\d+) \/\s+(\d+) \(\s*(\d+)\%\)  ·精力·\s*(\d+) \/\s+(\d+)\((\d+)\)\n·气血·\s*(\d+) \/\s+(\d+) \(\s*(\d+)\%\)  ·内力·\s*(\d+) \/\s*(\d+)\(\+(\d+)\)\n·(正|戾)气·\s+(.+)\s+·内力上限·\s*(\d+) \/\s+(\d+)\n·食物·\s+(.+)\%              ·潜能·\s+(\d+) \/\s+(\d+)\n·饮水·\s+(.+)\%              ·经验·\s+(.+) \((.+)\%\)$]]
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
	_hp.shen = wildcards[13] == "正" and _hp.shen or -_hp.shen
	_hp.neili_limit1 = tonumber (wildcards[15])
	_hp.neili_limit2 = tonumber (wildcards[16])
	_hp.food = tonumber(wildcards[17])
	_hp.pot = tonumber(wildcards[18])
	_hp.max_pot = tonumber(wildcards[19])
	_hp.water = tonumber(wildcards[20])
	_hp.exp = string.gsub(wildcards[21],",","")
	_hp.exp = tonumber(_hp.exp)
	_hp.upgrade_exp = tonumber(wildcards[22])
	-- 计算值，方便使用	
	_hp.max_level = _hp.max_pot - 100
	_hp.min_dz = _hp.max_qi > 1000 and math.ceil(_hp.max_qi / 5) or math.ceil(_hp.max_qi / 10)
	_hp.jing7 = math.ceil(_hp.max_jing * 7 / 10)
	_hp.qi7 = math.ceil(_hp.max_qi * 7 / 10)
	_hp.jing3 = (_hp.jing - _hp.jing7) >= 10 and (_hp.jing - _hp.jing7)
	_hp.qi3 = (_hp.qi - _hp.qi7) >= _hp.min_dz and (_hp.qi - _hp.qi7)
	_hp.full_neili = _hp.neili >= _hp.max_neili * 2 - _hp.min_dz
	_hp.full_jingli = _hp.jingli >= _hp.eff_jingli * 2 - 10
	_hp.dq = (_hp.qi - _hp.qi7) >= _hp.min_dz and (_hp.qi - _hp.qi7)
	-- 设置全局变量
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
	addListener([[^┃头    衔：(\S+)\s*┃膂  力：「(\d+)/(\d+)」\s*根  骨：「(\d+)/(\d+)」\s*┃$]],"OnScore1")
	local title,str,born_str,con,born_con = listen()
	addListener([[^┃姓    名：(\S+)\((\w+)\)\s+┃身  法：「(\d+)/(\d+)」\s*悟  性：「(\d+)/(\d+)」\s*┃$]],"OnScore2")
	local char,id,dex,born_dex,int,born_int = listen()
	addListener([[^┃年    龄：((\S+)岁(?:又(\S+)个月)?)\s*生    辰：.+┃$]],"OnScore3")
	local age = listen()
	addListener([[^┃性    别：(\S+)性(→机器人)?\s+.+┃$]],"s:return wildcards[1], wildcards[2] and true or false")
	local sex, robot = listen()
	addListener([[^┃钱庄存款：(?:(\S+)锭黄金|很少)\s*师    承：【(\S+?)】(?:【(\S+?)】)?\s*┃$]],"s:return trans(wildcards[1]), wildcards[2], wildcards[3]")
	local bank, party, master = listen()
	addListener([[^┃注册：(贵宾玩家|普通玩家).+┃$]],"s:return wildcards[1] == '贵宾玩家'")
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
	addListener([[^(?:[^\s->]{4,8}|你)目前学过(\S+)种技能：$]], "s:return trans(wildcards[1])","cha")
	addListener([[^(?:[^\s->]{4,8}|你)目前学过(\S+)种技能，但所学技能太杂，将严重影响了以后的进步：$]], "s:return trans(wildcards[1])","cha")
	addListener("^你要察看谁的技能？$", "s:return false","cha")
	addListener("^你目前并没有学会任何技能。$", "s:return false","cha")
	local count = listen()
	if not count then
		dodge = 0
		return _cha
	end
	for i = 1,count do
		addListener([[^(?:  |□)(\S+)\s+\((\S+)\)\s+- \S+\s+(\d+)/\s*(\d+)$]],"OnCha")
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
		addListener([[^  (\S+) \((\w+)\)\s+： (\S+)\s+有效等级：\s*(\d+)$]],"OnJifa","jifa")
		addListener("^你现在没有使用任何特殊技能。$", "c:jifa all", "jifa")
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
	local jifaName = wildcards[3] ~= "无" and wildcards[3] or false
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
		"文", "两", "锭", "张", "把", "具",
		"件", "柄", "枚", "颗", "朵", "捆",
		"本",
	}
	hide("i")
	set("i")
	while true do
		addSetListener("i","i")
		addListener([[^你身上带着\S+件东西\(负重\s+([\d\.]+)%\)：$]], "s:return tonumber(wildcards[1]), '负重', 'weight'", "i")
		addListener([[^(?:  |□)(?:(\S+)(?:]] .. table.concat(units,"|") .. [[))?(\S+)\((.+)\)$]],"OnI","i")
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
	addListener([[^你最近刚完成了(\S+)任务。]], "s:return wildcards[1]", "jobtimes")
	addSetListener("jobtimes", "jobtimes")
	local jobname = listen()
	if jobname ~= "jobtimes" then
		_jobtimes.jobname = jobname
	end
	return _jobtimes
end

function cond()
	local types = {
		["任务繁忙状态"] = "job_busy",
	}
	local _cond = DefaultTable.new(0)
	hide("cond")
	set("cond")
	addListener("^你身上包含下列特殊状态：$", "s:return true", "precond")
	addListener("^你身上没有包括任何特殊状态。$", "s:return false", "precond")
	if listen() then
		while true do
			addListener([[^│(\S+)\s+\S{2}(\S+)(分|秒)\s+\S{2} (\S+) │$]], "s:return wildcards[1], wildcards[2], wildcards[3], wildcards[4]", "cond")
			addSetListener("cond", "cond")
			local name, time, timeType, type = listen()
			if name == "cond" then
				break
			else
				local time = trans(time)
				if timeType == "分" then
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
		addListener("【雪山飞狐】", "s:return 'quest', 'current', 'xsfh'", "story")
		addListener("【连城诀】", "s:return 'quest', 'current', 'lcj'", "story")
		addListener("(【目前关于雪山飞狐，没有任何纪录】|游戏纪录混乱。你还需要努力。|下一步，如何帮助胡斐进一步完善胡家刀法。|下一步探索：如何寻找失落的最后两页刀法。)", "s:return 'xsfh', 'quest', 1", "story")
		addListener("(从阎基处你获得过一些旧事，下一步：辨真假。|凶手是苗人凤吗？下一步：闯苗家庄。)", "s:return 'xsfh', 'quest', 2", "story")
		addListener("(真相已经明了，而苗人风中毒生死未明。下一步：寻找解药。|20年前的往事已经明了，目前关键是如何寻找治疗苗人风的解药。)", "s:return 'xsfh', 'quest', 3", "story")
		addListener("(20年前的旧事已经明了，复仇之说也算一个完结。|但是受小人暗算，苗人风中毒生死未明。)", "s:return 'xsfh', 'quest', 3", "story")
		addListener("你已经完成雪山飞狐的基本情节，最后涉及到一个宝藏。", "s:return 'xsfh', 'quest', 4", "story")
		addListener("你已经挖掘出闯王兵器库的宝物，获得二个宝玉。", "s:return 'xsfh', 'quest', 5", "story")
		addListener([[你曾与胡斐进行过(\S+)次较量，]], "s:return 'xsfh', 'fightHu', trans(wildcards[1])", "story")
		addListener([[你曾与苗人凤进行过(\S+)次较量，可惜一次也没有胜出。]], "s:return 'xsfh', 'fightMiao', trans(wildcards[1])", "story")
		addListener([[你曾与苗人凤进行过\S+次较量，并获得一次胜利。]], "s:return 'xsfh', 'fightMiao', 3", "story")
		addListener([[游戏纪录经验差：(\S+)。]], "s:return 'current', 'questExp', trans(wildcards[1])", "story")
		addListener([[(【目前关于连城诀，没有任何纪录】|提示：解密乌蚕衣，寻找雪谷狄云。)]], "s:return 'lcj', 'quest', 1", "story")
		addListener([[(又是传说中的绝世武功和连城财宝，到底真相如何？|下一步：密探武馆。也许真相永远将是一个谜。)]], "s:return 'lcj', 'quest', 2", "story")
		addListener([[你现在拥有领悟神照经的机会。你可以在适当的时候请教丁典。]], "s:return 'lcj', 'szj', 0", "story")
		addListener([[你失去从丁典领悟神照经的(\S+)次机会，]], "s:return 'lcj', 'szj', trans(wildcards[1])", "story")
		addListener([[你失去从丁典领悟神照经的机会，]], "s:return 'lcj', 'szj', 3", "story")
		addListener([[你现在拥有从狄云处领悟更高层次神照经的机会。你可以在适当的时候请教狄云。]], "s:return 'lcj', 'quest', 3", "story")
		addListener([[你失去了狄云处领悟神照经的(\S+)次机会]], "s:return 'lcj', 'szj', trans(wildcards[1])", "story")
		addListener([[但是你失去了从狄云处学习神照经更高层次的领悟机会。]], "s:return 'lcj', 'szj', 3", "story")
		addListener([[武功纪录经验：(\d+)。]], "s:return 'current', 'exp', wildcards[1]", "story")
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
		addListener([[^您本次在线(\S+)秒。$]], "s:return 'hour', wildcards[1]", "exp")
		addListener([[^每小时进帐：(\S+)点经验。$]], "s:return 'hourExp', trans(wildcards[1])", "exp")
		addListener([[^死大米临界经验值：(\d+)$]], "s:return 'dummyExp', trans(wildcards[1])", "exp")
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
	addListener("^【你已经学会的打造项目有】$", "s:return true", "worker")
	addListener("^ 你目前尚不会打造任何东西。$", "s:return false", "worker")
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
	addListener("^(看起来需要修理了。|看起来马上就要坏了。)$", "s:return false", "armor")
	addSetListener("armor", "armor")
	result = not listen()
	repairCache:add(armor, result)
	if result then
		repairArmor(armor)
		repairCache:clear(armor)
	end
	return result
end