--[[
| This file was obtained through the combined efforts
| of Madbluntz & Plymouth Antiquarian Society.
|
| Credits: lifestorm, Gregory Wayne Rossel JR.,
| 	Maloy, DrPepper10 @ RIP, Atle!
|
| Visit for more: https://plymouth.thetwilightzone.ru/
--]]

att.PrintName = "19\" M4 Super 90 Competition Barrel"
att.AbbrevName = "19\" Competition Barrel"

if !GetConVar("arccw_truenames"):GetBool() then
    att.PrintName = "19\" FC1040 Competition Barrel"
end

att.Icon = Material("entities/att/acwatt_ud_m1014_barrel_sport.png", "smooth mips")
att.Description = "Hardened barrel with slightly increased length, designed for target shooting. Abiding by competition restrictions, it has a reduced rate of fire."
att.Desc_Pros = {
}
att.Desc_Cons = {
}
att.Desc_Neutrals = {
}
att.Slot = "ud_1014_barrel"

att.AutoStats = true
att.Add_BarrelLength = 1

att.Mult_RecoilSide = 0.8
att.Mult_Recoil = 0.9
att.Mult_SightTime = 1.15
att.Mult_Sway = 1.2

att.Mult_AccuracyMOA = 0.9
att.Mult_RangeMin = 2
att.Mult_RPM = 180 / 220

att.Mult_HipDispersion = 1.15

att.ActivateElements = {"ud_autoshotgun_barrel_sport"}
--att.GivesFlags = {"nomuzzle"}