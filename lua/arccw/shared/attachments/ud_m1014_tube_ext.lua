--[[
| This file was obtained through the combined efforts
| of Madbluntz & Plymouth Antiquarian Society.
|
| Credits: lifestorm, Gregory Wayne Rossel JR.,
| 	Maloy, DrPepper10 @ RIP, Atle!
|
| Visit for more: https://plymouth.thetwilightzone.ru/
--]]

att.PrintName = "FC1040 7 Shell Tube"
att.AbbrevName = "7 Shell Tube"

if GetConVar("arccw_truenames"):GetBool() then
    att.PrintName = "M4 Super 90 7 Shell Tube"
end

att.Icon = Material("entities/att/acwatt_ud_m1014_tube_ext.png", "smooth mips")
att.Description = "Military-grade extended shell tube that adds weight to the weapon."
att.Desc_Pros = {}
att.Desc_Cons = {}
att.Desc_Neutrals = {}
att.Slot = "ud_1014_tube"

att.Override_ClipSize = 7

att.AutoStats = true

att.Override_ClipSize = 7
att.Mult_Sway = 1.5
att.Mult_SightTime = 1.15
att.Mult_ReloadTime = 1.15
att.Mult_SightedSpeedMult = 0.75


att.ActivateElements = {"ud_autoshotgun_tube_long"}