--[[
| This file was obtained through the combined efforts
| of Madbluntz & Plymouth Antiquarian Society.
|
| Credits: lifestorm, Gregory Wayne Rossel JR.,
| 	Maloy, DrPepper10 @ RIP, Atle!
|
| Visit for more: https://plymouth.thetwilightzone.ru/
--]]

SWEP.Base = "tfa_nmrimelee_base"
SWEP.Category = "Willard Melee Weapons"
SWEP.Spawnable = true
SWEP.AdminSpawnable = true

SWEP.PrintName = "Machete"

SWEP.ViewModel			= "models/weapons/tfa_nmrih/v_me_machete.mdl" --Viewmodel path
SWEP.ViewModelFOV = 50

SWEP.WorldModel			= "models/weapons/tfa_nmrih/w_me_machete.mdl" --Viewmodel path
SWEP.HoldType = "melee"
SWEP.DefaultHoldType = "melee"
SWEP.Offset = { --Procedural world model animation, defaulted for CS:S purposes.
        Pos = {
        Up = -10,
        Right = 2,
        Forward = 4.0,
        },
        Ang = {
        Up = -1,
        Right = 5,
        Forward = 178
        },
		Scale = 1.0
}

SWEP.Primary.Sound = Sound("Weapon_Melee.MacheteLight")
SWEP.Secondary.Sound = Sound("Weapon_Melee.MacheteHeavy")

SWEP.MoveSpeed = 0.975
SWEP.IronSightsMoveSpeed  = SWEP.MoveSpeed

SWEP.InspectPos = Vector(15.069, -7.437, 10.85)
SWEP.InspectAng = Vector(26.03, 43.618, 54.874)

SWEP.Primary.Reach = 60
SWEP.Primary.RPM = 80
SWEP.Primary.SoundDelay = 0.1
SWEP.Primary.Delay = 0.25
SWEP.Primary.Damage = 60

SWEP.Secondary.RPM = 45 -- Delay = 60/RPM, this is only AFTER you release your heavy attack
SWEP.Secondary.Damage = 100
SWEP.Secondary.Reach = 55
SWEP.Secondary.SoundDelay = 0.05
SWEP.Secondary.Delay = 0.25

SWEP.Secondary.BashDamage = 15
SWEP.Secondary.BashDelay = 0.1
SWEP.Secondary.BashLength = 54
SWEP.Secondary.BashDamageType = DMG_GENERIC
SWEP.Secondary.BashHitSound = ""