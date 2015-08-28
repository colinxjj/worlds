function OnRisk()
	run(escape)
end

function OnSafe()
	e("yun qi")
end

function OnFight()
	run(fight)
end

function OnCheckWeapon()
	run(checkWeapon)
end

function isSafe()
	return safe or getVariable("safe")
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


function fight()
	local _hp = hp(true)
	if _hp.qi_limit < 50 or _hp.jing_limit < 50 then
		e("h;yun qi")
		return escape()
	end
	if _hp.jingli < _hp.eff_jingli / 2 then
		e("yun jingli")
	end
	if _hp.qi < _hp.max_qi * 7 / 10 and _hp.eff_qi - _hp.qi >= 10 then
		e("yun qi")
	end
	if _hp.neili <= 200 then
		return escape()
	end
end

local escaping = false
local escapeFail = 0
function escape()
	if move then
		randomMove(move.exits)
	else
		local _here = here()
		randomMove(_here.exits)
	end
	e("set wimpy 100;set wimpycmd halt\\yun qi\\kaichu\\hp")
	if escapeFail > 2 then
		escapeFail = 0
		escaping = false
	end
	if not escaping then
		escaping = true
		escapeFail = 0
		goNofightRoom()
		escaping = false
		if not isFight() then
			perform()
			Simulate("���ܳɹ�\n")
			return true
		else
			wait(500)
			return escape()
		end
	else
		escapeFail = escapeFail + 1
	end
end

function fkill(...)
	local target = table.concat({...}," ")
	e("follow " .. target)
	kill(target)
end

function kill(...)
	local target = table.concat({...}," ")
	e("kill " .. target)
	perform(target)
	initWeapon()
end

function k(...)
	kill(...)
end

