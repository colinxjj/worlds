function getBigWords()
	require("bigwords")
	return BigWords
end

function recognise(word)
	local words = {}
	local len = (string.len(word[1]) + 1) / 17
	for i=1, len do
		words[i] = {}
		for j=1, 16 do
			words[i][j] = string.sub(word[j], (i - 1) * 17 + 1, i * 17 - 1)
		end
	end
	local w = ""
	for _, v in pairs(words) do
		local r = recognise0(v)
		if r then
			w = w .. r
		end
	end
	return w
end

function recognise0(word)
	for k, v in pairs(getBigWords()) do
		for i=1, 16 do
			if word[i] ~= v[i] then
				break
			end
			if i == 16 then
				return k
			end
		end
	end
	log.error("未识别出文字")
	for i=1, 16 do
		log.error(word[i])
	end
end

function bsend(prefix,word)
	local w = {}
	local n = 1
	local index = 1
	for i=1,string.len(word) do
		local c = string.sub(word,n,i)
		if string.find(c,"%w") or i == n + 1 then
			w[index] = getBigWords()[c]
			n = i + 1
			index = index + 1
		end
	end
	for i=1,16 do
		local line = {}
		for j=1,table.getn(w) do
			line[j] = w[j][i]
		end
		send(prefix,unpack(line))
	end
end

function send(prefix,...)
	local text = "    " .. table.concat({...},"  ")
	if string.len(Trim(text)) > 0 then
		e(prefix .. text)
	end
end
