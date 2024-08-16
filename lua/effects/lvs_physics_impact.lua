--[[
| This file was obtained through the combined efforts
| of Madbluntz & Plymouth Antiquarian Society.
|
| Credits: lifestorm, Gregory Wayne Rossel JR.,
| 	Maloy, DrPepper10 @ RIP, Atle!
|
| Visit for more: https://plymouth.thetwilightzone.ru/
--]]


local Materials = {
	"particle/smokesprites_0001",
	"particle/smokesprites_0002",
	"particle/smokesprites_0003",
	"particle/smokesprites_0004",
	"particle/smokesprites_0005",
	"particle/smokesprites_0006",
	"particle/smokesprites_0007",
	"particle/smokesprites_0008",
	"particle/smokesprites_0009",
	"particle/smokesprites_0010",
	"particle/smokesprites_0011",
	"particle/smokesprites_0012",
	"particle/smokesprites_0013",
	"particle/smokesprites_0014",
	"particle/smokesprites_0015",
	"particle/smokesprites_0016"
}

function EFFECT:Init( data )
	if not LVS.ShowPhysicsEffects then return end

	local pos  = data:GetOrigin()

	local emitter = ParticleEmitter( pos, false )

	for i = 0,4 do
		local particle = emitter:Add( Materials[ math.random(1, #Materials ) ], pos )
		
		local vel = VectorRand() * 200
		
		if particle then			
			particle:SetVelocity( vel )
			particle:SetDieTime( math.Rand(2.5,5) )
			particle:SetAirResistance( 100 ) 
			particle:SetStartAlpha( 50 )
			particle:SetStartSize( 50 )
			particle:SetEndSize( 200 )
			particle:SetRoll( math.Rand(-5,5) )
			particle:SetColor( 30,30,20 )
			particle:SetGravity( Vector(0,0,20) )
			particle:SetCollide( false )
		end
	end
	
	emitter:Finish()
end

function EFFECT:Think()
	return false
end

function EFFECT:Render()
end
