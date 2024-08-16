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
A Material List
---------------------------------------------------------------------------]]
ENT.Type = "point"
ENT.Base = "base_point"

ENT.PrintName = "env_stormfox2_materials"
ENT.Author = "Nak"
ENT.Information = "Holds default material-types for the map"
ENT.Category	= "StormFox2"

ENT.Editable = false
ENT.Spawnable = false
ENT.AdminOnly = false

function ENT:Initialize()
end

--[[
	We handle the listing in the mapscanner instead, since we search for this type of entity, and generate the textree there.
]]