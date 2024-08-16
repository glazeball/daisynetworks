--[[
| This file was obtained through the combined efforts
| of Madbluntz & Plymouth Antiquarian Society.
|
| Credits: lifestorm, Gregory Wayne Rossel JR.,
| 	Maloy, DrPepper10 @ RIP, Atle!
|
| Visit for more: https://plymouth.thetwilightzone.ru/
--]]

att.PrintName = "Mini-14 Polymer Stock"
att.AbbrevName = "Polymer Stock"

if !GetConVar("arccw_truenames"):GetBool() then
    att.PrintName = "Patriot 809 Polymer Stock"
end

att.Icon = Material("entities/att/acwatt_ud_mini14_stock.png", "smooth mips")
att.Description = "A fairly lightweight body replacement that improves weapon agility."
att.Desc_Pros = {
}
att.Desc_Cons = {
}
att.Desc_Neutrals = {
}
att.Slot = "ud_mini14_stock"

att.AutoStats = true

att.Mult_SightTime = 0.9
att.Mult_SpeedMult = 1.05
att.Mult_SightedSpeedMult = 1.1

att.Mult_Recoil = 1.15
--att.Mult_Sway = 3

-- att.Add_BarrelLength = 32

att.ActivateElements = {"ud_mini14_stock_polymer"}