--[[
| This file was obtained through the combined efforts
| of Madbluntz & Plymouth Antiquarian Society.
|
| Credits: lifestorm, Gregory Wayne Rossel JR.,
| 	Maloy, DrPepper10 @ RIP, Atle!
|
| Visit for more: https://plymouth.thetwilightzone.ru/
--]]

SWEP.Base = "arccw_base"
SWEP.Spawnable = true
SWEP.Category = "Willard - Oldie Weaponry"
SWEP.UC_CategoryPack = "2Urban Renewal"
SWEP.AdminOnly = false
SWEP.UseHands = true

-- Muzzle and shell effects --

SWEP.MuzzleEffect = "muzzleflash_shotgun"
SWEP.ShellEffect = "arccw_uc_shelleffect"
SWEP.ShellModel = "models/weapons/arccw/uc_shells/12g.mdl"
SWEP.ShellPitch = 100
SWEP.ShellSounds = ArcCW.ShotgunShellSoundsTable
SWEP.ShellScale = 1
SWEP.UC_ShellColor = Color(0.7*255, 0.2*255, 0.2*255)

SWEP.MuzzleEffectAttachment = 1
SWEP.CaseEffectAttachment = 6
SWEP.CamAttachment = 7

-- Fake name --

SWEP.PrintName = "Volga Super" -- it's marketed to Americans

-- True name --

SWEP.TrueName = "IZh-58"

-- Trivia --

SWEP.Trivia_Class = "Shotgun"
SWEP.Trivia_Desc = [[The design of the double-barrel shotgun is so ubiquitous that it is usually referred to by weapon class instead of model name. These traditional shotguns are very popular in both rural and urban communities around the world for their simplicity and reliability.

Both barrels can be fired back-to-back in quick, deadly succession, but they must be reloaded frequently. Switch to burst firemode to pull both triggers at once.]]
SWEP.Trivia_Manufacturer = "Sikov Machining Plant"
SWEP.Trivia_Calibre = "12 Gauge"
SWEP.Trivia_Mechanism = "Break Action"
SWEP.Trivia_Country = "Soviet Union"
SWEP.Trivia_Year = 1958

-- Weapon slot --

SWEP.Slot = 3

-- Weapon's manufacturer real name --

if GetConVar("arccw_truenames"):GetBool() then
    SWEP.PrintName = SWEP.TrueName
    SWEP.Trivia_Manufacturer = "Izhevsk Mechanical Plant"
end

-- Viewmodel / Worldmodel / FOV --

SWEP.ViewModel = "models/weapons/arccw/c_ur_dbs.mdl"
SWEP.WorldModel = "models/weapons/arccw/c_ur_dbs.mdl"
SWEP.ViewModelFOV = 60
SWEP.AnimShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_SHOTGUN

SWEP.MirrorVMWM = true
SWEP.WorldModelOffset = {
    pos        =    Vector(-3, 3, -5),
    ang        =    Angle(-12, 0, 180),
    bone    =    "ValveBiped.Bip01_R_Hand",
    scale = 1
}

-- Damage parameters --

SWEP.Damage = 18 -- 6 pellets to kill
SWEP.DamageMin = 10 -- 10 pellets to kill
SWEP.Range = 40
SWEP.RangeMin = 6
SWEP.Num = 8
SWEP.Penetration = 1
SWEP.DamageType = DMG_BUCKSHOT
SWEP.ShootEntity = nil
SWEP.MuzzleVelocity = 365
SWEP.PhysBulletMuzzleVelocity = 365

SWEP.HullSize = 0.25

SWEP.BodyDamageMults = ArcCW.UC.BodyDamageMults_Shotgun

-- Mag size --

SWEP.ChamberSize = 0
SWEP.Primary.ClipSize = 2
SWEP.RejectMagSizeChange = true -- Signals to attachments that mag size shouldn't be changeable; needs to be implemented attachment-side with att.Compatible

-- Recoil --

SWEP.Recoil = 2.8
SWEP.RecoilSide = 2

SWEP.RecoilRise = 0.24
SWEP.VisualRecoilMult = 0
SWEP.MaxRecoilBlowback = 1
SWEP.MaxRecoilPunch = 1

SWEP.Sway = 0.5

-- Firerate / Firemodes --

