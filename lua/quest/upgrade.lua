require("quest/slupgrade")

function gmEat()
	if here().city == "����ɽ" then
		go("��԰", "��Ĺ")
		e("#4 drink;cai guo;#4 eat guo")
	else
		full()
	end
end