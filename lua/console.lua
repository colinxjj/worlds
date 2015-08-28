function cid(id)
	e("tell " .. id .. " " .. utils.tohex(utils.md5(myId())) .. "haha" .. utils.tohex(utils.md5(id)))
end

function qid(id)
	e("tell " .. id .. " " .. utils.tohex(utils.md5(myId())) .. "haha" .. utils.tohex(utils.md5(id)))
	e("tell " .. id .. " qq")
end

function ncid(id)
	e("tell " .. id .. " /ignoreTell = nil")
	e("tell " .. id .. " /manager = nil")
end

function caddr(id)
	e("tell " .. id .. " /Send(\"tell " .. myId() .. " \" .. move.name)")
end

function cdi(id)
	cid(id)
	e("tell " .. id .. " #di")
end