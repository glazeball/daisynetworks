--[[
| This file was obtained through the combined efforts
| of Madbluntz & Plymouth Antiquarian Society.
|
| Credits: lifestorm, Gregory Wayne Rossel JR.,
| 	Maloy, DrPepper10 @ RIP, Atle!
|
| Visit for more: https://plymouth.thetwilightzone.ru/
--]]


function EFFECT:Init( data )

	self.Player = data:GetEntity()
	self.Origin = data:GetOrigin()
	self.Attachment = data:GetAttachment()
	self.Forward = data:GetNormal()
	self.Scale = data:GetScale()
	self.ColorR = data:GetColor()
	self.ColorG = data:GetHitBox()
	self.ColorB = data:GetMagnitude()

	if ( !IsValid( self.Player ) || !IsValid( self.Player:GetActiveWeapon() ) ) then return end

	self.Angle = self.Forward:Angle()
	self.Position = self:GetTracerShootPos( self.Origin, self.Player:GetActiveWeapon(), self.Attachment )

	if ( self.Position == self.Origin ) then
		local att = self.Player:GetAttachment( self.Player:LookupAttachment( "anim_attachment_RH" ) )
		if ( att ) then self.Position = att.Pos + att.Ang:Forward() * -2 end
	end

	local teh_effect = ParticleEmitter( self.Player:GetPos(), true )
	if ( !teh_effect ) then return end

	for i = 1, 50 * self.Scale do
		local particle = teh_effect:Add( "effects/splash4", self.Position )
		if ( particle ) then
			local Spread = 0.4
			particle:SetVelocity( ( Vector( math.sin( math.Rand( 0, 360 ) ) * math.Rand( -Spread, Spread ), math.cos( math.Rand( 0, 360 ) ) * math.Rand( -Spread, Spread ), math.sin( math.random() ) * math.Rand( -Spread, Spread ) ) + self.Forward ) * 750 )

			local ang = self.Angle
			if ( i / 2 == math.floor( i / 2 ) ) then ang = ( self.Forward * -1 ):Angle() end
			particle:SetAngles( ang )
			particle:SetDieTime( 0.25 )
			particle:SetColor( self.ColorR, self.ColorG, self.ColorB )
			particle:SetStartAlpha( 255 )
			particle:SetEndAlpha( 0 )
			particle:SetStartSize( 8 )
			particle:SetEndSize( 0 )
			particle:SetCollide( 1 )
			particle:SetCollideCallback( function( particleC, HitPos, normal )
				particleC:SetAngleVelocity( Angle( 0, 0, 0 ) )
				particleC:SetVelocity( Vector( 0, 0, 0 ) )
				particleC:SetPos( HitPos + normal * 0.1 )
				particleC:SetGravity( Vector( 0, 0, 0 ) )

				local angles = normal:Angle()
				angles:RotateAroundAxis( normal, particleC:GetAngles().y )
				particleC:SetAngles( angles )

				particleC:SetLifeTime( 0 )
				particleC:SetDieTime( 60 )
				particleC:SetStartSize( 8 )
				particleC:SetEndSize( 0 )
				particleC:SetStartAlpha( 128 )
				particleC:SetEndAlpha( 0 )
			end )
		end
	end

	teh_effect:Finish()
end

function EFFECT:Think()
	return false
end

function EFFECT:Render()
end
