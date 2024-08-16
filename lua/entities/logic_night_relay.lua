--[[
| This file was obtained through the combined efforts
| of Madbluntz & Plymouth Antiquarian Society.
|
| Credits: lifestorm, Gregory Wayne Rossel JR.,
| 	Maloy, DrPepper10 @ RIP, Atle!
|
| Visit for more: https://plymouth.thetwilightzone.ru/
--]]

--[[-------------------------------------------------------------------------
A night relay
---------------------------------------------------------------------------]]
ENT.Type = "point"

ENT.PrintName = "logic_night_relay"
ENT.Author = "Nak"
ENT.Information = "Gets fired when it is daytime"
ENT.Category	= "StormFox2"

ENT.Editable = false
ENT.Spawnable = false
ENT.AdminOnly = false

function ENT:Initialize()
end

--[[
	0 : "When lightlvl change."
	1 : "When it turns night."
]]
function ENT:GetTriggerType()
	return self.trigger_type or 0
end

function ENT:Trigger()
	self:TriggerOutput("OnTrigger")
end

function ENT:KeyValue( k, v )
	if k == "OnTrigger" then
		self:StoreOutput( k, v )
	elseif k == "trigger_type" then
		self.trigger_type = tonumber(v)
	end
end