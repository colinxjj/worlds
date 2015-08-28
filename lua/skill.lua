local XUE_MAX_COUNT = 10
local XUE_MAX_WAIT = 2000
MIN_XUE_LIT_GOLD = 500
MIN_XUE_DZ_GOLD = 500
local LINGWU_MAX_COUNT = 10
local LINGWU_MAX_WAIT = 2000
local MAX_FULL_LEVEL = 10

local skills = {
	["峨嵋派"]={
		{id = "linji-zhuang", full = true},
		{id = "force", full = true},
		{id = "dacheng-fofa"},
		{id = "blade"},
		{id = "yanxing-daofa"},
		{id = "dodge"},
		{id = "anying-fuxiang"},
	},
	["少林派"] = {
		{id = "yijin-jing", full = true},
		{id = "force", full = true},
		{id = "literate", full = true},
		{id = "dodge", full = true},
		{id = "shaolin-shenfa", full = true},
		{id = "buddhism", full = true, knowledge = true},
		{id = "parry",
			full = function()
				return getExp() > 1000000
			end
		},
		{id = "wuxiang-zhi", full = true,
			cond = function()
				return getCha()["wuxiang-zhi"].level > 0
			end
		},
		{id = "sanhua-zhang",
			full = function()
				return getExp() < 2000000
			end,
			cond = function()
				return getExp() < 20000000
			end
		},
		{id = "strike",
			full = function()
				return getExp() < 2000000
			end,
			cond = function()
				return getExp() < 20000000
			end
		},
		{id = "finger",
			full = function()
				return getExp() > 2000000
			end,
			cond = function()
				return getExp() > 165000
			end
		},
		{id = "nianhua-zhi",
			full = function()
				return getExp() > 2000000 and getExp() < 20000000
			end,
			cond = function()
				return getExp() > 165000
			end
		},
		{id = "leg",
			full = function()
				return getExp() > 2000000
			end,
			cond = function()
				return getExp() > 1000000 or currentJob == "fishjob"
			end
		},
		{id = "ruying-suixingtui",
			full = function()
				return getExp() > 2000000
			end,
			cond = function()
				return getExp() > 1000000 or currentJob == "fishjob"
			end
		},
		{id = "longzhua-gong",
			cond = function()
				return getExp() > 1000000
			end
		},
		{id = "claw",
			cond = function()
				return getExp() > 1000000
			end
		},
		{id = "hand",
			cond = function()
				return getExp() > 1000000
			end
		},
		--[[
		{id = "cuff",
			cond = function()
				return getExp() > 10000000
			end
		},
		{id = "luohan-quan",
			cond = function()
				return getExp() > 10000000
			end
		},
		--]]
		{id = "qianye-shou",
			cond = function()
				return getExp() > 1000000
			end
		},
		{id = "yizhi-chan",
			cond = function()
				return getExp() > 1000000
			end
		},
		{id = "weituo-zhang",
			cond = function()
				return getExp() < 160000
			end
		},
	},
	["昆仑派"] = {
		{id = "xuantian-wuji", full = true,},
		{id = "force", full = true,},
		{id = "dodge", full = true,},
		{id = "taxue-wuhen", full = true,},
		{id = "xunlei-jian", full = true,},
		{id = "liangyi-jian",
 			full = function()
 				return getExp() > 800000
 			end,
 			cond = function()
 				return getExp() > 800000
 			end,
 		},
 		{id = "sword", full = true,},
 		{id = "kunlun-zhang",
 			full = function()
 				return getExp() > 400000
 			end,
 			cond = function()
	 			return getExp() > 400000
	 		end,
	 	},
 		{id = "strike",
 			full = function()
 				return getExp() > 400000
 			end,
 			cond = function()
 				return getExp() > 400000
 			end,
 		},
		{id = "literate", full = true,},
 		{id = "parry",},
 		{id = "art",},
 		{id = "leg",
 			cond = function()
	 			return getExp() <= 400000
	 		end,},
 		{id = "chuanyun-tui",
 			cond = function()
	 			return getExp() <= 400000
	 		end,},
	},
	["姑苏慕容"] = {
		{id = "shenyuan-gong", full = true,},
		{id = "force", full = true,},
		{id = "literate", full = true,},
	},
	["明教"] = {
		{id = "shenghuo-shengong", full = true, cond = function()
			return getCha()["jiuyang-shengong"].level == 0
		end},
		{id = "jiuyang-shengong", full = true, cond = function()
			return getCha()["jiuyang-shengong"].level > 0
		end},
		{id = "force", full = true,},
		{id = "literate", full = true,},
		{id = "dodge", full = true,},
		{id = "parry", full = true,},
		{id = "lieyan-dao", full = true, cond = function()
			return getExp() < 1000000
		end},
		{id = "blade", full = true, cond = function()
			return getExp() < 1000000
		end},
		{id = "qiankun-danuoyi", full = true, cond = function()
			return getCha()["qiankun-danuoyi"].level > 0
		end},
		{id = "piaoyi-shenfa", full = true,},
		{id = "cuff", full = true, cond = function()
			return getCha()["qishang-quan"].level > 0
		end},
		{id = "qishang-quan", full = true, cond = function()
			return getCha()["qishang-quan"].level > 0
		end},
		{id = "dagger", full = true, cond = function()
			return getExp() >= 1000000
		end},
		{id = "shenghuo-lingfa", full = true, cond = function()
			return getExp() >= 1000000
		end},
	},
	["嵩山派"] = {
		{id = "literate", full = true},
	},
	["丐帮"] = {
	},
	["古墓派"] = {
		{id = "yunu-xinjing", full = true,},
		{id = "force",},
		{id = "literate", full = true,},
		{id = "sword", full = true,},
		{id = "quanzhen-jianfa", full = true,},
		{id = "parry", full = true,},
		{id = "dodge", full = true,},
		{id = "yunu-shenfa", full = true,},
	},
}

