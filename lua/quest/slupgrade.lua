function slUpgrade()
	log.debug("slUpgrade")
	if getParty() ~= "少林派" then
		return false
	end
	currentJob = nil
	local _, _isLimit = isFullOrLimit()
	if not _isLimit or getTitle() == "少林派第三十五代弟子" then
		return false
	end
	local _hp = hp()
	if getTitle() == "少林派第四十一代弟子" then
		return upToQing()
	elseif getTitle() == "少林派第四十代弟子" and passMuren() then
		return upToDao()
	elseif getTitle() == "少林派第三十九代弟子" then
		return upToHui()
	elseif getTitle() == "少林派第三十八代弟子" then
		return passLuohan()
	elseif getTitle() == "少林派第三十七代弟子" then
		if getCha().literate.level < 120 then
			if isLimit("literate") then
				log.warn("升玄读书写字级别不够，去化缘了")
				if not slHuayuan() then
					log.warn("升玄没钱学读书写字，钓龟去了")
					currentJob = "fishjob"
					fishjob()
				end
			elseif fullPot() then
				xue("literate")
				return slUpgrade()
			else
				return false
			end
		else
			return upToXuan()
		end
	elseif getTitle() == "少林派第三十六代弟子" then
		if getCha().literate.level < 150 then
			if isLimit("literate") then
				log.warn("升渡读书写字级别不够，去化缘了")
				if not slHuayuan() then
					log.warn("升渡没钱学读书写字，钓龟去了")
					currentJob = "fishjob"
					fishjob()
				end
			elseif fullPot() then
				xue("literate")
				return slUpgrade()
			else
				return false
			end
		else
			return upToDu()
		end
	end
end

function slHuayuan()
	local huayuan = getVariable("huayuan")
	if huayuan then
		return false
	end
	local result = find("city/nandajie2", nil, 4, "托钵僧")
	if not result then
		return false
	end
	e("ask tuobo seng about 化缘")
	set("huayuan")
	addListener([[^你向托钵僧打听有关『化缘』的消息。\n托钵僧点了点头，笑道：南无阿弥陀佛！善哉！善哉！$]], "s:return true", "huayuan")
	addListener([[^这里没有这个人。$]], "s:return false", "huayuan")
	addSetListener("huayuan", "huayuan")
	local result = listen()
	if not result then
		return false
	else
		setVariable("huayuan", true)
		if result == "huayuan" then
			return false
		else
			score()
			return true
		end
	end
end

function upPrepare()
	e("jifa all;bei strike;bei finger;set wimpy 80;yq")
	Send("set wimpycmd yun qi\\hp")
end

function slEat()
	go("shaolin/fanting1")
	e("sit chair;knock luo;get qingshui hulu;#4 drink qingshui hulu;get yuanxiao;#4 eat yuanxiao;n;drop qingshui hulu;drop yuanxiao")
end

function slFull()
	slEat()
	upPrepare()
	wait(2000)
	dbj()
end

function upToQing()
	slFull()
	askdml()
	go("shaolin/gchange")
	e("l")
	set("up")
	addListener([[^  少林派第四十代弟子 清无比丘\(Qingwu biqiu\)$]], "s:return 'ok'", "up")
	addSetListener("up", "up")
	if listen() == "ok" then
		e("give damo ling to qingwu biqiu;f qingwu biqiu")
		addListener("^清无比丘交给你一封推荐信。$", nil, "upToQing")
		addListener([[^对方不接受这样东西。$]], nil, "upToQing")
		listen()
		wait(2000)
		prepare()
		go("大悲殿")
		e("give tuijian xin1 to daozheng chanshi;bai daozheng chanshi")
		score()
		return true
	else
		wait(10000)
		return upToQing()
	end
end

function passMuren()
	if getExp() < 10000 then
		return false
	end
	slFull()
	go("罗汉堂一部")
	e("ask chengguan luohan about 木人巷")
	addListener([[^你向澄观打听有关『木人巷』的消息。\n澄观说道：「\S+不是已经闯过木人巷了么，可不要拿老衲开这等玩笑。」$]], "s:return false", "muren")
	addListener([[^你向澄观打听有关『木人巷』的消息。\n澄观正盯着你看，不知道打些什么主意。$]], "s:return true", "muren")
	if not listen() then
		return true
	end
	waitbusy()
	e("yes;yq")
	for i=1, 10 do
		e("n;yq")
	end
	return true
end

function upToDao()
	slFull()
	askdml()
	go("大悲殿")
	e("give damo ling to daozheng chanshi;yq;f daozheng chanshi")
	addListener("^道正禅师交给你一封推荐信。$", nil, "upToDao")
	addListener([[^对方不接受这样东西。$]], nil, "upToDao")
	listen()
	wait(2000)
	prepare()
	go("shaolin/sblu-1")
	e("give tuijian xin2 to huiming zunzhe;bai huiming zunzhe")
	score()
	return true
end

