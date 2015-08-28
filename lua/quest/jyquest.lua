function jyquest()
	full(true)
	if getCha()["qimen-bagua"].level < 50 then
		log.error("奇门八卦不够，无法解九阴")
		return false
	end
	if getCha()["qimen-bagua"].level < 90 then
		go("山顶", "桃花岛")
		while true do
			local _cha = cha()
			if _cha["qimen-bagua"].level < 90 then
				db()
				e("#10 du bei;yun jing")
				wait(1000)
			else
				break
			end
		end
	end
	go("积翠亭")
	e("ask huang yaoshi about 周伯通")
	go("thd/neishi1")
	e("ask huang rong about 周伯通")
	go("岩洞", "桃花岛")
	e("give fan he to zhou botong") 
	e("ask zhou botong about 故事")
	waitbusy()
	e("ask zhou botong about 后来怎样")
	waitbusy()
	e("ask zhou botong about 九阴真经")
	waitbusy()
	e("answer n")
	jyanswer()
	listener("^周伯通说道：「这样吧，我教你点好玩的功夫！」$")
	e("ask zhou botong about 功夫")
end

function jyanswer()
	while true do
		addListener([[^用 answer 来回答，回答请使用拼音输入，不要用汉字。\n周伯通说道：「(\S+)」$]], "s:return wildcards[1]", "jyanswer")
		addListener("^周伯通说道：「原来我们是同道中人啊。」$", "s:return false", "jyanswer")
		local question = listen()
		if not question then
			return true
		end
		e("answer " .. questions[question])
	end
end

questions = {
	["我全真教的内功心法是什么？"] = "xiantian-gong",
	["黄老邪的那厉害指法是什么？"] = "tanzhi-shentong",
	["段家有门以指为剑的剑法，叫什么名字？"] = "liumai-shenjian",
	["铁掌帮的著名轻功是？"] = "shuishangpiao",
	["神龙洪老头的暗器是叫做什么？"] = "hansha-sheying",
	["老毒物的奇怪内功是什么？"] = "hamagong",
	["老叫化和郭兄弟都会的掌法是什么？"] = "xianglong-zhang",
	["少林和尚们的内功是什么？"] = "yijin-jing",
	["峨嵋的剑法是什么？"] = "huifeng-jian",
	["武当张老头创出的软绵绵拳法叫什么名字？"] = "taiji-quan",
	["明教张无忌那小子的内功是什么？"] = "jiuyang-shengong",
	["星宿派恶名昭彰的功夫是什么？"] = "huagong-dafa",
	["慕容家的家传特殊招架技能是？"] = "douzhuan-xingyi",
	["明教前教主阳顶天练什么功夫练到走火而死的？"] = "qiankun-danuoyi",
	["黄老邪的箫乐是由他的内功而来。这个内功的名字是？"] = "bihai-chaosheng",
	["金蛇郎君夏雪宜的剑法叫什么名称？"] = "jinshe-jianfa",
	["有种剑法，练了使人绝子绝孙。这个剑法的名字是什么？"] = "pixie-jian",
	["华山气宗的镇山之宝是什么？"] = "zixia-gong",
	["我老顽童的自创拳招是什么啊？"] = "kongming-quan",
	["华山剑宗的高级剑法是？"] = "dugu-jiujian",
	["古墓派的内功心法是什么？"] = "yunu-xinjing",
	["我求杨过这小子教我的掌法叫做什么名称？"] = "anran-zhang",
	["一灯大师的拿手绝学是什么？"] = "yiyang-zhi",
	["老叫化教黄蓉那小丫头的是什么拳法？"] = "xiaoyaoyou",
	["古墓一派的特殊拳法，叫什么名称？"] = "mainu-quan",
	["黄老邪除了教杨过弹指神通，还教了什么武功？"] = "yuxiao-jian",
	["瑛姑的高明身法是什么？"] = "niqiugong",
	["黄蓉的家传手法叫什么名字？"] = "lanhua-shou",
	["桃花的狂风绝技要以什么和旋风扫叶腿配合施展？"] = "luoying-zhang",
	["峨嵋的灭绝师太曾经以那种功夫将张无忌打的倒地不起？"] = "jieshou-jiushi",
}