function getFullSkills()
	local fullSkills = {}
	for _, skill in pairs(getSetFullSkills()) do
		table.insert(fullSkills, skill)
	end
	for _, skill in pairs(skills[getParty()]) do
		table.insert(fullSkills, skill)
	end
	return fullSkills
end

function isFullOrLimit()
	local skills = getFullSkills()
	local allFull = true
	local allLimit = true
	for _, v in pairs(skills) do
		local skill = v.id
		if not v.cond or v.cond() then
			if not isFull(skill) then
				log.debug("isFullOrLimit", "nofull", skill)
				allFull = false
			end
			if not isLimit(skill) then
				log.debug("isFullOrLimit", "nolimit", skill)
				allLimit = false
			end
		end
	end
	log.debug("isFullOrLimit", allFull, allLimit)
	return allFull, allLimit
end

function fullSkills()
	local _, isLimit = isFullOrLimit()
	if isLimit then
		return false
	end
	if intWeapon() then
		e("wield " .. intWeapon())
	end
	local skills = getFullSkills()
	local skips = {}
	local flags = {}
	local result = false
	while true do
		local skill, level = getFullSkill(skills, skips)
		if not skill then
			break
		end
		local result = fullSkill(skill)
		if result == "nopot" then
			break
		elseif result == "add" then
			skips = {}
		else
			skips[skill] = true
		end
	end
	if intWeapon() then
		e("unwield " .. intWeapon())
	end
	ggsOver()
	return result
end

function getMinFullSkill(skills)
	local minLevel = 1000
	local minLevelSkill
	for _, v in pairs(skills) do
		local skill = v.id
		local full
		if type(v.full) == "function" then
			full = v.full()
		else
			full = v.full
		end
		if (not v.cond or v.cond()) and full and not v.knowledge and skill ~= "literate" and skill ~= "duanzao" and skill ~= "zhizao" then
			local level = getCha()[skill].level
			if level < minLevel then
				minLevel = level
				minLevelSkill = skill
			end
		end
	end
	log.debug("getMinFullSkill", minLevelSkill, minLevel)
	return minLevelSkill, minLevel
end

function getFullSkill(skills, skips)
	local wantFullSkill = wantFull(skills)
	if wantFullSkill and not skips[wantFullSkill] then
		return wantFullSkill
	end
	skips = skips or {}
	local minLevelSkill
	local minLevel = 1000
	for _, v in pairs(skills) do
		local skill = v.id
		local full
		if type(v.full) == "function" then
			full = v.full()
		else
			full = v.full
		end
		if (not v.cond or v.cond()) and not skips[skill] then
			local level = getCha()[skill].level
			if full then
				log.debug("getFullSkill", "full", skill, level)
				return skill, level
			end
			if level < minLevel then
				minLevel = level
				minLevelSkill = skill
			end
		end
	end
	if minLevelSkill then
		log.debug("getFullSkill", "nofull", skill, level)
		return minLevelSkill, minLevel
	else
		return false
	end
end

function wantFull(skills)
	if getExp() < 150000 then
		return false
	end
	local result
	local skill, level = getMinFullSkill(skills)
	if not skill then
		result = false
	elseif getMaxLevel() - level > MAX_FULL_LEVEL then
		result = skill
	else
		result = false
	end
	log.debug("wantFull", result)
	return result
end

function isFull(skill)
	if skill == "literate" then
		if getCha().literate.level >= getScore().born_int * 10 then
			return "full"
		else
			return false
		end
	end
	if getCha()[skill].level >= getMaxLevel() then
		return "full"
	end
	return false
end

local noxues = {
	["qiankun-danuoyi"] = true,
}
function isLimit(skill)
	if noxues[skill] then
		return isFull(skill)
	end
	if wantXue(skill) then
		return cantXue(skill)
	elseif isBasicSkill(skill) then
		return cantLingwu(skill)
	else
		return cantLian(skill)
	end
end

function preWxz()
	if hp().pot == 0 then
		return false
	end
	if not go("山洞", "少林寺") then
		return false
	end
	e("jifa finger wuxiang-zhi")
	jifa()
	e("ask wuxiang chanshi about 佛法")
	set("wx")
	addListener([[^你向无相禅师打听有关『佛法』的消息。\n无相禅师说道：「\S+佛法精深，心怀慈悲，我目前实在没有什么可以教你的。」$]], "s:return false", "wx")
	addSetListener("wx", "wx")
	local result = listen()
	local _hp = hp()
	if result or _hp.pot == 0 then
		return false
	end
	return true
end

function getPreFull(skill)
	local preFulls = {
		["wuxiang-zhi"] = preWxz,
		["qiankun-danuoyi"] = taojiao,
	}
	log.debug("preFull = " .. tostring(preFulls[skill]))
	return preFulls[skill]
end

