function cmjob()
	go("gumu/guolin5")
	while true do
		local _hp = hp()
		if getExp() > 10000 then
			return false
		end
		if getPot() > getMaxPot() * 7 / 10 then
			if fullGmSkill() then
				return true
			end
		end
		if _hp.qi >= 15 and _hp.qi >= 20 then
			waitbusy()
			if _hp.neili >= 20 then
				if _hp.qi < _hp.qi7 and _hp.qi / _hp.max_qi < _hp.jing / _hp.jing then
					e("yun qi")
				elseif _hp.jing < _hp.jing7 then
					e("yun jing")
				end
			end
			e("tong fengchao")
			set("cmjob")
			addListener([[^你捅了半天发现蜂巢里什么都没有了。$]], "s:return false", "cmjob")
			addListener([[^你已经采好蜜了，可以去药房制成玉蜂浆了。$]], "s:return 'ok'", "cmjob")
			addSetListener("cmjob", "cmjob")
			local result = listen()
			if not result then
				waitjob()
				return fullGmSkill()
			end
			if result == "ok" then
				wait(2000)
				return cmFinish()
			end
		else
			go("药房", "古墓")
			if sleep() == "fail" then
				wait(10000)
			end
			return cmjob()
		end
	end
end

function cmFinish()
	go("药房", "古墓")
	e("make jiang")
	return true
end

function fullGmSkill()
	while true do
		local _hp = hp()
		if _hp.pot == 0 then
			return true
		end
		local cost = math.ceil(150 / getInt())
		if not isFull("yunu-xinjing") then
			if getCha().force.level < 10 then
				gmFullSkill("force", 19, "gumu/gmlw", "yanxi wall")
			elseif getCha()["yunu-xinjing"].level <=50 then
				gmFullSkill("yunu-xinjing", cost, "gumu/gmws", "zuo bed")
			else
				gmFullSkill("yunu-xinjing", cost, "gumu/gmqs", "yanxi table", "nuo qin")
			end
		elseif not isFull("force") then
			if getCha().force.level <= 50 then
				gmFullSkill("force", 19, "gumu/gmlw", "yanxi wall")
			else
				gmFullSkill("force", 24, "gumu/gmqs", "tan qin")
			end
		elseif not isFull("literate") and getCha().literate.level < 101 then
			gmFullSkill("literate", cost, "gumu/shitou", "read qiang")
		else
			return false
		end
	end
end

function gmFullSkill(skill, cost, addr, cmd, precmd)
	while true do
		go(addr)
		if precmd then
			e(precmd)
		end
		local _hp = hp()
		if _hp.pot == 0 then
			return true
		end
		if _hp.jing3 and _hp.jing3 > cost then
			local count = math.floor(_hp.jing3 / cost)
			count = count > 10 and 10 or count
			e("#" .. count .. " " .. cmd .. ";yun jing")
			set("gmFullSkill")
			addListener([[^你的「\S+」进步了！$]], "s:return 'add'", "gmFullSkill")
			addListener([[^你已经完全读懂了墙上的文字。$]], "s:return 'full'", "gmFullSkill")
			addSetListener("gmFullSkill", "gmFullSkill")
			local result = listen()
			wait(2000)
			if result == "add" then
				cha()
				return "add"
			elseif result == "full" then
				cha()
				return true
			end
		elseif not dq(_hp, _hp.max_neili * 2 - _hp.neili - 1) and _hp.neili < 20 then
			wait(2000)
		else
			e("yun jing")
		end
	end
end