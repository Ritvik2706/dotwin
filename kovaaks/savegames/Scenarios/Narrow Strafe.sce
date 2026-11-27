Name=Narrow Strafe
PlayerCharacters=player_char
BotCharacters=narrow_bot.bot
IsChallenge=true
Timelimit=60.0
PlayerProfile=player_char
AddedBots=narrow_bot.bot
PlayerMaxLives=0
BotMaxLives=0
PlayerTeam=1
BotTeams=2
ScoreToWin=0.0
ScorePerDamage=1.0
ScorePerKill=10.0
ScorePerMidairDirect=0.0
ScorePerAnyDirect=0.0
ScoreLossPerDamageTaken=0.0
ScoreLossPerDeath=0.0
ScoreLossPerMidairDirected=0.0
ScoreLossPerAnyDirected=0.0
ScoreMultAccuracy=true
ScoreMultDamageEfficiency=false
ScoreMultKillEfficiency=false
ScorePerTime=0.0
ScorePerDistance=0.0
MBSEnable=false
MBSTime1=0.25
MBSTime2=0.5
MBSTime3=0.75
MBSTime1Mult=1.0
MBSTime2Mult=2.0
MBSTime3Mult=3.0
MBSFBInstead=false
MBSRequireEnemyAlive=false
MaxDistanceTraveledScore=0.0
MaxMBSScore=0.0
DistanceScoreCondition=None
DistScoreCondAcceptTime=0.2
ScoreLossPerMiss=0.0
MultSqrtAcc=false
EnableOverDamage=true
MapName=narrow_strafe.map
MapScale=10.0
BlockProjectilePredictors=true
BlockCheats=true
InvinciblePlayer=true
InvincibleBots=true
Timescale=1.0
BlockHealthbars=false
TimeRefilledByKill=0.0
BlockHitMarkers=false
BlockHitSounds=false
BlockMissSounds=false
BlockFCT=true
LockFOVRange=true
LockedFOVMin=90.0
LockedFOVMax=120.0
LockedFOVScale=Clamped Horizontal
EndChallengeAfterKills=0.0
EndChallengeAfterDamage=0.0
GameTag=Narrow Strafe
WeaponHeroTag=LG
AimTypeTag=Tracking
AimSubTypeTag=Reactivity
AimTypeFlicking=false
AimTypeProjectile=false
AimTypePlayerMovement=false
DifficultyTag=3
AuthorsTag=NFNT
Description=Various strafe actions in a narrow area
GameVersion=3.0.1
ScenarioVersion=Initial

[Bot Profile]
Name=narrow_bot
DodgeProfileNames=narrow_dodge
DodgeProfileWeights=1.0
DodgeProfileMaxChangeTime=5.0
DodgeProfileMinChangeTime=1.0
WeaponsProfileNames=;;;;;;;
WeaponProfileWeights=1.0;1.0;1.0;1.0;1.0;1.0;1.0;1.0
AimingProfileNames=;;;;;;;
WeaponSwitchTime=3.0
UseWeapons=false
CharacterProfile=narrow_char
SeeThroughWalls=false
NoDodging=false
StandStillUntilHurt=false
NoAiming=false
AbilityUseTimer=0.1
UseAbilityFrequency=1.0
UseAbilityFreqMinTime=0.3
UseAbilityFreqMaxTime=0.6
ShowLaser=false
LaserRgb=X=1.000 Y=0.300 Z=0.000
LaserAlpha=1.0
RandomizeDodgeProfiles=true
RepeatDodgeProfileEntries=true
UseMinimumRespawnTime=true
DisableScoring=false

