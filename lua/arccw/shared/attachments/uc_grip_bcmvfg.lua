--[[
| This file was obtained through the combined efforts
| of Madbluntz & Plymouth Antiquarian Society.
|
| Credits: lifestorm, Gregory Wayne Rossel JR.,
| 	Maloy, DrPepper10 @ RIP, Atle!
|
| Visit for more: https://plymouth.thetwilightzone.ru/
--]]

att.PrintName = "BCMGUNFIGHTER Vertical Grip Mod 3"
att.AbbrevName = "BCM Stubby Foregrip"
att.Icon = Material("entities/att/acwatt_uc_grip_bcmvfg.png", "mips smooth")
att.Description = "A short grip providing a more natural holding position, making the weapon easier to use while moving.\n"

att.SortOrder = 1300

att.AutoStats = true
att.Slot = "foregrip"

att.LHIK = true

att.ModelOffset = Vector(0, 0, -0.14)
att.Model = "models/weapons/arccw/atts/ud_foregrip_mod3.mdl"
-- att.ModelSkin  = 1

att.Mult_MoveDispersion = 0.75

att.Mult_SightedSpeedMult = 0.9

att.Override_HoldtypeActive = "smg"
att.Override_HoldtypeActive_Priority = 2