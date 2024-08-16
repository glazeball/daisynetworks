--[[
| This file was obtained through the combined efforts
| of Madbluntz & Plymouth Antiquarian Society.
|
| Credits: lifestorm, Gregory Wayne Rossel JR.,
| 	Maloy, DrPepper10 @ RIP, Atle!
|
| Visit for more: https://plymouth.thetwilightzone.ru/
--]]

att.PrintName = "14\" M4 Super 90 Entry Barrel"
att.AbbrevName = "14\" Entry Barrel"

if !GetConVar("arccw_truenames"):GetBool() then
    att.PrintName = "14\" FC1040 Entry Barrel"
end

att.Icon = Material("entities/att/acwatt_ud_m1014_barrel_short.png", "smooth mips")
att.Description = "Short barrel intended for breaching and close quarters use. Noticeably increases pellet spread, but is easier to manuver."
att.Desc_Pros = {
}
att.Desc_Cons = {
}
att.Desc_Neutrals = {
}
att.Slot = "ud_1014_barrel"

att.AutoStats = true

att.Mult_AccuracyMOA = 1.5
att.Mult_Recoil = 1.1
att.Mult_Range = 0.8

att.Mult_Sway = 0.75
att.Mult_SightTime = 0.75
att.Mult_SpeedMult = 1.025
att.Mult_ShootSpeedMult = 1.1

att.Mult_HipDispersion = 0.75

att.Add_BarrelLength = -4

att.ActivateElements = {"ud_autoshotgun_barrel_short"}