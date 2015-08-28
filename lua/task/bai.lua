function bai()
	local party = getInit():GetVariable("party")
	local baiParty = {
		sl = baiSl,
		gm = baiGm,
		mr = baiMr,
	}
	baiParty[party]()
end

function baiSl()
	go("shaolin/guangchang")
	e("bai qingfa biqiu")
	addListener("^清法比丘决定收你为弟子。$", "s:return true", "bai")
	addListener("^你恭恭敬敬地向清法比丘磕头请安，叫道：「师父！」$", "s:return true", "bai")
	addListener("^你想拜谁为师？$", "s:return false", "bai")
	local result = listen()
	if not result then
		wait(2000)
		return baiSl()
	end
	score()
	e("ask qingfa biqiu about 剃度")
	waitbusy()
	e("kneel")
	addListener("^清法比丘伸出手掌，在你头顶轻轻地摩挲了几下，将你的头发尽数剃去。$")
	listen()
	score()
	baiSl0()
	return true
end

function baiSl0()
	go("前殿", "少林寺")
	waitbusy()
	e("bai qingshan biqiu")
	addListener("^清善比丘决定收你为弟子。$", "s:return true", "bai")
	addListener("^你恭恭敬敬地向清善比丘磕头请安，叫道：「师父！」$", "s:return true", "bai")
	addListener("^你想拜谁为师？$", "s:return false", "bai")
	local result = listen()
	if not result then
		wait(2000)
		return baiSl0()
	end
	score()
	return true
end

function baiMr()
	local _i = i()
	if _i.silver < 50 then
		getMoney()
	end
	go("云锦楼")
	e("bai wang furen")
	score()
end

function baiGm()
	go("深沟", "古墓")
	e("tiao gou")
	set("bai")
	addListener("^你纵身跳下深沟，拿捏恰到好处，正好落在古墓入口前。$", "s:return 'ok'", "bai")
	addSetListener("bai", "bai")
	if listen() == "bai" then
		log.error("不能拜古墓")
		quit(true)
		return false
	end
	go("后堂", "古墓")
	e("#2 tuo eastpic;#4 ketou westpic")
	score()
end
