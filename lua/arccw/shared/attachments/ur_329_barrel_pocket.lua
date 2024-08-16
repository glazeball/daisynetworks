--[[
| This file was obtained through the combined efforts
| of Madbluntz & Plymouth Antiquarian Society.
|
| Credits: lifestorm, Gregory Wayne Rossel JR.,
| 	Maloy, DrPepper10 @ RIP, Atle!
|
| Visit for more: https://plymouth.thetwilightzone.ru/
--]]

att.PrintName = "3\" Model 629 Pocket Barrel"
att.AbbrevName = "3\" Pocket Barrel"
if !GetConVar("arccw_truenames"):GetBool() then
    att.PrintName = "3\" Companion .44 Pocket Barrel"
end
att.Icon = Material("entities/att/acwatt_ur_329_barrel_m29.png","smooth mips")
att.Description = "Even shorter barrel, associated with police officers. Being as compact as possible improves draw time, but the barrel cannot handle gas expansion well."
att.Slot = "ur_329_barrel"
att.AutoStats = true
att.SortOrder = 3

att.Mult_AccuracyMOA = 1.3
att.Mult_Range = 0.75
att.Mult_Recoil = 1.3
att.Mult_SightTime = 0.85
att.Mult_Sway = 0.85
att.Mult_HipDispersion = 0.9
att.Mult_PhysBulletMuzzleVelocity = 0.85

att.Add_BarrelLength = -1

att.Mult_DrawTime = 0.75
att.Mult_HolsterTime = 0.75

att.Ignore = true -- Texture is too fucked for this to make it to release