function fullSkill(skill)
	log.debug("fullSkill", skill)
	if isFull(skill) then
		return "full"
	end
	if isLimit(skill) then
		return "limit"
	end
	local preFull = getPreFull(skill)
	if preFull then
		if not preFull() then
			return "skip"
		end
	end
	if wantXue(skill) then
		return xue(skill)
	elseif isBasicSkill(skill) then
		return lingwu(skill)
	else
		return lian(skill)
	end
end

function cantXue(skill)
	if isFull(skill) then
		return true
	end
	if skill == "literate" then
		if (getParty() ~= "少林派" or getCha()[skill].level >= 100) and getScore().bank < MIN_XUE_LIT_GOLD then
			return true
		end
	end
	if skill == "duanzao" and getScore().bank < MIN_XUE_DZ_GOLD then
		return true
	end
	if skill == "zhizao" and getScore().bank < MIN_XUE_DZ_GOLD then
		return true
	end
	if not getMaster(skill) then
		return false
	end
	if getMaster(skill).skills[skill] and getCha()[skill].level < getMaster(skill).skills[skill].level then
		return false
	else
		return true
	end
end

function wantXue(skill)
	local knowledges = {
		buddhism = true,
		art = true,
		literate = true,
		duanzao = true,
		zhizao = true,
	}
	local xueSkills = {
		["nianhua-zhi"] = {130, 170},
	}
	if getExp() < 160000 then
		return true
	end
	if knowledges[skill] then
		return true
	end
	local level = getCha()[skill].level
	if skill == "hamagong" and level >= 100 then
		return false
	end
	if level <= 100 then
		return true
	end
	if skill == "force" and level < 200 then
		return true
	end
	if getBasicSkill(skill) and getBasicSkill(skill).id == "force" and level < 200 then
		return true
	end
	if xueSkills[skill] then
		for _, l in pairs(xueSkills[skill]) do
			if level == l then
				return true
			end
		end
	end
	return false
end

function isBasicSkill(skill)
	return getJifa()[skill].name
end

--[[
	@return
		"full", "limit", "nopot", false
--]]
function xue(skill)
	log.debug("xue", skill)
	if isFull(skill) then
		return "full"
	end
	if isLimit(skill) then
		return "limit"
	end
	local master = getMaster(skill)
	if not master then
		return false
	end
	if master.die or cantXue(skill) then
		return "skip"
	end
	if getPot() == 0 then
		return "nopot"
	end
	ggsStart()
	goMaster(master)
	local result = xue0(skill)
	if intWeapon() then
		e("unwield " .. intWeapon())
	end
	return result
end

function goMaster(master)
	if master.move then
		while true do
			if find(master.addr.name, master.addr.city, 4, master.name) then
				e("follow " .. master.id)
				break
			else
				wait(2000)
			end
		end
	else
		go(master.addr.name, master.addr.city)
	end
end

function xue0(skill)
	log.debug("xue0", skill)
	local master = getMaster(skill)
	if ggsStart() then
		goMaster(master)
	end
	checkquit()
	local _hp = hp()
	if _hp.food < 50 or _hp.water < 50 then
		full(_hp)
		goMaster(master)
	end
	if _hp.pot == 0 then
		return "nopot"
	end
	if isFull(skill) then
		return "full"
	end
	local count = getXueCount(skill, _hp)
	if count == 0 then
		local work = dq(_hp, _hp.max_neili * 2 - _hp.neili - 1)
		if not work then
			if _hp.neili < 20 then
				wait(2000)
			else
				e("yun jing")
			end
		else
			goMaster(master)
		end
		return xue0(skill)
	else
		if master.short then
			count = count < 50 and count or 50
			e("xue " .. master.short .. " " .. skill .. " " .. count)
		else
			count = count < XUE_MAX_COUNT and count or XUE_MAX_COUNT
			wait(count / XUE_MAX_COUNT * XUE_MAX_WAIT)
			if intWeapon() then
				e("wield " .. intWeapon())
			end
			e("#" .. count .. " xue " .. skill .. " from " .. master.id)
			e("yun jing")
		end
		set("xue")
		local depends = getDepends(skill)
		if depends then
			for _, depend in pairs(depends) do
				addListener(depend.msg, "s:return 'depend', '" .. depend.run .. "'", "xue")
			end
		end
		addListener("^(临阵磨枪？来不及啦。|这项技能你恐怕必须找别人学了。)$","s:return 'error', wildcards[1]","xue")
		addListener("^你要向谁求教？$","s:return 'die'","xue")
		addListener([[^你的「\S+」进步了！$]],"s:return 'add'","xue")
		addListener([[^嗯....你得先把\S{4,8}弄醒再说。$]],"s:return 'faint'","xue")
		addSetListener("xue","xue")
		local result, sign = listen()
		if master.short then
			waitbusy()
		end
		if resutl == "error" then
			log.error("学习出错：学习技能 = " .. skill .. "，错误：" .. sign)
			return false
		end
		if result == "die" then
			log.error("学习出错：学习技能 = " .. skill .. "，错误：师父死了")
			master.die = true
			return "skip"
		end
		if result == "add" then
			cha()
			jifa()
			score()
			return "add"
		end
		if result == "faint" then
			return xue0(skill)
		end
		if result == "depend" then
			wait(2000)
			cha()
			if _G[sign]() then
				return xue(skill)
			else
				return "skip"
			end
		end
		return xue0(skill)
	end
end

