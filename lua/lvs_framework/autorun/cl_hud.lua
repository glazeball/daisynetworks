--[[
| This file was obtained through the combined efforts
| of Madbluntz & Plymouth Antiquarian Society.
|
| Credits: lifestorm, Gregory Wayne Rossel JR.,
| 	Maloy, DrPepper10 @ RIP, Atle!
|
| Visit for more: https://plymouth.thetwilightzone.ru/
--]]


--LVS.HudForceDefault = true

LVS.HudEditors = LVS.HudEditors or {}
LVS.HudEditorsHide = {}

local function ResetFrame( id )
	if not LVS.HudEditors[ id ] then return end

	LVS.HudEditors[ id ].w = LVS.HudEditors[ id ].DefaultWidth
	LVS.HudEditors[ id ].h = LVS.HudEditors[ id ].DefaultHeight
	LVS.HudEditors[ id ].X = LVS.HudEditors[ id ].DefaultX
	LVS.HudEditors[ id ].Y = LVS.HudEditors[ id ].DefaultY
	LVS.HudEditorsHide[ id ] = nil
end

local function MakeFrame( id, X, Y, w, h, minw, minh, text )
	local Frame = vgui.Create("DFrame")
	Frame:SetSize( w, h )
	Frame:SetPos( X, Y )
	Frame:SetTitle( text )
	Frame:SetScreenLock( true )
	Frame:MakePopup()
	Frame:SetSizable( true )
	Frame:SetMinWidth( minw )
	Frame:SetMinHeight( minh )
	Frame.id = id
	Frame.OnClose = function( self )
		ResetFrame( self.id )
	end
	Frame.Paint = function(self, w, h )
		surface.SetDrawColor(0,0,0,150)
		surface.DrawRect(0, 0, w, h)

		surface.SetDrawColor(80,80,80,255)
		surface.DrawRect(0, 0, 2, h)
		surface.DrawRect(w - 2, 0, 2, h)
		surface.DrawRect(0, 0, w, 2)
		surface.DrawRect(0, h - 2, w, 2)

		if not LVS.HudEditors[ self.id ] then return end

		LVS.HudEditors[ self.id ].w = self:GetWide()
		LVS.HudEditors[ self.id ].h = self:GetTall()

		LVS.HudEditors[ self.id ].X = math.min( self:GetX(), ScrW() - self:GetWide() )
		LVS.HudEditors[ self.id ].Y = math.min( self:GetY(), ScrH() - self:GetTall() )
	end

	local DCheckbox = vgui.Create( "DCheckBoxLabel", Frame )
	DCheckbox:Dock( RIGHT )
	DCheckbox:DockMargin( 0, 0, 0, 0 )
	DCheckbox:SetText("Hide")	
	DCheckbox:SizeToContents()
	DCheckbox.id = id
	DCheckbox:SetChecked( LVS.HudEditorsHide[ id ] == true )
	DCheckbox.OnChange = function( self, bVal )
		if not self.id then return end

		if bVal then LVS.HudEditorsHide[ self.id ] = true return end

		LVS.HudEditorsHide[ self.id ] = nil
	end

	LVS.HudEditors[ id ].Frame = Frame

	return Frame
end

local ScreenWidth = ScrW()
local ScreenHeight = ScrH()

local function SaveEditors()
	if LVS.HudForceDefault then return end

	if ScreenWidth ~= ScrW() or ScreenHeight ~= ScrH() then return end -- player changed resolution while ingame... don't save because everything is fucked up now...

	local SaveString = ""
	for id, data in pairs( LVS.HudEditors ) do
		local w = data.w
		local h = data.h

		local X = math.min( data.X / ScrW(), 1 )
		local Y = math.min( data.Y / ScrH(), 1 )

		local hide = LVS.HudEditorsHide[ id ] and "?" or " "

		SaveString = SaveString..id.."~"..hide.."~"..w.."#"..h.."/"..X.."#"..Y.."\n"
	end

	file.Write( "lvs_hud_settings.txt", SaveString )