function upToHui()
	slFull()
	askdml()
	go("shaolin/sengshe1")
	e("give damo ling to huihe zunzhe;yq;f huihe zunzhe")
	addListener("^慧合尊者交给你一封推荐信。$", nil, "upToHui")
	addListener([[^对方不接受这样东西。$]], nil, "upToHui")
	listen()
	wait(2000)
	prepare()
	go("般若堂三部")
	e("give tuijian xin3 to chengsi luohan;bai chengsi luohan")
	score()
	return true
end

function passLuohan()
	slFull()
	fangqiSkills(80)
	go("罗汉堂", "少林寺")
	e("ask xuanku dashi about 罗汉大阵")
	addListener([[^你向玄苦大师打听有关『罗汉大阵』的消息。\n玄苦大师说道：「\S+你累犯数戒，身带重罪，我如何能准许你闯罗汉大阵！」$]],"s:return 'jly'", "lhz")
	addListener("^玄苦说道：好吧，我去召集罗汉堂长老，稍候在中央练武场上等你。$","s:return 'ok'", "lhz")
	if listen() == "jly" then
		goJly()
		return passLuohan()
	end
	waitbusy()
	go("般若堂", "少林寺")
	e("ask xuannan dashi about 罗汉大阵")
	waitbusy()
	go("shaolin/hguangz2")
	passLuohan0()
	e("bai xuannan dashi")
	listener("^(玄难大师决定收你为弟子。|你恭恭敬敬地向玄难大师磕头请安，叫道：「师父！」)$")
	score()
	listener("^玄难大师也挥了挥手，般若堂长老们随即也离开练武场。$")
	go("方丈室", "少林寺")
	e("bai xuanci dashi")
	score()
	return true
end

function passLuohan0(i)
	i = i or 0
	if i > 200 then
		return false
	end
	i = i + 1
	addListener("^玄苦大师挥了挥手， 罗汉堂长老们随即鱼贯离开练武场。$")
	e("yq;hp")
	listen(1,passLuohan0,i)
end

function upToXuan()
	log.warn("准备升玄")
	slFull()
	fangqiSkills(120)
	go("罗汉堂", "少林寺")
	e("zong bian;get baitie;jump down")
	local _i = i()
	if _i["baitie"] == 0 then
		wait(10000)
		return upToXuan()
	end
	upToXuan0()
	score()
	return true
end

function upToXuan0()
	go("心禅坪", "少林寺")
	e("give baitie to huiyun zunzhe;ask huiyun zunzhe about 心禅七老")
	addListener([[^你向慧云尊者打听有关『心禅七老』的消息。\n慧云尊者说道：「\S+你累犯数戒，身带重罪，还是先回去忏悔吧！」$]], "s:return 'jly'", "upToXuan")
	addListener([[^你向慧云尊者打听有关『心禅七老』的消息。\n\n慧云说道：好吧，我来启动石阵机关，你决定好就化地为局\(huadi\)准备入阵吧。$]], "s:return 'ok'", "upToXuan")
	if listen() == "jly" then
		goJly()
		return upToXuan0()
	end
	waitbusy()
	e("huadi")
	upToXuan1()
	e("n;bai fangsheng dashi")
	listener("^方生大师决定收你为弟子。$")
	e("eat puti zi")
	addListener("^你吃下一颗菩提子，顿然间只觉一股浩荡的真气直冲顶门……$", nil, "ptz")
	addListener([[^一股暖流发自丹田流向全身，慢慢地你又恢复了知觉……$]], nil, "ptz")
	listen()
end

function upToXuan1(i)
	i = i or 0
	if i > 200 then
		return false
	end
	i = i + 1
	addListener("^慧云大师按动机关， 石人们随即鱼贯离开。$")
	e("yq;hp")
	listen(1,upToXuan1,i)
end

function upToDu()
	slFull()
	go("小屋", "少林寺")
	e("ask murong bo about 心愿")
	addListener([[^你向慕容博打听有关『心愿』的消息。\n慕容博说道：「听师傅偶尔提到昔年他的师兄天明大师奉方丈重托去寻找一部达摩祖师手写的金刚经,$]], nil, "xy")
	addListener([[^你向慕容博打听有关『心愿』的消息。\n慕容博说道：「\S+我不是和你说过了吗\?你当我慕容博什麽人\?」$]], nil, "xy")
	listen()
	go("石经峪")
	local id = getId("游方和尚")
	if not id then
		return false
	end
	e("ask seng ren about name")
	listener([[^你向游方和尚问道：敢问\S+尊姓大名？\n游方和尚正盯着你看，不知道打些什么主意。\n游方和尚说道：「老衲法号早已忘记了.」$]])
	waitbusy()
	e("ask seng ren about here")
	listener([[^你向游方和尚问道：这位\S+，\S+初到贵宝地，不知这里有些什么风土人情？\n游方和尚正盯着你看，不知道打些什么主意。\n游方和尚说道：「此地是石经峪，前朝有位能工巧匠，偶然得到一本焚文金刚经，读过之后$]])
	waitbusy()
	e("ask seng ren about 禅理")
	listener([[^你向游方和尚打听有关『禅理』的消息。\n游方和尚说道：「\S+可以在此默读金刚经,或许能悟彻禅宗之意\.」$]])
	waitbusy()
	if mosong() then
		e("ask seng ren about 禅理")
		listener([[^你向游方和尚打听有关『禅理』的消息。\n游方和尚对你愉快的微笑着。\n游方和尚说道：「从前有个老婆婆，卧在树下休息，忽有大熊要来吃她。老婆婆绕树奔逃$]])
		e("say 救人危难，奋不顾身，虽受牵累，终无所悔。")
		addListener("^你挺胸大声说道：“救人危难，奋不顾身，虽受牵累，终无所悔。”$", "s:return true", "jgj")
		addListener([[^老僧然后微微一笑说道，本有一物相赠\S+，但已经被人取走，下次如果天缘巧合，请再来此讲论佛法。$]], "s:return false", "jgj")
		local result = listen()
		killSr()
		if not result then
			return false
		end
		go("小屋", "少林寺")
		e("ask murong bo about 经书")
		waitbusy()
		e("give fanwen jing to wuming laoseng;bai wuming laoseng")
		listener("^无名老僧决定收你为弟子。$")
		score()
		slHuayuan()
		return true
	end
	return false
