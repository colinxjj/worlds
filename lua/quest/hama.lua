function helpmoney(id)
	go("���ի")
	local _i = i()
	if _i.silver < 50 then
		money(0, 100) 
	end
	e("give 50 silver to " .. id)
	return true
end

function getMoney()
	local guard = getGuard()
	if not guard then
		return
	end
	go("���ի")
	e("unset no_accept")
	e("tell " .. guard .. " helpmoney")
	local result = listener([[^[^\s-]{0,8}������ʮ��������$]], "s:return 'ok'", 60, function() return "timeout" end)
	e("set no_accept")
	if result == "ok" then
		return true
	else
		return false
	end
end

function hamaQuest()
	local _score = score()
	local kar = sets().kar
	if kar ~= 30 then
		return false
	end
	if _score.age.year >= 16 and _score.age.year < 18 then
		log.error("��Ե�� 30��׼��ȥ�� hama")
	end
end