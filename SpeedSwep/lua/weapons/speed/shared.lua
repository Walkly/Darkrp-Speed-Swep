
if SERVER then -- Executes SERVER stuff

    AddCSLuaFile ("shared.lua")

    SWEP.Weight = 20

    SWEP.AutoSwitchTo        = false
    SWEP.AutoSwitchFrom      = false
	

end

if CLIENT then 

    SWEP.PrintName = "SpeedSwep"

    SWEP.Slot = 1
    SWEP.SlotPos = 4

    SWEP.DrawAmmo            = false
	SWEP.DrawCrosshair       = true
	SWEP.ViewModelFOV = 70
	
	surface.CreateFont( "PlyVel", {
	font = "Franklin Gothic Medium", 
	size = 60,
	weight = 10,
} )

   CreateClientConVar( "speed_EnableSpeedDetection", "0", true, false )

end

-----------------------------------------------------------
-- SWEP Information
-----------------------------------------------------------
SWEP.Author = "Lucify"
SWEP.Contact = "Steam"
SWEP.Instructions = "Left Click to have a faster speed"
SWEP.Spawnable        = true
SWEP.AdminSpawnable   = false
SWEP.ViewModelFlip    = false

SWEP.Category         = "Lucify' SWEPS"

SWEP.ViewModel        = Model("models/weapons/c_arms.mdl")

SWEP.UseHands = true
SWEP.Primary.ClipSize = 0
SWEP.Primary.DefaultClip = 0

SWEP.Primary.Automatic = false
SWEP.Primary.Ammo = "none"

SWEP.Secondary.ClipSize = 0
SWEP.Secondary.DefaultClip = 0
SWEP.Secondary.Automatic = false
SWEP.Secondary.Ammo = "none"
-----------------------------------------------------------
--SWEP Functions
-----------------------------------------------------------
function SWEP:PrimaryAttack()


  
  self:SetNextPrimaryFire( CurTime() + 1.5 )
  self.Owner:SetRunSpeed(500)---------------- change vaule higher if you want the run speed to be faster

     self:SetNextPrimaryFire( CurTime() + 1.5 )
  self.Owner:SetWalkSpeed(300)---------------- change vaule higher if you want the walk speed to be faster
   

end  

