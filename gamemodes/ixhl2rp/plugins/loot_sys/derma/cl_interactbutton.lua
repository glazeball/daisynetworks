--[[
| This file was obtained through the combined efforts
| of Madbluntz & Plymouth Antiquarian Society.
|
| Credits: lifestorm, Gregory Wayne Rossel JR.,
| 	Maloy, DrPepper10 @ RIP, Atle!
|
| Visit for more: https://plymouth.thetwilightzone.ru/
--]]


local blur = Material("pp/blurscreen")
function draw.Blur(panel, amount)
    local x, y = panel:LocalToScreen(0, 0)
    local scrW, scrH = ScrW(), ScrH()
    surface.SetDrawColor(255, 255, 255)
    surface.SetMaterial(blur)
    for i = 1, 3 do
	    blur:SetFloat("$blur", (i / 3) * (amount or 6))
	    blur:Recompute()
	    render.UpdateScreenEffectTexture()
	    surface.DrawTexturedRect(x * -1, y * -1, scrW, scrH)
    end
end

local function DrawOutlined(w,h)
    surface.SetDrawColor( 255, 94, 94) 
	
	--surface.DrawLine(w, h, w-w, h)


	surface.DrawLine(w-w, h-1, w, h-1)
	surface.DrawLine(w-w, h-h, w-w, h)
	surface.DrawLine(w-w, h-h, w, h-h)
	surface.DrawLine(w-1, h-h, w-1, h)

end

local buttonPadding = ScreenScale(14) * 0.5
local animationTime = 0.5

-- base menu button
DEFINE_BASECLASS("DButton")
local PANEL = {}

AccessorFunc(PANEL, "backgroundColor", "BackgroundColor")
AccessorFunc(PANEL, "backgroundAlpha", "BackgroundAlpha")

function PANEL:Init()
	self:SetFont("MenuFontNoClamp")
	self:SetTextColor(color_white)
	self:SetPaintBackground(false)
	self:SetContentAlignment(5)
	self:SetTextInset(buttonPadding, 0)

	self.padding = {32, 12, 32, 12} -- left, top, right, bottom
	self.backgroundColor = Color(0, 0, 0)
	self.backgroundAlpha = 128
	self.currentBackgroundAlpha = 0
end

function PANEL:GetPadding()
	return self.padding
end

function PANEL:SetPadding(left, top, right, bottom)
	self.padding = {
		left or self.padding[1],
		top or self.padding[2],
		right or self.padding[3],
		bottom or self.padding[4]
	}
end

function PANEL:SetText(text, noTranslation)
	BaseClass.SetText(self, noTranslation and text:utf8upper() or L(text):utf8upper())
end

function PANEL:SizeToContents()
	BaseClass.SizeToContents(self)

	local width, height = self:GetSize()
	self:SetSize(width + self.padding[1] + self.padding[3], height + self.padding[2] + self.padding[4])
end

--function PANEL:PaintBackground(width, height)
--	surface.SetDrawColor(ColorAlpha(self.backgroundColor, self.currentBackgroundAlpha))
--	surface.DrawRect(0, 0, width, height)
--end

function PANEL:Paint(width, height)
	surface.SetDrawColor(Color(0, 0, 0, 100))
    surface.DrawRect(0, 0, width, height)

    surface.SetDrawColor(Color(111, 111, 136, (255 / 100 * 30)))
    surface.DrawOutlinedRect(0, 0, width, height)
end

function PANEL:SetTextColorInternal(color)
	BaseClass.SetTextColor(self, color)
	self:SetFGColor(color)
end

function PANEL:SetTextColor(color)
	self:SetTextColorInternal(color)
	self.color = color
end

function PANEL:SetDisabled(bValue)
	local color = self.color

	if (bValue) then
		self:SetTextColorInternal(Color(math.max(color.r - 60, 0), math.max(color.g - 60, 0), math.max(color.b - 60, 0)))
	else
		self:SetTextColorInternal(color)
	end

	BaseClass.SetDisabled(self, bValue)
end

function PANEL:OnCursorEntered()
	if (self:GetDisabled()) then
		return
	end

	local w = self:GetWide()
	local h = self:GetTall()

	local color = self:GetTextColor()
	self:SetTextColorInternal(Color(math.max(color.r - 25, 0), math.max(color.g - 25, 0), math.max(color.b - 25, 0)))

	self:CreateAnimation(0.15, {
		target = {currentBackgroundAlpha = self.backgroundAlpha}
	}) 


	LocalPlayer():EmitSound("Helix.Rollover")
end

function PANEL:OnCursorExited()
	if (self:GetDisabled()) then
		return
	end

	if (self.color) then
		self:SetTextColor(self.color)
	else
		self:SetTextColor(color_white)
	end

	self:CreateAnimation(0.15, {
		target = {currentBackgroundAlpha = 0}
	})
end

function PANEL:OnMousePressed(code)
	if (self:GetDisabled()) then
		return
	end

	if (self.color) then
		self:SetTextColor(self.color)
	else
		self:SetTextColor(ix.config.Get("color"))
	end

	LocalPlayer():EmitSound("Helix.Press")

	if (code == MOUSE_LEFT and self.DoClick) then
		self:DoClick(self)
	elseif (code == MOUSE_RIGHT and self.DoRightClick) then
		self:DoRightClick(self)
	end
end

function PANEL:OnMouseReleased(key)
	if (self:GetDisabled()) then
		return
	end

	if (self.color) then
		self:SetTextColor(self.color)
	else
		self:SetTextColor(color_white)
	end
end

vgui.Register("ixInteractButton", PANEL, "DButton")
