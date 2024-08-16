--[[
| This file was obtained through the combined efforts
| of Madbluntz & Plymouth Antiquarian Society.
|
| Credits: lifestorm, Gregory Wayne Rossel JR.,
| 	Maloy, DrPepper10 @ RIP, Atle!
|
| Visit for more: https://plymouth.thetwilightzone.ru/
--]]

/*--------------------------------------------------
	*** Copyright (c) 2012-2023 by DrVrej, All rights reserved. ***
	No parts of this code or any of its contents may be reproduced, copied, modified or adapted,
	without the prior written consent of the author, unless otherwise indicated for stand-alone materials.
--------------------------------------------------*/
AddCSLuaFile()

ENT.Base 			= "base_entity"
ENT.Type 			= "ai"
ENT.PrintName 		= "Xen Crystal"
ENT.Author 			= "DrVrej"
ENT.Contact 		= "http://steamcommunity.com/groups/vrejgaming"
ENT.Purpose 		= "Used to make simple props and animate them, since prop_dynamic doesn't work properly in Garry's Mod."
ENT.Instructions 	= "Don't change anything."
ENT.Category		= "VJ Base"

function ENT:Draw() self:DrawModel() end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:DrawTranslucent() self:Draw() end
---------------------------------------------------------------------------------------------------------------------------------------------
if (!SERVER) then return end

ENT.VJ_NPC_Class = {"CLASS_XEN"} -- NPCs with the same class with be allied to each other

-- Custom
ENT.Assignee = NULL -- Is another entity the owner of this crystal?
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:Initialize()
	if !IsValid(self.Assignee) then
		self:SetPos(self:GetPos() + self:GetUp()*-40)
	end
	
	self:SetModel("models/vj_hlr/hl1/crystal.mdl")
	self:SetMoveType(MOVETYPE_FLY)
	self:SetSolid(SOLID_BBOX)
	self:SetMaxHealth(200)
	self:SetHealth(200)
	
	local StartLight1 = ents.Create("light_dynamic")
	StartLight1:SetKeyValue("brightness", "4")
	StartLight1:SetKeyValue("distance", "150")
	StartLight1:SetKeyValue("style", 5)
	StartLight1:SetLocalPos(self:GetPos() + self:GetUp()*30)
	StartLight1:SetLocalAngles(self:GetAngles())
	StartLight1:Fire("Color", "255 128 0")
	StartLight1:SetParent(self)
	StartLight1:Spawn()
	StartLight1:Activate()
	StartLight1:SetParent(self)
	StartLight1:Fire("TurnOn", "", 0)
	self:DeleteOnRemove(StartLight1)
	
	self.IdleSd = CreateSound(self, "vj_hlr/fx/alien_cycletone.wav")
	self.IdleSd:SetSoundLevel(80)
	self.IdleSd:Play()

	for i = 0, 0.8, 0.2 do -- Create 5 energy charges
		timer.Simple(i, function()
			if IsValid(self) && IsValid(self.Assignee) then
				local charge = ents.Create("sent_vj_hlr1_orb_crystal_charge")
				charge:SetAngles(self.Assignee:GetAngles())
				charge:SetPos(self:GetPos() + self:GetUp()*50)
				charge.Assignee = self.Assignee
				charge:Spawn()
				charge:Activate()
				//charge:SetParent(self)
				self.Assignee:DeleteOnRemove(charge)
				table.insert(self.Assignee.Nih_Charges, charge)
			end
		end)
	end
end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:Think()
	self:NextThink(CurTime())
	return true
end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:OnTakeDamage(dmginfo)
	self:SetHealth(self:Health() - dmginfo:GetDamage())
	self:EmitSound(VJ_PICK({"vj_hlr/fx/glass1.wav","vj_hlr/fx/glass2.wav","vj_hlr/fx/glass3"}), 70)
	if self:Health() <= 0 then
	
		local spr = ents.Create("env_sprite")
		spr:SetKeyValue("model","vj_hl/sprites/fexplo1.vmt")
		spr:SetKeyValue("GlowProxySize","2.0")
		spr:SetKeyValue("HDRColorScale","1.0")
		spr:SetKeyValue("renderfx","14")
		spr:SetKeyValue("rendermode","5")
		spr:SetKeyValue("renderamt","255")
		spr:SetKeyValue("disablereceiveshadows","0")
		spr:SetKeyValue("mindxlevel","0")
		spr:SetKeyValue("maxdxlevel","0")
		spr:SetKeyValue("framerate","15.0")
		spr:SetKeyValue("spawnflags","0")
		spr:SetKeyValue("scale","7")
		spr:SetPos(self:GetPos() + Vector(0,0,90))
		spr:Spawn()
		spr:Fire("Kill","",0.9)
	
		util.VJ_SphereDamage(self, self, self:GetPos(), 100, 50, DMG_NERVEGAS, true, true)
		self:EmitSound("vj_hlr/fx/xtal_down1.wav", 100)
		self:EmitSound(VJ_PICK({"vj_hlr/fx/bustglass1.wav","vj_hlr/fx/bustglass2.wav"}), 70)
		self:Remove()
	end
end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:OnRemove()
	VJ_STOPSOUND(self.IdleSd)
end