--[[
| This file was obtained through the combined efforts
| of Madbluntz & Plymouth Antiquarian Society.
|
| Credits: lifestorm, Gregory Wayne Rossel JR.,
| 	Maloy, DrPepper10 @ RIP, Atle!
|
| Visit for more: https://plymouth.thetwilightzone.ru/
--]]

att.PrintName = "G3 10-Round Marksman Mag"
att.AbbrevName = "10-Round Marksman Mag"

if !GetConVar("arccw_truenames"):GetBool() then
    att.PrintName = "G58 10-Round Marksman Mag"
end

att.Icon = Material("entities/att/ur_g3/mag10.png","smooth mips")
att.Description = "Magazine with a very low capacity. The lighter load reduces the weapon's weight significantly."
att.Slot = {"ur_g3_mag"}
att.AutoStats = true

att.SortOrder = 14

att.HideIfBlocked = true

att.Override_ClipSize = 10

att.Mult_SightTime = 0.9
att.Mult_ReloadTime = 0.95 -- darsu: there was 0.8 but i changed because it looked pretty bad      please balance 
att.Mult_Sway = 0.7

att.Mult_SpeedMult = 1.025
att.Mult_ShootSpeedMult = 1.05

att.Mult_HipDispersion = 0.85

att.ExcludeFlags = {"cal_556"}

-- att.Hook_SelectReloadAnimation = function(wep, anim)
--     return anim .. "_10rnd"
-- end