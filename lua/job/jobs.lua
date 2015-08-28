package.path = GetInfo(57) .. "lua/?.lua"

require("job/wgjob")
require("job/xcjob")
require("job/aozhou")
require("job/gbjob")
require("job/sxjob")
require("job/zcjob")
require("job/clbjob")
require("job/hsjob")
require("job/wdjob")
require("job/fishjob")
require("job/cmjob")
require("job/jsjob")
require("job/xljob")
require("job/qqlljob")
require("task/gmfull")
require("task/heal")
require("task/bai")
require("task/helptask")
require("task/worker")

jobs = {
	{
		id = "wgjob",
		cond = function()
			return getHp().exp < 3000
		end,
		job = wgjob,
	},
	{
		id = "bai",
		cond = function()
			return getParty() == "普通百姓" and not getScore().master
		end,
		job = bai,
	},
	{
		id = "worker",
		cond = function()
			return getWorkerType() and not getWorker()
		end,
		job = taojiao,
	},
	{
		id = "full",
		cond = function()
			return getFood() < 50 or getWater() < 50
		end,
		job = full,
	},
	{
		id = "slEat",
		cond = function()
			return getParty() == "少林派" and getExp() < 30000 and (getFood() < 50 or getWater() < 50)
		end,
		job = slEat,
	},
	{
		id = "gmEat",
		cond = function()
			return getParty() == "古墓派" and getExp() < 10000 and (getFood() < 50 or getWater() < 50)
		end,
		job = gmEat,
	},
	{
		id = "heal",
		cond = function()
			return not heal(getHp()) or not healJing(getHp())
		end,
		job = goHeal,
	},
	{
		id = "helperwait",
		cond = function()
			return isHelper("gold")
		end,
		job = helperwait,
	},
	{
		id = "fullNeili",
		cond = function()
			return getExp() > 3000 and getHp().neili_limit1 - getHp().max_neili > 100
		end,
		job = fullNeili,
	},
	{
		id = "fullJingli",
		cond = function()
			return getExp() > 3000 and getHp().max_jingli - getHp().eff_jingli > 100
		end,
		job = fullJingli,
	},
	{
		id = "repair",
		cond = function()
			return getCha()["zhizao"].level >= 200 and (armorInfo("cap") or armorInfo("boot") or armorInfo("armor") or armorInfo("mantle") or armorInfo("belt") or armorInfo("coat") or armorInfo("glove"))
		end,
		job = repair,
	},
	{
		id = "fullGm",
		cond = function()
			return getParty() == "古墓派" and getCha()["quanzhen-jianfa"].level < 101 and getExp() > 150000
		end,
		job = fullGm,
	},
	{
		id = "xljob",
		name = "明教巡逻",
		cond = function()
			return getExp() > 150000 and getExp() < 2000000 and getParty() == "明教"
		end,
		job = xljob,
	},
	{
		id = "jsjob",
		cond = function()
			return getExp() < 30000 and getParty() == "姑苏慕容"
		end,
		job = jsjob,
	},
	{
		id = "cmjob",
		cond = function()
			return getExp() < 10000 and getParty() == "古墓派"
		end,
		job = cmjob,
	},
	{
		id = "aozhou",
		cond = function()
			return getExp() < 30000 and getParty() == "少林派"
		end,
		job = aozhou,
	},
	{
		id = "xcjob",
		cond = function()
			return getExp() < 150000
		end,
		job = xcjob,
	},
	{
		id = "fishjob",
		cond = function()
			return getDummyExp() * 3 / 2 < getExp() and wantFull(getFullSkills()) and getExp() > 500000 and getExp() < 20000000 and getScore().bank < 300
		end,
		job = fishjob,
	},
	{
		id = "zcjob",
		cond = function()
			if fullPot() or getMaxSkillLevel() - getMaxLevel() > 10 then
				return false
			else
				return wantFull(getFullSkills()) or (getParty() == "少林派" and getExp() < 10000000 and getCha()["sanhua-zhang"].level < 100)
			end
		end,
		job = zcjob,
	},
	{
		id = "wdjob",
		name = "武当锄奸",
		cond = function()
			return getExp() > 800000
		end,
		job = wdjob,
	},
	{
		id = "hsjob",
		name = "惩恶扬善",
		cond = function()
			return getExp() > 500000
		end,
		job = hsjob,
	},
	{
		id = "sxjob",
		name = "大理送信",
		cond = function()
			return getExp() > 150000 and (getHourExp() < 6000 or getExp() < 1000000)
		end,
		job = sxjob,
	},
	{
		id = "clbjob",
		name = "长乐帮",
		cond = function()
			return getExp() > 150000
		end,
		job = clbjob,
	},
	{
		id = "gbjob",
		name = "丐帮",
		cond = function()
			return getExp() > 150000 and getExp() < 4000000
		end,
		job = gbjob,
	},
}

function dojob(skips)
	if getExp() > 38000000 then
		quit()
	end
	skips = skips or {}
	local jobname
	for _, info in pairs(jobs) do
		if info.cond() and not skips[info.id] then
			if not info.name then
				log.debug("开始做 job " .. info.id)
				return info.job()
			else
				jobname = jobname or getJobname()
				if jobname ~= info.name then
					log.debug("开始做 job " .. info.id)
					log.debug("dojob", info.id)
					currentJob = info.id
					if jobname == "大理送信" then
						e("no")
					end
					local result = info.job()
					currentJob = nil
					if not result then
						lastFailjob = info.id
					end
					if result == "skip" then
						skips[info.id] = true
						local jobResult = dojob(skips)
						cond()
						return jobResult
					else
						return result
					end
				end
			end
		end
	end
	log.error("没有 job 做了？")
end