local performs = {
	["������"] = {
		{
			perform = {
				{
					pre = "bei none;jifa strike sanhua-zhang;jifa parry sanhua-zhang;bei strike;jiali 0",
					pfm = "sanhua",
				},
			},
			cond = function()
				if currentJob == "fightYj" then
					return true
				else
					return false
				end
			end
		},
		{
			perform = {
				{
					pre = "bei none;jifa strike sanhua-zhang;jifa parry sanhua-zhang;jifa finger nianhua-zhi;bei strike;bei finger;jiali 1",
					pfm = "sanhua",
				},
			},
			cond = function()
				if getExp() < 2000000 then
					return true
				else
					return false
				end
			end
		},
		{
			perform = {
				{
					pre = "jiali max;bei none;jifa leg ruying-suixingtui;jifa parry ruying-suixingtui;jifa hand qianye-shou;bei leg;bei hand",
					pfm = "ruying",
				},
			},
			cond = function()
				if getExp() > 10000000 and currentJob == "xsfh" then
					return true
				else
					return false
				end
			end
		},
		{
			perform = {
				{
					pre = "jiali max;yun jingang;bei none;jifa claw longzhua-gong;jifa parry longzhua-gong;jifa finger yizhi-chan;bei claw;bei finger",
					pfm = "canyun",
				},
			},
			cond = function()
				if getExp() > 6400000 and (currentJob == "hsjob" or currentJob == "sxjob1") and getMaxLevel() - getCha()["longzhua-gong"].level < 10 then
					return true
				else
					return false
				end
			end
		},
		{
			perform = {
				{
					pre = "yun jingang;jiali max;bei none;jifa finger wuxiang-zhi;jifa parry wuxiang-zhi;jifa cuff luohan-quan;bei finger;bei cuff",
					pfm = "qiankun",
					target_only = true,
				},
				{
					pre = "bei none;jifa leg ruying-suixingtui;jifa parry ruying-suixingtui;jifa hand qianye-shou;bei leg;bei hand",
					pfm = "ruying",
				},
			},
			cond = function()
				if getExp() >= 10000000 and getCha()["wuxiang-zhi"].level > getMaxLevel() - 10 then
					return true
				else
					return false
				end
			end
		},
		{
			perform = {
				{
					pre = "yun jingang;jiali max;bei none;jifa finger nianhua-zhi;jifa parry nianhua-zhi;jifa strike sanhua-zhang;bei finger;bei strike",
					pfm = "fuxue",
					target_only = true,
				},
				{
					pre = "bei none;jifa leg ruying-suixingtui;jifa parry ruying-suixingtui;jifa hand qianye-shou;bei leg;bei hand",
					pfm = "ruying",
				},
			},
			cond = function()
				if getExp() >= 5000000 then
					return true
				else
					return false
				end
			end
		},
		{
			perform = {
				{
					pre = "bei none;jifa leg ruying-suixingtui;jifa parry ruying-suixingtui;jifa hand qianye-shou;bei leg;bei hand",
					pfm = "ruying",
					post = "jiali 1",
				},
			},
			cond = function()
				if getExp() >= 20000000 and (currentJob == "sxjob1" or currentJob == "hsjob") then
					return true
				else
					return false
				end
			end
		},
		{
			perform = {
				{
					pre = "yun jingang;jiali max;bei none;jifa finger nianhua-zhi;jifa parry nianhua-zhi;jifa strike sanhua-zhang;bei finger;bei strike",
					pfm = "fuxue",
					target_only = true,
				},
				{
					pre = "bei none;jifa leg ruying-suixingtui;jifa parry ruying-suixingtui;jifa hand qianye-shou;bei leg;bei hand",
					pfm = "ruying",
					post = "jiali 1",
				},
			},
			cond = function()
				if getExp() >= 2000000 then
					return true
				else
					return false
				end
			end
		},
	},
	["������"] = {
		{
			perform = {
				{
					pre = "yun taxue;jifa parry xunlei-jian;jiali 1",
					pfm = "xunlei",
				},
			},
			cond = function()
				if getExp() < 400000 then
					return true
				else
					return false
				end
			end
		},
		{
			perform = {
				{
					pre = "yun taxue;jifa parry xunlei-jian;jiali 1",
					pfm = "xunlei",
				},
				{
					pre = "jiali max;bei none;jifa strike kunlun-zhang;jifa parry kunlun-zhang;bei strike",
					pfm = "diezhang",
					post = "jiali 1",
				},
			},
			cond = function()
				if getExp() < 800000 then
					return true
				else
					return false
				end
			end
		},
		{
			perform = {
				{
					pre = "jiali max;yun riyue;bei strike;jifa sword liangyi-jian;jifa parry liangyi-jian",
					pfm = "xunlei",
					post = "jiali 1",
				},
			},
			cond = function()
				return true
			end
		},
	},
	["����"] = {
		{
			perform = {
				{
					pre = "jiali 1;jifa blade lieyan-dao;jifa parry lieyan-dao;bei strike;",
					pfm = "shenghuo",
				},
			},
			cond = function()
				return getExp() < 1000000
			end
		},
		{
			perform = {
				{
					pre = "jiali max;yun jiuyang;bei none;jifa cuff qishang-quan;jifa parry qiankun-danuoyi;bei cuff;perform parry.xu",
					pfm = "qishang",
				},
			},
			cond = function()
				if currentJob == "fightYj" then
					return true
				else
					return false
				end
			end
		},
		{
			perform = {
				{
					pre = "jiali max;jifa dagger shenghuo-lingfa",
					pfm = "tougu",
				},
				{
					pre = "jifa parry qiankun-danuoyi;bei none;jifa cuff shenghuo-lingfa;bei cuff",
					pfm = "tisha",
				},
			},
			cond = function()
				if getExp() <= 10000000 then
					return true
				else
					return false
				end
			end
		},
		{
			perform = {
				{
					pre = "jiali max;yun jiuyang;bei none;jifa cuff qishang-quan;jifa parry qiankun-danuoyi;bei cuff;perform parry.xu",
					pfm = "duanhun",
				},
			},
			cond = function()
				if getExp() > 10000000 then
					return true
				else
					return false
				end
			end
		},
	},
	["��Ĺ��"] = {
		{
			perform = {
				{
					pre = "jifa sword quanzhen-jianfa;jifa parry quanzhen-jianfa",
					pfm = "sanqing",
				},
			},
		},
	},
	["��ɽ��"] = {
		{
			perform = {
				{
					pre = "jiali max;bei none;jifa hand songyang-shou;bei hand",
					pfm = "junji",
				},
			},
		},
	},
}

