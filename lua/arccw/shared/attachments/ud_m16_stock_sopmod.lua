--[[
| This file was obtained through the combined efforts
| of Madbluntz & Plymouth Antiquarian Society.
|
| Credits: lifestorm, Gregory Wayne Rossel JR.,
| 	Maloy, DrPepper10 @ RIP, Atle!
|
| Visit for more: https://plymouth.thetwilightzone.ru/
--]]

att.PrintName = "AMCAR SOPMOD Stock"
att.AbbrevName = "SOPMOD Stock"

if GetConVar("arccw_truenames"):GetBool() then
    att.PrintName = "M16 SOPMOD Stock"
end

att.Icon = Material("entities/att/acwatt_ud_m16_stock_sopmod.png", "smooth mips")
att.Description = "Military-grade carbine stock with sophisticated ergonomics. Handles faster compared to a standard carbine stock, but is less stable.\n\nToggling this stock modifies performance accordingly."
att.Desc_Pros = {
}
att.Desc_Cons = {
}
att.Desc_Neutrals = {
}
att.Slot = {"go_stock", "ud_m16_stock"}

att.Model = "models/weapons/arccw/atts/stock_sopmod.mdl"
att.ModelOffset = Vector(-0.57, 0, 0.40)
att.ModelScale = Vector(0.74, 0.74, 0.74)
att.OffsetAng = Angle(0, 0, 0)

att.AutoStats = true
att.SortOrder = 6

att.Mult_Sway = 1.25
att.Mult_SightedSpeedMult = 1.15

att.ToggleSound = "arccw_uc/common/stockslide.ogg"

att.ActivateElements = {"stock_231_tube"}

att.ToggleStats = {
    {
        PrintName = "Extended",
        AutoStats = true,
        ModelOffset = Vector(-1.5, 0, 0.40),
    },
    {
        PrintName = "Collapsed",
        AutoStats = true,
        ModelOffset = Vector(0, 0, 0.40),
        Mult_RecoilSide = 1.5,
        Add_BarrelLength = -4,
        Mult_ShootSpeedMult = 1.1,
        Mult_SightTime = 0.85,
        Mult_MoveDispersion = 1.15,
    },
}