[Character Profile]
Name=player_char
MaxHealth=100.0
WeaponProfileNames=LG HS v5;;;;;;;
MinRespawnDelay=1.0
MaxRespawnDelay=5.0
StepUpHeight=75.0
CrouchHeightModifier=0.5
CrouchAnimationSpeed=1.0
CameraOffset=X=0.000 Y=0.000 Z=0.000
HeadshotOnly=false
DamageKnockbackFactor=8.0
MaxSpeed=0.0
MaxCrouchSpeed=500.0
Acceleration=16000.0
Friction=8.0
BrakingFrictionFactor=2.0
JumpVelocity=800.0
Gravity=0.0
AirControl=0.25
CanCrouch=true
CanPogoJump=false
CanCrouchInAir=false
CanJumpFromCrouch=false
// Note: the color channel values are interpreted as 0.0 (0%) to 1.0 (100%) going over 1.0 will start to produce a glow effect when the user is in HDR mode (SceneColor is set to "Medium" or higher)
EnemyBodyColor=X=255.000 Y=0.000 Z=0.000
EnemyBodyColorOnHit=X=1.000 Y=1.000 Z=1.000
EnemyBodyColorOnLookAt=X=1.000 Y=1.000 Z=1.000
EnemyHeadColor=X=255.000 Y=255.000 Z=255.000
EnemyHeadColorOnHit=X=1.000 Y=1.000 Z=1.000
EnemyHeadColorOnLookAt=X=1.000 Y=1.000 Z=1.000
TeamBodyColor=X=0.000 Y=0.000 Z=255.000
TeamHeadColor=X=255.000 Y=255.000 Z=255.000
MainBBType=Cylindrical
MainBBHeight=230.0
MainBBRadius=55.0
MainBBHasHead=true
MainBBHeadRadius=45.0
MainBBHeadOffset=0.0
MainBBHide=true
ProjBBType=Cylindrical
ProjBBHeight=230.0
ProjBBRadius=55.0
ProjBBHasHead=true
ProjBBHeadRadius=45.0
ProjBBHeadOffset=0.0
ProjBBHide=true
BlockSelfDamage=false
InvinciblePlayer=false
InvincibleBots=false
BlockTeamDamage=false
HasJetpack=false
JetpackActivationDelay=0.2
JetpackFullFuelTime=4.0
JetpackFuelIncPerSec=1.0
JetpackFuelRegensInAir=false
JetpackThrust=6000.0
JetpackMaxZVelocity=400.0
JetpackAirControlWithThrust=0.25
AirJumpCount=0
AirJumpVelocity=800.0
AbilityProfileNames=
HideWeapon=true
AerialFriction=0.0
StrafeSpeedMult=1.0
BackSpeedMult=1.0
RespawnInvulnTime=0.0
BlockedSpawnRadius=0.0
BlockSpawnFOV=0.0
BlockSpawnDistance=0.0
RespawnAnimationDuration=0.5
AllowBufferedJumps=true
BounceOffWalls=false
LeanAngle=0.0
LeanDisplacement=0.0
AirJumpExtraControl=0.0
ForwardSpeedBias=1.0
HealthRegainedonkill=0.0
HealthRegenPerSec=0.0
HealthRegenDelay=0.0
JumpSpeedPenaltyDuration=0.0
JumpSpeedPenaltyPercent=0.25
ThirdPersonCamera=false
TPSArmLength=300.0
TPSOffset=X=0.000 Y=150.000 Z=150.000
BrakingDeceleration=2048.0
TerminalVelocity=0.0
CharacterModel=None
CharacterSkin=Default
MeshHitDetection=false
SpawnOffsetMin=X=-0.000 Y=0.000 Z=0.000
SpawnOffsetMax=X=-0.000 Y=0.000 Z=0.000
InvertBlockedSpawn=false
ViewBobTime=0.0
ViewBobAngleAdjustment=0.0
ViewBobCameraZOffset=0.0
ViewBobAffectsShots=false
IsFlyer=false
FlightObeysPitch=false
FlightVelocityUp=800.0
FlightAccelUp=800.0
FlightVelocityDown=800.0
FlightAccelDown=800.0
IsFlyUpOnJumpAndCrouch=false
LifeStealPercent=0.0
AbilityGlobalCooldown=0.0
DragCoefficient=10.0
AmmoRegainedOnKill=0
ContinuousGroundFriction=0.0
ContinuousAirFriction=0.0
ScaledGroundAcceleration=0.0
ScaledAirAcceleration=0.0
MaxAirSpeed=0.0
StopSpeed=0.0
StopSpeedThreshold=0.0
ClampVelocityToInputSpeed=true
JumpSkipsFriction=false
EnableQuakeMovement=false
EnableQuakeJump=false
KtJump=0.0
TeamGlowUpHead=0.0
TeamGlowUpBody=0.0
EnemyGlowUpHead=0.0
EnemyGlowUpBody=0.0
EnemyGlowUpHeadOnHit=0.0
EnemyGlowUpBodyOnHit=0.0
EnemyGlowUpHeadOnLookAt=0.0
EnemyGlowUpBodyOnLookAt=0.0
PlaybackOnSpawn=

[Character Profile]
Name=narrow_char
MaxHealth=100.0
WeaponProfileNames=;;;;;;;
MinRespawnDelay=1.0
MaxRespawnDelay=5.0
StepUpHeight=75.0
CrouchHeightModifier=0.6
CrouchAnimationSpeed=1.0
CameraOffset=X=0.000 Y=0.000 Z=0.000
HeadshotOnly=false
DamageKnockbackFactor=0.0
MaxSpeed=1400.0
MaxCrouchSpeed=200.0
Acceleration=20000.0
Friction=8.0
BrakingFrictionFactor=2.0
JumpVelocity=1600.0
Gravity=6.0
AirControl=0.1
CanCrouch=true
CanPogoJump=false
CanCrouchInAir=false
CanJumpFromCrouch=false
// Note: the color channel values are interpreted as 0.0 (0%) to 1.0 (100%) going over 1.0 will start to produce a glow effect when the user is in HDR mode (SceneColor is set to "Medium" or higher)
EnemyBodyColor=X=255.000 Y=0.000 Z=0.000
EnemyBodyColorOnHit=X=1.000 Y=1.000 Z=1.000
EnemyBodyColorOnLookAt=X=1.000 Y=1.000 Z=1.000
EnemyHeadColor=X=255.000 Y=255.000 Z=255.000
EnemyHeadColorOnHit=X=1.000 Y=1.000 Z=1.000
EnemyHeadColorOnLookAt=X=1.000 Y=1.000 Z=1.000
TeamBodyColor=X=0.000 Y=0.000 Z=255.000
TeamHeadColor=X=255.000 Y=255.000 Z=255.000
MainBBType=Cylindrical
MainBBHeight=320.0
MainBBRadius=65.0
MainBBHasHead=true
MainBBHeadRadius=55.0
MainBBHeadOffset=-10.0
MainBBHide=true
ProjBBType=Cylindrical
ProjBBHeight=320.0
ProjBBRadius=65.0
ProjBBHasHead=true
ProjBBHeadRadius=55.0
ProjBBHeadOffset=-10.0
ProjBBHide=true
BlockSelfDamage=false
InvinciblePlayer=false
InvincibleBots=false
BlockTeamDamage=false
HasJetpack=false
JetpackActivationDelay=0.2
JetpackFullFuelTime=4.0
JetpackFuelIncPerSec=1.0
JetpackFuelRegensInAir=false
JetpackThrust=6000.0
JetpackMaxZVelocity=400.0
JetpackAirControlWithThrust=0.25
AirJumpCount=0
AirJumpVelocity=800.0
AbilityProfileNames=
HideWeapon=true
AerialFriction=0.0
StrafeSpeedMult=1.0
BackSpeedMult=0.0
RespawnInvulnTime=0.0
BlockedSpawnRadius=0.0
BlockSpawnFOV=0.0
BlockSpawnDistance=0.0
RespawnAnimationDuration=0.5
AllowBufferedJumps=true
BounceOffWalls=false
LeanAngle=0.0
LeanDisplacement=0.0
AirJumpExtraControl=0.0
ForwardSpeedBias=0.1
HealthRegainedonkill=0.0
HealthRegenPerSec=0.0
HealthRegenDelay=0.0
JumpSpeedPenaltyDuration=0.0
JumpSpeedPenaltyPercent=0.25
ThirdPersonCamera=false
TPSArmLength=300.0
TPSOffset=X=0.000 Y=150.000 Z=150.000
BrakingDeceleration=2048.0
TerminalVelocity=0.0
CharacterModel=None
CharacterSkin=Default
MeshHitDetection=false
SpawnOffsetMin=X=-0.000 Y=0.000 Z=0.000
SpawnOffsetMax=X=-0.000 Y=0.000 Z=0.000
InvertBlockedSpawn=false
ViewBobTime=0.0
ViewBobAngleAdjustment=0.0
ViewBobCameraZOffset=0.0
ViewBobAffectsShots=false
IsFlyer=false
FlightObeysPitch=false
FlightVelocityUp=800.0
FlightAccelUp=800.0
FlightVelocityDown=800.0
FlightAccelDown=800.0
IsFlyUpOnJumpAndCrouch=false
LifeStealPercent=0.0
AbilityGlobalCooldown=0.0
DragCoefficient=10.0
AmmoRegainedOnKill=0
ContinuousGroundFriction=0.0
ContinuousAirFriction=0.0
ScaledGroundAcceleration=0.0
ScaledAirAcceleration=0.0
MaxAirSpeed=0.0
StopSpeed=0.0
StopSpeedThreshold=0.0
ClampVelocityToInputSpeed=true
JumpSkipsFriction=false
EnableQuakeMovement=false
EnableQuakeJump=false
KtJump=0.0
TeamGlowUpHead=0.0
TeamGlowUpBody=0.0
EnemyGlowUpHead=0.0
EnemyGlowUpBody=0.0
EnemyGlowUpHeadOnHit=0.0
EnemyGlowUpBodyOnHit=0.0
EnemyGlowUpHeadOnLookAt=0.0
EnemyGlowUpBodyOnLookAt=0.0
PlaybackOnSpawn=

