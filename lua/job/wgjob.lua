require("job/question")

function wgjob()
	local _hp = hp()
	if _hp.exp < 400 then
		wgask()
		return
	end
	wgaskyjw()
	local r
	repeat
		r = wgwork()
	until r == "question" or r == "ok"
	if r == "question" then
		go("书房","武馆")
		e("#2 xue bo literate")
		wgquestion()
	end
	go("门廊","武馆")
	e("ask sun about 离馆")
	waitbusy()
	e("#2 eat yuji wan;o")
	e("ask men wei about letter")
	waitbusy()
	go("zhiye/bingqipu1")
	e("give letter to han tiejiang;taojiao sword from han tiejiang")
	go("药铺", "扬州城")
	e("ask yaopu laoban about 疗伤")
	waitbusy()
	return true
end

function wgfull(_hp)
	_hp = _hp or hp()
	if _hp.food >= 80 and _hp.water >= 80 then
		return false
	end
	go("厨房", "武馆")
	if _hp.food < 80 then
		e("ask wang chuzi about 食物")
		waitbusy()
		e("get rice;#4 eat rice;#2 drop rice")
	end
	if _hp.water < 80 then
		e("ask wang chuzi about 水")
		waitbusy()
		e("get dawan cha;#4 drink dawan cha;#2 drop dawan cha")
	end
	wgfull()
	return true
end

function wgaskyjw()
	local _i = i()
	if _i["yuji wan"] == 0 then
		go("睡房", "武馆")
		e("ask qi fang about 唐诗选辑")
		listener("^一股暖流发自丹田流向全身，慢慢地你又恢复了知觉……$")
		move = nil
		go("药铺","扬州")
		e("ask yaopu huoji about 玉肌丸")
	end
end

function wgquestion()
	go("武馆前院")
	wgaskwait("^你先回答了狄云的问题再离开也不迟啊！$")
	e("answer y")
	while true do
		addListener("^请问：(.+)$","s:return wildcards[1]","wgquestion")
		addListener([[^恭喜你，答对了！你被奖励了八十点实战经验和一级读书写字。\n狄云说道：「您到目前一共回答了二十八题，答对了二十八题，成功率为 100.00%。」$]],nil,"wgquestion")
		local q = listen()
		if not q then
			break
		end
		local r = string.gsub (string.gsub (Question[q], "%(", "\\("), "%)", "\\)")
		addListener("(A|B|C|D|E)、" .. r .. "\\s+(?:A|B|C|D|E|$)","s:e('answer ' .. wildcards[1])")
		listen()
	end
end

function wgask()
	go("武馆前院")
	wgaskwait("^你先回答了狄云的问题再离开也不迟啊！$")
	e("answer y")
	wgaskwait("^狄云在你的耳边悄声说道：那好，我们先来了解一下一些基本的指令：在书剑$")
	wgask1()
end

function wgask1()
	e("s;s;ask sun about 学习")
	listener([[^你向孙均打听有关『学习』的消息。\n孙均说道：「你不妨四处看看look。地上有什么东西你都可以捡起来get收着。$]])
	go("武馆前院")
	wgaskwait("^狄云在你的耳边悄声说道：现在对自己和武馆的环境有一定了解了吧？不过，$")
	wgask2()
end

function wgask2()
	e("nu;ed;n;ask zhou about 学习")
	listener([[^你向周圻打听有关『学习』的消息。\n周圻说道：「这位\S+也是刚到江湖吧，俺在江湖上可混了好几年了，想知道各派$]])
	go("武馆前院")
	wgaskwait("^狄云在你的耳边悄声说道：了解了整个世界，是不是感觉雄心勃勃，想到江湖$")
	wgask3()
end

function wgask3()
	e("e;s;ask shen about 学习")
	listener([[^你向沈城打听有关『学习』的消息。\n沈城说道：「这位\S+是刚来的吧。赶快加紧练功，早日出馆到江湖上出人投地$]])
	go("武馆前院")
	wgaskwait("^狄云在你的耳边悄声说道：行走江湖，光凭好勇斗狠是不行的，还要注意跟大$")
	wgask4()
