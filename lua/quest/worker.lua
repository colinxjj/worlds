function lookSign()
	if not IsPluginInstalled("4e38a3aade8c0892c5f19e86") then
		LoadPlugin(GetInfo(60) .. "escape.xml")
	end
	EnablePlugin("4e38a3aade8c0892c5f19e86", true)
	local signs = {
		{"******--*****..*", "-----------/", "*******    **", "**********###*", "***********/", "------     **"},
		{"*## *  *#", "***  **", "\\  |     --", "\\ |  //", "\\   * //", "* | *"},
		{"%%%%%%%%%%%%%%%%", "\\\\**************", "\\---    ------", "****----------", "\\\\\\***********", "** //   ------"},
		{"*#*#*#**", "---   // \\\\    |", "**  ** *\\\\", "#/  *#    #\\", "/*** \\\\**      **", "***  *        \\"},
	}
	local ways = {"east", "south", "west", "north"}
	local numbers = {}
	e("l sign")
	set("sign")
	addListener([[^请注意第(\S+)个箭头：$]], "s:return trans(wildcards[1])", "sign")
	addListener("^请注意下列箭头：$", "s:return 1", "sign")
	addListener("^你刚才难道没有看清楚吗？$", "s:return 'wait'", "sign")
	local order = listen()
	if order == "wait" then
		wait(2000)
		return lookSign()
	end
	while true do
		addListener([[^(.+\[D.+)$]], "s:return wildcards[1]", "sign", trigger_flag.OmitFromOutput)
		addListener("^$", nil, "sign", trigger_flag.OmitFromOutput)
		addSetListener("sign", "sign")
		local str = listen()
		if str then
			result = escapeSign(str)
			for k, v in pairs(signs) do
				for _, s in pairs(v) do
					reg = s
					reg = string.gsub(reg, "%*", "%%*")
					reg = string.gsub(reg, "%-", "%%-")
					reg = string.gsub(reg, "%.", "%%.")
					local index = string.find(result, reg)
					if index then
						table.insert(numbers, {index, k - 1})
					end
				end
			end
			if str == "sign" then
				break
			end
		end
	end
	table.sort(numbers, function(a, b)
		return a[1] < b[1]
	end)
	local r = ""
	for _, v in pairs(numbers) do
		r = r .. v[2]
	end
	EnablePlugin("4e38a3aade8c0892c5f19e86", false)
	return ways[numbers[order][2] + 1]
end


local signLength = 100
function escapeSign(text)
	local line = {}
	for i=1, signLength do
		line[i] = " "
	end
	local current = 1
	local n = 1
	while true do
		if isLeft(text, n) then
			current = left(current)
			n = n + 1
		elseif isRight(text, n) then
			current = right(current)
			n = n + 1
		else
			line[current] = string.sub(text, n, n)
			current = right(current)
		end
		n = n + 1
		if n > string.len(text) then
			break
		end
	end
	return table.concat(line, "")
end

function isLeft(text, i)
	if string.sub(text, i, i+1) == "[D" then
		return true
	end
	return false
end

function isRight(text, i)
	if string.sub(text, i, i+1) == "[C" then
		return true
	end
	return false
end

function left(current)
	if current == 1 then
		return 1
	else
		return current - 1
	end
end

function right(current)
	if current == signLength then
		return signLength
	else
		return current + 1
	end
end

function randomGo(addrs)
	local _, addr = randomGet(addrs)
	go(addr)
end

local caikuangAddrs = {
	"zhiye/caikuang-chang11",
	"zhiye/caikuang-chang12",
	"zhiye/caikuang-chang13",
}
function caikuang()
	while true do
		full()
		if not at("采矿场") then
			randomGo(caikuangAddrs)
		end
		local kuangshi = getKuangshi()
		waitbusy()
		e("caikuang " .. kuangshi)
		addListener("^你必须装备铁锹才能采矿。$", "s:return 'noqiao'", "caikuang")
		addListener([[^你根本就不会采矿！是不是先学习一些采矿技能\(caikuang\)再来挖掘啊？！$]], "s:return 'nocaikuang'", "caikuang")
		addListener("^你挖了好长一段时间，但是什么都没有得到。$", "s:return false", "caikuang")
		addListener("^你刚刚采矿结束，感觉过于劳累！$", "s:return 'wait'", "caikuang")
		addListener([[^你挖了好长一段时间，总算找到一块\S+。$]], "s:return 'ok'", "caikuang")
		addListener("^你已经把在这里你可以发现的矿石都挖走了！$", "s:return 'lack'", "caikuang")
		local result = listen()
		if result == "noqiao" then
			getQiao()
			e("wield tieqiao")
		elseif result == "nocaikuang" then
			xue("caikuang")
		elseif result == "wait" then
			wait(2000)
		elseif result == "lack" then
			randomGo(caikuangAddrs)
		end
		if level("caikuang") < 220 then
			e("drop " .. kuangshi)
		end
	end
end

function level(skill)
	return getCha()[skill].level
end

function at(name, city)
	local _here = here()
	if (not name or name == _here.name) and
		((not city or _here.city == city) or (city == "" and not _here.city)) then
		return true
	else
		return false
	end
end

function getQiao()
	while not have("tieqiao", 1) do
		ensureMoney(nil, 100)
		if find("city/dongdajie0", nil, 4, "采矿师傅") then
			if buy("tieqiao") then
				return true
			end
		end
	end
end

function have(goods, count, _i)
	local _i = _i or i()
	if _i[goods] < count then
		return false
	else
		return true
	end
end

function ensureMoney(coin, silver, gold, cash)
	local _i = i()
	if not coin or _i.coin >= coin then
		coin = false
	end
	if not silver or _i.silver >= silver then
		silver = false
	end
	if not gold or _i.gold >= gold then
		gold = false
	end
	if not cash or _i.cash >= cash then
		cash = false
	end
	if coin or silver or gold or cash then
		go("天阁斋")
		money(coin, silver, gold, cash)
	end
end

function getKuangshi()
	local level = getCha().caikuang.level
	if level < 40 then
		return "qingtong"
	elseif level < 80 then
		return "shengtie"
	elseif level < 120 then
		return "ruantie"
	elseif level < 170 then
		return "lushi"
	elseif level < 220 then
		return "liuhuashi"
	elseif level < 270 then
		return "ruanyin"
	elseif level < 330 then
		return "jintie"
	elseif level < 390 then
		return "shentie"
	else
		return "xuantie"
	end
end

local nongtianAddrs = {
	"zhiye/nongtian11",
	"zhiye/nongtian12",
	"zhiye/nongtian13",
}

local sanglinAddrs = {
	"zhiye/sanglin11",
	"zhiye/sanglin12",
	"zhiye/sanglin13",
}

function getQiao2()
	while not have("tieqiao", 1) do
		ensureMoney(nil, 100)
		if find("city/dongdajie0", nil, 4, "采矿师傅") then
			if buy("tieqiao") then
				return true
			end
		end
	end
end

function buyNongsang()
	local goods = getNongsang()
	while not have(goods, 1) do
		ensureMoney(nil, nil, 3)
		if find("changan/northjie2", nil, 4, "养蚕婆婆") then
			e("follow yangcan popo")
			for i=1,4 do
				buy(goods)
				wait(1000)
			end
			break
		end
	end
	e("follow none")
end

function buyNongsangTools()
	local _i = i()
	local goods, type = getNongsang()
	if type == "nongtian" then
		while not have("tieqiao", 1, _i) do
			ensureMoney(nil, nil, 1)
			if find("changan/northjie2", nil, 4, "养蚕婆婆") then
				e("follow yangcan popo")
				if buy("tieqiao") then
					break
				end
			end
		end
		while not have("lian dao", 1, _i) do
			ensureMoney(nil, nil, 1)
			if find("changan/northjie2", nil, 4, "养蚕婆婆") then
				e("follow yangcan popo")
				if buy("lian dao") then
					break
				end
			end
		end
	else
		while not have("sao ba", 1, _i) do
			ensureMoney(nil, nil, 1)
			if find("changan/northjie2", nil, 4, "养蚕婆婆") then
				e("follow yangcan popo")
				if buy("sao ba") then
					break
				end
			end
		end
		while not have("jian dao", 1, _i) do
			ensureMoney(nil, nil, 1)
			if find("changan/northjie2", nil, 4, "养蚕婆婆") then
				e("follow yangcan popo")
				if buy("jian dao") then
					break
				end
			end
		end
	end
end

function nongsang()
	local index = 1
	while true do
		if cha().nongsang.level < 50 then
			if hp().pot > 10 then
				xue("nongsang")
			else
				zcjob()
			end
		else
			full()
			buyNongsang()
			buyNongsangTools()
			local goods, type, stuff = getNongsang()
			if stuff ~= "tiancansi" then
				e("drop " .. stuff)
			end
			index = index % 3 + 1
			if type == "nongtian" then
				nongtian(index)
			else
				sanglin(index)
			end
		end
	end
end

function nongtian(index)
	local addr = nongtianAddrs[index]
	go(addr)
	wait(2000)
	zhongzhi()
	addListener([[^你根本就不会农桑技能啊！是不是先学习一些农桑技能\(nongsang\)再来种植啊？！$]], "s:return 'nonongsang'", "nongsang")
	addSetListener("nongsang", "nongsang")
	local result = listen()
	waitbusy()
	if result == "nonongsang" then
		xue("nongsang")
	end
end

function sanglin(index)
	local addr = sanglinAddrs[index]
	go(addr)
	wait(2000)
	yangcan()
	addListener([[^你根本就不会农桑技能啊！是不是先学习一些农桑技能\(nongsang\)再来种植啊？！$]], "s:return 'nonongsang'", "nongsang")
	addSetListener("nongsang", "nongsang")
	local result = listen()
	waitbusy()
	if result == "nonongsang" then
		xue("nongsang")
	end
end

function zhongzhi()
	local goods = getNongsang()
	e("unwield tieqiao;unwield lian dao;unwield sao ba;unwield jian dao")
	e("jiaoshui;wield tieqiao;shifei;zhongzhi " .. goods)
	e("unwield tieqiao;wield lian dao;shouge")
	set("nongsang")
end

function yangcan()
	local goods = getNongsang()
	e("unwield tieqiao;unwield lian dao;unwield sao ba;unwield jian dao")
	e("weishi;yangcan " .. goods)
	e("wield sao ba;qingsao")
	e("unwield sao ba;wield jian dao;chousi")
	set("nongsang")
end

function getNongsang()
	local level = getCha().nongsang.level
	if level < 40 then
		return "mianhua zhongzi", "nongtian", "mian hua"
	elseif level < 80 then
		return "yama zhongzi", "nongtian", "ya ma"
	elseif level < 120 then
		return "dama zhongzi", "nongtian", "da ma"
	elseif level < 170 then
		return "zhuma zhongzi", "nongtian", "zhu ma"
	elseif level < 220 then
		return "can zi", "sanglin", "cansi"
	elseif level < 270 then
		return "mumian zhongzi", "nongtian", "mumianhua"
	elseif level < 330 then
		return "yucan zi", "sanglin", "yucansi"
	elseif level < 390 then
		return "bingcan zi", "sanglin", "bingcansi"
	else
		return "tiancan zi", "sanglin", "tiancansi"
	end
end

function goBz()
	e("use fire")
	local en, w, n, s = listener([[^你又暗里推算一番，原来如此：东行(\S+)步，西行(\S+)，北折(\S+)，南回(\S+)即可！$]], "s:return trans(wildcards[1]), trans(wildcards[2]), trans(wildcards[3]), trans(wildcards[4])")
	e("#" .. tostring(en) .. " e")
	e("#" .. tostring(w) .. " w")
	e("#" .. tostring(n) .. " n")
	e("#" .. tostring(s) .. " s")
end

function repairArmor(armor)
	while not have("jian dao", 1) do
		ensureMoney(nil, nil, 3)
		if find("changan/northjie2", nil, 4, "养蚕婆婆") then
			e("follow yangcan popo")
			buy("jian dao")
		end
	end
	goNofightRoom()
	e("wield jian dao;repair " .. armor)
	addListener([[^你带的零钱不够了！你需要(\S+)黄金\S*修补费用。$]], "s:return 'money', trans(wildcards[1])", "repair")
	addListener([[^你仔细的修补\S+，总算大致恢复了它的原貌。$]], "s:return 'ok'", "repair")
	local result, gold = listen()
	if result == "money" then
		ensureMoney(nil, nil, gold + 1)
		return repairArmor(armor)
	end
	waitbusy()
	e("unwield jian dao")
end
