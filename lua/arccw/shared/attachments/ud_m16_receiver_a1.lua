--[[
| This file was obtained through the combined efforts
| of Madbluntz & Plymouth Antiquarian Society.
|
| Credits: lifestorm, Gregory Wayne Rossel JR.,
| 	Maloy, DrPepper10 @ RIP, Atle!
|
| Visit for more: https://plymouth.thetwilightzone.ru/
--]]

att.PrintName = "AMRA1 Classic Upper Receiver"
att.AbbrevName = "Classic Upper"
att.Description = "Authentic upper receiver of the AMRA1 rifle, notable for its use throughout the latter half of the Vietnam War and seldom wielded by fortunate sons. Notorious for its difficult-to-control high RPM and still non-insignificant feeding failures."

if GetConVar("arccw_truenames"):GetBool() then
    att.PrintName = "M16A1 Classic Upper Receiver"
    att.Description = "Authentic upper receiver of the M16A1 rifle, notable for its use throughout the latter half of the Vietnam War and seldom wielded by fortunate sons. Notorious for its difficult-to-control high RPM and still non-insignificant feeding failures."
end

att.Icon = Material("entities/att/acwatt_ud_m16_receiver_a1.png", "smooth mips")
att.Desc_Pros = {
    --"uc.auto"
}
att.Desc_Cons = {
    "uc.jam"
}
att.Desc_Neutrals = {
    "ud.m16_a1"
}
att.Slot = "ud_m16_receiver"
--att.InvAtt = "ud_m16_receiver_auto"

att.AutoStats = true
att.SortOrder = -6

att.Override_Malfunction = true

att.Mult_AccuracyMOA = 1.25
att.Mult_HipDispersion = 1.125

-- att.Override_Firemodes = {
--     {
--         Mode = 2,
--     },
--     {
--         Mode = 1,
--     },
--     {
--         Mode = 0
--     }
-- }
att.Mult_RPM = 900 / 765

att.GivesFlags = {"m16_auto", "ud_m16_retro", "ud_m16_a1"}
att.ExcludeFlags = {"m16_noauto","ud_m16_not_retro"}
att.ActivateElements = {"upper_classic","ud_m16_upper_charm2"}
att.TopMount = 3