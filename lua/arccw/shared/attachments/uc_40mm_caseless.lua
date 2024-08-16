--[[
| This file was obtained through the combined efforts
| of Madbluntz & Plymouth Antiquarian Society.
|
| Credits: lifestorm, Gregory Wayne Rossel JR.,
| 	Maloy, DrPepper10 @ RIP, Atle!
|
| Visit for more: https://plymouth.thetwilightzone.ru/
--]]

att.PrintName = "40mm Caseless Grenades"
att.AbbrevName = "Caseless"
att.Icon = Material("entities/att/arccw_uc_40mm_caseless.png", "mips smooth")
att.Description = "Russian caseless VOG-25 grenades converted for use in regular tubes.\nWithout the need to remove an empty case, these can be reloaded faster; but the caseless design also means less propellant and less explosive power."
att.Desc_Pros = {
}
att.Desc_Cons = {
}
att.Desc_Neutrals = {
}
att.Slot = "uc_40mm"

att.AutoStats = true

att.Mult_ReloadTime = 0.78
att.Mult_MuzzleVelocity = 0.85
att.Mult_Damage = 0.75
att.Mult_DamageMin = 0.75

att.Mult_ShootPitch = 1.1

att.ActivateElements = {"40mm_caseless"}

att.Hook_SelectReloadAnimation = function(wep, anim)
    return anim .. "_caseless"
end