function getXueCount(skill, _hp)
	local cost = math.floor(100/getInt()) + math.floor(getCha()[skill].level / 10)
	local count = _hp.jing3 and math.floor(_hp.jing3/cost) or 0
	count = count < _hp.pot and count or _hp.pot
	return count
end

function getDepends(skill)
	local depends = {
		["buddhism"] = {
			{msg = "^你屡犯僧家数戒，尘俗之心太重，无法修炼禅宗心法。$", run = "goJly"},
		},
		["lieyan-dao"] = {
			{msg = "^你使用的武器不对。$", run = "wieldCutweapon"},
		},
		["linji-zhuang"] = {
			{msg = "^你的大乘佛法修为不够，无法领会更高深的临济十二庄。$",run="xueDachengfofa"},
			{msg = "^你的基本内功火候还不够，无法领会临济十二庄。$",run="xueForce"},
			
		},
		["yijin-jing"] = {
			{msg = "^你的基本内功火候还不够，无法领会易筋经内功。$", run = "xueForce"},
			{msg = "^你屡犯僧家数戒，无法领会更高深的易筋经内功。$", run = "goJly"},
			{msg = "^你的禅宗心法修为不够，无法领会更高深的易筋经内功。$", run = "xueBuddhism",},
		},
		["shenyuan-gong"] = {
			{msg = "^你的基本内功火候还不够，无法领会神元功。$", run = "xueForce"},
		},
		["literate"] = {
			{msg = [[^你现在学习一次所需要的费用是\S+白银，你身上带的零钱不够了。$]], run = "quXueMoney",},
		},
		["duanzao"] = {
			{msg = [[^你现在的学费是每次\S+白银。你的钱不够！$]], run = "quDzMoney",},
		},
		["zhizao"] = {
			{msg = [[^你现在的学费是每次\S+白银。你的钱不够！$]], run = "quZzMoney",},
		},
		["caikuang"] = {
			{msg = [[^你现在的学费是每次\S+白银。你的钱不够！$]], run = "quCkMoney",},
		},
		["nongsang"] = {
			{msg = [[^你现在的学费是每次\S+白银。你的钱不够！$]], run = "quNsMoney",},
		},
		["weituo-zhang"] = {
			{msg = "^你的易筋经内功火候不够，无法练韦驮掌。$", run = "xueYjj",},
		},
		["chuanyun-tui"] =  {
 			{msg = "^练穿云腿必须空手。$", run = "handFree",},
 		},
		["longzhua-gong"] =  {
 			{msg = "^练龙爪功必须空手。$", run = "handFree",},
 		},
 		["murong-jianfa"] = {
 			{msg = "^你使用的武器不对。$", run = "wieldCutweapon",},
 		},
 		["liangyi-jian"] = {
 			{msg = "^你使用的武器不对。$", run = "wieldCutweapon",},
 		},
 		["xunlei-jian"] = {
 			{msg = "^你使用的武器不对。$", run = "wieldCutweapon",},
 		},
 		["shenghuo-lingfa"] = {
 			{msg = "^你没有使用的武器。$", run = "wieldCutweapon",},
 		},
 		["canhe-zhi"] = {
 			{msg = "^练参合指必须空手。$", run = "handFree",},
 		},
 		["hanbing-mianzhang"] = {
 			{msg = "^练寒冰绵掌必须空手。$", run = "handFree",},
 		},
 		["kunlun-zhang"] = {
 			{msg = "^练昆仑掌必须空手。$", run = "handFree",},
 		},
 		["ningxue-shenzhua"] = {
 			{msg = "^练凝血神抓必须空手。$", run = "handFree",},
 		},
 		["yizhi-chan"] = {
 			{msg = "^练一指禅必须空手。$", run = "handFree",},
 		},
 		["qianye-shou"] = {
 			{msg = "^练如来千叶手必须空手。$", run = "handFree",},
 		},
 		["wuxiang-zhi"] = {
 			{msg = "^练无相劫指必须空手。$", run = "handFree",},
 		},
		["nianhua-zhi"] = {
 			{msg = "^练拈花指必须空手。$", run = "handFree",},
 		},
 		["ruying-suixingtui"] = {
 			{msg = "^学如影随形腿时手里不能拿武器。$", run = "handFree",},
 		},
	}
	return depends[skill]
end

function xueYjj()
	return xue("yijin-jing")
end

function xueForce()
	return xue("force")
end

function xueDachengfofa()
	return xue("dacheng-fofa")
end

function xueBuddhism()
	return xue("buddhism")
end

function quXueMoney()
	if getScore().bank < MIN_XUE_LIT_GOLD then
		return false
	else
		go("天阁斋", "扬州城")
		money(0,false,100)
		local master = getMaster("literate")
		go(master.addr.name, master.addr.city)	
		return xue0("literate")
	end
end

function quDzMoney()
	if getScore().bank < MIN_XUE_DZ_GOLD then
		return false
	else
		go("天阁斋", "扬州城")
		money(0,false,10)
		local master = getMaster("duanzao")
		go(master.addr.name, master.addr.city)	
		return xue0("duanzao")
	end
end

function quZzMoney()
	quGjMoney("zhizao")
end

function quNsMoney()
	quGjMoney("nongsang")
end

function quCkMoney()
	quGjMoney("caikuang")
end

