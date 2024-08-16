--[[
| This file was obtained through the combined efforts
| of Madbluntz & Plymouth Antiquarian Society.
|
| Credits: lifestorm, Gregory Wayne Rossel JR.,
| 	Maloy, DrPepper10 @ RIP, Atle!
|
| Visit for more: https://plymouth.thetwilightzone.ru/
--]]

att.PrintName = "G3 50-Round Drum Mag"
att.AbbrevName = "50-Round Drum Mag"

if !GetConVar("arccw_truenames"):GetBool() then
    att.PrintName = "G58 50-Round Drum Mag"
end

att.Icon = Material("entities/att/ur_g3/mag50.png","smooth mips")
att.Description = "50 round drum-style magazine. Though highly cumbersome and unreliable, it more than doubles the standard capacity of the rifle."
att.Slot = {"ur_g3_mag"}
att.AutoStats = true
att.Desc_Cons = {
    "uc.jam"
}

att.SortOrder = 15
att.HideIfBlocked = true

att.Override_Malfunction = true
att.Mult_MalfunctionMean = 0.75
att.Mult_MalfunctionVariance = 1.5

att.Override_ClipSize = 50

att.Mult_SightTime = 1.1
att.Mult_ReloadTime = 1.2
att.Mult_Sway = 1.1

att.Mult_SpeedMult = 0.9
att.Mult_ShootSpeedMult = 0.85

att.Mult_HipDispersion = 1.5

att.ExcludeFlags = {"cal_556"}

-- att.Hook_SelectReloadAnimation = function(wep, anim)
--     return anim .. "_50rnd"
-- end