[Dodge Profile]
Name=narrow_dodge
MaxTargetDistance=2500.0
MinTargetDistance=750.0
ToggleLeftRight=true
ToggleForwardBack=false
MinLRTimeChange=0.3
MaxLRTimeChange=0.4
MinFBTimeChange=0.2
MaxFBTimeChange=0.5
DamageReactionChangesDirection=false
DamageReactionChanceToIgnore=0.5
DamageReactionMinimumDelay=0.125
DamageReactionMaximumDelay=0.25
DamageReactionCooldown=1.0
DamageReactionThreshold=0.0
DamageReactionResetTimer=0.1
JumpFrequency=0.2
CrouchInAirFrequency=0.0
CrouchOnGroundFrequency=0.1
TargetStrafeOverride=Ignore
TargetStrafeMinDelay=0.125
TargetStrafeMaxDelay=0.25
MinProfileChangeTime=0.0
MaxProfileChangeTime=0.0
MinCrouchTime=0.2
MaxCrouchTime=0.3
MinJumpTime=0.2
MaxJumpTime=0.3
AlterateJumpCrouchInput=false
ToggleUpDownMinTime=0.2
ToggleUpDownMaxTime=0.5
UpDownSwapPauseMinTime=0.0
UpDownSwapPauseMaxTime=0.0
LeftStrafeTimeMult=0.8
RightStrafeTimeMult=0.8
StrafeSwapMinPause=0.1
StrafeSwapMaxPause=0.2
BlockedMovementPercent=0.5
BlockedMovementReactionMin=0.125
BlockedMovementReactionMax=0.2
WaypointLogic=Ignore
WaypointTurnRate=200.0
MinTimeBeforeShot=0.15
MaxTimeBeforeShot=0.25
IgnoreShotChance=0.0
ForwardTimeMult=1.0
BackTimeMult=1.0
DamageReactionChangesFB=false
CooldownTime=0.0
DamageReactionTriggersProfileChange=false
LOSReactType=None
LOSReactInitMin=0.175
LOSReactInitMax=0.25
LOSReactChanceIgnore=0.0
LOSReactCooldownTime=1.0
LOSReactDurationMin=1.0
LOSReactDurationMax=1.0
LOSReactKillBot=false
LOSReactKillBotTimerMin=0.5
LOSReactKillBotTimerMax=0.75
PlaybackProfile=
InitialForwardMovementState=Forward
InitialRightMovementState=Random

