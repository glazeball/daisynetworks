--[[
| This file was obtained through the combined efforts
| of Madbluntz & Plymouth Antiquarian Society.
|
| Credits: lifestorm, Gregory Wayne Rossel JR.,
| 	Maloy, DrPepper10 @ RIP, Atle!
|
| Visit for more: https://plymouth.thetwilightzone.ru/
--]]

SWEP.Base = "arccw_base_nade"
SWEP.Spawnable = true -- this obviously has to be set to true
SWEP.Category = "ArcCW - GSO (Gear)" -- edit this if you like
SWEP.AdminOnly = false

SWEP.PrintName = "M84 Stun"
SWEP.Trivia_Class = "Hand Grenade"
SWEP.Trivia_Desc = "The M84 is the currently-issued stun grenade (\"flashbang\") of the United States Armed Forces and SWAT teams throughout the United States. Upon detonation, it emits an intensely loud \"bang\" of 170–180 decibels and a blinding flash of more than one million candela within five feet of initiation, sufficient to cause immediate flash blindness, deafness, tinnitus, and inner ear disturbance. Exposed personnel experience disorientation, confusion and loss of coordination and balance. While these effects are all intended to be temporary, there is risk of permanent injury. Consequently, the M84 is classified as a less-lethal weapon."
SWEP.Trivia_Manufacturer = "Picatinny Arsenal"
SWEP.Trivia_Calibre = "N/A"
SWEP.Trivia_Mechanism = "Magnesium/Ammonium Nitrate Mix"
SWEP.Trivia_Country = "USA"
SWEP.Trivia_Year = 1995

SWEP.Slot = 4

SWEP.NotForNPCs = true

SWEP.UseHands = true

SWEP.ViewModel = "models/weapons/arccw_go/v_eq_flashbang.mdl"
SWEP.WorldModel = "models/weapons/arccw_go/w_eq_flashbang_thrown.mdl"
SWEP.ViewModelFOV = 60

SWEP.WorldModelOffset = {
    pos = Vector(3, 2, -1),
    ang = Angle(-10, 0, 180)
}

SWEP.FuseTime = 2.5

SWEP.Throwing = true

SWEP.Primary.ClipSize = 1

SWEP.MuzzleVelocity = 1000
SWEP.ShootEntity = "arccw_thr_go_flash"

SWEP.TTTWeaponType = "weapon_ttt_confgrenade"
SWEP.NPCWeaponType = "weapon_grenade"
SWEP.NPCWeight = 50

SWEP.PullPinTime = 0.5

SWEP.Animations = {
    ["draw"] = {
        Source = "deploy",
    },
    ["pre_throw"] = {
        Source = "pullpin",
    },
    ["throw"] = {
        Source = "throw",
        TPAnim = ACT_HL2MP_GESTURE_RANGE_ATTACK_GRENADE,
        SoundTable = {
            {
                s = "arccw_go/hegrenade/grenade_throw.wav",
                t = 0
            }
        }
    }
}

sound.Add({
    name = "ARCCW_GO_GRENADE.PullPin_Grenade_Start",
    channel = 16,
    volume = 1.0,
    sound = "arccw_go/hegrenade/pinpull_start.wav"
})

sound.Add({
    name = "ARCCW_GO_GRENADE.PullPin_Grenade",
    channel = 16,
    volume = 1.0,
    sound = "arccw_go/hegrenade/pinpull.wav"
})