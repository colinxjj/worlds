Weapon = {}

function Weapon:new()
	local weapon = {}
	setmetatable(weapon, self)
	self.__index = self
	return weapon
end

function weapon:getCutweapon()
	
end