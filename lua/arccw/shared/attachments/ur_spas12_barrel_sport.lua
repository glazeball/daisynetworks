--[[
| This file was obtained through the combined efforts
| of Madbluntz & Plymouth Antiquarian Society.
|
| Credits: lifestorm, Gregory Wayne Rossel JR.,
| 	Maloy, DrPepper10 @ RIP, Atle!
|
| Visit for more: https://plymouth.thetwilightzone.ru/
--]]

att.PrintName = "22.5\" SPAS-12 Competition Kit"
att.AbbrevName = "22.5\" Competition Kit"
att.Icon = Material("entities/att/acwatt_ud_m1014_barrel.png", "smooth mips")
att.Description = "Aftermarket sporting kit that replaces the stock forend, handguard, and barrel. The removal of the semi-automatic gas system and integrated compensator greatly improves weapon overall performance."
att.Desc_Cons = {
    "uc.nomuzzle",
    "ur.spas12.pump"
}
att.Icon = Material("entities/att/ur_spas/barrel_comp.png", "smooth mips")

att.Override_Firemodes = {
    {
        Mode = 1,
        PrintName = "fcg.pump",
        Override_ManualAction = true,
    },

}
att.Override_Firemodes_Priority = 1

att.Slot = "ur_spas12_barrel"

att.SortOrder = 22.5

att.AutoStats = true
att.Add_BarrelLength = 1

att.Mult_RecoilSide = 0.85
att.Mult_Recoil = 0.75
att.Mult_Sway = 1.2

att.Mult_AccuracyMOA = 0.85
att.Mult_RangeMin = 1.5
att.Mult_CycleTime = 0.9

att.ActivateElements = {"ud_autoshotgun_barrel_sport"}
att.GivesFlags = {"nomuzzle"}

att.Ignore = true