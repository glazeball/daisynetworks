--[[
| This file was obtained through the combined efforts
| of Madbluntz & Plymouth Antiquarian Society.
|
| Credits: lifestorm, Gregory Wayne Rossel JR.,
| 	Maloy, DrPepper10 @ RIP, Atle!
|
| Visit for more: https://plymouth.thetwilightzone.ru/
--]]

att.PrintName = "G3KA4 12\" Carbine Barrel"
att.AbbrevName = "12\" Carbine Barrel"

if !GetConVar("arccw_truenames"):GetBool() then
    att.PrintName = "AG58K 12\" Carbine Barrel"
end

att.Icon = Material("entities/att/ur_g3/barrel_k.png","smooth mips")
att.Description = "Shortened barrel for the carbine variant of the rifle. Improves both fire rate and handling."
att.Slot = "ur_g3_barrel"
att.AutoStats = true

att.SortOrder = 12

att.Mult_SightTime = 0.9
att.Add_BarrelLength = -4
att.Mult_SightedSpeedMult = 1.05
att.Mult_HipDispersion = 0.9
att.Mult_Sway = 0.7

att.Mult_Recoil = 1.15
att.Mult_AccuracyMOA = 1.5
att.Mult_Range = 0.5
att.Mult_RPM = 1.1

att.GivesFlags = {"g3_not8"}
