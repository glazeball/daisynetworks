--[[
| This file was obtained through the combined efforts
| of Madbluntz & Plymouth Antiquarian Society.
|
| Credits: lifestorm, Gregory Wayne Rossel JR.,
| 	Maloy, DrPepper10 @ RIP, Atle!
|
| Visit for more: https://plymouth.thetwilightzone.ru/
--]]

ENT.Type            = "anim"

ENT.PrintName = "LBaseGunner"
ENT.Author = "Luna"
ENT.Information = "Luna's Vehicle Script"
ENT.Category = "[LVS]"

ENT.Spawnable       = false
ENT.AdminSpawnable  = false
ENT.DoNotDuplicate = true

ENT.LVS_GUNNER = true
ENT.VectorNull = Vector(0,0,0)

function ENT:SetupDataTables()
	self:NetworkVar( "Entity",0, "Driver" )
	self:NetworkVar( "Entity",1, "DriverSeat" )

	self:NetworkVar( "Int", 0, "PodIndex")
	self:NetworkVar( "Int", 1, "NWAmmo")
	self:NetworkVar( "Int", 2, "SelectedWeapon" )

	self:NetworkVar( "Float", 0, "NWHeat" )

	self:NetworkVar( "Vector", 0, "NWAimVector" )

	if SERVER then
		self:NetworkVarNotify( "SelectedWeapon", self.OnWeaponChanged )
	end
end

function ENT:UnlockAimVector()
	self._AimVectorUnlocked = true
end

function ENT:LockAimVector()
	self._AimVectorUnlocked = nil
end

function ENT:GetEyeTrace()
	local startpos = self:GetPos()

	local trace = util.TraceLine( {
		start = startpos,
		endpos = (startpos + self:GetAimVector() * 50000),
		filter = self:GetCrosshairFilterEnts()
	} )

	return trace
end

function ENT:GetAI()
	if IsValid( self:GetDriver() ) then return false end

	local veh = self:GetVehicle()

	if not IsValid( veh ) then return false end

	return veh:GetAI()
end

function ENT:GetAITEAM()
	local Base = self:GetVehicle()

	if not IsValid( Base ) then return 0 end

	return Base:GetAITEAM()
end

function ENT:GetVehicle()
	local Pod = self:GetParent()

	if not IsValid( Pod ) then return NULL end

	return Pod:GetParent()
end

function ENT:HasWeapon( ID )
	local Base = self:GetVehicle()

	if not IsValid( Base ) then return false end

	return istable( Base.WEAPONS[ self:GetPodIndex() ][ ID ] )
end

function ENT:AIHasWeapon( ID )
	local Base = self:GetVehicle()

	if not IsValid( Base ) then return false end

	local weapon = Base.WEAPONS[ self:GetPodIndex() ][ ID ]

	if not istable( weapon ) then return false end

	return weapon.UseableByAI
end

function ENT:GetActiveWeapon()
	local SelectedID = self:GetSelectedWeapon()

	local Base = self:GetVehicle()

	if not IsValid( Base ) then return {}, SelectedID end

	local CurWeapon = Base.WEAPONS[ self:GetPodIndex() ][ SelectedID ]

	return CurWeapon, SelectedID
end

function ENT:GetMaxAmmo()
	local CurWeapon = self:GetActiveWeapon()

	if not CurWeapon then return -1 end

	return CurWeapon.Ammo or -1
end

function ENT:GetCrosshairFilterEnts()
	local Base = self:GetVehicle()

	if not IsValid( Base ) then return {} end

	return Base:GetCrosshairFilterEnts()
end

function ENT:Sign( n )
	if n > 0 then return 1 end

	if n < 0 then return -1 end

	return 0
end

function ENT:VectorSubtractNormal( Normal, Velocity )
	local VelForward = Velocity:GetNormalized()

	local Ax = math.acos( math.Clamp( Normal:Dot( VelForward ) ,-1,1) )

	local Fx = math.cos( Ax ) * Velocity:Length()

	local NewVelocity = Velocity - Normal * math.abs( Fx )

	return NewVelocity
end

function ENT:VectorSplitNormal( Normal, Velocity )
	return math.cos( math.acos( math.Clamp( Normal:Dot( Velocity:GetNormalized() ) ,-1,1) ) ) * Velocity:Length()
end

function ENT:AngleBetweenNormal( Dir1, Dir2 )
	return math.deg( math.acos( math.Clamp( Dir1:Dot( Dir2 ) ,-1,1) ) )
end

function ENT:GetVehicleType()
	return "LBaseGunner"
end