function quGjMoney(skill)
	if getScore().bank < MIN_XUE_DZ_GOLD then
		return false
	else
		go("威信钱庄")
		money(0,false,10)
		return xue(skill)
	end
end

function goJly()
	if getCha()["buddhism"].level == 200 then
		go("里屋", "少林寺")
		e("ask wuming laoseng about 佛法")
		set("fofa")
		addListener("^你沉思良久，若有所捂。$", "s:return 'ok'", "fofa")
		addSetListener("fofa", "fofa")
		local result = listen()
		waitbusy()
		if result == "ok" then
			return true
		end
	end
	go("shaolin/songshu4")
	e("e")
	set("goJly")
	addListener("^只听院内传来一个浑厚的声音说道：你未经许可，不能进入戒律院。$", "s:return 'goJly'", "goJly")
	addListener([[^你一进戒律院，\.\.\.只听几声大喝，如同炸雷般在大殿里回响。你不禁浑身发抖，再也站立不住，腿一软，扑通一声跪了下来。$]], "s:return false", "goJly")
	addSetListener("goJly", "goJly")
	if listen() then
		return true
	else
		listener("^你定了定神，抬头细看，只见数十名持刀僧人将你团团围起来，$")
		return true
	end
end

function lingwu(skill)
	log.debug("lingwu", skill)
	local jifaName = getJifa()[skill].jifaName
	if not jifaName then
		log.error("必须要 lingwu 基本 skill： " .. skill)
		e("jifa all")
		return false
	end
	if isFull(skill) then
		return "full"
	end
	if cantLingwu(skill) then
		return "skip"
	end
	if getPot() == 0 then
		return "nopot"
	end
	ggsStart()
	go("达摩院", "少林寺")
	return lingwu0(skill)
end

function lingwu0(skill)
	log.debug("lingwu0", skill)
	if ggsStart() then
		go("达摩院", "少林寺")
	end
	checkquit()
	local _hp = hp()
	if _hp.pot == 0 then
		return "nopot"
	end
	if isFull(skill) then
		return "full"
	end
	if cantLingwu(skill) then
		return "skip"
	end
	if _hp.food < 50 or _hp.water < 50 then
		full(_hp)
		go("达摩院", "少林寺")
	end
	local count = getLingwuCount(skill, _hp)
	if count == 0 then
		if not dq(_hp, _hp.max_neili * 2 - _hp.neili - 1) then
			if _hp.neili < 20 then
				wait(2000)
			else
				e("yun jing")
			end
		end
	else
		wait(count / LINGWU_MAX_COUNT * LINGWU_MAX_WAIT)
		if intWeapon() then
			e("wield " .. intWeapon())
		end
		e("n;#" .. count .. " lingwu " .. skill .. ";s;yun jing")
		set("lingwu")
		addListener([[^你的「\S+」进步了！$]],"s:return 'add'","lingwu")
		addListener([[^你的\S+造诣不够，无法领悟更深一层的\S+。$]],"s:return 'add'","lingwu")
		addListener([[^格式： lingwu <技能> \[次数\]$]],"s:return 'wrong'","lingwu")
		addListener([[^你只能从特殊技能中领悟。$]],"s:return 'add'","lingwu")
		addSetListener("lingwu", "lingwu")
		local result = listen()
		cha()
		if result == "wrong" then
			go("达摩院", "少林寺")
		elseif result == "add" then
			jifa()
			score()
			return "add"
		end
	end
	return lingwu0(skill)
end

function lian(skill)
	log.debug("lian", skill)
	ggsOver()
	if skill == "parry" then
		log.error("不能练 parry")
		return false
	end
	if isFull(skill) then
		return "full"
	end
	if cantLian(skill) then
		return "skip"
	end
	local basicSkill, enable = getBasicSkill(skill)
	if not enable then
		e("bei none;jifa " .. basicSkill.id .. " " .. skill .. ";bei " .. basicSkill.id)
		jifa()
	end
	if (basicSkill.id == "force" or skill == "hamagong") and getPot() <= 5 then
		return "nopot"
	end
	go("达摩院", "少林寺")
	checkquit()
	local _hp = hp()
	if _hp.food < 50 or _hp.water < 50 then
		full(_hp)
		go("达摩院", "少林寺")
	end
	if _hp.neili >= 20 and _hp.eff_jingli - _hp.jingli >= 10 then
		e("yun jingli")
	elseif not dq(_hp, _hp.max_neili * 2 - _hp.neili - 1) then
		if _hp.neili < 20 then
			wait(2000)
		else
			local depends = getDepends(skill)
			e("lian " .. basicSkill.id .. ";yun jingli")
			set("lian")
			if depends then
				for _, depend in pairs(depends) do
					addListener(depend.msg, "s:return 'depend', '" .. depend.run .. "'", "lian")
				end
			end
			addListener([[^你的「\S+」进步了！$]],"s:return 'add'","lian")
			addListener([[^你必须通过学习才能练新的一招。$]],"s:return 'xue'","lian")
			addSetListener("lian", "lian")
			local result, sign = listen()
			cha()
			if result == "add" then
				jifa()
				return "add"
			elseif result == "xue" then
				return xue(skill)
			elseif result == "depend" then
				if _G[sign]() then
					return lian(skill)
				else
					return "skip"
				end
			end
		end
	end
	return lian(skill)
end

function cantLian(skill)
	if isFull(skill) then
		return true
	end
	local basicSkill = getBasicSkill(skill)
	if basicSkill and basicSkill.level > getCha()[skill].level then
		return false
	else
		return true
	end
