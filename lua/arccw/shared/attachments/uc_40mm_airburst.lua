--[[
| This file was obtained through the combined efforts
| of Madbluntz & Plymouth Antiquarian Society.
|
| Credits: lifestorm, Gregory Wayne Rossel JR.,
| 	Maloy, DrPepper10 @ RIP, Atle!
|
| Visit for more: https://plymouth.thetwilightzone.ru/
--]]

att.PrintName = "40mm Airburst Grenades"
att.AbbrevName = "Airburst"
att.Icon = Material("entities/att/arccw_uc_40mm_generic.png", "mips smooth")
att.Description = "Grenades filled with fragmentation. While usually detonated by a time fuse, this one has been modified to detonate by proximity. Intended for indirect fire, the projectile is slow and has high drag, with a safety fuse to prevent point-blank detonations."
att.Desc_Pros = {
    "uc.40mm.airburst",
    "uc.40mm.proximity",
}
att.Desc_Cons = {
    "uc.40mm.mindmg",
    "uc.40mm.arm",
    "uc.40mm.drag.high",
}
att.Desc_Neutrals = {
}
att.Slot = "uc_40mm"

att.AutoStats = true

att.Override_ShootEntity = "arccw_uc_40mm_airburst"

att.Mult_MuzzleVelocity = 0.75

att.Mult_ShootPitch = 0.9

att.ActivateElements = {"40mm_airburst"}