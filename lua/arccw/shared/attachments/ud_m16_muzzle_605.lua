--[[
| This file was obtained through the combined efforts
| of Madbluntz & Plymouth Antiquarian Society.
|
| Credits: lifestorm, Gregory Wayne Rossel JR.,
| 	Maloy, DrPepper10 @ RIP, Atle!
|
| Visit for more: https://plymouth.thetwilightzone.ru/
--]]

att.PrintName = "Model 605 Three-prong"
att.AbbrevName = "M605 Three-prong"
att.Icon = Material("entities/att/acwatt_ud_m16_muzzle_605.png", "mips smooth")
att.Description = ""
att.Desc_Pros = {
    "uc.flashhider"
}
att.Desc_Cons = {
}
att.AutoStats = true
att.Slot = "ud_m16_muzzle"

att.SortOrder = -101

att.Model = "models/weapons/arccw/atts/fesiug_threeprong_605.mdl"
att.ModelOffset = Vector(0.4, 0, 0)
att.ModelScale = Vector(1, 1, 1)
att.OffsetAng = Angle(0, 0, 0)

att.Add_BarrelLength = 4
att.Mult_Sway = 1.1
att.Mult_HipDispersion = 0.9

att.Mult_ShootPitch = 1.1
att.Mult_ShootVol = 0.75

att.AttachSound = "arccw_uc/common/gunsmith/suppressor_thread.ogg"