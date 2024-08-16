--[[
| This file was obtained through the combined efforts
| of Madbluntz & Plymouth Antiquarian Society.
|
| Credits: lifestorm, Gregory Wayne Rossel JR.,
| 	Maloy, DrPepper10 @ RIP, Atle!
|
| Visit for more: https://plymouth.thetwilightzone.ru/
--]]


ITEM.uniqueID = "languagebox_gaeilge"
ITEM.name = "Gaeilge Audiobook Box"
ITEM.description = "A box containing a full set of Audiobooks. How convenient."
ITEM.category = "Boxes"
ITEM.model = "models/items/item_item_crate.mdl"
ITEM.width = 2
ITEM.height = 2

ITEM.functions.Convert = {
	name = "Convert",
	icon = "icon16/wrench.png",
	OnRun = function(item)
		local client = item.player
		local inventory = client:GetCharacter():GetInventory()

		inventory:Add("audiobook_1Gaeilge", 1)
		inventory:Add("audiobook_2Gaeilge", 1)
		inventory:Add("audiobook_3Gaeilge", 1)
		inventory:Add("audiobook_4Gaeilge", 1)
		inventory:Add("audiobook_5Gaeilge", 1)		

		client:Notify("You have converted the " .. item.name .. " into its relevant Audiobook set.")
	end
}