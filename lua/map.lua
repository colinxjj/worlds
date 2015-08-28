-- SjRoom class

SjRoom = {ways = {},lengths = {},nolooks = {}}

function SjRoom:new(room)
	local room = room or {}
	setmetatable(room,self)
	self.__index = self
	return room
end

function SjRoom:length(route)
	local length = self.lengths[route] or 1
	local isStr = length and type(length) == "string" or false
	if isStr then
		return loadstring(length)()
	else
		return length
	end
end

-- SjMap class

SjMap = {count = 0}

function SjMap:new(map)
	local map = map or {rooms={}}
	setmetatable(map,self)
	self.__index = self
	return map
end

function SjMap:addRoom(room)
	self.rooms[room.id]=SjRoom:new(room)
	self.count = self.count + 1
end

function SjMap:room(id)
	return map.rooms[id]
end

function SjMap:getMinRoom(pending)
	local processRoomId
	local minDistance
	for roomId, length in pairs(pending) do
		if minDistance == nil or length < minDistance then
			minDistance = length
			processRoomId = roomId
		end
	end
	if processRoomId then
		pending[processRoomId] = nil
	end
	return processRoomId
end

function SjMap:process(red,distances,pending,parents,from)
	red[from] = true
	local fromRoom = self:room(from)
	for route, to in pairs(fromRoom.ways) do
		local routeLength = fromRoom:length(route)
		if routeLength then
			local length = distances[from] + routeLength
			local distance = distances[to]
			if distance == nil or length < distance then
				distances[to] = length
				if red[to] == nil then
					pending[to] = length
				end
				parents[to] = {parent = from, route = route}
			end
		end
	end
end

function SjMap:init(red,distances,pending,parents,from)
	red[from] = true
	distances[from] = 0
	parents[from] = {parent = from, route = ""}
	self:process(red,distances,pending,parents,from)
end

local cache = Cache:new(1)

function SjMap:lookPath(from)
	local value = cache:get(from)
	if not value then
		local red = {}
		local pending = {}
		local distances = {}
		local parents = {}
		self:init(red,distances,pending,parents,from)
		for i = 0, self.count do
			local processRoomId = self:getMinRoom(pending)
			if processRoomId then
				self:process(red,distances,pending,parents,processRoomId)
			else
				break
			end
		end
		-- cache last parents and distances
		value = {}
		value.parents = parents
		value.distances = distances
		cache:add(from, value)
	end
	return value.parents, value.distances
end

function SjMap:getAroundRooms(name, city, length, type)
	local rooms = map:getRooms(name, city, type)
	local allRooms = {}
	for _, id in pairs(rooms) do
		local aroundRooms = map:getAroundRooms0(id, length)
		for _, aroundRoom in pairs(aroundRooms) do
			if not map.rooms[aroundRoom].nofind then
				allRooms[aroundRoom] = true
			end
		end
	end
	return allRooms
end

function SjMap:getAroundRooms0(path, length)
	if length == 0 then
		return {path}
	end
	local parents, distances = map:lookPath(path)
	local rooms = {}
	for k, v in pairs(distances) do
		if v <= length then
			table.insert(rooms, k)
		end
	end
	return rooms
end