[Weapon Profile]
Name=LG HS v5
Type=Hitscan
ShotsPerClick=1
DamagePerShot=1.0
KnockbackFactor=0.0
TimeBetweenShots=0.05
Pierces=false
Category=FullyAuto
BurstShotCount=1
TimeBetweenBursts=0.5
ChargeStartDamage=10.0
ChargeStartVelocity=X=500.000 Y=0.000 Z=0.000
ChargeTimeToAutoRelease=2.0
ChargeTimeToCap=1.0
MuzzleVelocityMin=X=2000.000 Y=0.000 Z=0.000
MuzzleVelocityMax=X=2000.000 Y=0.000 Z=0.000
InheritOwnerVelocity=0.0
OriginOffset=X=0.000 Y=0.000 Z=0.000
MaxTravelTime=5.0
MaxHitscanRange=100000.0
GravityScale=1.0
HeadshotCapable=true
HeadshotMultiplier=10.0
CooldownType=InfiniteUse
MagazineMax=0
ReloadTimeFromEmpty=0.1
ReloadTimeFromPartial=0.1
CooldownTimer=0.8
MaxCharges=3
DamageFalloffStartDistance=100000.0
DamageFalloffStopDistance=100000.0
DamageAtMaxRange=10.0
DelayBeforeShot=0.0
ProjectileGraphic=Ball
VisualLifetime=0.00001
Explosive=false
Radius=500.0
DamageAtCenter=100.0
DamageAtEdge=0.0
SelfDamageMultiplier=0.5
ExplodesOnContactWithEnemy=false
DelayAfterEnemyContact=0.0
ExplodesOnContactWithWorld=false
DelayAfterWorldContact=0.0
ExplodesOnNextAttack=false
DelayAfterSpawn=0.0
BlockedByWorld=false
ClearAttackersOnSelfDmg=false
BounceOffWorld=false
BounceFactor=0.5
BounceCount=0
HomingProjectileAcceleration=0.0
SpreadSSA=1.0,1.0,-1.0,0.0
SpreadSCA=1.0,1.0,-1.0,0.0
SpreadMSA=1.0,1.0,-1.0,0.0
SpreadMCA=1.0,1.0,-1.0,0.0
SpreadSSH=1.0,1.0,-1.0,0.0
SpreadSCH=1.0,1.0,-1.0,0.0
SpreadMSH=1.0,1.0,-1.0,0.0
SpreadMCH=1.0,1.0,-1.0,0.0
MaxRecoilUp=0.0
MinRecoilUp=0.0
MinRecoilHoriz=0.0
MaxRecoilHoriz=0.0
FirstShotRecoilMult=1.0
RecoilAutoReset=false
TimeToRecoilPeak=0.05
TimeToRecoilReset=0.35
ProjectileWorldHitRadius=1.0
ProjectileEnemyHitRadius=1.0
CanAimDownSight=false
ADSZoomSensFactor=0.7
ADSMoveFactor=1.0
ADSStartDelay=0.0
AAMode=0
AAPreferClosestPlayer=false
AAAlpha=0.05
AAMaxSpeed=1.0
AADeadZone=0.0
AAFOV=30.0
AANeedsLOS=true
TrackHorizontal=true
TrackVertical=true
AABlocksMouse=false
AAOffTimer=0.0
AABackOnTimer=0.0
TriggerBotEnabled=false
TriggerBotDelay=0.0
TriggerBotFOV=1.0
StickyLock=false
HeadLock=false
VerticalOffset=0.0
DisableLockOnKill=false
ShootSoundCooldown=0.08
HitSoundCooldown=0.08
ShootSound=Shot
HitscanVisualOffset=X=0.000 Y=0.000 Z=-50.000
ADSBlocksShooting=false
ShootingBlocksADS=false
KnockbackFactorAir=0.0
RecoilNegatable=false
DecalType=0
DecalSize=30.0
DelayAfterShooting=0.0
BeamTracksCrosshair=true
AlsoShoot=
ADSShoot=
ChargeMoveSpeedModifier=1.0
StunDuration=0.0
AmmoPerShot=1
UsePerShotRecoil=false
PSRLoopStartIndex=0
PSRViewRecoilTracking=0.45
PSRCapUp=9.0
PSRCapRight=4.0
PSRCapLeft=4.0
PSRTimeToPeak=0.175
PSRResetDegreesPerSec=40.0
CircularSpread=true
SpreadStationaryVelocity=0.0
PassiveCharging=false
BurstFullyAuto=true
FlatKnockbackHorizontal=0.0
FlatKnockbackVertical=0.0
HitscanRadius=0.0
HitscanVisualRadius=0.5
TaggingDuration=0.0
TaggingMaxFactor=1.0
TaggingHitFactor=1.0
RecoilCrouchScale=1.0
RecoilADSScale=1.0
PSRCrouchScale=1.0
PSRADSScale=1.0
ProjectileAcceleration=0.0
AccelIncludeVertical=false
AimPunchAmount=0.0
AimPunchResetTime=0.2
AimPunchCooldown=0.5
AimPunchHeadshotOnly=false
AimPunchCosmeticOnly=false
MinimumDecelVelocity=0.0
PSRManualNegation=false
PSRAutoReset=true
UsePerBulletSpread=false
PBS0=0.0,0.0
AimPunchUpTime=0.05
AmmoReloadedOnKill=0
CancelReloadOnKill=false
FlatKnockbackHorizontalMin=0.0
FlatKnockbackVerticalMin=0.0
ADSScope=No Scope
ADSFOVOverride=104.0
ADSAllowUserOverrideFOV=false
HitscanGraphicOriginAtWeapon=false
ProjectileGraphicOriginAtWeapon=false
IsChargeWeapon=false
IsBurstWeapon=false
ForceFirstPersonInADS=true
ZoomBlockedInAir=false
ADSCameraOffsetX=0.0
ADSCameraOffsetY=0.0
ADSCameraOffsetZ=0.0
QuickSwitchTime=0.1
WeaponModel=KovaaKs Rifle
WeaponAnimation=Primary
UseIncReload=false
IncReloadStartupTime=0.1
IncReloadLoopTime=0.1
IncReloadAmmoPerLoop=1
IncReloadEndTime=0.1
IncReloadCancelWithShoot=true
WeaponSkin=Default
ProjectileVisualOffset=X=0.000 Y=0.000 Z=-50.000
SpreadDecayDelay=0.0
ReloadBeforeRecovery=true
3rdPersonWeaponModel=SMG
3rdPersonWeaponSkin=Default
ParticleMuzzleFlash=None
ParticleWallImpact=None
ParticleBodyImpact=Beam
ParticleProjectileTrail=
ParticleHitscanTrace=Tracer
ParticleMuzzleFlashScale=1.0
ParticleWallImpactScale=1.0
ParticleBodyImpactScale=0.3
ParticleProjectileTrailScale=1.0
ADSFOVScale=Apex Legends
ADSCustomFOVAspectX=16
ADSCustomFOVAspectY=9
ADSCustomFOVScale=hML
ADSResetsCharge=true
ADSZoomInDuration=0.0
ADSZoomOutDuration=0.0
ADSFOVScaleString=Quake/Source
FullyAutomatic=false
DelayBeforePassiveCharge=0.0
BaseChargeRecoilFactor=0.0

