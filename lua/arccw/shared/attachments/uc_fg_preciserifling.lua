--[[
| This file was obtained through the combined efforts
| of Madbluntz & Plymouth Antiquarian Society.
|
| Credits: lifestorm, Gregory Wayne Rossel JR.,
| 	Maloy, DrPepper10 @ RIP, Atle!
|
| Visit for more: https://plymouth.thetwilightzone.ru/
--]]

att.PrintName = "Precision Rifling"

att.Icon = Material("entities/att/arccw_uc_precisionrifling.png", "mips smooth")
att.Description = "High-precision machined rifling allows the weapon to shoot much more consistently."
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

att.Mult_AccuracyMOA = 0.75

att.AttachSound = "arccw_uc/common/gunsmith/internal_modification.ogg"