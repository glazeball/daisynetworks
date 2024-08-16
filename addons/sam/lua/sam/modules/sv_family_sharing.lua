--[[
| This file was obtained through the combined efforts
| of Madbluntz & Plymouth Antiquarian Society.
|
| Credits: lifestorm, Gregory Wayne Rossel JR.,
| 	Maloy, DrPepper10 @ RIP, Atle!
|
| Visit for more: https://plymouth.thetwilightzone.ru/
--]]

--
-- This checks if a player joined your server using a lent account that is banned
-- eg. player got banned so he decided to make an alt account and used https://store.steampowered.com/promotion/familysharing
--

--
-- Whitelisted players from checking if they have family sharing or not
-- You can have steamid/steamid64 here
--
local Whitelisted_SteamIDs = {
}

local BanMessage = "Bypassing a ban using an alt. (alt: %s)"

--
-- Do you want to kick players using family shared accounts?
--
local BlockFamilySharing = false
local BlockFamilySharingMessage = "This server blocked using shared accounts."

--
--
-- DO NOT TOUCH --
--
--

for k, v in pairs(Whitelisted_SteamIDs) do
	Whitelisted_SteamIDs[v] = true
	Whitelisted_SteamIDs[k] = nil
end

hook.Add("SAM.AuthedPlayer", "CheckSteamFamily", function(ply)
	local ply_steamid = ply:SteamID()
	local ply_steamid64 = ply:SteamID64()
	if Whitelisted_SteamIDs[ply_steamid] or Whitelisted_SteamIDs[ply_steamid64] then return end

	local lender = ply:OwnerSteamID64()

	if (ply_steamid64 == lender) then return end

	if BlockFamilySharing then
		ply:Kick(BlockFamilySharingMessage)
	else
		lender = util.SteamIDFrom64(lender)
		sam.player.is_banned(lender, function(banned)
			if banned then
				RunConsoleCommand("sam", "banid", ply_steamid, "0", BanMessage:format(lender))
			end
		end)
	end
end)