--[[
| This file was obtained through the combined efforts
| of Madbluntz & Plymouth Antiquarian Society.
|
| Credits: lifestorm, Gregory Wayne Rossel JR.,
| 	Maloy, DrPepper10 @ RIP, Atle!
|
| Visit for more: https://plymouth.thetwilightzone.ru/
--]]

att.PrintName = "HK33 20-Round Compact Mag"
att.AbbrevName = "20-Round Compact Mag"

if !GetConVar("arccw_truenames"):GetBool() then
    att.PrintName = "CN66 20-Round Compact Mag"
end

att.Icon = Material("entities/att/ur_g3/mag556_20.png","smooth mips")
att.Description = "Low-capacity magazine for the 5.56 variant of the rifle. The lighter load makes the weapon more ergonomic."
att.Slot = {"ur_g3_mag"}
att.AutoStats = true

att.HideIfBlocked = true
att.SortOrder = 10

att.Override_ClipSize = 20
att.Override_ClipSize_Priority = 2

att.Mult_SightTime = 0.85
att.Mult_ReloadTime = 0.9
att.Mult_Sway = 0.75

att.Mult_SpeedMult = 1.025
att.Mult_SightedSpeedMult = 1.05
att.Mult_ShootSpeedMult = 1.05

att.RequireFlags = {"cal_556"}

-- att.Hook_SelectReloadAnimation = function(wep, anim)
--     return anim
-- end