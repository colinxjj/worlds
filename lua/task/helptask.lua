function goHelp()
	help = true
end

function helperwait()
	while not help do
		full()
		go("�����")
		wait(30000)
	end
end