--[[
| This file was obtained through the combined efforts
| of Madbluntz & Plymouth Antiquarian Society.
|
| Credits: lifestorm, Gregory Wayne Rossel JR.,
| 	Maloy, DrPepper10 @ RIP, Atle!
|
| Visit for more: https://plymouth.thetwilightzone.ru/
--]]

att.PrintName = "Polymer SAW Handguard"
att.Icon = Material("entities/att/ur_ak/handguards/rpk.png", "mips smooth")
att.Description = "Light polymer handguard used on the RPK-74M. Its additional grooves makes it a bit steadier to hold."
att.Slot = {"ur_ak_hg"}
att.AutoStats = true

att.SortOrder = 16

att.Mult_Sway = .8
att.Mult_SightTime = 1.05
att.Mult_Recoil = 0.95

att.ActivateElements = {"barrel_rpk74m"}