function SjMap:getPath(from, to, try)
	TraceOut("SjMap:getPath： from = " .. from .. " ，to = " .. to)
	local parents,distances = map:lookPath(from)
	local length = distances[to]
	local path = {"set go;unset go;"}
	local room = to
	repeat
		local parentInfo = parents[room]
		local fromRoom = map.rooms[from]
		local toRoom = map.rooms[to]
		if parentInfo == nil then
			if not try then
				log.warn("从：" .. save(fromRoom) .. " 至：" .. save(toRoom) .. "，无法到达。")
			end
			return false
		end
		local parent = parentInfo.parent
		local route = parentInfo.route
		local parentRoom = map.rooms[parent]
		local precmds = parentRoom.precmds
		local precmd = precmds and precmds[route]
		local postcmds = parentRoom.postcmds
		local postcmd = postcmds and postcmds[route]
		local blocks = parentRoom.blocks
		local block = blocks and blocks[route]
		if postcmd then
			table.insert(path,1,";")
			table.insert(path,1,postcmd)
		end
		table.insert(path,1,";")
		table.insert(path,1,route)
		if precmd then
			table.insert(path,1,";")
			table.insert(path,1,precmd)
		end
		if block then
			for _, b in pairs(block) do
				local sameParty = b.party and b.party == getParty()
				local cond = b.cond and b.cond()
				if not sameParty and not cond then
					if getExp() < b.exp then
						if not try then
							log.warn("从：" .. save(fromRoom) .. " 至：" .. save(toRoom) .. "，有：" .. b.id .. "，挡路。")
						end
						return false
					else
						table.insert(path,1,";")
						table.insert(path,1,"#pass " .. b.id)
					end
				end
			end
		end
		room = parent
	until room == from
	table.insert(path,1,";")
	table.insert(path,1,"halt")
	table.insert(path,1,";")
	table.insert(path,1,"set brief")
	local p = table.concat(path)
	return addWait(p), length
end

function SjMap:getMinPath(from, toRooms, force)
	local minLength
	local minPath
	local room
	for id in pairs(toRooms) do
		local path, length = map:getPath(from, id, force)
		if not path and not force then
			return false
		end
		if path and (minLength == nil or length < minLength) then
			minLength = length
			minPath = path
			room = id
		end
	end
	return minPath, room, minLength
end

function SjMap:getHerePath(here,isMove)
	local herePath = {}
	for k,v in pairs(map.rooms) do
		if sameRoom(here,v,isMove) then
			table.insert(herePath,k)
		end
	end
	if table.getn(herePath) == 0 then
		move = nil
		hereId = nil
		log.error("未找到当前位置：" .. save(here))
		return nil
	end
	return herePath
end

function SjMap:getRooms(name, city, type)
	local type = type or "all"
	local isLookCity = type == "all" or type == "look"
	local isTaskCity = type == "all" or type == "task"
	if string.find(name,"/") then
		return {name}
	end
	local isNameFw = string.find(name,"^%l+$")
	local isCityFw = city and string.find(city,"^%l+$")
	local rooms = {}
	for id,room in pairs(map.rooms) do
		local roomName = isNameFw and getFirstWord(room.name) or room.name
		if roomName == name then
			if not city then
				table.insert(rooms,id)
			else
				local lookCity = isCityFw and getFirstWord(getLookCity(room.id)) or getLookCity(room.id)
				local taskCity = isCityFw and getFirstWord(getCity(room.id)) or getCity(room.id)
				if (isLookCity and city == lookCity) or (isTaskCity and city == taskCity) or (room.outdoor and room.outdoor == city) then
					table.insert(rooms,id)
				end
			end
		end
	end
	if count(rooms) == 0 then
		TraceOut("没找到房间：name = " .. name .. " , city = " .. tostring(city) .. " , type = " .. type)
	end
	return rooms
end

function SjMap:getAddr(addr)
	local name, city = map:getAddr0(addr, citys)
	if name then
		return name, city
	else
		name, city = map:getAddr0(addr, lookCitys)
		if name then
			return name, city
		else
			return map:getAddr0(addr, otherCitys)
		end
	end
end

function SjMap:getAddr0(addr, citys)
	for k,v in pairs(citys) do
		local _,_,city,name = string.find(addr,"^(" .. v .. ")(.+)$")
		if city and count(map:getRooms(name,city)) > 0 then
			return name, city
		end
	end
	return false
end

function SjMap:getNofightRooms()
	local nofightRooms = {}
	for k, v in pairs(map.rooms) do
		if v.no_fight then
			nofightRooms[v.id] = true
		end
	end
	return nofightRooms
end

-- Init Rooms
map = SjMap:new()

function Room(room)
	local r = SjRoom:new(room)
	local group = string.find(r.id, "group/")
	if group == 1 then
		r.nolook = true
	end
	map:addRoom(r)
end

require("rooms")
