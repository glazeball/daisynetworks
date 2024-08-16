--[[
| This file was obtained through the combined efforts
| of Madbluntz & Plymouth Antiquarian Society.
|
| Credits: lifestorm, Gregory Wayne Rossel JR.,
| 	Maloy, DrPepper10 @ RIP, Atle!
|
| Visit for more: https://plymouth.thetwilightzone.ru/
--]]

att.PrintName = "Deep Rifling"

att.Icon = Material("entities/att/arccw_uc_deeprifling.png", "mips smooth")
att.Description = "A custom tailored rifling scheme allows bullets to strike with greater impact, penetrating deeper."
att.Desc_Pros = {
}
att.Desc_Cons = {
}
att.Desc_Neutrals = {
}
att.Slot = "uc_fg"
att.AutoStats = true
att.SortOrder = 1

att.Hook_Compatible = function(wep)
    if wep:GetIsShotgun() then
        return false
    end
end

att.Mult_Penetration = 1.25

att.AttachSound = "arccw_uc/common/gunsmith/internal_modification.ogg"