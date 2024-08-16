--[[
| This file was obtained through the combined efforts
| of Madbluntz & Plymouth Antiquarian Society.
|
| Credits: lifestorm, Gregory Wayne Rossel JR.,
| 	Maloy, DrPepper10 @ RIP, Atle!
|
| Visit for more: https://plymouth.thetwilightzone.ru/
--]]

att.PrintName = "Long Rifling"

att.Icon = Material("entities/att/arccw_uc_longrifling.png", "mips smooth")
att.Description = "Custom rifling improves muzzle velocity, allowing the weapon to shoot further."
att.Desc_Pros = {
}
att.Desc_Cons = {
}
att.Desc_Neutrals = {
}
att.Slot = {"uc_fg","uc_fg_singleshot"}
att.AutoStats = true
att.SortOrder = 1

att.Hook_Compatible = function(wep)
    if wep:GetIsShotgun() then
        return false
    end
end

att.Mult_Range = 1.1

att.AttachSound = "arccw_uc/common/gunsmith/internal_modification.ogg"