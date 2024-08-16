--[[
| This file was obtained through the combined efforts
| of Madbluntz & Plymouth Antiquarian Society.
|
| Credits: lifestorm, Gregory Wayne Rossel JR.,
| 	Maloy, DrPepper10 @ RIP, Atle!
|
| Visit for more: https://plymouth.thetwilightzone.ru/
--]]

att.PrintName = "Zeiss Diavari DA 1.5-6x Sniper Scope"
att.AbbrevName = "G3SG/1 Optic (1.5-6x)"

if !GetConVar("arccw_truenames"):GetBool() then
    att.AbbrevName = "SSR Optic (1.5-6x)"
end

att.Icon = Material("entities/att/acwatt_ur_g3_optic_sg1.png", "mips smooth")
att.Description = "Variable power scope, adjustable for a very wide range of magnifications.\nExclusive to the G3 pattern rifle."
-- need icon
att.SortOrder = 300

att.Desc_Pros = {
    "autostat.holosight",
    "autostat.zoom",
}
att.Desc_Cons = {
}
att.AutoStats = true
att.Slot = {"ur_g3_optic"}

att.Model = "models/weapons/arccw/atts/g3_optic_sg1.mdl"
att.ModelOffset = Vector(0.55, 0, -1.7)

att.AdditionalSights = {
    {
        Pos = Vector(0.01, 10.5, -1.18),
        Ang = Angle(0, 0, 0),
        Magnification = 1.1,
        ScrollFunc = ArcCW.SCROLL_ZOOM,
        ScopeMagnificationMin = UC_HalfScope( 1.5 ),
        ScopeMagnificationMax = UC_HalfScope( 6 ),
        ScopeMagnification = UC_HalfScope( 4.5 ),
        HolosightData = {
            Holosight = true,
            HolosightReticle = Material("hud/scopes/SG1_reticle.png", "mips smooth"),
            HolosightNoFlare = true,
            HolosightSize = 9.5,
            HolosightPiece = "models/weapons/arccw/atts/g3_optic_sg1_hsp.mdl",
            HolosightBlackbox = true,
            HolosightMagnification = UC_HalfScope( 4.5 ),
            HolosightMagnificationMin = UC_HalfScope( 1.5 ),
            HolosightMagnificationMax = UC_HalfScope( 6 ),
            Colorable = true,
        },
    }
}

-- att.Holosight = true
-- att.HolosightReticle = Material("mifl_tarkov_reticle/dot.png", "mips smooth")

att.HolosightPiece = "models/weapons/arccw/atts/g3_optic_sg1_hsp.mdl"
-- att.HolosightNoFlare = true
-- att.HolosightSize = 1
-- att.HolosightBone = "holosight"
att.Colorable = true

att.Mult_SightedSpeedMult = 0.78
