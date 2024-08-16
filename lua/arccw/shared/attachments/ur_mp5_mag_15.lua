--[[
| This file was obtained through the combined efforts
| of Madbluntz & Plymouth Antiquarian Society.
|
| Credits: lifestorm, Gregory Wayne Rossel JR.,
| 	Maloy, DrPepper10 @ RIP, Atle!
|
| Visit for more: https://plymouth.thetwilightzone.ru/
--]]

att.PrintName = "MP5 15-Round Flush Mag"
att.AbbrevName = "15-Round Flush Mag"

if !GetConVar("arccw_truenames"):GetBool() then
    att.PrintName = "PK5 15-Round Flush Mag"
end

att.SortOrder = 30
att.Icon = Material("entities/att/ur_mp5/mag20.png", "smooth mips")
att.Description = "Low-capacity magazine. The lighter load makes the weapon even more ergonomic."
att.Desc_Pros = {
}
att.Desc_Cons = {
}
att.Desc_Neutrals = {
}
att.Slot = "ur_mp5_mag"

att.AutoStats = true

att.Mult_SightTime = 0.9
att.Mult_ReloadTime = 0.85
att.Override_ClipSize = 15
att.Mult_Sway = 0.75
att.Mult_ShootSpeedMult = 1.1

att.Mult_HipDispersion = 0.75

att.ActivateElements = {"ur_mp5_mag_15"}

att.Hook_SelectReloadAnimation = function(wep, anim)
    return anim .. "_15"
end

att.ExcludeFlags = {"ur_mp5_cal_10mm","ur_mp5_cal_40sw"}