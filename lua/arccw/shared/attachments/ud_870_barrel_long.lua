--[[
| This file was obtained through the combined efforts
| of Madbluntz & Plymouth Antiquarian Society.
|
| Credits: lifestorm, Gregory Wayne Rossel JR.,
| 	Maloy, DrPepper10 @ RIP, Atle!
|
| Visit for more: https://plymouth.thetwilightzone.ru/
--]]

att.PrintName = "Express-12 30\" Long Barrel"
att.AbbrevName = "30\" Long Barrel"

if GetConVar("arccw_truenames"):GetBool() then
    att.PrintName = "Remington 870 30\" Wingmaster Barrel"
    att.AbbrevName = "30\" Wingmaster Barrel"
end

att.Icon = Material("entities/att/acwatt_ud_870_barrel_long.png", "smooth mips")
att.Description = "Extended, unwieldy barrel. Reduces pellet spread and improves range."
att.Desc_Pros = {
}
att.Desc_Cons = {
}
att.Desc_Neutrals = {
}
att.Slot = "ud_870_barrel"

att.AutoStats = true

att.Mult_AccuracyMOA = 0.8
att.Mult_Recoil = 0.8
att.Mult_Range = 1.2

att.Mult_Sway = 1.5
att.Mult_SightTime = 1.25
att.Mult_SpeedMult = 0.95

att.Mult_HipDispersion = 1.25

att.Add_BarrelLength = 4

att.ActivateElements = {"ud_870_barrel_long"}