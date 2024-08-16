--[[
| This file was obtained through the combined efforts
| of Madbluntz & Plymouth Antiquarian Society.
|
| Credits: lifestorm, Gregory Wayne Rossel JR.,
| 	Maloy, DrPepper10 @ RIP, Atle!
|
| Visit for more: https://plymouth.thetwilightzone.ru/
--]]


function ENT:CreateBonePoseParameter( name, bone, ang_min, ang_max, pos_min, pos_max )
	if not istable( self._BonePoseParameters ) then self._BonePoseParameters = {} end

	self._BonePoseParameters[ name ] = {
		bone = (bone or -1),
		ang_min = ang_min or angle_zero,
		ang_max = ang_max or angle_zero,
		pos_min = pos_min or vector_origin,
		pos_max = pos_max or vector_origin,
	}
end

function ENT:SetBonePoseParameter( name, value )
	if name and string.StartsWith( name, "!" ) then
		name = string.Replace( name, "!", "" )
	end

	local EntTable = self:GetTable()

	if not istable( EntTable._BonePoseParameters ) or not EntTable._BonePoseParameters[ name ] then return end

	local data = EntTable._BonePoseParameters[ name ]

	local ang = LerpAngle( value, data.ang_min, data.ang_max )
	local pos = LerpVector( value, data.pos_min, data.pos_max )

	self:ManipulateBoneAngles( data.bone, ang )
	self:ManipulateBonePosition( data.bone, pos )
end