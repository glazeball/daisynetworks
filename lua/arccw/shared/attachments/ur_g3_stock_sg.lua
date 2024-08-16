--[[
| This file was obtained through the combined efforts
| of Madbluntz & Plymouth Antiquarian Society.
|
| Credits: lifestorm, Gregory Wayne Rossel JR.,
| 	Maloy, DrPepper10 @ RIP, Atle!
|
| Visit for more: https://plymouth.thetwilightzone.ru/
--]]

att.PrintName = "G3 Padded Stock" 
att.AbbrevName = "Padded Stock"

if !GetConVar("arccw_truenames"):GetBool() then
    att.PrintName = "AG58 Marksman Stock"
end

att.Icon = Material("entities/att/ur_g3/stock_sg.png","smooth mips")
att.Description = [[Padded stock found on the marksman rifle variant of the rifle. The cheek padding reduces sway but weighs the stock down.]]
att.AutoStats = true
att.Slot = {"ur_g3_stock"}

att.SortOrder = 11


att.Mult_Sway = .75

att.Mult_SightTime = 1.075