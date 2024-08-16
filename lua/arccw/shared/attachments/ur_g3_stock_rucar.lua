--[[
| This file was obtained through the combined efforts
| of Madbluntz & Plymouth Antiquarian Society.
|
| Credits: lifestorm, Gregory Wayne Rossel JR.,
| 	Maloy, DrPepper10 @ RIP, Atle!
|
| Visit for more: https://plymouth.thetwilightzone.ru/
--]]

att.PrintName = "RU556 Fixed-Adjustable Stock"
att.AbbrevName = "Fixed-Adjustable Stock"
att.Icon = Material("entities/att/ur_g3/stock_ar.png","smooth mips")
if GetConVar("arccw_truenames"):GetBool() then
    att.PrintName = "Magpul UBR GEN2 Stock"
end

att.Description = [[AR-style buffer tube adapter fit with an adjustable aftermarket stock. Improves weapon control on the move, but lacks weight.]] -- i suggest you use settings from m16's fixed-adjustable stock
att.AutoStats = true
att.Slot = {"ur_g3_stock"}

att.SortOrder = 9

att.Mult_SpeedMult = 1.05
att.Mult_MoveDispersion = .6
att.Mult_SightTime = .9

att.Mult_Sway = 1.5
att.Mult_RecoilSide = 1.5