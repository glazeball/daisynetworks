--[[
| This file was obtained through the combined efforts
| of Madbluntz & Plymouth Antiquarian Society.
|
| Credits: lifestorm, Gregory Wayne Rossel JR.,
| 	Maloy, DrPepper10 @ RIP, Atle!
|
| Visit for more: https://plymouth.thetwilightzone.ru/
--]]

att.PrintName = "Type 56 16\" Bayonet Barrel"
att.AbbrevName = "16\" Bayonet Barrel"
att.Icon = Material("entities/att/ur_ak/barrel/type.png", "mips smooth")
att.Description = "Chinese derivative barrel with a fully hooded front sight and a folding spike bayonet. When unfolded, the bayonet increases melee damage substantially, but adds some forward weight."
att.Slot = {"ur_ak_barrel"}
att.AutoStats = true

if !GetConVar("arccw_truenames"):GetBool() then
    att.PrintName = "Yucha 7 16\" Bayonet Barrel" -- Chinese for harpoon
end

att.SortOrder = 16

att.Mult_SightedSpeedMult = .95

--att.ToggleLockDefault = true
att.ToggleStats = {
    {
        PrintName = "Extended",
        ActivateElements = {"barrel_t56_ext"},
        AutoStats = true,
        Add_MeleeRange = 16,
        Mult_MeleeDamage = 3,
        Mult_MeleeWaitTime = 2,
        Add_BarrelLength = 10,
        Mult_Sway = 1.2,
        -- Override_BashPreparePos = Vector(4, -5, -1.8),
        -- Override_BashPrepareAng = Angle(-15, -5, -5),
        -- Override_BashPos = Vector(-1, 12, 4.5), -- i'm too impatient to not make this bat you in the face with the stock
        -- Override_BashAng = Angle(-7, 3, 25),
        Hook_SelectBashAnim = function(wep,anim)
            return "bash_bayonet"
        end
    },
    {
        PrintName = "Folded",
        AutoStats = true,
        ActivateElements = {"barrel_t56"},
    },
}

att.GivesFlags = {"ak_bayonet1"}
att.ExcludeFlags = {"ak_bayonet2"}