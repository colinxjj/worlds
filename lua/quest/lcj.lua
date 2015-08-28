function getLcj()
	return getStory().lcj
end

function getWaitTime()
	return getVariable("waitTime") or 0
end

local TRY_WAIT_TIME = 3600

function lcjquest(_i)
	if getLcj().quest < 3 then
		szj(_i)
	end
	if getLcj().quest == 3 and getLcj().szj < 3 and getExp() - getLcj().exp >= 50000
		and os.time() - getWaitTime() > TRY_WAIT_TIME then
		szj2()
	end
end

function szj2()
	go("岩石", "大雪山")
	e("ask di yun about 神照经")
	set("szj")
	addListener([[haha]], "s:return 'waittime'", "szj")
	addSetListener("szj", "szj")
	if listen() == "waittime" then
		setVariable("waitTime", os.time())
		return false
	end
	waitbusy()
	story()
end

function szj(_i)
	if getExp() < 1200000 then
		return false
	end
	_i = _i or i()
	if _i["ye juhua"] == 0 then
		return false
	end
	go("小盘古", "扬州城")
	e("give ye juhua to ju you")
	wait(2000)
	_i = i()
	if _i["tong yaoshi"] == 0 then
		return false
	end
	go("后院", "苏州城")
	pass("ling tuisi")
	e("kai men;n")
	e("ask ling shuanghua about 丁典")
	addListener([[^你向凌霜华打听有关『丁典』的消息。\n凌霜华说道：「啊！你是丁大哥的朋友啊！家父在花园里中了剧毒的金波旬花，你进去后屏住呼吸就可以了。」$]], nil, "ljh")
	addListener([[^你向凌霜华打听有关『丁典』的消息。\n凌霜华说道：「我不是告诉你了吗？你记性也太那个了。」$]], nil, "ljh")
	listen()
	waitbusy()
	e("w;get lu juhua;e")
	wait(2000)
	go("监狱", "苏州城")
	e("give lu juhua to ding dian")
	listener([[^丁典递给你一件乌蚕衣。$]])
	waitbusy()
	e("ask ding dian about 狄云")
	go("入幽口", "大雪山")
	waitbusy()
	e("ask bao xiang about 狄云")
	go("雪谷", "大雪山")
	e("ask xuedao laozu about 狄云")
	go("岩石", "大雪山")
	e("give wucan yi to di yun")
	listener("^你定眼一看，竟然是南四奇老二“中平枪”花铁干。$")
	kill("hua tiegan")
	listener("^花铁干嘿嘿叫了几声，嚷道：我先离开了。$")
	waitbusy()
	e("ask di yun about 戚长发")
	waitbusy()
	e("ask di yun about 冤屈")
	waitbusy()
	go("监狱", "苏州城")
	e("ask ding dian about 神照经")
	waitbusy()
	story()
	return true
end