end

function mosong()
	local _hp = hp()
	if _hp.jingli < 100 then
		e("yun jingli")
		return mosong()
	end
	e("mosong stone")
	set("mosong")
	addListener("^你正专心研读石坪上的「金刚经」。$", "s:return false", "mosong")
	addListener("^你对着石坪上的「金刚经」琢磨了一回儿，似乎对一些禅理仍有些疑问。$", "s:return 'ok'", "mosong")
	addSetListener("mosong", "mosong")
	local result = listen()
	if result == "mosong" then
		return false
	end
	if not result then
		wait(500)
		return mosong()
	else
		return true
	end
end

function killSr()
	go("天阁斋")
	money(0, 200)
	go("石经峪")
	e("l")
	while true do
		local id, status = getId("游方和尚")
		if not id then
			return false
		end
		if status == "faint" then
			wait(2000)
		else
			e("bei none;jiali 0;set wimpy 100;set wimpycmd halt")
			e("throw silver at seng ren")
			waitbusy()
			e("throw silver at seng ren")
			waitbusy()
			e("throw silver at seng ren")
			perform()
			addListener("^游方和尚「啪」的一声倒在地上，挣扎着抽动了几下就死了。$", "s:return true")
			if listen(60, function() return false end) then
				return true
			end
		end
	end
end

function askdml()
	fangqiSkills(30)
	local _i = i()
	if _i["damo ling"] == 0 then
		go("前殿", "少林寺")
		e("ask qingshan biqiu about 达摩令")
		listener("^你获得一面达摩令。$")
		waitbusy()
		return true
	else
		return false
	end
end

function getConfirmPassword()
	local pwd = GetVariable("confirmPassword")
	if not pwd then
		return false
	end
	return pwd
end

function fangqiSkills(level, skips)
	skips = skips or {}
	local _cha = cha()
	for _, skill in pairs(_cha) do
		if skill.level < level and not ignoreFangqi(skill.id) and not skips[skill.id] then
			e("fangqi " .. skill.id)
			addListener([[^您没有设置确认密码\(help passwd\)，无法放弃\S+。$]], "s:return 'set'", "fangqi")
			addListener([[^您要放弃武功，请输入确认密码：$]], "s:return 'confirmPassword'", "fangqi")
			addListener([[^你放弃了\S+。$]], "s:return 'ok'", "fangqi")
			addListener([[^注意！你将要放弃全部 \S+\(\w+\) ，确定吗？\[Y|N\] >$]], "s:return 'confirm'", "fangqi")
			local result = listen()
			local confirmPassword = getConfirmPassword()
			if result == "set" then
				if not confirmPassword then
					return false
				else
					e("passwd -c;;" .. confirmPassword .. ";" .. confirmPassword)
					return fangqiSkills(level, skips)
				end
			elseif result == "confirmPassword" then
				if not confirmPassword then
					return false
				else
					e(confirmPassword .. ";y")
				end
			elseif result == "confirm" then
				e("y")
			end
			waitbusy()
		end
	end
	cha()
end

function ignoreFangqi(skill)
	local ignores = {
		"yijin-jing", "xuantian-wuji", "shenyuan-gong",
		"force", "literate", "dodge", "parry",
		"buddhism", "art", "hamagong",
		"shaolin-shenfa", "xunlei-jianfa",
	}
	for _, v in pairs(ignores) do
		if v == skill then
			return true
		end
	end
	return false
end

function slTs()
	go("后殿", "少林寺")
	e("ask huikong zunzhe about 挑水")
	wait(3000)
	e("get tong")
	while not slTs0() do
	end
end

function slTs0()
	local _hp = hp()
	if _hp.jingli > _hp.max_jingli / 2 then
		go("佛心井", "少林寺")
		e("fill tong")
		go("后殿", "少林寺")
		e("dao gang")
		set("ts")
		addListener("^你干完活，丢下镣铐和铁桶，伸了个懒腰。$", "s:return false", "ts")
		addSetListener("ts", "ts")
		if not listen() then
			return init()
		else
			return false
		end
	else
		wait(2000)
		e("yun jingli")
		return slTs0()
	end
end
