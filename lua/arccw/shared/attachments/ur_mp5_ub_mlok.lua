--[[
| This file was obtained through the combined efforts
| of Madbluntz & Plymouth Antiquarian Society.
|
| Credits: lifestorm, Gregory Wayne Rossel JR.,
| 	Maloy, DrPepper10 @ RIP, Atle!
|
| Visit for more: https://plymouth.thetwilightzone.ru/
--]]

att.PrintName = "MP5 M-LOK Handguard"
att.AbbrevName = "M-LOK Handguard"

if !GetConVar("arccw_truenames"):GetBool() then
    att.PrintName = "PK5 M-LOK Handguard"
end

att.Icon = Material("entities/att/ur_mp5/hg_moe.png", "smooth mips")
att.Description = "American aftermarket handguard. Lighter than the basic, polymer handguard it replaces, improving handling, but somewhat unwieldy."
att.AutoStats = true

att.Slot = {"ur_mp5_hg","ur_g3_handguard"}

att.SortOrder = 1

att.Mult_SightTime = .90
att.Mult_Recoil = 1.15
att.Mult_Sway = 1.25

att.ActivateElements = {"ur_mp5_ub_kurzmlok"}
att.ExcludeFlags = {"g3_not8"}
--att.RequireFlags = {"mp5_kurz"}

att.HideIfBlocked = true