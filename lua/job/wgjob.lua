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
		go("�鷿","���")
		e("#2 xue bo literate")
		wgquestion()
	end
	go("����","���")
	e("ask sun about ���")
	waitbusy()
	e("#2 eat yuji wan;o")
	e("ask men wei about letter")
	waitbusy()
	go("zhiye/bingqipu1")
	e("give letter to han tiejiang;taojiao sword from han tiejiang")
	go("ҩ��", "���ݳ�")
	e("ask yaopu laoban about ����")
	waitbusy()
	return true
end

function wgfull(_hp)
	_hp = _hp or hp()
	if _hp.food >= 80 and _hp.water >= 80 then
		return false
	end
	go("����", "���")
	if _hp.food < 80 then
		e("ask wang chuzi about ʳ��")
		waitbusy()
		e("get rice;#4 eat rice;#2 drop rice")
	end
	if _hp.water < 80 then
		e("ask wang chuzi about ˮ")
		waitbusy()
		e("get dawan cha;#4 drink dawan cha;#2 drop dawan cha")
	end
	wgfull()
	return true
end

function wgaskyjw()
	local _i = i()
	if _i["yuji wan"] == 0 then
		go("˯��", "���")
		e("ask qi fang about ��ʫѡ��")
		listener("^һ��ů�����Ե�������ȫ�����������ָֻ���֪������$")
		move = nil
		go("ҩ��","����")
		e("ask yaopu huoji about ����")
	end
end

function wgquestion()
	go("���ǰԺ")
	wgaskwait("^���Ȼش��˵��Ƶ��������뿪Ҳ���ٰ���$")
	e("answer y")
	while true do
		addListener("^���ʣ�(.+)$","s:return wildcards[1]","wgquestion")
		addListener([[^��ϲ�㣬����ˣ��㱻�����˰�ʮ��ʵս�����һ������д�֡�\n����˵����������Ŀǰһ���ش��˶�ʮ���⣬����˶�ʮ���⣬�ɹ���Ϊ 100.00%����$]],nil,"wgquestion")
		local q = listen()
		if not q then
			break
		end
		local r = string.gsub (string.gsub (Question[q], "%(", "\\("), "%)", "\\)")
		addListener("(A|B|C|D|E)��" .. r .. "\\s+(?:A|B|C|D|E|$)","s:e('answer ' .. wildcards[1])")
		listen()
	end
end

function wgask()
	go("���ǰԺ")
	wgaskwait("^���Ȼش��˵��Ƶ��������뿪Ҳ���ٰ���$")
	e("answer y")
	wgaskwait("^��������Ķ�������˵�����Ǻã����������˽�һ��һЩ������ָ����齣$")
	wgask1()
end

function wgask1()
	e("s;s;ask sun about ѧϰ")
	listener([[^������������йء�ѧϰ������Ϣ��\n���˵�������㲻���Ĵ�����look��������ʲô�����㶼���Լ�����get���š�$]])
	go("���ǰԺ")
	wgaskwait("^��������Ķ�������˵�������ڶ��Լ�����ݵĻ�����һ���˽��˰ɣ�������$")
	wgask2()
end

function wgask2()
	e("nu;ed;n;ask zhou about ѧϰ")
	listener([[^�������ߴ����йء�ѧϰ������Ϣ��\n����˵��������λ\S+Ҳ�Ǹյ������ɣ����ڽ����Ͽɻ��˺ü����ˣ���֪������$]])
	go("���ǰԺ")
	wgaskwait("^��������Ķ�������˵�����˽����������磬�ǲ��Ǹо����Ĳ������뵽����$")
	wgask3()
end

function wgask3()
	e("e;s;ask shen about ѧϰ")
	listener([[^������Ǵ����йء�ѧϰ������Ϣ��\n���˵��������λ\S+�Ǹ����İɡ��Ͽ�ӽ����������ճ��ݵ������ϳ���Ͷ��$]])
	go("���ǰԺ")
	wgaskwait("^��������Ķ�������˵�������߽�������ƾ���¶����ǲ��еģ���Ҫע�����$")
	wgask4()
