--[[
| This file was obtained through the combined efforts
| of Madbluntz & Plymouth Antiquarian Society.
|
| Credits: lifestorm, Gregory Wayne Rossel JR.,
| 	Maloy, DrPepper10 @ RIP, Atle!
|
| Visit for more: https://plymouth.thetwilightzone.ru/
--]]

att.PrintName = "40mm Dual Purpose Grenades"
att.AbbrevName = "Dual Purpose"
att.Icon = Material("entities/att/arccw_uc_40mm_generic.png", "mips smooth")
att.Description = "Grenades with a shaped charge for armor penetration, allowing it to punch through thin walls or deal massive impact damage to enemies or vehicles."
att.Desc_Pros = {
    "uc.40mm.hedp",
    "uc.40mm.impact"
}
att.Desc_Cons = {
}
att.Desc_Neutrals = {
}
att.Slot = "uc_40mm"

att.Override_ShootEntity = "arccw_uc_40mm_dp"

att.AutoStats = true

att.Mult_Damage = 0.6
att.Mult_DamageMin = 0.6

att.ActivateElements = {"40mm_dp"}