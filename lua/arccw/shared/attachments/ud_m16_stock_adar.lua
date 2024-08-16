--[[
| This file was obtained through the combined efforts
| of Madbluntz & Plymouth Antiquarian Society.
|
| Credits: lifestorm, Gregory Wayne Rossel JR.,
| 	Maloy, DrPepper10 @ RIP, Atle!
|
| Visit for more: https://plymouth.thetwilightzone.ru/
--]]

att.PrintName = "RUCAR 225 Stock"

att.Icon = Material("entities/att/acwatt_ud_m16_stock_adar.png", "smooth mips")
att.Description = "Wooden fixed stock with integral grip used on the Russian RUCAR 225 rifle. Very steady while aiming and reduces recoil effectively, but quite difficult to manuver with."

if GetConVar("arccw_truenames"):GetBool() then
    att.PrintName = "ADAR 2-15 Stock"
    --att.Description = "Wooden fixed stock with integral grip used on the Russian ADAR 2-15 rifle. The sturdiest stock currently available for the AR platform."
end

att.Desc_Pros = {
    --"uc.auto"
}
att.Desc_Cons = {
    "uc.nogrip"
}
att.Desc_Neutrals = {
}
att.Slot = "ud_m16_stock"
att.SortOrder = 10

att.AutoStats = true

att.Mult_Sway = 0.5
att.Mult_Recoil = 0.8
att.Mult_RecoilSide = 0.75
att.Mult_SpeedMult = 0.95
att.Mult_SightedSpeedMult = .8
att.Mult_SightTime = 1.25

att.ActivateElements = {"stock_adar"}
att.GivesFlags = {"m16_adar"}

local slotinfo = {
    [9] = {"Intergral Grip", "Integral Grip", att.Icon},
}
att.Hook_GetDefaultAttName = function(wep, slot)
    if slotinfo[slot] then
        return GetConVar("arccw_truenames"):GetBool() and slotinfo[slot][2] or slotinfo[slot][1]
    end
end
att.Hook_GetDefaultAttIcon = function(wep, slot)
    if slotinfo[slot] then
        return slotinfo[slot][3]
    end
end