end

local function LoadEditors()
	if LVS.HudForceDefault then return end

	local LoadString = file.Read( "lvs_hud_settings.txt" )

	if not LoadString then return end

	for _, garbage in pairs( string.Explode( "\n", LoadString ) ) do
		local data1 = string.Explode( "~", garbage )

		if not data1[3] then continue end

		local data2 =  string.Explode( "/", data1[3] )

		local size = string.Explode( "#", data2[1] )
		local pos = string.Explode( "#", data2[2] )

		local ID = data1[1]

		if not LVS.HudEditors[ ID ] or not size[1] or not size[2] or not pos[1] or not pos[2] then continue end

		LVS.HudEditors[ ID ].w = size[1]
		LVS.HudEditors[ ID ].h = size[2]
		LVS.HudEditors[ ID ].X = math.min( pos[1] * ScrW(), ScrW() - size[1] )
		LVS.HudEditors[ ID ].Y = math.min( pos[2] * ScrH(), ScrH() - size[2] )

		if data1[2] == "?" then
			LVS.HudEditorsHide[ ID ] = true
		end
	end
end

function LVS:AddHudEditor( id, X, Y, w, h, minw, minh, text, func )
	LVS.HudEditors[ id ] = {
		DefaultX = X,
		DefaultY = Y,
		DefaultWidth = w,
		DefaultHeight = h,
		X = X,
		Y = Y,
		w = w,
		h = h,
		minw = minw,
		minh = minh,
		text = text,
		func = func,
	}
end

hook.Add( "OnContextMenuOpen", "!!!!!LVS_hud", function()
	if not IsValid( LocalPlayer():lvsGetVehicle() ) then return end

	if not GetConVar( "lvs_edit_hud" ):GetBool() then return end

	LVS:OpenEditors()

	return false
end )

hook.Add( "InitPostEntity", "!!!lvs_load_hud", function()
	LoadEditors()
end )

function LVS:OpenEditors()
	for id, editor in pairs( LVS.HudEditors ) do
		if IsValid( editor.Frame ) then continue end

		MakeFrame( id, editor.X, editor.Y, editor.w, editor.h, editor.minw, editor.minh, editor.text )
	end

	local T = CurTime()
	local ply = LocalPlayer()
	local pod = ply:GetVehicle()

	ply.SwitcherTime = T + 9999

	if not IsValid( pod ) then return end

	pod._SelectActiveTime = T + 9999
end

function LVS:CloseEditors()
	SaveEditors()

	for id, editor in pairs( LVS.HudEditors ) do
		if not IsValid( editor.Frame ) then continue end
		editor.Frame:Remove()
	end

	local T = CurTime()
	local ply = LocalPlayer()
	local pod = ply:GetVehicle()

	ply.SwitcherTime = T

	if not IsValid( pod ) then return end

	pod._SelectActiveTime = T
end

hook.Add( "OnContextMenuClose", "!!!!!LVS_hud", function()
	LVS:CloseEditors()
end )

function LVS:DrawDiamond( X, Y, radius, perc )
	if perc <= 0 then return end

	local segmentdist = 90

	draw.NoTexture()

	for a = 90, 360, segmentdist do
		local Xa = math.Round( math.sin( math.rad( -a ) ) * radius, 0 )
		local Ya = math.Round( math.cos( math.rad( -a ) ) * radius, 0 )

		local C = math.sqrt( radius ^ 2 + radius ^ 2 )

		if a == 90 then
			C = C * math.min(math.max(perc - 0.75,0) / 0.25,1)
		elseif a == 180 then
			C = C * math.min(math.max(perc - 0.5,0) / 0.25,1)
		elseif a == 270 then
			C = C * math.min(math.max(perc - 0.25,0) / 0.25,1)
		elseif a == 360 then
			C = C * math.min(math.max(perc,0) / 0.25,1)
		end

		if C > 0 then
			local AxisMoveX = math.Round( math.sin( math.rad( -a + 135) ) * (C + 3) * 0.5, 0 )
			local AxisMoveY =math.Round( math.cos( math.rad( -a + 135) ) * (C + 3) * 0.5, 0 )

			surface.DrawTexturedRectRotated(X - Xa - AxisMoveX, Y - Ya - AxisMoveY,3, math.ceil( C ), a - 45)
		end
	end