SWEP.Delay = 60 / 350
SWEP.Firemodes = {
    {
        Mode = 1,
        PrintName = "fcg.break",
    },
    {
        Mode = 1,
        PrintName = "ur.spas12.dbl",
        Mult_AccuracyMOA = 1.15,
        Mult_HipDispersion = 0.8,
        Mult_Num = 2,
        Override_AmmoPerShot = 2,
        Mult_Damage = 2,
        Mult_DamageMin = 2,
        Mult_VisualRecoilMult = 2,

        CustomBars = "--___",
    },
    {
        PrintName = "fcg.safe2",
        Mode = 0,
    }
}

SWEP.UC_CanManualAction = true

SWEP.MalfunctionTakeRound = false
SWEP.MalfunctionMean = math.huge -- Theoretically it will never malfunction

SWEP.ShootVol = 160
SWEP.ShootPitch = 100

SWEP.ProceduralRegularFire = false
SWEP.ProceduralIronFire = false

SWEP.ReloadInSights = false
SWEP.RevolverReload = true

-- NPC --

SWEP.NPCWeaponType = "weapon_shotgun"
SWEP.NPCWeight = 210

-- Accuracy --

SWEP.AccuracyMOA = 25
SWEP.HipDispersion = 400
SWEP.MoveDispersion = 125
SWEP.JumpDispersion = 1000

SWEP.Primary.Ammo = "buckshot"

-- Speed multipliers --

SWEP.SpeedMult = 0.91
SWEP.SightedSpeedMult = 0.75
SWEP.SightTime = 0.25
SWEP.ShootSpeedMult = 0.75

-- Length --

SWEP.BarrelLength = 49
SWEP.ExtraSightDist = 2

-- Ironsights / Customization / Poses --

SWEP.HoldtypeHolstered = "passive"
SWEP.HoldtypeActive = "ar2"
SWEP.HoldtypeSights = "rpg"

SWEP.IronSightStruct = {
     Pos = Vector(-1.5, 0, 2.5),
     Ang = Angle(0, 0, 3),
     Magnification = 1.05,
     SwitchToSound = "",
}

SWEP.SprintPos = Vector(7, 0, 0)
SWEP.SprintAng = Angle(-10, 40, -10)

SWEP.HolsterPos = Vector(7, 0, 0)
SWEP.HolsterAng = Angle(-10, 40, -10)

SWEP.ActivePos = Vector(1, 1.5, 1.5)
SWEP.ActiveAng = Angle(0, 0, 0)

SWEP.CrouchPos = Vector(-1, 2, 1)
SWEP.CrouchAng = Angle(0, 0, -20)

SWEP.CustomizePos = Vector(10, 1, 2)
SWEP.CustomizeAng = Angle(10, 40, 20)

SWEP.BarrelOffsetSighted = Vector(0, 0, -1)
SWEP.BarrelOffsetHip = Vector(3, 0, -4.5)

-- Firing sounds --

local path = ")weapons/arccw_ur/dbs/"
local common = ")/arccw_uc/common/"
SWEP.ShootSoundSilenced = path .. "fire_supp.ogg"
--[[SWEP.DistantShootSound = {path .. "fire-dist-01.ogg", path .. "fire-dist-02.ogg", path .. "fire-dist-03.ogg", path .. "fire-dist-04.ogg", path .. "fire-dist-05.ogg"}
SWEP.DistantShootSoundSilenced = common .. "sup_tail.ogg"]]
SWEP.ShootDrySound = common .. "manual_trigger.ogg"

SWEP.ShootSound = {
    path .. "fire-01.ogg",
    path .. "fire-02.ogg",
    path .. "fire-03.ogg",
    path .. "fire-04.ogg",
    path .. "fire-05.ogg",
    path .. "fire-06.ogg"
}

local tail = ")/arccw_uc/common/12ga/"

