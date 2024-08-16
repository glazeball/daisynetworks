--[[
| This file was obtained through the combined efforts
| of Madbluntz & Plymouth Antiquarian Society.
|
| Credits: lifestorm, Gregory Wayne Rossel JR.,
| 	Maloy, DrPepper10 @ RIP, Atle!
|
| Visit for more: https://plymouth.thetwilightzone.ru/
--]]

att.PrintName = "Desert Eagle .44 Magnum Conversion"
att.AbbrevName = ".44 Magnum"
att.Icon = Material("entities/att/uc_bullets/44magnum.png","smooth mips")
att.Description = "Smaller (comparatively speaking) caliber that retains most of .50 AE's iconic punch, but is small enough to fit an extra round in the magazine."

if !GetConVar("arccw_truenames"):GetBool() then
    att.PrintName = "Predator .44 Magnum Conversion"
end
-- Todo: alt shoot sound

att.AutoStats = true
att.Slot = "ur_deagle_caliber"

att.Mult_ClipSize = 1.15
att.Mult_Recoil = 0.85
att.Mult_Damage = 75 / 80
att.Mult_DamageMin = 16 / 12

att.Mult_ShootSpeedMult = 1.1
att.Mult_RPM = 1 + (1/6)

att.Override_Trivia_Calibre = att.AbbrevName -- E F F I C I E N C Y
att.Override_ShellModel = "models/weapons/arccw/uc_shells/9x19.mdl"
att.Override_ShellScale = 1

local path = ")^weapons/arccw_ur/sw329/"
local fire44 = {path .. "fire-01.ogg", path .. "fire-02.ogg", path .. "fire-03.ogg", path .. "fire-04.ogg", path .. "fire-05.ogg", path .. "fire-06.ogg"}

att.Hook_GetShootSound = function(wep, sound)
    if wep:GetBuff_Override("Silencer") then
        return fire44sup
    else
        return fire44
    end
end

local tail = ")/arccw_uc/common/44mag/"
local fire44dist = {tail .. "fire-dist-44mag-pistol-ext-01.ogg", tail .. "fire-dist-44mag-pistol-ext-02.ogg", tail .. "fire-dist-44mag-pistol-ext-03.ogg", tail .. "fire-dist-44mag-pistol-ext-04.ogg", tail .. "fire-dist-44mag-pistol-ext-05.ogg", tail .. "fire-dist-44mag-pistol-ext-06.ogg"}
local common = ")/arccw_uc/common/"

att.Hook_GetDistantShootSoundOutdoors = function(wep, distancesound)
    if wep:GetBuff_Override("Silencer") then
        -- fallback to script
    else
        return fire44dist
    end
end