end

function wgask4()
	e("nu;r;n;#2 e;ask qi about 学习")
	listener([[^你向戚芳打听有关『学习』的消息。\n戚芳说道：「 这位\S+来武馆多久啦？在这儿练功之余可和别人闲聊 chat$]])
	go("武馆前院")
	wgaskwait("^狄云在你的耳边悄声说道：好了，现在你已经对书剑也了解的差不多了。武馆$")
	wgjob()
end

function wgwork()
	go("武馆大厅")
	e("ask lu about job")
	addListener([[^你向鲁坤打听有关『job』的消息。\n鲁坤说道：「最近武馆很忙，你先在物品房领好工具，然后去(马厩|木房|柴房|菜园|菜地|水房)(打扫马房|锯木头|劈柴|灌溉菜地|锄草|挑水)吧。]],"s:return 'job'","wgwork")
	addListener([[^你向鲁坤打听有关『job』的消息。\n鲁坤说道：「狄云兄弟有事找你，你还是先去找他吧。」$]],"s:return 'question'","wgwork")
	addListener([[^你向鲁坤打听有关『job』的消息。\n鲁坤说道：「你不是已经领了工作吗？还不快去做。」$]],"s:return 'job'","wgwork")
	addListener([[^你向鲁坤打听有关『job』的消息。\n鲁坤说道：「你功夫已经挺高了，这里没有什么适合你的工作了。」$]],"s:return 'ok'","wgwork")
	local type = listen()
	if type == "ok" then
		return "ok"
	end
	if type == "question" then
		return "question"
	end
	waitbusy()
	e("se;ask wu about tools")
	addListener("^吴坎交给你一.+。$", "s:return true", "tools")
	addListener([[^你向吴坎打听有关『tools』的消息。\n吴坎说道：「你已经领了工具了，还没还呢，怎么又来领了？」$]], "s:return true", "tools")
	listen()
	local tools, addr, work = getWork()
	waitbusy()
	e("wield " .. tools)
	go(addr,"武馆")
	wgwork0(addr,work,tools)
end

function getWork()
	local works = {
		["sao zhou"] = {"马厩","sao 马房"},
		["ju zi"] = {"木房","ju 木头"},
		["chai dao"] = {"柴房","pi 柴"},
		["piao"] = {"菜园","jiao 水"},
		["chu tou"] = {"菜地","chu 草"},
		["shui tong"] = {"水房","tiao 水"},
	}
	local _i = i()
	for tools, v in pairs(works) do
		if _i[tools] > 0 then
			return tools, unpack(v)
		end
	end
end

function wgwork0(addr,work,tools)
	local _hp = hp()
	if wgfull(_hp) then
		go(addr,"武馆")
	end
	if _hp.qi >= 10 and _hp.jingli >= 20 then
		waitbusy()
		addListener([[^(.+)管事说道：「干的不错，好了，你可以(?:到|去)大师兄鲁坤那(?:里去)?覆命\(task ok\)了！」$]],"s:return 'ok'","wgwork0")
		addSetListener("wgwork","wgwork0")
		e(work)
		set("wgwork")
		if listen() == "ok" then
			go("武馆大厅")
			e("se;give " .. tools .. " to wu;nw;task ok")
			addListener([[^你被奖励了：.+点经验和.+点潜能。$]])
			listen()
		else
			wgwork0(addr,work,tools)
		end
	else
		local score = score()
		if score.sex == "男" then
			go("男休息室","武馆")
		else
			go("女休息室","武馆")
		end
		if sleep() == "fail" then
			wait(10000)
		end
		go(addr,"武馆")
		wgwork0(addr,work,tools)
	end
end

function wgaskwait(ask)
	addListener(ask)
	e("nu;sd")
	listen(3,wgaskwait,ask)
end