[Map Data]
reflex map version 8
global
	entity
		type WorldSpawn
		String32 targetGameOverCamera end
		UInt8 playersMin 1
		UInt8 playersMax 16
	brush
		vertices
			-256.000000 200.000000 168.000000
			-248.000000 200.000000 168.000000
			-248.000000 200.000000 -256.000000
			-256.000000 200.000000 -256.000000
			-256.000000 0.000000 168.000000
			-248.000000 0.000000 168.000000
			-248.000000 0.000000 -256.000000
			-256.000000 0.000000 -256.000000
		faces
			0.000000 0.000000 1.000000 1.000000 0.000000 0 1 2 3 0x00000000 
			0.000000 0.000000 1.000000 1.000000 0.000000 6 5 4 7 0x00000000 
			0.000000 0.000000 1.000000 1.000000 0.000000 2 1 5 6 0x00000000 
			0.000000 0.000000 1.000000 1.000000 0.000000 0 3 7 4 0x00000000 
			0.000000 0.000000 1.000000 1.000000 0.000000 3 2 6 7 0x00000000 
			0.000000 0.000000 1.000000 1.000000 0.000000 1 0 4 5 0x00000000 
	brush
		vertices
			248.000000 200.000000 168.000000
			256.000000 200.000000 168.000000
			256.000000 200.000000 -256.000000
			248.000000 200.000000 -256.000000
			248.000000 0.000000 168.000000
			256.000000 0.000000 168.000000
			256.000000 0.000000 -256.000000
			248.000000 0.000000 -256.000000
		faces
			0.000000 0.000000 1.000000 1.000000 0.000000 0 1 2 3 0x00000000 
			0.000000 0.000000 1.000000 1.000000 0.000000 6 5 4 7 0x00000000 
			0.000000 0.000000 1.000000 1.000000 0.000000 2 1 5 6 0x00000000 
			0.000000 0.000000 1.000000 1.000000 0.000000 0 3 7 4 0x00000000 
			0.000000 0.000000 1.000000 1.000000 0.000000 3 2 6 7 0x00000000 
			0.000000 0.000000 1.000000 1.000000 0.000000 1 0 4 5 0x00000000 
	brush
		vertices
			-248.000000 200.000000 -248.000000
			248.000000 200.000000 -248.000000
			248.000000 200.000000 -256.000000
			-248.000000 200.000000 -256.000000
			-248.000000 0.000000 -248.000000
			248.000000 0.000000 -248.000000
			248.000000 0.000000 -256.000000
			-248.000000 0.000000 -256.000000
		faces
			0.000000 0.000000 1.000000 1.000000 0.000000 0 1 2 3 0x00000000 
			0.000000 0.000000 1.000000 1.000000 0.000000 6 5 4 7 0x00000000 
			0.000000 0.000000 1.000000 1.000000 0.000000 2 1 5 6 0x00000000 
			0.000000 0.000000 1.000000 1.000000 0.000000 0 3 7 4 0x00000000 
			0.000000 0.000000 1.000000 1.000000 0.000000 3 2 6 7 0x00000000 
			0.000000 0.000000 1.000000 1.000000 0.000000 1 0 4 5 0x00000000 
	brush
		vertices
			-255.000000 176.000000 255.000000
			257.000000 176.000000 255.000000
			257.000000 176.000000 -257.000000
			-255.000000 176.000000 -257.000000
			-255.000000 160.000000 255.000000
			257.000000 160.000000 255.000000
			257.000000 160.000000 -257.000000
			-255.000000 160.000000 -257.000000
		faces
			0.000000 0.000000 1.000000 1.000000 0.000000 0 1 2 3 0x00000000 
			0.000000 0.000000 1.000000 1.000000 0.000000 6 5 4 7 0x00000000 
			0.000000 0.000000 1.000000 1.000000 0.000000 2 1 5 6 0x00000000 
			0.000000 0.000000 1.000000 1.000000 0.000000 0 3 7 4 0x00000000 
			0.000000 0.000000 1.000000 1.000000 0.000000 3 2 6 7 0x00000000 
			0.000000 0.000000 1.000000 1.000000 0.000000 1 0 4 5 0x00000000 
	brush
		vertices
			-80.000000 200.000000 256.000000
			80.000000 200.000000 256.000000
			80.000000 200.000000 224.000000
			-80.000000 200.000000 224.000000
			-80.000000 0.000000 256.000000
			80.000000 0.000000 256.000000
			80.000000 0.000000 224.000000
			-80.000000 0.000000 224.000000
		faces
			0.000000 0.000000 1.000000 1.000000 0.000000 0 1 2 3 0x00000000 
			0.000000 0.000000 1.000000 1.000000 0.000000 6 5 4 7 0x00000000 
			0.000000 0.000000 1.000000 1.000000 0.000000 2 1 5 6 0x00000000 
			0.000000 0.000000 1.000000 1.000000 0.000000 0 3 7 4 0x00000000 
			0.000000 0.000000 1.000000 1.000000 0.000000 3 2 6 7 0x00000000 
			0.000000 0.000000 1.000000 1.000000 0.000000 1 0 4 5 0x00000000 
	brush
		vertices
			80.000000 200.000000 256.000000
			256.000000 200.000000 256.000000
			256.000000 200.000000 128.000000
			80.000000 0.000000 224.000000
			80.000000 200.000000 224.000000
			256.000000 0.000000 256.000000
			256.000000 0.000000 128.000000
			80.000000 0.000000 256.000000
		faces
			0.000000 0.000000 1.000000 1.000000 0.000000 0 1 2 4 0x00000000 
			0.000000 0.000000 1.000000 1.000000 0.000000 3 4 2 6 0x00000000 
			0.000000 0.000000 1.000000 1.000000 0.000000 2 1 5 6 0x00000000 
			0.000000 0.000000 1.000000 1.000000 0.000000 0 4 3 7 0x00000000 
			0.000000 0.000000 1.000000 1.000000 0.000000 5 1 0 7 0x00000000 
			0.000000 0.000000 1.000000 1.000000 0.000000 3 6 5 7 0x00000000 
	brush
		vertices
			-256.000000 200.000000 256.000000
			-80.000000 200.000000 256.000000
			-80.000000 200.000000 224.000000
			-257.000000 0.000000 128.000000
			-257.000000 200.000000 128.000000
			-80.000000 0.000000 256.000000
			-80.000000 0.000000 224.000000
			-256.000000 0.000000 256.000000
		faces
			0.000000 0.000000 1.000000 1.000000 0.000000 0 1 2 4 0x00000000 
			0.000000 0.000000 1.000000 1.000000 0.000000 3 4 2 6 0x00000000 
			0.000000 0.000000 1.000000 1.000000 0.000000 2 1 5 6 0x00000000 
			0.000000 0.000000 1.000000 1.000000 0.000000 0 4 3 7 0x00000000 
			0.000000 0.000000 1.000000 1.000000 0.000000 5 1 0 7 0x00000000 
			0.000000 0.000000 1.000000 1.000000 0.000000 3 6 5 7 0x00000000 
	brush
		vertices
			-48.000000 14.000000 160.000000
			48.000000 14.000000 160.000000
			48.000000 14.000000 64.000000
			-48.000000 14.000000 64.000000
			-48.000000 0.000000 160.000000
			48.000000 0.000000 160.000000
			48.000000 0.000000 64.000000
			-48.000000 0.000000 64.000000
		faces
			0.000000 0.000000 1.000000 1.000000 0.000000 0 1 2 3 0x00000000 
			0.000000 0.000000 1.000000 1.000000 0.000000 6 5 4 7 0x00000000 
			0.000000 0.000000 1.000000 1.000000 0.000000 2 1 5 6 0x00000000 
			0.000000 0.000000 1.000000 1.000000 0.000000 0 3 7 4 0x00000000 
			0.000000 0.000000 1.000000 1.000000 0.000000 3 2 6 7 0x00000000 
			0.000000 0.000000 1.000000 1.000000 0.000000 1 0 4 5 0x00000000 
	brush
		vertices
			-262.000000 0.000000 252.000000
			250.000000 0.000000 252.000000
			250.000000 0.000000 -260.000000
			-262.000000 0.000000 -260.000000
			-262.000000 -16.000000 252.000000
			250.000000 -16.000000 252.000000
			250.000000 -16.000000 -260.000000
			-262.000000 -16.000000 -260.000000
		faces
			0.000000 0.000000 1.000000 1.000000 0.000000 0 1 2 3 0x00000000 
			0.000000 0.000000 1.000000 1.000000 0.000000 6 5 4 7 0x00000000 
			0.000000 0.000000 1.000000 1.000000 0.000000 2 1 5 6 0x00000000 
			0.000000 0.000000 1.000000 1.000000 0.000000 0 3 7 4 0x00000000 
			0.000000 0.000000 1.000000 1.000000 0.000000 3 2 6 7 0x00000000 
			0.000000 0.000000 1.000000 1.000000 0.000000 1 0 4 5 0x00000000 
	brush
		vertices
			0.000000 13.999999 176.000000
			16.000000 14.000000 176.000000
			48.000000 13.999999 160.000000
			16.000000 0.000000 176.000000
			0.000000 0.000000 176.000000
			0.000000 13.999999 160.000000
			0.000000 0.000000 160.000000
			48.000000 0.000000 160.000000
		faces
			0.000000 0.000000 1.000000 1.000000 0.000000 3 1 0 4 0x00000000 
			0.000000 0.000000 1.000000 1.000000 0.000000 5 0 1 2 0x00000000 
			0.000000 0.000000 1.000000 1.000000 0.000000 4 0 5 6 0x00000000 
			0.000000 0.000000 1.000000 1.000000 0.000000 2 1 3 7 0x00000000 
			0.000000 0.000000 1.000000 1.000000 0.000000 3 4 6 7 0x00000000 
			0.000000 0.000000 1.000000 1.000000 0.000000 6 5 2 7 0x00000000 
	brush
		vertices
			-16.000000 14.000000 176.000000
			0.000000 14.000000 176.000000
			0.000000 13.999999 160.000000
			0.000000 0.000000 176.000000
			-16.000000 0.000000 176.000000
			-48.000000 13.999999 160.000000
			-48.000000 0.000000 160.000000
			0.000000 0.000000 160.000000
		faces
			0.000000 0.000000 1.000000 1.000000 0.000000 3 1 0 4 0x00000000 
			0.000000 0.000000 1.000000 1.000000 0.000000 0 1 2 5 0x00000000 
			0.000000 0.000000 1.000000 1.000000 0.000000 4 0 5 6 0x00000000 
			0.000000 0.000000 1.000000 1.000000 0.000000 2 1 3 7 0x00000000 
			0.000000 0.000000 1.000000 1.000000 0.000000 3 4 6 7 0x00000000 
			0.000000 0.000000 1.000000 1.000000 0.000000 6 5 2 7 0x00000000 
	brush
		vertices
			64.000000 13.999999 112.000000
			64.000122 14.000000 96.000107
			48.000122 13.999999 64.000137
			64.000122 0.000000 96.000107
			64.000000 0.000000 112.000000
			48.000130 13.999999 112.000107
			48.000130 0.000000 112.000107
			48.000122 0.000000 64.000137
		faces
			0.000000 0.000000 1.000000 1.000000 0.000000 3 1 0 4 0x00000000 
			0.000000 0.000000 1.000000 1.000000 0.000000 5 0 1 2 0x00000000 
			0.000000 0.000000 1.000000 1.000000 0.000000 4 0 5 6 0x00000000 
			0.000000 0.000000 1.000000 1.000000 0.000000 2 1 3 7 0x00000000 
			0.000000 0.000000 1.000000 1.000000 0.000000 3 4 6 7 0x00000000 
			0.000000 0.000000 1.000000 1.000000 0.000000 6 5 2 7 0x00000000 
	brush
		vertices
			64.000160 14.000000 128.000153
			64.000000 14.000000 112.000000
			48.000130 13.999999 112.000107
			64.000000 0.000000 112.000000
			64.000160 0.000000 128.000153
			48.000122 13.999999 160.000137
			48.000122 0.000000 160.000137
			48.000130 0.000000 112.000107
		faces
			0.000000 0.000000 1.000000 1.000000 0.000000 3 1 0 4 0x00000000 
			0.000000 0.000000 1.000000 1.000000 0.000000 0 1 2 5 0x00000000 
			0.000000 0.000000 1.000000 1.000000 0.000000 4 0 5 6 0x00000000 
			0.000000 0.000000 1.000000 1.000000 0.000000 2 1 3 7 0x00000000 
			0.000000 0.000000 1.000000 1.000000 0.000000 3 4 6 7 0x00000000 
			0.000000 0.000000 1.000000 1.000000 0.000000 6 5 2 7 0x00000000 
	brush
		vertices
			0.000000 13.999999 48.000000
			-15.999878 14.000000 47.999916
			-47.999847 13.999999 63.999916
			-15.999878 0.000000 47.999916
			0.000000 0.000000 48.000000
			0.000145 13.999999 63.999916
			0.000145 0.000000 63.999916
			-47.999847 0.000000 63.999916
		faces
			0.000000 0.000000 1.000000 1.000000 0.000000 3 1 0 4 0x00000000 
			0.000000 0.000000 1.000000 1.000000 0.000000 5 0 1 2 0x00000000 
			0.000000 0.000000 1.000000 1.000000 0.000000 4 0 5 6 0x00000000 
			0.000000 0.000000 1.000000 1.000000 0.000000 2 1 3 7 0x00000000 
			0.000000 0.000000 1.000000 1.000000 0.000000 3 4 6 7 0x00000000 
			0.000000 0.000000 1.000000 1.000000 0.000000 6 5 2 7 0x00000000 
	brush
		vertices
			16.000191 14.000000 47.999886
			0.000000 14.000000 48.000000
			0.000145 13.999999 63.999916
			0.000000 0.000000 48.000000
			16.000191 0.000000 47.999886
			48.000206 13.999999 63.999931
			48.000206 0.000000 63.999931
			0.000145 0.000000 63.999916
		faces
			0.000000 0.000000 1.000000 1.000000 0.000000 3 1 0 4 0x00000000 
			0.000000 0.000000 1.000000 1.000000 0.000000 0 1 2 5 0x00000000 
			0.000000 0.000000 1.000000 1.000000 0.000000 4 0 5 6 0x00000000 
			0.000000 0.000000 1.000000 1.000000 0.000000 2 1 3 7 0x00000000 
			0.000000 0.000000 1.000000 1.000000 0.000000 3 4 6 7 0x00000000 
			0.000000 0.000000 1.000000 1.000000 0.000000 6 5 2 7 0x00000000 
	brush
		vertices
			-64.000000 13.999999 112.000000
			-63.999947 14.000000 127.999832
			-47.999969 13.999999 159.999847
			-63.999947 0.000000 127.999832
			-64.000000 0.000000 112.000000
			-47.999969 13.999999 111.999817
			-47.999969 0.000000 111.999817
			-47.999969 0.000000 159.999847
		faces
			0.000000 0.000000 1.000000 1.000000 0.000000 3 1 0 4 0x00000000 
			0.000000 0.000000 1.000000 1.000000 0.000000 5 0 1 2 0x00000000 
			0.000000 0.000000 1.000000 1.000000 0.000000 4 0 5 6 0x00000000 
			0.000000 0.000000 1.000000 1.000000 0.000000 2 1 3 7 0x00000000 
			0.000000 0.000000 1.000000 1.000000 0.000000 3 4 6 7 0x00000000 
			0.000000 0.000000 1.000000 1.000000 0.000000 6 5 2 7 0x00000000 
	brush
		vertices
			-64.000000 14.000000 95.999771
			-64.000000 14.000000 112.000000
			-47.999969 13.999999 111.999817
			-64.000000 0.000000 112.000000
			-64.000000 0.000000 95.999771
			-47.999954 13.999999 63.999741
			-47.999954 0.000000 63.999741
			-47.999969 0.000000 111.999817
		faces
			0.000000 0.000000 1.000000 1.000000 0.000000 3 1 0 4 0x00000000 
			0.000000 0.000000 1.000000 1.000000 0.000000 0 1 2 5 0x00000000 
			0.000000 0.000000 1.000000 1.000000 0.000000 4 0 5 6 0x00000000 
			0.000000 0.000000 1.000000 1.000000 0.000000 2 1 3 7 0x00000000 
			0.000000 0.000000 1.000000 1.000000 0.000000 3 4 6 7 0x00000000 
			0.000000 0.000000 1.000000 1.000000 0.000000 6 5 2 7 0x00000000 
	brush
		vertices
			-64.000000 96.000000 104.000000
			64.000000 96.000000 104.000000
			64.000000 96.000000 96.000000
			-64.000000 96.000000 96.000000
			-64.000000 0.000000 104.000000
			64.000000 0.000000 104.000000
			64.000000 0.000000 96.000000
			-64.000000 0.000000 96.000000
		faces
			0.000000 0.000000 1.000000 1.000000 0.000000 0 1 2 3 0x00000000 internal/editor/textures/editor_clip
			0.000000 0.000000 1.000000 1.000000 0.000000 6 5 4 7 0x00000000 internal/editor/textures/editor_clip
			0.000000 0.000000 1.000000 1.000000 0.000000 2 1 5 6 0x00000000 internal/editor/textures/editor_clip
			0.000000 0.000000 1.000000 1.000000 0.000000 0 3 7 4 0x00000000 internal/editor/textures/editor_clip
			0.000000 0.000000 1.000000 1.000000 0.000000 3 2 6 7 0x00000000 internal/editor/textures/editor_clip
			0.000000 0.000000 1.000000 1.000000 0.000000 1 0 4 5 0x00000000 internal/editor/textures/editor_clip
	brush
		vertices
			-64.000000 96.000000 128.000000
			64.000000 96.000000 128.000000
			64.000000 96.000000 120.000000
			-64.000000 96.000000 120.000000
			-64.000000 0.000000 128.000000
			64.000000 0.000000 128.000000
			64.000000 0.000000 120.000000
			-64.000000 0.000000 120.000000
		faces
			0.000000 0.000000 1.000000 1.000000 0.000000 0 1 2 3 0x00000000 internal/editor/textures/editor_clip
			0.000000 0.000000 1.000000 1.000000 0.000000 6 5 4 7 0x00000000 internal/editor/textures/editor_clip
			0.000000 0.000000 1.000000 1.000000 0.000000 2 1 5 6 0x00000000 internal/editor/textures/editor_clip
			0.000000 0.000000 1.000000 1.000000 0.000000 0 3 7 4 0x00000000 internal/editor/textures/editor_clip
			0.000000 0.000000 1.000000 1.000000 0.000000 3 2 6 7 0x00000000 internal/editor/textures/editor_clip
			0.000000 0.000000 1.000000 1.000000 0.000000 1 0 4 5 0x00000000 internal/editor/textures/editor_clip
	brush
		vertices
			-56.000000 96.000000 128.000000
			-55.999924 96.000000 95.999962
			-63.999931 96.000000 95.999969
			-63.999954 96.000000 128.000000
			-56.000000 0.000000 128.000000
			-55.999924 0.000000 95.999962
			-63.999931 0.000000 95.999969
			-63.999954 0.000000 128.000000
		faces
			0.000000 0.000000 1.000000 1.000000 0.000000 0 1 2 3 0x00000000 internal/editor/textures/editor_clip
			0.000000 0.000000 1.000000 1.000000 0.000000 6 5 4 7 0x00000000 internal/editor/textures/editor_clip
			0.000000 0.000000 1.000000 1.000000 0.000000 2 1 5 6 0x00000000 internal/editor/textures/editor_clip
			0.000000 0.000000 1.000000 1.000000 0.000000 0 3 7 4 0x00000000 internal/editor/textures/editor_clip
			0.000000 0.000000 1.000000 1.000000 0.000000 3 2 6 7 0x00000000 internal/editor/textures/editor_clip
			0.000000 0.000000 1.000000 1.000000 0.000000 1 0 4 5 0x00000000 internal/editor/textures/editor_clip
	brush
		vertices
			64.000000 96.000000 128.000000
			64.000076 96.000000 95.999962
			56.000069 96.000000 95.999969
			56.000046 96.000000 128.000000
			64.000000 0.000000 128.000000
			64.000076 0.000000 95.999962
			56.000069 0.000000 95.999969
			56.000046 0.000000 128.000000
		faces
			0.000000 0.000000 1.000000 1.000000 0.000000 0 1 2 3 0x00000000 internal/editor/textures/editor_clip
			0.000000 0.000000 1.000000 1.000000 0.000000 6 5 4 7 0x00000000 internal/editor/textures/editor_clip
			0.000000 0.000000 1.000000 1.000000 0.000000 2 1 5 6 0x00000000 internal/editor/textures/editor_clip
			0.000000 0.000000 1.000000 1.000000 0.000000 0 3 7 4 0x00000000 internal/editor/textures/editor_clip
			0.000000 0.000000 1.000000 1.000000 0.000000 3 2 6 7 0x00000000 internal/editor/textures/editor_clip
			0.000000 0.000000 1.000000 1.000000 0.000000 1 0 4 5 0x00000000 internal/editor/textures/editor_clip
	entity
		type PlayerSpawn
		Vector3 position 0.000000 20.000000 -40.000000
		Bool8 teamB 0
		Bool8 initialSpawn 0
		Bool8 modeCTF 0
		Bool8 modeFFA 0
		Bool8 modeTDM 0
		Bool8 mode1v1 0
		Bool8 modeRace 0
		Bool8 mode2v2 0
	entity
		type CameraPath
		UInt8 posLerp 2
		UInt8 angleLerp 2
	entity
		type PlayerSpawn
		Vector3 position 0.000000 14.000000 112.000000
		Vector3 angles 180.000000 0.000000 0.000000
		Bool8 teamA 0
		Bool8 initialSpawn 0
		Bool8 modeCTF 0
		Bool8 modeFFA 0
		Bool8 modeTDM 0
		Bool8 mode1v1 0
		Bool8 modeRace 0
		Bool8 mode2v2 0