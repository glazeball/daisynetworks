--[[
| This file was obtained through the combined efforts
| of Madbluntz & Plymouth Antiquarian Society.
|
| Credits: lifestorm, Gregory Wayne Rossel JR.,
| 	Maloy, DrPepper10 @ RIP, Atle!
|
| Visit for more: https://plymouth.thetwilightzone.ru/
--]]

include('shared.lua')
local Mat=Material("models/shiny")
local Glow=Material("sprites/mat_jack_basicglow")
language.Add("ent_rpgrocket","RPG")
function ENT:Initialize()
	self.PrettyModel=ClientsideModel("models/Weapons/w_bullet.mdl")
	self.PrettyModel:SetPos(self:GetPos()+self:GetUp()*1.25)
	self.PrettyModel:SetAngles(self:GetAngles())
	self.PrettyModel:SetParent(self)
	self.PrettyModel:SetNoDraw(true)
	self.PrettyModel:SetModelScale(2,0)
end
function ENT:Draw()
	self:DrawModel()
	if(self:GetDTBool(0))then
		local Pos=self:GetPos()
		local Back=-self:GetRight()
		render.SetMaterial(Glow)
		render.DrawSprite(Pos+Back*20,100,100,Color(255,220,190,255))
	end
end
function ENT:OnRemove()
	--eat a dick
end