local workerTypes = {
	["������"] = "blade",
	["������"] = "sword",
	["��Ĺ��"] = "sword",
}

function getWorkerType()
	return workerTypes[getParty()]
end

function taojiao()
	go("��ݴ���")
	e("ask men wei about letter")
	go("zhiye/bingqipu1")
	e("give letter to han tiejiang;taojiao " .. getWorkerType(getParty()) .. " from han tiejiang")
end