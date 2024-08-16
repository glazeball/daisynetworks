--[[
| This file was obtained through the combined efforts
| of Madbluntz & Plymouth Antiquarian Society.
|
| Credits: lifestorm, Gregory Wayne Rossel JR.,
| 	Maloy, DrPepper10 @ RIP, Atle!
|
| Visit for more: https://plymouth.thetwilightzone.ru/
--]]

AddCSLuaFile()

ENT.Base = "arccw_uc_40mm_he"
ENT.PrintName = "40mm Dummy Grenade"

ENT.GrenadeDamage = 50
ENT.GrenadeRadius = 150
ENT.ExplosionEffect = false
ENT.Scorch = "PaintSplatBlue"

function ENT:DoDetonation()
    --[[]
    local effectdata = EffectData()
    effectdata:SetOrigin(self:GetPos())
    effectdata:SetMagnitude(4)
    effectdata:SetScale(1)
    effectdata:SetRadius(4)
    effectdata:SetNormal(self:GetVelocity():GetNormalized())
    util.Effect("Sparks", effectdata)
    ]]
    self:EmitSound("physics/cardboard/cardboard_box_break2.wav", 80, 110)
end

function ENT:DoImpact(ent)
end

if CLIENT then
    function ENT:Think()
        self.NextSmoke = self.NextSmoke or CurTime()
        if self.SmokeTrail and self.NextSmoke < CurTime() then
            self.NextSmoke = CurTime() + 0.025 / math.Clamp(self:GetVelocity():Length() / 1000, 1, 5)
            local emitter = ParticleEmitter(self:GetPos())
            if not self:IsValid() or self:WaterLevel() > 2 then return end
            if not IsValid(emitter) then return end
            local smoke = emitter:Add("particle/smokestack", self:GetPos())
            smoke:SetVelocity(VectorRand() * 2)
            smoke:SetGravity(Vector(0, 0, -3))
            smoke:SetDieTime(math.Rand(2, 3))
            smoke:SetStartAlpha(150)
            smoke:SetEndAlpha(0)
            smoke:SetStartSize(math.Rand(3, 5))
            smoke:SetEndSize(20)
            smoke:SetRoll(math.Rand(-180, 180))
            smoke:SetRollDelta(math.Rand(-0.1, 0.1))
            smoke:SetColor(150, 150, math.Rand(220, 255))
            smoke:SetAirResistance(5)
            smoke:SetPos(self:GetPos())
            smoke:SetLighting(false)
            emitter:Finish()
        end
    end

    function ENT:OnRemove()
        local emitter = ParticleEmitter(self:GetPos())
        if not self:IsValid() or self:WaterLevel() > 2 then return end
        if not IsValid(emitter) then return end
        for i = 1, 10 do
            local smoke = emitter:Add("particle/smokestack", self:GetPos())
            smoke:SetVelocity(VectorRand() * 100)
            smoke:SetGravity(Vector(math.Rand(-5, 5), math.Rand(-5, 5), -25))
            smoke:SetDieTime(math.Rand(5, 7))
            smoke:SetStartAlpha(100)
            smoke:SetEndAlpha(0)
            smoke:SetStartSize(math.Rand(10, 15))
            smoke:SetEndSize(75)
            smoke:SetRoll(math.Rand(-180, 180))
            smoke:SetRollDelta(math.Rand(-0.5, 0.5))
            smoke:SetColor(150, 150, math.Rand(220, 255))
            smoke:SetAirResistance(150)
            smoke:SetPos(self:GetPos())
            smoke:SetLighting(false)
            smoke:SetBounce(0.5)
            smoke:SetCollide(true)
        end
        emitter:Finish()
    end
end