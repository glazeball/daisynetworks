--[[
| This file was obtained through the combined efforts
| of Madbluntz & Plymouth Antiquarian Society.
|
| Credits: lifestorm, Gregory Wayne Rossel JR.,
| 	Maloy, DrPepper10 @ RIP, Atle!
|
| Visit for more: https://plymouth.thetwilightzone.ru/
--]]

att.PrintName = "Uzi .22 LR Conversion"
att.AbbrevName = ".22 LR"

if !GetConVar("arccw_truenames"):GetBool() then
    att.PrintName = "IAL-9 .22 LR Conversion"
end
att.Slot = "ud_uzi_caliber"

att.Icon = Material("entities/att/uc_bullets/22lr.png", "smooth mips")
att.Description = "A smaller cartridge that increases the fire rate and magazine capacity, as well as reduced recoil at the cost of greatly reduced damage and range."
att.Desc_Pros = {
}

att.Override_Trivia_Calibre = ".22 Long Rifle"
att.Override_Ammo = "plinking"

att.AutoStats = true

att.Mult_Damage = ArcCW.UC.CalConv("9mm", "22lr", "max")
att.Mult_DamageMin = ArcCW.UC.CalConv("9mm", "22lr", "min")
att.Mult_Penetration = ArcCW.UC.CalConv("9mm", "22lr", "pen")

att.Override_PhysTracerProfile = "uc_plinking"
att.Override_PhysBulletMuzzleVelocity = 365

att.Mult_Recoil = 0.25
att.Mult_VisualRecoilMult = 0.25
att.Mult_RPM = 1.5
att.Mult_ShootSpeedMult = 1.2

att.Mult_ClipSize = 1.2

att.Override_ShellModel = "models/weapons/arccw/uc_shells/22lr.mdl"
att.Override_ShellScale = 1
att.Override_ShellSounds = ArcCW.TinyShellSoundsTable

local path = "arccw_uc/common/"

local fire22 = {path .. "fire-22-01.ogg",path .. "fire-22-02.ogg",path .. "fire-22-03.ogg",path .. "fire-22-04.ogg",path .. "fire-22-05.ogg",path .. "fire-22-06.ogg"}
local fire22sup = {path .. "fire-22-sup-01.ogg",path .. "fire-22-sup-02.ogg",path .. "fire-22-sup-03.ogg",path .. "fire-22-sup-04.ogg",path .. "fire-22-sup-05.ogg",path .. "fire-22-sup-06.ogg"}

att.Hook_GetShootSound = function(wep, sound)
    if wep:GetBuff_Override("Silencer") then
        return fire22sup
    else
        return fire22
    end
end

local fire22dist = {path .. "fire-22-dist-01.ogg", path .. "fire-22-dist-02.ogg", path .. "fire-22-dist-03.ogg", path .. "fire-22-dist-04.ogg", path .. "fire-22-dist-05.ogg", path .. "fire-22-dist-06.ogg"}

att.Hook_GetDistantShootSoundOutdoors = function(wep, distancesound)
    if wep:GetBuff_Override("Silencer") then
        -- fallback to script
    else
        return fire22dist
    end
end


local fire22distint = {path .. "fire-dist-int-pistol-light-01.ogg", path .. "fire-dist-int-pistol-light-02.ogg", path .. "fire-dist-int-pistol-light-03.ogg", path .. "fire-dist-int-pistol-light-04.ogg", path .. "fire-dist-int-pistol-light-05.ogg", path .. "fire-dist-int-pistol-light-06.ogg"}

att.Hook_GetDistantShootSoundIndoors = function(wep, distancesound)
    if wep:GetBuff_Override("Silencer") then
        -- fallback to script
    else
        return fire22distint
    end
end

