--[[
| This file was obtained through the combined efforts
| of Madbluntz & Plymouth Antiquarian Society.
|
| Credits: lifestorm, Gregory Wayne Rossel JR.,
| 	Maloy, DrPepper10 @ RIP, Atle!
|
| Visit for more: https://plymouth.thetwilightzone.ru/
--]]

att.PrintName = "6\" Model 29 Barrel"
att.AbbrevName = "6\" Full-Size Barrel"
if !GetConVar("arccw_truenames"):GetBool() then
    att.PrintName = "6\" Thunderbolt Barrel"
end
att.Icon = Material("entities/att/acwatt_ur_329_barrel_m29.png","smooth mips")
att.Description = "Extended barrel that provides extra counterweight in addition to marginal ballistic enhancements."
att.Slot = "ur_329_barrel"
att.AutoStats = true
att.SortOrder = 6

att.Mult_AccuracyMOA = 0.7
att.Mult_Range = 1.5
att.Mult_Recoil = 0.85
att.Mult_SightTime = 1.25
att.Mult_Sway = 1.15
att.Mult_HipDispersion = 1.1
att.Mult_PhysBulletMuzzleVelocity = 1.15

att.Add_BarrelLength = 4

att.Mult_DrawTime = 1.15
att.Mult_HolsterTime = 1.15