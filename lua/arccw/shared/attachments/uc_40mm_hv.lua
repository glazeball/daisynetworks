--[[
| This file was obtained through the combined efforts
| of Madbluntz & Plymouth Antiquarian Society.
|
| Credits: lifestorm, Gregory Wayne Rossel JR.,
| 	Maloy, DrPepper10 @ RIP, Atle!
|
| Visit for more: https://plymouth.thetwilightzone.ru/
--]]

att.PrintName = "40mm High Velocity Grenades"
att.AbbrevName = "High Velocity"
att.Icon = Material("entities/att/arccw_uc_40mm_generic.png", "mips smooth")
att.Description = "Fin-stabilized, lightweight grenade with explosive payload.\nFlies fast and with low drag, but creates a smaller and less lethal explosion."
att.Desc_Pros = {
    "uc.40mm.drag.low"
}
att.Desc_Cons = {
    "uc.40mm.blast.low"
}
att.Desc_Neutrals = {
}
att.Slot = "uc_40mm"

att.Override_ShootEntity = "arccw_uc_40mm_hv"

att.AutoStats = true

att.Mult_Damage = 0.85
att.Mult_DamageMin = 0.85

att.Mult_MuzzleVelocity = 2

att.Mult_ShootPitch = 1.15

att.ActivateElements = {"40mm_hv"}