function initWeapon()
	unwieldCutweapon()
	wieldWeapon()
end

function checkWeapon()
	addListener([[^����æ���ء�$]], "s:return true", "weapon")
	addListener([[^������ʹ��\S+��$]], "s:return true", "weapon")
	addListener([[^���Ѿ�װ�����ˡ�$]], "s:return true", "weapon")
	addListener([[^��Ҫװ��ʲô������$]], "s:return false", "weapon")
	addListener([[^������û������������$]], "s:return false", "weapon")
	addListener([[^�㲻��ʹ�����������$]], "s:return false", "weapon")
	addListener([[^��о�ȫ����Ϣ���ڣ�ԭ����(����|����)����������װ��\S+��$]], "s:return false", "weapon")
	addListener([[^�������\S+����������������ֻ�����ա�$]], "s:return false", "weapon")
	addListener([[^��ֻ��װ���ɵ��������Ķ�����$]], "s:return false", "weapon")
	addListener([[^��װ��\S+��������$]], "s:return false", "weapon")
	local result = listen()
	if not result then
		noPerform()
		waitbusy()
		e("halt;get " .. getWeapon())
		local _i = i()
		if _i[getWeapon()] == 0 then
			reset()
			getPartyCutweapon()
			init()
		end
		perform()
	end
end

function repair()
	if not getWeapon() then
		return false
	else
		e("l " .. getWeapon())
		set("repair")
		addListener([[^(��������Ҫ�����ˡ�|���������Ͼ�Ҫ���ˡ�)$]], "s:return false", "repair")
		addSetListener("repair", "repair")
		if listen() then
			return false
		else
			repair0()
		end
	end
end

function repair0()
	go("������", "��ԭ����")
	wieldWeapon()
	e("ask tiejiang about repair")
	set("repair")
	addListener([[^�������������йء�repair������Ϣ��\n����˵�������������Ǯ�����ˣ�����Ҫ(\S+)���ƽ�\S*������á���$]], "s:return trans(wildcards[1]) + 1", "repair")
	addSetListener("repair", "repair")
	local result = listen()
	if result == "repair" then
		waitbusy()
	else
		go("���ի")
		if money(0, 50, result) then
			return repair0()
		else
			return qq()
		end
	end
end

function perform(...)
	local customerPfm = getPerform()
	local target
	if ... then
		target = table.concat({...}, " ")
	end
	local pfms = performs[getParty()]
	if not pfms and not customerPfm then
		e("unset wimpy")
		return false
	else
		e("set wimpy 100")
	end
	local _p = "alias p "
	if not getWeapon() then
		if getCutweapon() then
			_p = _p .. "unwield " .. getCutweapon() .. ";"
		end
		if intWeapon() then
			_p = _p .. "unwield " .. intWeapon() .. ";"
		end
	else
		_p = _p .. "stay;wield " .. getWeapon() .. ";"
	end
	if customerPfm then
		_p = _p .. customerPfm
	else
		local pfm
		for _, p in pairs(pfms) do
			if not p.cond or p.cond() then
				pfm = p.perform
				break
			end
		end
		for _, p in pairs(pfm) do
			_p = _p .. p.pre .. ";"
			if target then
				_p = _p .. "perform " .. p.pfm .. " " .. target .. ";"
			end
			if not p.target_only or not target then
				_p = _p .. "perform " .. p.pfm .. ";"
			end
			if p.post then
				_p = _p .. p.post
			end
		end
	end
	if target then
		e("set target " .. target)
	end
	Send(_p)
	e([[set wimpycmd p\kaichu\hp;p]])
end

function p(...)
	perform(...)
end

function noPerform()
	e([[unset target;set wimpy 100;set wimpycmd kaichu\hp;jiali 1]])
end
