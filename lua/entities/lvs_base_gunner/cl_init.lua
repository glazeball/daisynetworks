--[[
| This file was obtained through the combined efforts
| of Madbluntz & Plymouth Antiquarian Society.
|
| Credits: lifestorm, Gregory Wayne Rossel JR.,
| 	Maloy, DrPepper10 @ RIP, Atle!
|
| Visit for more: https://plymouth.thetwilightzone.ru/
--]]

include("shared.lua")

function ENT:Think()
end

function ENT:OnRemove()
end

function ENT:Draw()
end

function ENT:DrawTranslucent()
end

function ENT:GetAimVector()
	if self:GetAI() then
		return self:GetNWAimVector()
	end

	local Driver = self:GetDriver()

	if IsValid( Driver ) then
		if self._AimVectorUnlocked then
			local pod = self:GetDriverSeat()

			if IsValid( pod ) then
				return pod:WorldToLocalAngles( Driver:EyeAngles() ):Forward()
			end
		end

		return Driver:GetAimVector()
	else
		return self:GetForward()
	end
end