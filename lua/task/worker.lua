local workerTypes = {
	["…Ÿ¡÷≈…"] = "blade",
	["∂Î·“≈…"] = "sword",
	["π≈ƒπ≈…"] = "sword",
}

function getWorkerType()
	return workerTypes[getParty()]
end

function taojiao()
	go("Œ‰π›¥Û√≈")
	e("ask men wei about letter")
	go("zhiye/bingqipu1")
	e("give letter to han tiejiang;taojiao " .. getWorkerType(getParty()) .. " from han tiejiang")
end