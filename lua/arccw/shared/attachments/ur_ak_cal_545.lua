--[[
| This file was obtained through the combined efforts
| of Madbluntz & Plymouth Antiquarian Society.
|
| Credits: lifestorm, Gregory Wayne Rossel JR.,
| 	Maloy, DrPepper10 @ RIP, Atle!
|
| Visit for more: https://plymouth.thetwilightzone.ru/
--]]

att.PrintName = "AK-74 5.45x39mm Receiver"
att.AbbrevName = "5.45x39mm Receiver"

if !GetConVar("arccw_truenames"):GetBool() then
    att.PrintName = "KF-76 5.45x39mm Receiver"
end

att.Icon = Material("entities/att/uc_bullets/545x39.png", "mips smooth")
att.Description = "Lighter, more accurate cartridge that maintains wounding potential up close, but lacks penetration."
att.Slot = {"ur_ak_cal"}
att.AutoStats = true

att.SortOrder = 10

att.Override_Ammo = "smg1"
att.Override_Trivia_Calibre = "5.45x39mm Soviet"

att.Mult_Range = 1.2
att.Mult_RPM = 1.083 -- 650 rpm
att.Mult_SightedSpeedMult = 1.05
att.Mult_ReloadTime = .95
att.Mult_Recoil = .85
att.Mult_AccuracyMOA = .85
att.Mult_HipDispersion = .75

att.Mult_Penetration = .65
att.Mult_DamageMin = .8
att.Mult_Damage = .8
att.ShootPitchVariation = 1
att.Override_ShellModel = "models/weapons/arccw/uc_shells/545x39.mdl"
att.Override_ShellScale = 0.666
att.GivesFlags = {"cal_545"}

att.ActivateElements = {"mag_545_30"}
local path = ")weapons/arccw_ur/ak/545_39/"
local path1 = ")weapons/arccw_ur/ak/"
local tail = ")/arccw_uc/common/556x45/"
local fire545dist = {tail .. "fire-dist-556x45-rif-ext-01.ogg",tail .. "fire-dist-556x45-rif-ext-02.ogg",tail .. "fire-dist-556x45-rif-ext-03.ogg",tail .. "fire-dist-556x45-rif-ext-04.ogg",tail .. "fire-dist-556x45-rif-ext-05.ogg",tail .. "fire-dist-556x45-rif-ext-06.ogg"}
local fire545 = {path .. "fire-01.ogg", path .. "fire-02.ogg", path .. "fire-03.ogg", path .. "fire-04.ogg", path .. "fire-05.ogg", path .. "fire-06.ogg"}
local fire545supp = {path .. "fire-sup-01.ogg", path .. "fire-sup-02.ogg", path .. "fire-sup-03.ogg", path .. "fire-sup-04.ogg", path .. "fire-sup-05.ogg", path .. "fire-sup-06.ogg"}

att.Hook_GetShootSound = function(wep, fsound)
    if wep:GetBuff_Override("Silencer") then
        return fire545supp
    else
        return fire545
    end
end


att.Hook_GetDistantShootSoundOutdoors = function(wep, distancesound)
    if wep:GetBuff_Override("Silencer") then
        -- fallback to script
    else
        return fire545dist
    end
end

local slotinfo = {
    [6] = {"30-Round Mag", "30-Round Mag", Material("entities/att/ur_ak/magazines/545_30.png", "mips smooth")},
}
att.Hook_GetDefaultAttName = function(wep, slot)
    if slotinfo[slot] then
        return GetConVar("arccw_truenames"):GetBool() and slotinfo[slot][2] or slotinfo[slot][1]
    end
end
att.Hook_GetDefaultAttIcon = function(wep, slot)
    if slotinfo[slot] then
        return slotinfo[slot][3]
    end
end