function aozhou()
	go("粥室")
	e("ask shizhou seng about 熬粥")
	waitbusy()
	aozhou0()
end

function aozhou0()
	go("粥室")
	while true do
		local _hp = hp()
		if _hp.qi >= 15 and _hp.jingli >= 50 then
			waitbusy()
			if _hp.neili >= 20 then
				if _hp.qi < _hp.qi7 and _hp.qi / _hp.max_qi < _hp.jingli / _hp.max_jingli then
					e("yun qi")
				elseif _hp.jingli < _hp.eff_jingli * 7 / 10 then
					e("yun jingli")
				end
			end
			addListener([[^厨房可不是闹着玩的地方，你还是走开吧\! $]], "s:return 'ok'", "aozhou")
			addSetListener("aozhou", "aozhou")
			e("ao 粥")
			set("aozhou")
			if listen() == "ok" then
				wait(2000)
				go("shaolin/fanting1")
				e("sit chair;knock luo;get qingshui hulu;drink qingshui hulu;get yuanxiao;eat yuanxiao;n;drop qingshui hulu;drop yuanxiao")
				saveGoods()
				return
			end
		else
			go("shaolin/sengshe2")
			if sleep() == "fail" then
				wait(10000)
			end
			aozhou0()
			return
		end
	end
end
