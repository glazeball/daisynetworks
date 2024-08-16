--[[
| This file was obtained through the combined efforts
| of Madbluntz & Plymouth Antiquarian Society.
|
| Credits: lifestorm, Gregory Wayne Rossel JR.,
| 	Maloy, DrPepper10 @ RIP, Atle!
|
| Visit for more: https://plymouth.thetwilightzone.ru/
--]]

AddCSLuaFile()

ENT.Base                      = "arccw_ammo"
ENT.RenderGroup               = RENDERGROUP_TRANSLUCENT

ENT.PrintName                 = "Rifle Ammo"
ENT.Category                  = "ArcCW - Ammo"

ENT.Spawnable                 = true
ENT.Model                     = "models/items/arccw/rifle_ammo.mdl"

ENT.AmmoType = "ar2"
ENT.AmmoCount = 30

ENT.DetonationDamage = 50
ENT.DetonationRadius = 256
ENT.DetonationSound = "weapons/ar1/ar1_dist2.wav"