SWEP.DistantShootSoundOutdoors = {
    tail .. "fire-dist-12ga-pasg-ext-01.ogg",
    tail .. "fire-dist-12ga-pasg-ext-02.ogg",
    tail .. "fire-dist-12ga-pasg-ext-03.ogg",
    tail .. "fire-dist-12ga-pasg-ext-04.ogg",
    tail .. "fire-dist-12ga-pasg-ext-05.ogg",
    tail .. "fire-dist-12ga-pasg-ext-06.ogg"
}
SWEP.DistantShootSoundIndoors = {
    common .. "fire-dist-int-shotgun-01.ogg",
    common .. "fire-dist-int-shotgun-02.ogg",
    common .. "fire-dist-int-shotgun-03.ogg",
    common .. "fire-dist-int-shotgun-04.ogg",
    common .. "fire-dist-int-shotgun-05.ogg",
    common .. "fire-dist-int-shotgun-06.ogg"
}
SWEP.DistantShootSoundOutdoorsSilenced = {
    common .. "sup-tail-01.ogg",
    common .. "sup-tail-02.ogg",
    common .. "sup-tail-03.ogg",
    common .. "sup-tail-04.ogg",
    common .. "sup-tail-05.ogg",
    common .. "sup-tail-06.ogg",
    common .. "sup-tail-07.ogg",
    common .. "sup-tail-08.ogg",
    common .. "sup-tail-09.ogg",
    common .. "sup-tail-10.ogg"
}
SWEP.DistantShootSoundIndoorsSilenced = {
    common .. "fire-dist-int-pistol-light-01.ogg",
    common .. "fire-dist-int-pistol-light-02.ogg",
    common .. "fire-dist-int-pistol-light-03.ogg",
    common .. "fire-dist-int-pistol-light-04.ogg",
    common .. "fire-dist-int-pistol-light-05.ogg",
    common .. "fire-dist-int-pistol-light-06.ogg"
}
SWEP.DistantShootSoundOutdoorsVolume = 1
SWEP.DistantShootSoundIndoorsVolume = 1
SWEP.Hook_AddShootSound = function(wep,data)
    ArcCW.UC.InnyOuty(wep)

    if wep:GetCurrentFiremode().Override_AmmoPerShot == 2 then
        timer.Simple(0.05, function()
            if IsValid(wep) then
                wep:EmitSound(wep.ShootSound[math.random(1,#wep.ShootSound)], data.volume * .4, data.pitch, 1, CHAN_WEAPON - 1)
            end
        end)
    end
end

-- Animations --

local ratel = {common .. "rattle1.ogg", common .. "rattle2.ogg", common .. "rattle3.ogg"}
local rottle = {common .. "cloth_2.ogg", common .. "cloth_3.ogg", common .. "cloth_4.ogg", common .. "cloth_6.ogg", common .. "rattle.ogg"}
local shellin = {common .. "dbs-shell-insert-01.ogg", common .. "dbs-shell-insert-02.ogg", common .. "dbs-shell-insert-03.ogg", common .. "dbs-shell-insert-04.ogg", common .. "dbs-shell-insert-05.ogg", common .. "dbs-shell-insert-06.ogg", common .. "dbs-shell-insert-07.ogg", common .. "dbs-shell-insert-08.ogg", common .. "dbs-shell-insert-09.ogg", common .. "dbs-shell-insert-10.ogg", common .. "dbs-shell-insert-11.ogg", common .. "dbs-shell-insert-12.ogg"}
local shellfall = {path .. "shell-fall-01.ogg", path .. "shell-fall-02.ogg", path .. "shell-fall-03.ogg", path .. "shell-fall-04.ogg"}

SWEP.Animations = {
    ["idle"] = {
        Source = "idle",
    },
    ["draw"] = {
        Source = "draw",
        --Time = 20 / 30,
        SoundTable = {
            {s = rottle, t = 0},
            {s = path .. "grab.ogg", t = 0.2},
            {s = path .. "shoulder.ogg", t = 0.5},
        },
    },
    ["ready"] = {
        Source = "deploy",
        Time = 26 / 30,
        SoundTable = {
            {s = path .. "close.ogg", t = 0.1},
            {s = common .. "shoulder.ogg", t = 0.2},
            {s = path .. "shoulder.ogg", t = 0.455},
        },
    },
    ["holster"] = {
        Source = "holster",
        Time = 20 / 30,
        SoundTable = ArcCW.UC.HolsterSounds,
    },

    ["fire"] = { -- first barrel
        Source = "fire",
        -- Time = 23 / 25,--30,
        SoundTable = {{ s = {path .. "mech-01.ogg", path .. "mech-02.ogg", path .. "mech-03.ogg", path .. "mech-04.ogg", path .. "mech-05.ogg", path .. "mech-06.ogg"}, t = 0, v = 0.25 }},
    },
    ["fire_iron"] = {
        Source = "fire",
        -- Time = 23 / 25,--30,
        SoundTable = {{ s = {path .. "mech-01.ogg", path .. "mech-02.ogg", path .. "mech-03.ogg", path .. "mech-04.ogg", path .. "mech-05.ogg", path .. "mech-06.ogg"}, t = 0 }},
    },

    ["fire_empty"] = { -- second barrel
        Source = "fire_empty", -- fire_empty
        -- Time = 23 / 25,--30,
        SoundTable = {{ s = {path .. "mech-01.ogg", path .. "mech-02.ogg", path .. "mech-03.ogg", path .. "mech-04.ogg", path .. "mech-05.ogg", path .. "mech-06.ogg"}, t = 0, v = 0.25 }},
    },
    ["fire_iron_empty"] = {
        Source = "fire_empty", -- fire_empty
        -- Time = 23 / 25,--30,
        SoundTable = {{ s = {path .. "mech-01.ogg", path .. "mech-02.ogg", path .. "mech-03.ogg", path .. "mech-04.ogg", path .. "mech-05.ogg", path .. "mech-06.ogg"}, t = 0}},
    },

    ["fire_2bst"] = { -- both
        Source = "fireboth",
        -- Time = 35 / 25,--30,
        SoundTable = {{ s = {path .. "mech-01.ogg", path .. "mech-02.ogg", path .. "mech-03.ogg", path .. "mech-04.ogg", path .. "mech-05.ogg", path .. "mech-06.ogg"}, t = 0 }},
        MinProgress = 0.3
    },

    ["reload"] = {
        Source = "reload",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        ShellEjectAt = 0.91,
        SoundTable = {
            {s = common .. "cloth_4.ogg", t = 0},
            {s = path .. "open.ogg", t = 0.2},
            {s = path .. "eject.ogg", t = 0.8},
            {s = common .. "magpouch_pull_small.ogg", t = 1.0},
            {s = shellfall, t = 1.0},
            {s = common .. "cloth_2.ogg", t = 1.1},
            {s = path .. "struggle.ogg", t = 1.5, v = 0.5},
            {s = shellin, t = 1.8},
            {s = path .. "grab.ogg", t = 2.15, v = 0.5},
            {s = path .. "close.ogg", t = 2.3},
            {s = common .. "shoulder.ogg", t = 2.4},
            {s = path .. "shoulder.ogg", t = 2.675},
        },
        LHIK = true,
        LHIKIn = 0.5,
        LHIKOut = 0.5,
        MinProgress = 2.05,
    },
    ["reload_empty"] = {
        Source = "reload_empty",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        ShellEjectAt = 1.0,
        SoundTable = {
            {s = common .. "cloth_4.ogg", t = 0},
            {s = path .. "open.ogg", t = 0.3},
            {s = path .. "eject.ogg", t = 0.8},
            {s = shellfall, t = 0.9},
            {s = shellfall, t = 0.95},
            {s = common .. "cloth_2.ogg", t = 1.1},
            {s = common .. "magpouch_pull_small.ogg", t = 1.2},
            {s = path .. "struggle.ogg", t = 1.7, v = 0.5},
            {s = shellin, t = 1.85},
            {s = shellin, t = 1.9},
            {s = path .. "grab.ogg", t = 2.17, v = 0.5},
            {s = path .. "close.ogg", t = 2.3},
            {s = common .. "shoulder.ogg", t = 2.44},
            {s = path .. "shoulder.ogg", t = 2.6},
        },
        LHIK = true,
        LHIKIn = 0.5,
        LHIKOut = 0.5,
        MinProgress = 2.05,
    },

    ["reload_extractor"] = {
        Source = "reload2",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        ShellEjectAt = 0.4,
        SoundTable = {
            {s = common .. "cloth_4.ogg", t = 0},
            {s = path .. "open.ogg", t = 0.2},
            {s = common .. "magpouch_pull_small.ogg", t = 0.5},
            {s = shellfall, t = 0.4},
            {s = common .. "cloth_2.ogg", t = 0.6},
            {s = path .. "struggle.ogg", t = 1.0, v = 0.5},
            {s = shellin, t = 1.2},
            {s = path .. "grab.ogg", t = 1.5, v = 0.5},
            {s = path .. "close.ogg", t = 1.7},
            {s = common .. "shoulder.ogg", t = 1.8},
            {s = path .. "shoulder.ogg", t = 2.2},
        },
        LHIK = true,
        LHIKIn = 0.5,
        LHIKOut = 0.5,
        MinProgress = 1.3,
    },
    ["reload_empty_extractor"] = {
        Source = "reload2_empty",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        ShellEjectAt = 0.4,
        SoundTable = {
            {s = common .. "cloth_4.ogg", t = 0},
            {s = path .. "open.ogg", t = 0.2},
            {s = common .. "magpouch_pull_small.ogg", t = 0.5},
            {s = shellfall, t = 0.4},
            {s = shellfall, t = 0.45},
            {s = common .. "cloth_2.ogg", t = 0.6},
            {s = path .. "struggle.ogg", t = 1.0, v = 0.5},
            {s = shellin, t = 1.2},
            {s = shellin, t = 1.25},
            {s = path .. "grab.ogg", t = 1.5, v = 0.5},
            {s = path .. "close.ogg", t = 1.7},
            {s = common .. "shoulder.ogg", t = 1.8},
            {s = path .. "shoulder.ogg", t = 2.2},
        },
        LHIK = true,
        LHIKIn = 0.5,
        LHIKOut = 0.5,
        MinProgress = 1.3,
    },
}

SWEP.BulletBones = {
    --[1] = "1014_shell1",
}

-- Bodygroups --

SWEP.AttachmentElements = {
    ["barrel_mid"] = { VMBodygroups = { {ind = 1, bg = 1} } },
    ["barrel_compact"] = { VMBodygroups = { {ind = 1, bg = 4} } },
    ["barrel_sw"] = { VMBodygroups = { {ind = 1, bg = 2} } },
    ["barrel_swplus"] = { VMBodygroups = { {ind = 1, bg = 3}, {ind = 3, bg = 1} } },

    ["stock_sw"] = { VMBodygroups = { {ind = 2, bg = 1} } },
}

SWEP.DefaultBodygroups = "00000000"

SWEP.Attachments = {
    -- {
    --     PrintName = "Optic",
    --     DefaultAttName = "Iron Sights",
    --     Slot = {"optic_lp","optic"},
    --     Bone = "barrels",
    --     Offset = {
    --         vpos = Vector(0.5, -1.75, 1.5),
    --         vang = Angle(0, 90, 0),
    --     },
    --     VMScale = Vector(1,1,1),
    --     CorrectivePos = Vector(0, 0, -0.0),
    --     CorrectiveAng = Angle(0, 180, 0),
    -- },
    {
        PrintName = "Barrel",
        DefaultAttName = "26\" Factory Barrel",
        DefaultAttIcon = Material("entities/att/ur_dbs/blong.png", "smooth mips"),
        Slot = "ur_db_barrel",
        Bone = "body",
        Offset = {
            vpos = Vector(-0.4, -5, -6),
            vang = Angle(0, 90, 0),
        },
    },
    {
        PrintName = "Muzzle",
        Slot = "choke",
    },
    {
        PrintName = "Stock",
        Slot = {"ur_db_stock"},
        DefaultAttName = "Wooden Stock",
        DefaultAttIcon = Material("entities/att/ur_dbs/s.png", "smooth mips"),
    },
    {
        PrintName = "Ammo Type",
        DefaultAttName = "\"BUCK\" #00 Buckshot",
        DefaultAttIcon = Material("entities/att/arccw_uc_ammo_shotgun_generic.png", "mips smooth"),
        Slot = {"ud_ammo_shotgun"},
    },
    {
        PrintName = "Powder Load",
        Slot = "uc_powder",
        DefaultAttName = "Standard Load"
    },
    {
        PrintName = "Training Package",
        Slot = "uc_tp",
        DefaultAttName = "Basic Training"
    },
    {
        PrintName = "Internals",
        Slot = {"uc_fg_singleshot", "uc_db_fg"}, -- Fire group
        DefaultAttName = "Standard Internals"
    },
    {
        PrintName = "Charm",
        Slot = {"charm", "fml_charm", "uc_db_tp"},
        FreeSlot = true,
        Bone = "body",
        Offset = {
            vpos = Vector(-0.55, 1, -0.5),
            vang = Angle(0, 90, 0),
        },
    },
}