end

local basicSkills = {
	["wuxiang-zhi"] = "finger",
	["yizhi-chan"] = "finger",
	["nianhua-zhi"] = "finger",
	["xunlei-jian"] = "sword",
	["liangyi-jian"] = "sword",
	["qishang-quan"] = "cuff",
}
function getBasicSkill(skill)
	if isBasicSkill(skill) then
		TraceOut("已经是基本 skill：" .. skill)
		return false
	end
	local specBasic = basicSkills[skill]
	local bs
	if specBasic then
		bs = getCha()[specBasic]
		return bs, false
	end
	local name = getCha()[skill].name
	if not name then
		return false
	end
	local basicSkill = false
	for k, v in pairs(getJifa()) do
		if v.id ~= "parry" and name == v.jifaName then
			basicSkill = getCha()[v.id]
			break
		end
	end
	return basicSkill, true
end

function getLingwuCount(skill, _hp)
	local cost = math.ceil(getCha()[skill].level * 2 / 5)
	local count = _hp.jing3 and math.floor(_hp.jing3/cost) or 0
	count = count < _hp.pot and count or _hp.pot
	count = count < LINGWU_MAX_COUNT and count or LINGWU_MAX_COUNT
	return count
end

function cantLingwu(skill)
	if isFull(skill) then
		return true
	end
	local level = getCha()[skill].level
	local jifaName = getJifa()[skill].jifaName
	local jifaSkill
	for k, v in pairs(getCha()) do
		if v.name == jifaName then
			jifaSkill = v
			break
		end
	end
	if jifaSkill and jifaSkill.level >= level then
		return false
	end
	return true
end

function read(cmd, msg)
	MAX_READ_COUNT = 15
	MAX_READ_WAIT = 1500
	local costs = {
		["read ji fang"] = 20,
		["read yuyi cao"] = 25,
		["read sangang shilue"] = 30,
		["read kejin jijie"] = 35,
		["read douzhen dinglun"] = 40,
		["read boji xidoufang"] = 45,
		["read bencao gangmu"] = 50,
		["read bencao jizhu"] = 60,
		["yandu jiuyin-zhengong"] = 40,
	}
	local cost = costs[cmd]
	goSafeAddr()
	local result
	while true do
		checkquit()
		local _hp = hp()
		if full(_hp) then
			goSafeAddr()
		end
		if not dq(_hp, _hp.max_neili * 2 - _hp.neili - 1) and _hp.jing3 and _hp.jing3 > cost then
			local count = math.floor(_hp.jing3 / cost)
			count = count > MAX_READ_COUNT and MAX_READ_COUNT or count
			wait(count * MAX_READ_WAIT / MAX_READ_COUNT)
			e("#" .. tostring(count) .. " " .. cmd)
			set("read")
			addListener(msg, "s:return 'ok'", "read")
			addListener([[^你仔细研读着\S+。$]], "s:return 'continue'", "read")
			addSetListener("read", "read")
			local result = listen()
			cha()
			if result == "ok" then
				result = true
				break
			elseif result == "read" then
				result = false
				break
			end
		elseif _hp.neili >= 20 then
			e("yun jing")
		else
			wait(2000)
		end
	end
	return result
end

function getJijie()
	local _i = i()
	if _i["kejin jijie"] == 0 then
		if getScore().bank > 5 then
			if _i.silver < 200 then
				go("天阁斋")
				money(0,200)
			end
			go("当铺", "扬州城")
			if buy("kejin jijie") then
				return true
			end
		end
		go("药铺", "扬州城")
		e("ask yaopu laoban about 医书")
		waitbusy()
		go("小吃店", "扬州城")
		if _i["kao ya"] == 0 and not buy("kao ya") then
			return false
		end
		if not find("city/dongdajie2", nil, 4, "空空儿") then
			return false
		end
		e("follow kong kong")
		local id = getId("空空儿")
		if not id then
			return false
		end
		e("ask kong kong about 医书")
		waitbusy()
		e("give kao ya to kong kong")
		kill("kong kong")
		addListener("^(这里没有这个人。|这里不准战斗。)$", nil, "jijie")
		addListener("^空空儿「啪」的一声倒在地上，挣扎着抽动了几下就死了。$", nil, "jijie")
		listen()
	end
	_i = i()
	if _i["kejin jijie"] == 0 then
		return false
	else
		return true
	end
end

function readJijie()
	if not getJijie() then
		return false
	end
	read("read kejin jijie", "^你研读了一会儿，但是发现上面所说的对你而言都太浅了，没有学到任何东西。$")
	while true do
		go("当铺", "扬州城")
		e("sell kejin jijie")
		set("medicine")
		addListener("^哟，抱歉啊，我这儿正忙着呢……您请稍候。$", "s:return 'busy'", "medicine")
		addSetListener("medicine", "medicine")
		if listen() == "medicine" then
			return true
		end
	end
end

