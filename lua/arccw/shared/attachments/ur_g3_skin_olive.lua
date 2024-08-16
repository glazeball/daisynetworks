--[[
| This file was obtained through the combined efforts
| of Madbluntz & Plymouth Antiquarian Society.
|
| Credits: lifestorm, Gregory Wayne Rossel JR.,
| 	Maloy, DrPepper10 @ RIP, Atle!
|
| Visit for more: https://plymouth.thetwilightzone.ru/
--]]

att.PrintName = "G3 Olive Drab Furniture"
att.AbbrevName = "Olive"

if !GetConVar("arccw_truenames"):GetBool() then
    att.PrintName = "G58 Olive Drab Furniture"
end

att.Description = "Olive drab furniture; less official but more iconic."
att.Icon = Material("entities/att/ur_g3/skin_oliva.png","smooth mips")
att.Slot = "ur_g3_skin"
att.Desc_Neutrals = {
    "uc.cosmetic",
}
att.SortOrder = 1

att.IgnorePickX = true