end

function wgask4()
	e("nu;r;n;#2 e;ask qi about ѧϰ")
	listener([[^�����ݷ������йء�ѧϰ������Ϣ��\n�ݷ�˵������ ��λ\S+����ݶ���������������֮��ɺͱ������� chat$]])
	go("���ǰԺ")
	wgaskwait("^��������Ķ�������˵�������ˣ��������Ѿ����齣Ҳ�˽�Ĳ���ˡ����$")
	wgjob()
end

function wgwork()
	go("��ݴ���")
	e("ask lu about job")
	addListener([[^����³�������йء�job������Ϣ��\n³��˵�����������ݺ�æ����������Ʒ����ù��ߣ�Ȼ��ȥ(���|ľ��|��|��԰|�˵�|ˮ��)(��ɨ��|��ľͷ|����|��Ȳ˵�|����|��ˮ)�ɡ�]],"s:return 'job'","wgwork")
	addListener([[^����³�������йء�job������Ϣ��\n³��˵�����������ֵ��������㣬�㻹����ȥ�����ɡ���$]],"s:return 'question'","wgwork")
	addListener([[^����³�������йء�job������Ϣ��\n³��˵�������㲻���Ѿ����˹����𣿻�����ȥ������$]],"s:return 'job'","wgwork")
	addListener([[^����³�������йء�job������Ϣ��\n³��˵�������㹦���Ѿ�ͦ���ˣ�����û��ʲô�ʺ���Ĺ����ˡ���$]],"s:return 'ok'","wgwork")
	local type = listen()
	if type == "ok" then
		return "ok"
	end
	if type == "question" then
		return "question"
	end
	waitbusy()
	e("se;ask wu about tools")
	addListener("^�⿲������һ.+��$", "s:return true", "tools")
	addListener([[^�����⿲�����йء�tools������Ϣ��\n�⿲˵���������Ѿ����˹����ˣ���û���أ���ô�������ˣ���$]], "s:return true", "tools")
	listen()
	local tools, addr, work = getWork()
	waitbusy()
	e("wield " .. tools)
	go(addr,"���")
	wgwork0(addr,work,tools)
end

function getWork()
	local works = {
		["sao zhou"] = {"���","sao ��"},
		["ju zi"] = {"ľ��","ju ľͷ"},
		["chai dao"] = {"��","pi ��"},
		["piao"] = {"��԰","jiao ˮ"},
		["chu tou"] = {"�˵�","chu ��"},
		["shui tong"] = {"ˮ��","tiao ˮ"},
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
		go(addr,"���")
	end
	if _hp.qi >= 10 and _hp.jingli >= 20 then
		waitbusy()
		addListener([[^(.+)����˵�������ɵĲ������ˣ������(?:��|ȥ)��ʦ��³����(?:��ȥ)?����\(task ok\)�ˣ���$]],"s:return 'ok'","wgwork0")
		addSetListener("wgwork","wgwork0")
		e(work)
		set("wgwork")
		if listen() == "ok" then
			go("��ݴ���")
			e("se;give " .. tools .. " to wu;nw;task ok")
			addListener([[^�㱻�����ˣ�.+�㾭���.+��Ǳ�ܡ�$]])
			listen()
		else
			wgwork0(addr,work,tools)
		end
	else
		local score = score()
		if score.sex == "��" then
			go("����Ϣ��","���")
		else
			go("Ů��Ϣ��","���")
		end
		if sleep() == "fail" then
			wait(10000)
		end
		go(addr,"���")
		wgwork0(addr,work,tools)
	end
end

function wgaskwait(ask)
	addListener(ask)
	e("nu;sd")
	listen(3,wgaskwait,ask)
end
