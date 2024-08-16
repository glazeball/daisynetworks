--[[
| This file was obtained through the combined efforts
| of Madbluntz & Plymouth Antiquarian Society.
|
| Credits: lifestorm, Gregory Wayne Rossel JR.,
| 	Maloy, DrPepper10 @ RIP, Atle!
|
| Visit for more: https://plymouth.thetwilightzone.ru/
--]]

att.PrintName = "\"Romanian Dong\" Integral Foregrip"
att.AbbrevName = "Dong Foregrip"
att.Icon = Material("entities/att/ur_ak/dong.png", "mips smooth")
att.Description = "Romanian lower handguard design, shaped into an integrated foregrip."
att.Slot = {"ur_ak_hg"}
att.Desc_Cons = {"uc.noubs"}
att.AutoStats = true

att.SortOrder = 16

att.Mult_Recoil = .82
att.Mult_SightTime = 1.12
att.Mult_MoveDispersion = 1.25

att.ActivateElements = {"barrel_dong"}
att.GivesFlags = {"ak_noubs"}

att.LHIK = true

att.ModelOffset = Vector(-23, -2.6, 3.8)
att.Model = "models/weapons/arccw/ak_lhik_dong.mdl"

att.Override_HoldtypeActive = "smg"