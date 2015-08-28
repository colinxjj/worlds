function jsjob()
	go("云锦楼")
	e("ask wang furen about job")
	addListener([[^你向王夫人打听有关『job』的消息。\n王夫人说道：「你不是已经领了工作么，还不快去做！」$]],"s:return true","job")
	addListener([[^你向王夫人打听有关『job』的消息。\n王夫人说道：「庄门口的茶花最近开的不盛，该好好照料一下了，你去找严婆婆，听她安排吧。」$]],"s:return true","job")
	addListener([[^你向王夫人打听有关『job』的消息。\n王夫人说道：「我正在美容，你过一会再来吧。」$]],"s:return false","job")
	local job = listen()
	if not job then
		waitbusy()
		e("s")
		waitjob()
		return false
	end
	go("花肥房")
	e("ask yan mama about 工具")
	listener([[^严妈妈交给你一件工具。$]])
	waitbusy()
	e("wield piao")
	go("花丛中")
	while true do
		local _hp=hp()
		if _hp.qi < 30 or _hp.jingli < 50 then
			wait(5000)
		else
			e("jiaoshui")
			addListener([[^你从水缸中舀了瓢水，小心翼翼的把水浇在.+上。$]],"s:return false","js")
			addListener([[^你还没有去要工具，怎么干活呀？$]],"s:return 'notools'","js")
			addListener([[^(你觉得水已经浇的差不多了，可以回去复命了。|你已经干完了，还在这里干吗？想把花浇死呀？)$]],"s:return true","js")
			local r=listen()
			waitbusy()
			if r == "notools" then
				jsjob()
				return
			elseif r then
				go("花肥房")
				e("give piao to yan mama")
				go("云锦楼")
				e("ask wang furen about ok")
				waitbusy()
				e("s;#3 drink")
				go("厨房","曼佗罗山庄")
				e("get ji;get ya;get yuyuan;eat ji;eat ya;eat yuyuan")
				xue("shenyuan-gong")
				xue("force")
				xue("finger")
				xue("finger")
				local rmb=i()
				if rmb.silver > 300 then
					go("聚宝斋")
					money(0, 20)
				end
				jsjob()
				return
			end
		end
	end
end