function getCaiyao()
	local _i = i()
	if _i["douzhen dinglun"] > 0 and _i["boji xidoufang"] > 0 then
		return true
	end
	if getScore().bank > 5 then
		if _i.silver < 200 then
			go("天阁斋")
			money(0,200)
		end
		go("当铺", "扬州城")
		if buy("douzhen dinglun") then
			wait(1000)
			if buy("boji xidoufang") then
				return true
			end
		end
	end
	go("wudang/shanlu2")
	e("ask caiyao daozhang about 只是")
	go("茶亭", "武当山")
	e("ask tao hua about rumor")
	go("wudang/houshan/taoyuan3")
	e("zuan shulin")
	e("ask lao weng about 采药道长")
	waitbusy()
	e("ask lao weng about 搭救")
	waitbusy()
	go("wudang/shanlu2")
	e("ask caiyao daozhang about 结果")
	_i = i()
	if _i["douzhen dinglun"] > 0 and _i["boji xidoufang"] > 0 then
		return true
	else
		return false
	end
end

function readCaiyao()
	if not getCaiyao() then
		return false
	end
	read("read douzhen dinglun", "^你研读了一会儿，但是发现上面所说的对你而言都太浅了，没有学到任何东西。$")
	read("read boji xidoufang", "^你研读了一会儿，但是发现上面所说的对你而言都太浅了，没有学到任何东西。$")
	while true do
		go("当铺", "扬州城")
		e("sell douzhen dinglun")
		e("sell boji xidoufang")
		set("medicine")
		addListener("^哟，抱歉啊，我这儿正忙着呢……您请稍候。$", "s:return 'busy'", "medicine")
		addSetListener("medicine", "medicine")
		if listen() == "medicine" then
			wait(2000)
			return true
		else
			wait(1000)
		end
	end
end

function readMjBook(book)
	local _i = i()
	if _i[book] == 0 then
		if not uniques[book] then
			return false
		end
		go("书院", "明教")
		e("get " .. book)
		_i = i()
		if _i[book] == 0 then
			uniques[book] = false
			wait(2000)
			return false
		end
	end
	read("read " .. book, "^你研读了一会儿，但是发现上面所说的对你而言都太浅了，没有学到任何东西。$")
	e("drop " .. book)
	return true
end

function readGangmu()
	readMjBook("bencao gangmu")
end

function readJizhu()
	return readMjBook("bencao jizhu")
end

function readMedicine()
	local level = getCha()["medicine"].level
	if level < 30 and getExp() > 30000 then
		if not readMedicine0("ji fang") then
			return false
		end
	end
	level = getCha()["medicine"].level
	if level < 40 and getExp() > 165000 then
		if not readMedicine0("yuyi cao") then
			return false
		end
	end
	level = getCha()["medicine"].level
	if level < 50 and getExp() > 500000 then
		if not readMedicine0("sangang shilue") then
			return false
		end
	end
	level = getCha()["medicine"].level
	if level < 60 and getExp() > 500000 then
		if not readJijie() then
			return false
		end
	end
	if level < 80 and getExp() > 500000 then
		if not readCaiyao() then
			return false
		end
	end
	if level < 100 and getExp() > 800000 then
		if not readGangmu() then
			return false
		end
	end
	if level < 120 and getExp() > 800000 then
		if not readJizhu() then
			return false
		end
	end
	return true
end

function readMedicine0(book)
	local medicines = {
		["ji fang"] = {name = "药铺", city = "扬州城"},
		["yuyi cao"] = {name = "商铺", city = "伊犁城"},
		["sangang shilue"] = {name = "药房", city = "明教"},
	}
	local _i = i()
	if _i[book] == 0 then
		if getScore().bank < 5 then
			return false
		end
		if _i.silver < 200 then
			go("天阁斋")
			money(0,200)
		end
		if not go(medicines[book].name, medicines[book].city) then
			return false
		end
		if not buy(book) then
			wait(2000)
			go("当铺", "扬州城")
			if not buy(book) then
				return false
			end
		end
		wait(2000)
	end
	read("read " .. book, "^你研读了一会儿，但是发现上面所说的对你而言都太浅了，没有学到任何东西。$")
	while true do
		go("当铺", "扬州城")
		e("sell " .. book)
		set("medicine")
		addListener("^哟，抱歉啊，我这儿正忙着呢……您请稍候。$", "s:return 'busy'", "medicine")
		addSetListener("medicine", "medicine")
		if listen() == "medicine" then
			wait(2000)
			return true
		end
	end
end

function getMaxSkillLevel()
	local maxLevel = 0
	for k, v in pairs(getCha()) do
		if v.level > maxLevel then
			maxLevel = v.level
		end
	end
	return maxLevel
end

function taojiao()
	log.debug("taojiao")
	if isFull("qiankun-danuoyi") then
		return false
	end
	if getPot() == 0 then
		return false
	end
	if getCha()["qiankun-danuoyi"].level <= 200 then
		return false
	end
	go("圣火堂", "明教")
	return taojiao0()
end

function taojiao0()
	local cost = math.ceil(getCha()["qiankun-danuoyi"].level / 5 * 2)
	cost = cost > 100 and 100 or cost
	local _hp = hp()
	if _hp.food < 50 or _hp.water < 50 then
		full(_hp)
		go("圣火堂", "明教")
	end
	if isFull("qiankun-danuoyi") then
		return false
	end
	if _hp.pot == 0 then
		return false
	end
	local count = _hp.jing3 and math.floor(_hp.jing3 / cost)
	count = count > 10 and 10 or count
	if count > 0 then
		e("#" .. count .. " taojiao qiankun-danuoyi;yun jing")
		set("taojiao")
		addListener("^你听了张无忌的指点，对乾坤大挪移的体会又深了一层。$", "s:return false", "taojiao")
		addSetListener("taojiao", "taojiao")
		if listen() then
			return false
		end
		cha()
		wait(1000)
	else
		local work = dq(_hp, _hp.max_neili * 2 - _hp.neili - 1)
		if not work then
			if _hp.neili < 20 then
				wait(2000)
			else
				e("yun jing")
			end
		end
	end
	return taojiao0()