end

local function PaintIdentifier( ent )
	if not LVS.ShowIdent or LVS:IsIndicatorForced() then return end

	local VehicleIdentifierRange = ent.VehicleIdentifierRange
	local MyPos = ent:GetPos()
	local MyTeam = ent:GetAITEAM()

	for _, v in pairs( LVS:GetVehicles() ) do
		if not IsValid( v ) or v == ent then continue end

		local rPos = v:LocalToWorld( v:OBBCenter() )

		local Pos = rPos:ToScreen()
		local Dist = (MyPos - rPos):Length()

		if Dist > VehicleIdentifierRange or util.TraceLine( {start = ent:LocalToWorld( ent:OBBCenter() ),endpos = rPos,mask = MASK_NPCWORLDSTATIC,} ).Hit then continue end

		local Alpha = 255 * (1 - (Dist / VehicleIdentifierRange) ^ 2)
		local Team = v:GetAITEAM()
		local IndicatorColor = Color( 255, 0, 0, Alpha )

		if Team == 0 then
			if MyTeam == 0 then continue end

			IndicatorColor = Color( 0, 255, 0, Alpha )
		else
			if Team == 1 or Team == 2 then
				if Team ~= MyTeam and MyTeam ~= 0 then
					IndicatorColor = Color( 255, 0, 0, Alpha )
				else
					IndicatorColor = Color( 0, 127, 255, Alpha )
				end
			end
		end

		if Team > 3 then continue end

		v:LVSHudPaintVehicleIdentifier( Pos.x, Pos.y, IndicatorColor, v )
	end
end

hook.Add( "HUDPaint", "!!!!!LVS_hud", function()
	local ply = LocalPlayer()

	if ply:GetViewEntity() ~= ply then return end

	local Pod = ply:GetVehicle()
	local Parent = ply:lvsGetVehicle()

	if not IsValid( Pod ) or not IsValid( Parent ) then
		ply._lvsoldPassengers = {}

		return
	end

	local X = ScrW()
	local Y = ScrH()

	PaintIdentifier( Parent )
	Parent:LVSHudPaint( X, Y, ply )

	local base = Pod:lvsGetWeapon()
	if IsValid( base ) then
		local weapon = base:GetActiveWeapon()
		if weapon and weapon.HudPaint then
			weapon.HudPaint( base, X, Y, ply )
		end
	else
		local weapon = Parent:GetActiveWeapon()
		if ply == Parent:GetDriver() and weapon and weapon.HudPaint then
			weapon.HudPaint( Parent, X, Y, ply )
		end
	end

	for id, editor in pairs( LVS.HudEditors ) do
		if LVS.HudEditorsHide[ id ] then continue end

		local ScaleX = editor.w / editor.DefaultWidth
		local ScaleY = editor.h / editor.DefaultHeight

		local PosX = editor.X / ScaleX
		local PosY = editor.Y / ScaleY

		local Width = editor.w / ScaleX
		local Height = editor.h / ScaleY

		local ScrW = X / ScaleX
		local ScrH = Y / ScaleY

		if ScaleX == 1 and ScaleY == 1 then
			editor:func( Parent, PosX, PosY, Width, Height, ScrW, ScrH, ply )
		else
			local m = Matrix()
			m:Scale( Vector( ScaleX, ScaleY, 1 ) )

			cam.PushModelMatrix( m )
				editor:func( Parent, PosX, PosY, Width, Height, ScrW, ScrH, ply )
			cam.PopModelMatrix()
		end
	end
end )