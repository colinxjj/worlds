require("quest/slupgrade")

function gmEat()
	if here().city == "жудои╫" then
		go("╧Шт╟", "╧ед╧")
		e("#4 drink;cai guo;#4 eat guo")
	else
		full()
	end
end