end

function looksky()
	log.debug("looksky")
	if isFull("douzhuan-xingyi") then
		return false
	end
	if getCha()["douzhuan-xingyi"].level < 200 or getCha()["shenyuan-gong"].level < 200 then
		return false
	end
	go("观星台", "燕子坞")
	e("jump zhuang")
	return looksky0()
end

function looksky0()
	local cost = math.ceil(getCha()["douzhuan-xingyi"].level / 8)
	local _hp = hp()
	if _hp.food < 50 or _hp.water < 50 then
		full(_hp)
		go("观星台", "燕子坞")
		e("jump zhuang")
	end
	if isFull("douzhuan-xingyi") then
		return false
	end
	local count = _hp.jing3 and math.floor(_hp.jing3 / cost)
	count = count > 10 and 10 or count
	if count > 0 then
		e("#" .. count .. " look sky;yun jing")
		set("looksky")
		addListener("^你又掌握了一些在实战中运用斗转星移的技巧。$", "s:return false", "looksky")
		addSetListener("looksky", "looksky")
		if listen() then
			waitjob()
		else
			cha()
			wait(1000)
		end
	else
		local work = dq(_hp, _hp.max_neili * 2 - _hp.neili - 1)
		if not work then
			if _hp.neili < 20 then
				wait(2000)
			else
				e("yun jing")
			end
		end
	end
	return looksky0()
end

qqlly = {}
function chenggao()
	while true do
		local _cha = cha()
		local type
		if _cha.duanzao.level < 400 and not qqlly.duanzao then
			type = "duanzao"
		elseif _cha.zhizao.level < 400 and not qqlly.zhizao then
			type = "zhizao"
		else
			log.error("已经满了")
			ggsOver()
			quit()
		end
		local _hp = hp()
		full(_hp)
		local pot = _hp.pot
		if pot < 5 then
			ggsOver()
			zcjob()
			return chenggao()
		end
		local needGold = math.floor(pot / 5) * 2
		if score().bank < needGold * 1.2 then
			ggsOver()
			log.error("穷死了，没钱学  " .. type .. " 了")
			quit()
			return false
		end
		if i().gold < needGold then
			go("天阁斋")
			money(0, false, needGold)
		end
		ggsStart()
		if not find("wudang/houshan/hsxl1", nil, 3, "成高道长") then
			find("wudang/houshan/hsxl1", nil, 5, "成高道长")
		end
		if intWeapon() then
			e("wield " .. intWeapon())
		end
		while true do
			e("follow chenggao daozhang")
			e("ask chenggao daozhang about " .. type .. ";verify " .. type)
			set("chenggao")
			addListener([[^你和成高道长一起交流着「\S+」的心得。\n成高道长自言自语地不知道在说些什么。$]], "s:return false", "chenggao")
			addListener([[^你和成高道长一起交流着「锻造技能」的心得。\n成高道长突然叹息道：「你真是一方顽石，顽石不可化也。我看你是很难开窍了……」$]], "s:return 'qqlly'", "chenggao")
			addListener([[^你向成高道长打听有关『\S+』的消息。\n成高道长赶紧捂住腰包，对你哀求道：“\S+您可千万别搞错了，贫道穷得响叮当呀！ 这腰包看起来鼓鼓的，其实里面可都是树叶子呀！”$]], "s:return 'money'", "chenggao")
			addSetListener("chenggao", "chenggao")
			local result = listen()
			if result == "chenggao" then
				break
			elseif result == "money" then
				break
			elseif result == "qqlly" then
				qqlly[type] = true
				break
			end
			waitbusy()
		end
		if intWeapon() then
			e("unwield " .. intWeapon())
		end
	end
end

function gmjy()
	local MAX_READ_COUNT = 15
	local MAX_READ_WAIT = 1500
	local cost = 40
	go("gumu/sshi1")
	local result
	while true do
		checkquit()
		local _hp = hp()
		if _hp.pot == 0 then
			zcjob()
			go("gumu/sshi1")
		end
		if full(_hp) then
			go("gumu/sshi1")
		end
		if not dq(_hp, _hp.max_neili * 2 - _hp.neili - 1) and _hp.jing3 and _hp.jing3 > cost then
			local count = math.floor(_hp.jing3 / cost)
			count = count > MAX_READ_COUNT and MAX_READ_COUNT or count
			wait(count * MAX_READ_WAIT / MAX_READ_COUNT)
			e("#" .. tostring(count) .. " yandu jiuyin-zhengong")
			set("read")
			addListener("^你觉得这洞壁上所刻已经太浅了，不能学到什么东西。$", "s:return 'ok'", "read")
			addListener([[^你研读着有关九阴真功的技巧，似乎有些心得。$]], "s:return 'continue'", "read")
			addSetListener("read", "read")
			local result = listen()
			cha()
			if result == "ok" then
				result = true
				break
			elseif result == "read" then
				result = false
				break
			end
		elseif _hp.neili >= 20 then
			e("yun jing")
		else
			wait(2000)
		end
	end
	return result
end