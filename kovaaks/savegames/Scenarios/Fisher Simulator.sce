Name=Fisher Simulator
PlayerCharacters=Character Profile
BotCharacters=Fish #1.bot;Fish #2.bot;Fish #3.bot;fishes.rot
IsChallenge=true
Timelimit=51.0
PlayerProfile=Character Profile
AddedBots=fishes.rot;fishes.rot;fishes.rot
PlayerMaxLives=0
BotMaxLives=0;0;0
PlayerTeam=1
BotTeams=2;2;2
ScoreToWin=100000.0
ScorePerDamage=666.0
ScorePerKill=666.0
ScorePerMidairDirect=0.0
ScorePerAnyDirect=0.0
ScoreLossPerDamageTaken=0.0
ScoreLossPerDeath=0.0
ScoreLossPerMidairDirected=0.0
ScoreLossPerAnyDirected=0.0
ScoreMultAccuracy=false
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
ScoreLossPerMiss=111.0
MultSqrtAcc=false
EnableOverDamage=false
MapName=b360curved.json
MapScale=4.0
BlockProjectilePredictors=true
BlockCheats=true
InvinciblePlayer=true
InvincibleBots=false
Timescale=0.85
BlockHealthbars=true
TimeRefilledByKill=0.0
BlockHitMarkers=false
BlockHitSounds=false
BlockMissSounds=true
BlockFCT=false
LockFOVRange=false
LockedFOVMin=60.0
LockedFOVMax=120.0
LockedFOVScale=Clamped Horizontal
EndChallengeAfterKills=0.0
EndChallengeAfterDamage=0.0
GameTag=B360
WeaponHeroTag=Fishing Rod
AimTypeTag=Clicking
AimSubTypeTag=Dynamic
AimTypeFlicking=true
AimTypeProjectile=false
AimTypePlayerMovement=false
DifficultyTag=2
AuthorsTag=@wa11p1per, Old Fisherman, Fish 
Description=Became to real fisherman!
GameVersion=3.0.4
ScenarioVersion=Initial

[Aim Profile]
Name=Default
MinReactionTime=0.3
MaxReactionTime=0.4
MinSelfMovementCorrectionTime=0.001
MaxSelfMovementCorrectionTime=0.05
FlickFov=30.0
FlickSpeed=1.5
FlickError=15.0
TrackSpeed=3.5
TrackError=3.5
MaxTurnAngleFromPadCenter=75.0
MinReCenterTime=0.3
MaxReCenterTime=0.5
OptimalAimFov=30.0
OuterAimPenalty=1.0
MaxError=40.0
ShootFov=15.0
VerticalAimOffset=0.0
MaxTolerableSpread=5.0
MinTolerableSpread=1.0
TolerableSpreadDist=2000.0
MaxSpreadDistFactor=2.0
AimingStyle=Original
ScanSpeedMultiplier=1.0
MaxSeekPitch=30.0
MaxSeekYaw=30.0
AimingSpeed=5.0
MinShootDelay=0.3
MaxShootDelay=0.6

[Bot Profile]
Name=Fish #1
DodgeProfileNames=Long Strafes Jumping
DodgeProfileWeights=1.0
DodgeProfileMaxChangeTime=2.0
DodgeProfileMinChangeTime=1.0
WeaponsProfileNames=;;;;;;;
WeaponProfileWeights=1.0;1.0;1.0;1.0;1.0;1.0;1.0;1.0
AimingProfileNames=Default;Default;Default;Default;Default;Default;Default;Default
WeaponSwitchTime=3.0
UseWeapons=false
CharacterProfile=Fish #1
SeeThroughWalls=true
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

[Bot Profile]
Name=Fish #2
DodgeProfileNames=Long Strafes Jumping
DodgeProfileWeights=1.0
DodgeProfileMaxChangeTime=2.0
DodgeProfileMinChangeTime=1.0
WeaponsProfileNames=;;;;;;;
WeaponProfileWeights=1.0;1.0;1.0;1.0;1.0;1.0;1.0;1.0
AimingProfileNames=Default;Default;Default;Default;Default;Default;Default;Default
WeaponSwitchTime=3.0
UseWeapons=false
CharacterProfile=Fish #2
SeeThroughWalls=true
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

[Bot Profile]
Name=Fish #3
DodgeProfileNames=Long Strafes Jumping
DodgeProfileWeights=1.0
DodgeProfileMaxChangeTime=2.0
DodgeProfileMinChangeTime=1.0
WeaponsProfileNames=;;;;;;;
WeaponProfileWeights=1.0;1.0;1.0;1.0;1.0;1.0;1.0;1.0
AimingProfileNames=Default;Default;Default;Default;Default;Default;Default;Default
WeaponSwitchTime=3.0
UseWeapons=false
CharacterProfile=Fish #3
SeeThroughWalls=true
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

[Bot Rotation Profile]
Name=fishes
ProfileNames=Fish #1;Fish #2;Fish #3
ProfileWeights=1.0;1.0;1.0
Randomized=true
AllowRepeatEntries=true

[Character Profile]
Name=Character Profile
MaxHealth=100.0
WeaponProfileNames=Fishing rod;;;;;;;
MinRespawnDelay=0.1
MaxRespawnDelay=0.1
StepUpHeight=0.0
CrouchHeightModifier=0.0
CrouchAnimationSpeed=0.1
CameraOffset=X=0.000 Y=0.000 Z=0.000
HeadshotOnly=false
DamageKnockbackFactor=8.0
MaxSpeed=0.0
MaxCrouchSpeed=0.0
Acceleration=0.0
Friction=0.0
BrakingFrictionFactor=0.0
JumpVelocity=0.0
Gravity=0.0
AirControl=0.0
CanCrouch=false
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
MainBBHeight=2.0
MainBBRadius=1.0
MainBBHasHead=true
MainBBHeadRadius=45.0
MainBBHeadOffset=0.0
MainBBHide=false
ProjBBType=Cylindrical
ProjBBHeight=2.0
ProjBBRadius=1.0
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
AbilityProfileNames=;;;
HideWeapon=false
AerialFriction=0.0
StrafeSpeedMult=0.0
BackSpeedMult=0.0
RespawnInvulnTime=0.0
BlockedSpawnRadius=0.0
BlockSpawnFOV=5.0
BlockSpawnDistance=0.0
RespawnAnimationDuration=0.1
AllowBufferedJumps=false
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
TPSArmLength=500.0
TPSOffset=X=0.000 Y=125.000 Z=40.000
BrakingDeceleration=0.0
TerminalVelocity=0.0
CharacterModel=None
CharacterSkin=Default
MeshHitDetection=false
SpawnOffsetMin=X=-0.000 Y=0.000 Z=0.000
SpawnOffsetMax=X=-0.000 Y=0.000 Z=0.000
InvertBlockedSpawn=true
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
Name=Fish #1
MaxHealth=111.0
WeaponProfileNames=;;;;;;;
MinRespawnDelay=0.00001
MaxRespawnDelay=0.00001
StepUpHeight=75.0
CrouchHeightModifier=0.5
CrouchAnimationSpeed=1.0
CameraOffset=X=0.000 Y=0.000 Z=0.000
HeadshotOnly=false
DamageKnockbackFactor=0.0
MaxSpeed=1100.0
MaxCrouchSpeed=500.0
Acceleration=12000.0
Friction=8.0
BrakingFrictionFactor=4.0
JumpVelocity=2000.0
Gravity=4.0
AirControl=0.2
CanCrouch=false
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
MainBBType=Spheroid
MainBBHeight=160.0
MainBBRadius=40.0
MainBBHasHead=false
MainBBHeadRadius=40.0
MainBBHeadOffset=0.0
MainBBHide=true
ProjBBType=Spheroid
ProjBBHeight=160.0
ProjBBRadius=40.0
ProjBBHasHead=false
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
AbilityProfileNames=;;;
HideWeapon=true
AerialFriction=0.05
StrafeSpeedMult=1.2
BackSpeedMult=1.0
RespawnInvulnTime=0.0
BlockedSpawnRadius=0.0
BlockSpawnFOV=0.0
BlockSpawnDistance=0.0
RespawnAnimationDuration=0.0
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
JumpSpeedPenaltyPercent=0.0
ThirdPersonCamera=false
TPSArmLength=300.0
TPSOffset=X=0.000 Y=150.000 Z=150.000
BrakingDeceleration=2048.0
TerminalVelocity=0.0
CharacterModel=Pigeon
CharacterSkin=Default
MeshHitDetection=false
SpawnOffsetMin=X=-0.000 Y=0.000 Z=10.000
SpawnOffsetMax=X=-0.000 Y=0.000 Z=10.000
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
Name=Fish #2
MaxHealth=111.0
WeaponProfileNames=;;;;;;;
MinRespawnDelay=0.00001
MaxRespawnDelay=0.00001
StepUpHeight=75.0
CrouchHeightModifier=0.5
CrouchAnimationSpeed=1.0
CameraOffset=X=0.000 Y=0.000 Z=0.000
HeadshotOnly=false
DamageKnockbackFactor=0.0
MaxSpeed=1100.0
MaxCrouchSpeed=500.0
Acceleration=12000.0
Friction=8.0
BrakingFrictionFactor=4.0
JumpVelocity=2100.0
Gravity=4.0
AirControl=0.2
CanCrouch=false
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
MainBBType=Spheroid
MainBBHeight=160.0
MainBBRadius=40.0
MainBBHasHead=false
MainBBHeadRadius=10.0
MainBBHeadOffset=0.0
MainBBHide=true
ProjBBType=Spheroid
ProjBBHeight=160.0
ProjBBRadius=40.0
ProjBBHasHead=false
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
AbilityProfileNames=;;;
HideWeapon=true
AerialFriction=0.05
StrafeSpeedMult=1.2
BackSpeedMult=1.0
RespawnInvulnTime=0.0
BlockedSpawnRadius=0.0
BlockSpawnFOV=0.0
BlockSpawnDistance=0.0
RespawnAnimationDuration=0.0
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
JumpSpeedPenaltyPercent=0.0
ThirdPersonCamera=false
TPSArmLength=300.0
TPSOffset=X=0.000 Y=150.000 Z=150.000
BrakingDeceleration=2048.0
TerminalVelocity=0.0
CharacterModel=Pigeon
CharacterSkin=Default
MeshHitDetection=false
SpawnOffsetMin=X=-0.000 Y=0.000 Z=10.000
SpawnOffsetMax=X=-0.000 Y=0.000 Z=10.000
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
Name=Fish #3
MaxHealth=111.0
WeaponProfileNames=;;;;;;;
MinRespawnDelay=0.00001
MaxRespawnDelay=0.00001
StepUpHeight=75.0
CrouchHeightModifier=0.5
CrouchAnimationSpeed=1.0
CameraOffset=X=0.000 Y=0.000 Z=0.000
HeadshotOnly=false
DamageKnockbackFactor=0.0
MaxSpeed=1100.0
MaxCrouchSpeed=500.0
Acceleration=12000.0
Friction=8.0
BrakingFrictionFactor=4.0
JumpVelocity=2200.0
Gravity=4.0
AirControl=0.2
CanCrouch=false
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
MainBBType=Spheroid
MainBBHeight=160.0
MainBBRadius=40.0
MainBBHasHead=false
MainBBHeadRadius=10.0
MainBBHeadOffset=0.0
MainBBHide=true
ProjBBType=Spheroid
ProjBBHeight=160.0
ProjBBRadius=40.0
ProjBBHasHead=false
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
AbilityProfileNames=;;;
HideWeapon=true
AerialFriction=0.05
StrafeSpeedMult=1.2
BackSpeedMult=1.0
RespawnInvulnTime=0.0
BlockedSpawnRadius=0.0
BlockSpawnFOV=0.0
BlockSpawnDistance=0.0
RespawnAnimationDuration=0.0
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
JumpSpeedPenaltyPercent=0.0
ThirdPersonCamera=false
TPSArmLength=300.0
TPSOffset=X=0.000 Y=150.000 Z=150.000
BrakingDeceleration=2048.0
TerminalVelocity=0.0
CharacterModel=Pigeon
CharacterSkin=Default
MeshHitDetection=false
SpawnOffsetMin=X=-0.000 Y=0.000 Z=10.000
SpawnOffsetMax=X=-0.000 Y=0.000 Z=10.000
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
Name=Long Strafes Jumping
MaxTargetDistance=3000.0
MinTargetDistance=1750.0
ToggleLeftRight=true
ToggleForwardBack=true
MinLRTimeChange=0.25
MaxLRTimeChange=0.5
MinFBTimeChange=0.25
MaxFBTimeChange=0.5
DamageReactionChangesDirection=false
DamageReactionChanceToIgnore=0.5
DamageReactionMinimumDelay=0.125
DamageReactionMaximumDelay=0.25
DamageReactionCooldown=1.0
DamageReactionThreshold=0.0
DamageReactionResetTimer=0.1
JumpFrequency=0.5
CrouchInAirFrequency=0.0
CrouchOnGroundFrequency=0.0
TargetStrafeOverride=Ignore
TargetStrafeMinDelay=0.125
TargetStrafeMaxDelay=0.25
MinProfileChangeTime=0.0
MaxProfileChangeTime=0.0
MinCrouchTime=0.3
MaxCrouchTime=0.6
MinJumpTime=0.0001
MaxJumpTime=0.0001
AlterateJumpCrouchInput=false
ToggleUpDownMinTime=0.2
ToggleUpDownMaxTime=0.5
UpDownSwapPauseMinTime=0.0
UpDownSwapPauseMaxTime=0.0
LeftStrafeTimeMult=1.0
RightStrafeTimeMult=1.0
StrafeSwapMinPause=0.0
StrafeSwapMaxPause=0.0
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
InitialRightMovementState=Right

[Weapon Profile]
Name=Fishing rod
Type=Hitscan
ShotsPerClick=1
DamagePerShot=0.5
KnockbackFactor=0.0
TimeBetweenShots=0.1
Pierces=false
Category=SemiAuto
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
MaxHitscanRange=1000000.0
GravityScale=1.0
HeadshotCapable=false
HeadshotMultiplier=2.0
CooldownType=InfiniteUse
MagazineMax=0
ReloadTimeFromEmpty=0.4
ReloadTimeFromPartial=0.4
CooldownTimer=0.8
MaxCharges=3
DamageFalloffStartDistance=1000000.0
DamageFalloffStopDistance=1000000.0
DamageAtMaxRange=0.5
DelayBeforeShot=0.0
ProjectileGraphic=Ball
VisualLifetime=0.1
Explosive=false
Radius=0.1
DamageAtCenter=0.0
DamageAtEdge=0.0
SelfDamageMultiplier=0.0
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
SpreadSSA=1.0,1.0,0.0,0.0
SpreadSCA=1.0,1.0,0.0,0.0
SpreadMSA=1.0,1.0,0.0,0.0
SpreadMCA=1.0,1.0,0.0,0.0
SpreadSSH=1.0,1.0,0.0,0.0
SpreadSCH=1.0,1.0,0.0,0.0
SpreadMSH=1.0,1.0,0.0,0.0
SpreadMCH=1.0,1.0,0.0,0.0
MaxRecoilUp=0.0
MinRecoilUp=0.0
MinRecoilHoriz=0.0
MaxRecoilHoriz=0.0
FirstShotRecoilMult=1.0
RecoilAutoReset=false
TimeToRecoilPeak=0.1
TimeToRecoilReset=0.1
ProjectileWorldHitRadius=0.0
ProjectileEnemyHitRadius=1.0
CanAimDownSight=false
ADSZoomSensFactor=1.0
ADSMoveFactor=1.0
ADSStartDelay=0.0
AAMode=2
AAPreferClosestPlayer=false
AAAlpha=0.0
AAMaxSpeed=360.0
AADeadZone=0.0
AAFOV=360.0
AANeedsLOS=true
TrackHorizontal=false
TrackVertical=false
AABlocksMouse=false
AAOffTimer=0.0
AABackOnTimer=0.0
TriggerBotEnabled=false
TriggerBotDelay=0.0
TriggerBotFOV=1.0
StickyLock=false
HeadLock=false
VerticalOffset=0.0
DisableLockOnKill=true
ShootSoundCooldown=0.08
HitSoundCooldown=0.08
ShootSound=Shot
HitscanVisualOffset=X=0.000 Y=0.000 Z=-50.000
ADSBlocksShooting=false
ShootingBlocksADS=false
KnockbackFactorAir=100.0
RecoilNegatable=false
DecalType=1
DecalSize=30.0
DelayAfterShooting=0.0
BeamTracksCrosshair=false
AlsoShoot=
ADSShoot=
ChargeMoveSpeedModifier=1.0
StunDuration=0.0
AmmoPerShot=1
UsePerShotRecoil=false
PSRLoopStartIndex=0
PSRViewRecoilTracking=0.0
PSRCapUp=9.0
PSRCapRight=4.0
PSRCapLeft=4.0
PSRTimeToPeak=0.175
PSRResetDegreesPerSec=40.0
CircularSpread=true
SpreadStationaryVelocity=0.0
PassiveCharging=false
BurstFullyAuto=true
FlatKnockbackHorizontal=-5000.0
FlatKnockbackVertical=1555.0
HitscanRadius=0.0
HitscanVisualRadius=6.0
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
AimPunchResetTime=0.0
AimPunchCooldown=0.0
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
FlatKnockbackHorizontalMin=-5000.0
FlatKnockbackVerticalMin=1555.0
ADSScope=No Scope
ADSFOVOverride=90.0
ADSAllowUserOverrideFOV=true
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
ProjectileVisualOffset=X=0.000 Y=0.000 Z=0.000
SpreadDecayDelay=0.0
ReloadBeforeRecovery=false
3rdPersonWeaponModel=Pistol
3rdPersonWeaponSkin=Default
ParticleMuzzleFlash=None
ParticleWallImpact=None
ParticleBodyImpact=None
ParticleProjectileTrail=None
ParticleHitscanTrace=None
ParticleMuzzleFlashScale=1.0
ParticleWallImpactScale=1.0
ParticleBodyImpactScale=1.0
ParticleProjectileTrailScale=1.0
ADSFOVScale=Quake/Source
ADSCustomFOVAspectX=16
ADSCustomFOVAspectY=9
ADSCustomFOVScale=hML
ADSResetsCharge=true
ADSZoomInDuration=0.000001
ADSZoomOutDuration=0.000001
ADSFOVScaleString=Quake/Source
FullyAutomatic=false
DelayBeforePassiveCharge=0.0
BaseChargeRecoilFactor=0.0

[Map Data]
{
    "materialSets": [
        {
            "ceiling": {
                "material": "MI_WA_MarblePolished",
                "pack": "Default",
                "properties": [
                    {
                        "name": "Tint",
                        "value": "7f7f7fff"
                    },
                    {
                        "name": "Scale",
                        "value": 1.0
                    },
                    {
                        "name": "Roughness",
                        "value": 1.0
                    },
                    {
                        "name": "Metallic",
                        "value": 1.0
                    },
                    {
                        "name": "FullBright",
                        "value": 0.5
                    }
                ]
            },
            "ground": {
                "material": "MI_WA_MarblePolished",
                "pack": "Default",
                "properties": [
                    {
                        "name": "Tint",
                        "value": "7f7f7fff"
                    },
                    {
                        "name": "Scale",
                        "value": 1.0
                    },
                    {
                        "name": "Roughness",
                        "value": 1.0
                    },
                    {
                        "name": "Metallic",
                        "value": 1.0
                    },
                    {
                        "name": "FullBright",
                        "value": 1.0
                    }
                ]
            },
            "ramp": {
                "material": "MI_WA_PureColor",
                "pack": "Default",
                "properties": [
                    {
                        "name": "Tint",
                        "value": "ffffffff"
                    },
                    {
                        "name": "Scale",
                        "value": 1.0
                    },
                    {
                        "name": "Roughness",
                        "value": 0.5
                    },
                    {
                        "name": "Metallic",
                        "value": 0.5
                    },
                    {
                        "name": "FullBright",
                        "value": 0.0
                    }
                ]
            },
            "wall": {
                "material": "MI_WA_WhiteWoodBoard",
                "pack": "Default",
                "properties": [
                    {
                        "name": "Tint",
                        "value": "7f7f7fff"
                    },
                    {
                        "name": "Scale",
                        "value": 1.0
                    },
                    {
                        "name": "Roughness",
                        "value": 1.0
                    },
                    {
                        "name": "Metallic",
                        "value": 1.0
                    },
                    {
                        "name": "FullBright",
                        "value": 1.0
                    }
                ]
            }
        },
        {
            "ceiling": {
                "material": "MI_WA_GroundGravel",
                "pack": "Default",
                "properties": [
                    {
                        "name": "Tint",
                        "value": "c6a787ff"
                    },
                    {
                        "name": "Scale",
                        "value": 1.0
                    },
                    {
                        "name": "Roughness",
                        "value": 1.0
                    },
                    {
                        "name": "Metallic",
                        "value": 1.0
                    },
                    {
                        "name": "FullBright",
                        "value": 1.0
                    }
                ]
            },
            "ground": {
                "material": "MI_WA_WoodOak",
                "pack": "Default",
                "properties": [
                    {
                        "name": "Tint",
                        "value": "776e93ff"
                    },
                    {
                        "name": "Scale",
                        "value": 1.0
                    },
                    {
                        "name": "Roughness",
                        "value": 0.5
                    },
                    {
                        "name": "Metallic",
                        "value": 0.5
                    },
                    {
                        "name": "FullBright",
                        "value": 0.0
                    }
                ]
            },
            "ramp": {
                "material": "MI_WA_RockSlate",
                "pack": "Default",
                "properties": [
                    {
                        "name": "Tint",
                        "value": "aeceffff"
                    },
                    {
                        "name": "Scale",
                        "value": 1.0
                    },
                    {
                        "name": "Roughness",
                        "value": 0.06151914596557617
                    },
                    {
                        "name": "Metallic",
                        "value": 1.0
                    },
                    {
                        "name": "FullBright",
                        "value": 0.0
                    }
                ]
            },
            "wall": {
                "material": "MI_WA_WoodOak",
                "pack": "Default",
                "properties": [
                    {
                        "name": "Tint",
                        "value": "ffffffff"
                    },
                    {
                        "name": "Scale",
                        "value": 1.0
                    },
                    {
                        "name": "Roughness",
                        "value": 0.5
                    },
                    {
                        "name": "Metallic",
                        "value": 0.5
                    },
                    {
                        "name": "FullBright",
                        "value": 0.0
                    }
                ]
            }
        }
    ],
    "objects": [
        {
            "location": "3732.000000, -86.000000, 606.565918",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "ground"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "ground"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "ground"
                },
                {
                    "group": 1,
                    "surface": "wall"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "0.000000, 0.000000, 0.000000",
            "scale": "0.020000, 0.680000, 0.020000",
            "type": "brush"
        },
        {
            "location": "4096.000000, 0.000000, 416.565918",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "wall"
                },
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "wall"
                }
            ],
            "mesh": "Cylinder",
            "name": "Default",
            "rotation": "0.000000, 0.000000, 0.000000",
            "scale": "115.199997, 115.199982, 0.320000",
            "type": "brush"
        },
        {
            "location": "4096.000000, 0.000000, 552.565918",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "ramp"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 1,
                    "surface": "ramp"
                }
            ],
            "mesh": "Cylinder",
            "name": "DefaultNoCollision",
            "rotation": "0.000000, 0.000000, 0.000000",
            "scale": "1152.000000, 1151.999878, 0.320000",
            "type": "brush"
        },
        {
            "location": "3732.000000, -84.000000, 602.565918",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "ground"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "ground"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "ground"
                },
                {
                    "group": 1,
                    "surface": "wall"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "0.000000, 0.000000, 0.000000",
            "scale": "0.020000, 0.640000, 0.020000",
            "type": "brush"
        },
        {
            "location": "3730.000000, -75.464081, 590.853149",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "29.999893, 0.000000, 0.000000",
            "scale": "1.220000, 0.100000, 0.020000",
            "type": "brush"
        },
        {
            "location": "3730.000000, -81.455811, 596.766968",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "44.999744, 0.000000, 0.000000",
            "scale": "1.220000, 0.100000, 0.020000",
            "type": "brush"
        },
        {
            "location": "3852.000000, -68.145912, 586.691589",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "ground"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "ground"
                },
                {
                    "group": 1,
                    "surface": "wall"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "15.001381, 0.000000, 0.000000",
            "scale": "0.080000, 0.080000, 0.040000",
            "type": "brush"
        },
        {
            "location": "3812.000000, -75.464096, 590.853149",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "ground"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "ground"
                },
                {
                    "group": 1,
                    "surface": "wall"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "30.000097, 0.000000, 0.000000",
            "scale": "0.080000, 0.080000, 0.040000",
            "type": "brush"
        },
        {
            "location": "3852.000000, -75.464096, 590.853149",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "ground"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "ground"
                },
                {
                    "group": 1,
                    "surface": "wall"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "30.000097, 0.000000, 0.000000",
            "scale": "0.080000, 0.080000, 0.040000",
            "type": "brush"
        },
        {
            "location": "3730.000000, -87.944870, 612.147400",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "74.998291, 0.000000, 0.000000",
            "scale": "1.220000, 0.100000, 0.020000",
            "type": "brush"
        },
        {
            "location": "3852.000000, -81.455826, 596.766968",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "ground"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "ground"
                },
                {
                    "group": 1,
                    "surface": "wall"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "45.000103, 0.000000, 0.000000",
            "scale": "0.080000, 0.080000, 0.040000",
            "type": "brush"
        },
        {
            "location": "3730.000000, -20.019211, 605.030029",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "120.000053, 0.000000, 0.000000",
            "scale": "1.220000, 0.100000, 0.020000",
            "type": "brush"
        },
        {
            "location": "3852.000000, -85.712784, 604.030029",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "ground"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "ground"
                },
                {
                    "group": 1,
                    "surface": "wall"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "60.000088, 0.000000, 0.000000",
            "scale": "0.080000, 0.080000, 0.040000",
            "type": "brush"
        },
        {
            "location": "3812.000000, -52.000000, 584.565918",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "ground"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "ground"
                },
                {
                    "group": 1,
                    "surface": "wall"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "0.000000, 0.000000, 0.000000",
            "scale": "0.080000, 0.080000, 0.040000",
            "type": "brush"
        },
        {
            "location": "3852.000000, -87.944870, 612.147400",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "ground"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "ground"
                },
                {
                    "group": 1,
                    "surface": "wall"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "74.998398, 0.000000, 0.000000",
            "scale": "0.080000, 0.080000, 0.040000",
            "type": "brush"
        },
        {
            "location": "3852.000000, -87.999969, 620.565918",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "ground"
                },
                {
                    "group": 1,
                    "surface": "ground"
                },
                {
                    "group": 1,
                    "surface": "ground"
                },
                {
                    "group": 1,
                    "surface": "wall"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "89.999954, 0.000000, 0.000000",
            "scale": "0.080000, 0.080000, 0.040000",
            "type": "brush"
        },
        {
            "location": "3852.000000, -60.000000, 584.565918",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "ground"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "ground"
                },
                {
                    "group": 1,
                    "surface": "wall"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "0.000000, 0.000000, 0.000000",
            "scale": "0.080000, 0.080000, 0.040000",
            "type": "brush"
        },
        {
            "location": "3852.000000, -52.000000, 584.565918",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "ground"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "ground"
                },
                {
                    "group": 1,
                    "surface": "wall"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "0.000000, 0.000000, 0.000000",
            "scale": "0.080000, 0.080000, 0.040000",
            "type": "brush"
        },
        {
            "location": "3852.000000, -43.581493, 584.621033",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "ground"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "ground"
                },
                {
                    "group": 1,
                    "surface": "wall"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "-15.001513, 0.000000, 0.000000",
            "scale": "0.080000, 0.080000, 0.040000",
            "type": "brush"
        },
        {
            "location": "3730.000000, -59.999992, 584.565918",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "-0.000122, 0.000000, 0.000000",
            "scale": "1.220000, 0.100000, 0.020000",
            "type": "brush"
        },
        {
            "location": "3852.000000, -35.464104, 586.853149",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "ground"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "ground"
                },
                {
                    "group": 1,
                    "surface": "wall"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "-30.000092, 0.000000, 0.000000",
            "scale": "0.080000, 0.080000, 0.040000",
            "type": "brush"
        },
        {
            "location": "3812.000000, -43.581493, 584.621033",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "ground"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "ground"
                },
                {
                    "group": 1,
                    "surface": "wall"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "-15.001575, 0.000000, 0.000000",
            "scale": "0.080000, 0.080000, 0.040000",
            "type": "brush"
        },
        {
            "location": "3852.000000, -28.201023, 591.110107",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "ground"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "ground"
                },
                {
                    "group": 1,
                    "surface": "wall"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "-45.000088, 0.000000, 0.000000",
            "scale": "0.080000, 0.080000, 0.040000",
            "type": "brush"
        },
        {
            "location": "3730.000000, -68.145905, 586.691589",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "15.001178, 0.000000, 0.000000",
            "scale": "1.220000, 0.100000, 0.020000",
            "type": "brush"
        },
        {
            "location": "3852.000000, -22.287207, 597.101868",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "ground"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "ground"
                },
                {
                    "group": 1,
                    "surface": "wall"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "-59.999905, 0.000000, 0.000000",
            "scale": "0.080000, 0.080000, 0.040000",
            "type": "brush"
        },
        {
            "location": "3730.000000, -17.999969, 620.565918",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "89.999954, 0.000000, 0.000000",
            "scale": "1.220000, 0.100000, 0.020000",
            "type": "brush"
        },
        {
            "location": "3852.000000, -18.125681, 604.420044",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "ground"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "ground"
                },
                {
                    "group": 1,
                    "surface": "wall"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "-74.998360, 0.000000, 0.000000",
            "scale": "0.080000, 0.080000, 0.040000",
            "type": "brush"
        },
        {
            "location": "3812.000000, -68.145912, 586.691589",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "ground"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "ground"
                },
                {
                    "group": 1,
                    "surface": "wall"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "15.001439, 0.000000, 0.000000",
            "scale": "0.080000, 0.080000, 0.040000",
            "type": "brush"
        },
        {
            "location": "3852.000000, -16.000040, 612.565918",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "ground"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "ground"
                },
                {
                    "group": 1,
                    "surface": "ground"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "-89.999878, 0.000000, 0.000000",
            "scale": "0.080000, 0.080000, 0.040000",
            "type": "brush"
        },
        {
            "location": "3730.000000, -87.999969, 620.565918",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "89.999954, 0.000000, 0.000000",
            "scale": "1.220000, 0.100000, 0.020000",
            "type": "brush"
        },
        {
            "location": "3858.000000, -20.000038, 612.565918",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "-89.999878, 0.000000, 0.000000",
            "scale": "0.020000, 0.080000, 0.640000",
            "type": "brush"
        },
        {
            "location": "3858.000000, -20.000038, 604.565918",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "-89.999878, 0.000000, 0.000000",
            "scale": "0.020000, 0.080000, 0.640000",
            "type": "brush"
        },
        {
            "location": "3858.000000, -22.000038, 598.565918",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "-89.999878, 0.000000, 0.000000",
            "scale": "0.020000, 0.060000, 0.600000",
            "type": "brush"
        },
        {
            "location": "3858.000000, -26.000038, 594.565918",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "-89.999878, 0.000000, 0.000000",
            "scale": "0.020000, 0.040000, 0.520000",
            "type": "brush"
        },
        {
            "location": "3858.000000, -30.000038, 590.565918",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "-89.999878, 0.000000, 0.000000",
            "scale": "0.020000, 0.040000, 0.440000",
            "type": "brush"
        },
        {
            "location": "3858.000000, -36.000038, 586.565918",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "-89.999878, 0.000000, 0.000000",
            "scale": "0.020000, 0.040000, 0.320000",
            "type": "brush"
        },
        {
            "location": "3730.000000, -85.712776, 604.030029",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "59.999767, 0.000000, 0.000000",
            "scale": "1.220000, 0.100000, 0.020000",
            "type": "brush"
        },
        {
            "location": "3812.000000, -35.464104, 586.853149",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "ground"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "ground"
                },
                {
                    "group": 1,
                    "surface": "wall"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "-30.000092, 0.000000, 0.000000",
            "scale": "0.080000, 0.080000, 0.040000",
            "type": "brush"
        },
        {
            "location": "3730.000000, -17.986916, 612.665039",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "105.000916, 0.000000, 0.000000",
            "scale": "1.220000, 0.100000, 0.020000",
            "type": "brush"
        },
        {
            "location": "3812.000000, -28.201023, 591.110107",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "ground"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "ground"
                },
                {
                    "group": 1,
                    "surface": "wall"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "-45.000088, 0.000000, 0.000000",
            "scale": "0.080000, 0.080000, 0.040000",
            "type": "brush"
        },
        {
            "location": "3726.000000, -86.000038, 620.565918",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "-89.999878, 0.000000, 0.000000",
            "scale": "1.320000, 0.020000, 0.020000",
            "type": "brush"
        },
        {
            "location": "3812.000000, -18.125679, 604.420044",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "ground"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "ground"
                },
                {
                    "group": 1,
                    "surface": "wall"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "-74.998299, 0.000000, 0.000000",
            "scale": "0.080000, 0.080000, 0.040000",
            "type": "brush"
        },
        {
            "location": "3812.000000, -16.000038, 612.565918",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "ground"
                },
                {
                    "group": 1,
                    "surface": "ground"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "ground"
                },
                {
                    "group": 1,
                    "surface": "ground"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "-89.999878, 0.000000, 0.000000",
            "scale": "0.080000, 0.080000, 0.040000",
            "type": "brush"
        },
        {
            "location": "3730.000000, -23.958344, 598.181152",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "135.000046, 0.000000, 0.000000",
            "scale": "1.220000, 0.100000, 0.020000",
            "type": "brush"
        },
        {
            "location": "3730.000000, -29.535873, 592.585144",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "149.999954, 0.000000, 0.000000",
            "scale": "1.220000, 0.100000, 0.020000",
            "type": "brush"
        },
        {
            "location": "3730.000000, -36.371704, 588.623413",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "164.999527, 0.000000, 0.000000",
            "scale": "1.220000, 0.100000, 0.020000",
            "type": "brush"
        },
        {
            "location": "3812.000000, -22.287209, 597.101868",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "ground"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "ground"
                },
                {
                    "group": 1,
                    "surface": "wall"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "-59.999905, 0.000000, 0.000000",
            "scale": "0.080000, 0.080000, 0.040000",
            "type": "brush"
        },
        {
            "location": "3730.000000, -43.999981, 586.565918",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "179.999878, 0.000000, 0.000000",
            "scale": "1.220000, 0.100000, 0.020000",
            "type": "brush"
        },
        {
            "location": "3812.000000, -60.000000, 584.565918",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "ground"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "ground"
                },
                {
                    "group": 1,
                    "surface": "wall"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "0.000000, 0.000000, 0.000000",
            "scale": "0.080000, 0.080000, 0.040000",
            "type": "brush"
        },
        {
            "location": "3858.000000, -16.000038, 620.565918",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "-89.999878, 0.000000, 0.000000",
            "scale": "0.020000, 0.020000, 0.720000",
            "type": "brush"
        },
        {
            "location": "3726.000000, -16.000038, 620.565918",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "-89.999878, 0.000000, 0.000000",
            "scale": "1.320000, 0.020000, 0.020000",
            "type": "brush"
        },
        {
            "location": "3844.000000, -86.000000, 618.565918",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "ground"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "ground"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "ground"
                },
                {
                    "group": 1,
                    "surface": "wall"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "0.000000, 0.000000, 0.000000",
            "scale": "0.140000, 0.680000, 0.020000",
            "type": "brush"
        },
        {
            "location": "3812.000000, -81.455826, 596.766968",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "ground"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "ground"
                },
                {
                    "group": 1,
                    "surface": "wall"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "45.000103, 0.000000, 0.000000",
            "scale": "0.080000, 0.080000, 0.040000",
            "type": "brush"
        },
        {
            "location": "3812.000000, -85.712784, 604.030029",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "ground"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "ground"
                },
                {
                    "group": 1,
                    "surface": "wall"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "60.000088, 0.000000, 0.000000",
            "scale": "0.080000, 0.080000, 0.040000",
            "type": "brush"
        },
        {
            "location": "3812.000000, -87.944870, 612.147400",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "ground"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "ground"
                },
                {
                    "group": 1,
                    "surface": "wall"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "74.998337, 0.000000, 0.000000",
            "scale": "0.080000, 0.080000, 0.040000",
            "type": "brush"
        },
        {
            "location": "3812.000000, -87.999969, 620.565918",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "ground"
                },
                {
                    "group": 1,
                    "surface": "ground"
                },
                {
                    "group": 1,
                    "surface": "ground"
                },
                {
                    "group": 1,
                    "surface": "wall"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "89.999954, 0.000000, 0.000000",
            "scale": "0.080000, 0.080000, 0.040000",
            "type": "brush"
        },
        {
            "location": "3772.000000, -16.000038, 612.565918",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "ground"
                },
                {
                    "group": 1,
                    "surface": "ground"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "ground"
                },
                {
                    "group": 1,
                    "surface": "ground"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "-89.999878, 0.000000, 0.000000",
            "scale": "0.080000, 0.080000, 0.040000",
            "type": "brush"
        },
        {
            "location": "3772.000000, -18.125679, 604.420044",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "ground"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "ground"
                },
                {
                    "group": 1,
                    "surface": "wall"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "-74.998238, 0.000000, 0.000000",
            "scale": "0.080000, 0.080000, 0.040000",
            "type": "brush"
        },
        {
            "location": "3772.000000, -22.287209, 597.101868",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "ground"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "ground"
                },
                {
                    "group": 1,
                    "surface": "wall"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "-59.999905, 0.000000, 0.000000",
            "scale": "0.080000, 0.080000, 0.040000",
            "type": "brush"
        },
        {
            "location": "3772.000000, -28.201023, 591.110107",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "ground"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "ground"
                },
                {
                    "group": 1,
                    "surface": "wall"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "-45.000088, 0.000000, 0.000000",
            "scale": "0.080000, 0.080000, 0.040000",
            "type": "brush"
        },
        {
            "location": "3772.000000, -43.581493, 584.621033",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "ground"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "ground"
                },
                {
                    "group": 1,
                    "surface": "wall"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "-15.001637, 0.000000, 0.000000",
            "scale": "0.080000, 0.080000, 0.040000",
            "type": "brush"
        },
        {
            "location": "3772.000000, -35.464104, 586.853149",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "ground"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "ground"
                },
                {
                    "group": 1,
                    "surface": "wall"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "-30.000092, 0.000000, 0.000000",
            "scale": "0.080000, 0.080000, 0.040000",
            "type": "brush"
        },
        {
            "location": "3772.000000, -52.000000, 584.565918",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "ground"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "ground"
                },
                {
                    "group": 1,
                    "surface": "wall"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "0.000000, 0.000000, 0.000000",
            "scale": "0.080000, 0.080000, 0.040000",
            "type": "brush"
        },
        {
            "location": "3772.000000, -60.000000, 584.565918",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "ground"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "ground"
                },
                {
                    "group": 1,
                    "surface": "wall"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "0.000000, 0.000000, 0.000000",
            "scale": "0.080000, 0.080000, 0.040000",
            "type": "brush"
        },
        {
            "location": "3772.000000, -68.145912, 586.691589",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "ground"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "ground"
                },
                {
                    "group": 1,
                    "surface": "wall"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "15.001495, 0.000000, 0.000000",
            "scale": "0.080000, 0.080000, 0.040000",
            "type": "brush"
        },
        {
            "location": "3772.000000, -75.464096, 590.853149",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "ground"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "ground"
                },
                {
                    "group": 1,
                    "surface": "wall"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "30.000097, 0.000000, 0.000000",
            "scale": "0.080000, 0.080000, 0.040000",
            "type": "brush"
        },
        {
            "location": "3772.000000, -81.455826, 596.766968",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "ground"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "ground"
                },
                {
                    "group": 1,
                    "surface": "wall"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "45.000103, 0.000000, 0.000000",
            "scale": "0.080000, 0.080000, 0.040000",
            "type": "brush"
        },
        {
            "location": "3772.000000, -85.712784, 604.030029",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "ground"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "ground"
                },
                {
                    "group": 1,
                    "surface": "wall"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "60.000088, 0.000000, 0.000000",
            "scale": "0.080000, 0.080000, 0.040000",
            "type": "brush"
        },
        {
            "location": "3772.000000, -87.944870, 612.147400",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "ground"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "ground"
                },
                {
                    "group": 1,
                    "surface": "wall"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "74.998276, 0.000000, 0.000000",
            "scale": "0.080000, 0.080000, 0.040000",
            "type": "brush"
        },
        {
            "location": "3772.000000, -87.999969, 620.565918",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "ground"
                },
                {
                    "group": 1,
                    "surface": "ground"
                },
                {
                    "group": 1,
                    "surface": "ground"
                },
                {
                    "group": 1,
                    "surface": "wall"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "89.999954, 0.000000, 0.000000",
            "scale": "0.080000, 0.080000, 0.040000",
            "type": "brush"
        },
        {
            "location": "3726.000000, -86.000000, 618.565918",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "ground"
                },
                {
                    "group": 1,
                    "surface": "ground"
                },
                {
                    "group": 1,
                    "surface": "ground"
                },
                {
                    "group": 1,
                    "surface": "ground"
                },
                {
                    "group": 1,
                    "surface": "ground"
                },
                {
                    "group": 1,
                    "surface": "ground"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "0.000000, 0.000000, 0.000000",
            "scale": "1.180000, 0.020000, 0.020000",
            "type": "brush"
        },
        {
            "location": "3726.000000, -20.000000, 618.565918",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "ground"
                },
                {
                    "group": 1,
                    "surface": "ground"
                },
                {
                    "group": 1,
                    "surface": "ground"
                },
                {
                    "group": 1,
                    "surface": "ground"
                },
                {
                    "group": 1,
                    "surface": "ground"
                },
                {
                    "group": 1,
                    "surface": "ground"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "0.000000, 0.000000, 0.000000",
            "scale": "1.180000, 0.020000, 0.020000",
            "type": "brush"
        },
        {
            "location": "3790.000000, -86.000000, 606.565918",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "ground"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "ground"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "ground"
                },
                {
                    "group": 1,
                    "surface": "wall"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "0.000000, 0.000000, 0.000000",
            "scale": "0.220000, 0.680000, 0.020000",
            "type": "brush"
        },
        {
            "location": "3785.999756, 360.000031, 446.389282",
            "name": "SpawnPoint",
            "properties": [
                {
                    "name": "Name",
                    "value": "SpawnPoint0"
                },
                {
                    "name": "TeamMask",
                    "value": 2
                },
                {
                    "name": "Path",
                    "value": ""
                },
                {
                    "name": "LoopingPath",
                    "value": false
                },
                {
                    "name": "PermittedCharacterProfiles",
                    "value": ""
                }
            ],
            "rotation": "0.000000, 0.000000, 89.999954",
            "scale": "0.250000, 0.250000, 0.250000",
            "type": "gameObject"
        },
        {
            "location": "3726.000000, -87.999969, 620.565918",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "89.999954, 0.000000, 0.000000",
            "scale": "0.040000, 0.100000, 0.020000",
            "type": "brush"
        },
        {
            "location": "3715.715332, -86.119370, 620.565918",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "89.999817, 0.000000, -15.001454",
            "scale": "0.040000, 0.100000, 0.020000",
            "type": "brush"
        },
        {
            "location": "3706.267822, -81.640976, 620.565918",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "89.999954, 0.000000, -30.000092",
            "scale": "0.040000, 0.100000, 0.020000",
            "type": "brush"
        },
        {
            "location": "3698.301514, -74.869987, 620.565918",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "89.999947, 0.000007, -45.000084",
            "scale": "0.040000, 0.100000, 0.020000",
            "type": "brush"
        },
        {
            "location": "3718.951904, -87.014526, 620.565918",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "89.999817, 0.000000, -10.195174",
            "scale": "0.040000, 0.100000, 0.020000",
            "type": "brush"
        },
        {
            "location": "3709.162598, -83.343353, 620.565918",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "89.999947, 0.000000, -25.192940",
            "scale": "0.040000, 0.100000, 0.020000",
            "type": "brush"
        },
        {
            "location": "3700.656982, -77.263565, 620.565918",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "89.999809, 0.000000, -40.193687",
            "scale": "0.040000, 0.100000, 0.020000",
            "type": "brush"
        },
        {
            "location": "3694.014648, -69.189545, 620.565918",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "89.999763, 0.000000, -55.193623",
            "scale": "0.040000, 0.100000, 0.020000",
            "type": "brush"
        },
        {
            "location": "3722.312256, -87.644051, 620.565918",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "89.999947, 0.000000, -5.302065",
            "scale": "0.040000, 0.100000, 0.020000",
            "type": "brush"
        },
        {
            "location": "3712.245605, -84.821136, 620.565918",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "89.999931, 0.000000, -20.301813",
            "scale": "0.040000, 0.100000, 0.020000",
            "type": "brush"
        },
        {
            "location": "3703.252441, -79.488907, 620.565918",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "89.999947, 0.000000, -35.301918",
            "scale": "0.040000, 0.100000, 0.020000",
            "type": "brush"
        },
        {
            "location": "3695.945557, -72.010803, 620.565918",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "89.999809, 0.000000, -50.302677",
            "scale": "0.040000, 0.100000, 0.020000",
            "type": "brush"
        },
        {
            "location": "3726.000000, -87.944870, 612.147400",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "74.998238, 0.000000, 0.000000",
            "scale": "0.040000, 0.100000, 0.020000",
            "type": "brush"
        },
        {
            "location": "3715.729736, -86.066147, 612.147400",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "74.998192, 0.000000, -15.001454",
            "scale": "0.040000, 0.100000, 0.020000",
            "type": "brush"
        },
        {
            "location": "3706.295654, -81.593292, 612.147400",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "74.998001, 0.000000, -30.000214",
            "scale": "0.040000, 0.100000, 0.020000",
            "type": "brush"
        },
        {
            "location": "3698.340576, -74.831131, 612.147400",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "74.997948, 0.000000, -45.000092",
            "scale": "0.040000, 0.100000, 0.020000",
            "type": "brush"
        },
        {
            "location": "3692.406738, -66.240456, 612.147400",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "74.997910, 0.000000, -59.999935",
            "scale": "0.040000, 0.100000, 0.020000",
            "type": "brush"
        },
        {
            "location": "3694.110107, -69.238220, 612.147400",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "74.997734, 0.000000, -55.058529",
            "scale": "0.040000, 0.100000, 0.020000",
            "type": "brush"
        },
        {
            "location": "3700.761719, -77.285912, 612.147400",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "74.997795, 0.000000, -40.058491",
            "scale": "0.040000, 0.100000, 0.020000",
            "type": "brush"
        },
        {
            "location": "3709.269775, -83.337799, 612.147400",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "74.997940, 0.000007, -25.057747",
            "scale": "0.040000, 0.100000, 0.020000",
            "type": "brush"
        },
        {
            "location": "3719.053711, -86.981506, 612.147400",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "74.998047, 0.000000, -10.060041",
            "scale": "0.040000, 0.100000, 0.020000",
            "type": "brush"
        },
        {
            "location": "3722.228271, -87.576286, 612.147400",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "74.998146, 0.000000, -5.431004",
            "scale": "0.040000, 0.100000, 0.020000",
            "type": "brush"
        },
        {
            "location": "3712.182373, -84.733948, 612.147400",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "74.997818, 0.000000, -20.430538",
            "scale": "0.040000, 0.100000, 0.020000",
            "type": "brush"
        },
        {
            "location": "3703.213623, -79.388321, 612.147400",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "74.997406, 0.000007, -35.430878",
            "scale": "0.040000, 0.100000, 0.020000",
            "type": "brush"
        },
        {
            "location": "3695.934326, -71.903610, 612.147400",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "74.997643, 0.000000, -50.431992",
            "scale": "0.040000, 0.100000, 0.020000",
            "type": "brush"
        },
        {
            "location": "3726.000000, -85.712776, 604.030029",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "59.999767, 0.000000, 0.000000",
            "scale": "0.040000, 0.100000, 0.020000",
            "type": "brush"
        },
        {
            "location": "3716.307373, -83.910110, 604.030029",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "59.999630, 0.000000, -15.001454",
            "scale": "0.040000, 0.100000, 0.020000",
            "type": "brush"
        },
        {
            "location": "3707.411621, -79.660225, 604.030029",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "59.999741, 0.000000, -30.000092",
            "scale": "0.040000, 0.100000, 0.020000",
            "type": "brush"
        },
        {
            "location": "3699.918945, -73.252762, 604.030029",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "59.999699, 0.000000, -45.000088",
            "scale": "0.040000, 0.100000, 0.020000",
            "type": "brush"
        },
        {
            "location": "3694.339844, -65.124382, 604.030029",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "59.999638, 0.000000, -59.999958",
            "scale": "0.040000, 0.100000, 0.020000",
            "type": "brush"
        },
        {
            "location": "3719.731934, -84.849594, 604.030029",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "59.999683, 0.000000, -9.611372",
            "scale": "0.040000, 0.100000, 0.020000",
            "type": "brush"
        },
        {
            "location": "3710.476318, -81.454033, 604.030029",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "59.999378, 0.000000, -24.609140",
            "scale": "0.040000, 0.100000, 0.020000",
            "type": "brush"
        },
        {
            "location": "3696.097168, -68.210220, 604.030029",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "59.999603, 0.000000, -54.610462",
            "scale": "0.040000, 0.100000, 0.020000",
            "type": "brush"
        },
        {
            "location": "3702.415039, -75.778648, 604.030029",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "59.999413, 0.000000, -39.609238",
            "scale": "0.040000, 0.100000, 0.020000",
            "type": "brush"
        },
        {
            "location": "3704.551514, -77.604271, 604.030029",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "59.999603, 0.000000, -35.346012",
            "scale": "0.040000, 0.100000, 0.020000",
            "type": "brush"
        },
        {
            "location": "3697.688477, -70.526604, 604.030029",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "59.999180, 0.000000, -50.346844",
            "scale": "0.040000, 0.100000, 0.020000",
            "type": "brush"
        },
        {
            "location": "3713.012451, -82.664497, 604.030029",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "59.999611, 0.000000, -20.345942",
            "scale": "0.040000, 0.100000, 0.020000",
            "type": "brush"
        },
        {
            "location": "3722.495117, -85.362396, 604.030029",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "59.999767, 0.000000, -5.346164",
            "scale": "0.040000, 0.100000, 0.020000",
            "type": "brush"
        },
        {
            "location": "3726.000000, -81.455811, 596.766968",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "44.999744, 0.000000, 0.000000",
            "scale": "0.040000, 0.100000, 0.020000",
            "type": "brush"
        },
        {
            "location": "3726.000000, -81.455811, 596.766968",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "44.999744, 0.000000, 0.000000",
            "scale": "0.040000, 0.100000, 0.020000",
            "type": "brush"
        },
        {
            "location": "3717.409180, -79.798195, 596.766968",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "44.999645, 0.000000, -15.001454",
            "scale": "0.040000, 0.100000, 0.020000",
            "type": "brush"
        },
        {
            "location": "3709.540039, -75.973587, 596.766968",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "44.999641, 0.000000, -30.000244",
            "scale": "0.040000, 0.100000, 0.020000",
            "type": "brush"
        },
        {
            "location": "3702.928955, -70.242622, 596.766968",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "44.999744, 0.000000, -45.000126",
            "scale": "0.040000, 0.100000, 0.020000",
            "type": "brush"
        },
        {
            "location": "3698.026367, -62.995857, 596.766968",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "44.999744, 0.000000, -60.000122",
            "scale": "0.040000, 0.100000, 0.020000",
            "type": "brush"
        },
        {
            "location": "3705.323242, -72.679024, 596.766968",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "44.999645, 0.000000, -39.156502",
            "scale": "0.040000, 0.100000, 0.020000",
            "type": "brush"
        },
        {
            "location": "3699.708496, -65.968918, 596.766968",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "44.999733, 0.000000, -54.158051",
            "scale": "0.040000, 0.100000, 0.020000",
            "type": "brush"
        },
        {
            "location": "3712.483154, -77.707291, 596.766968",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "44.999619, 0.000000, -24.156506",
            "scale": "0.040000, 0.100000, 0.020000",
            "type": "brush"
        },
        {
            "location": "3720.700928, -80.711060, 596.766968",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "44.999645, 0.000000, -9.158703",
            "scale": "0.040000, 0.100000, 0.020000",
            "type": "brush"
        },
        {
            "location": "3701.856689, -68.971985, 596.766968",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "44.999645, 0.000000, -47.841164",
            "scale": "0.040000, 0.100000, 0.020000",
            "type": "brush"
        },
        {
            "location": "3708.175537, -75.023735, 596.766968",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "44.999645, 0.000000, -32.843838",
            "scale": "0.040000, 0.100000, 0.020000",
            "type": "brush"
        },
        {
            "location": "3715.845215, -79.233887, 596.766968",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "44.999645, 0.000000, -17.843180",
            "scale": "0.040000, 0.100000, 0.020000",
            "type": "brush"
        },
        {
            "location": "3724.343506, -81.315460, 596.766968",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "44.999706, 0.000000, -2.842621",
            "scale": "0.040000, 0.100000, 0.020000",
            "type": "brush"
        },
        {
            "location": "3726.000000, -75.464081, 590.853149",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "29.999893, 0.000000, 0.000000",
            "scale": "0.040000, 0.100000, 0.020000",
            "type": "brush"
        },
        {
            "location": "3718.959961, -74.010628, 590.853149",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "30.000097, 0.000000, -15.001454",
            "scale": "0.040000, 0.100000, 0.020000",
            "type": "brush"
        },
        {
            "location": "3712.535889, -70.784599, 590.853149",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "29.999893, 0.000000, -30.000092",
            "scale": "0.040000, 0.100000, 0.020000",
            "type": "brush"
        },
        {
            "location": "3707.165771, -66.005829, 590.853149",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "29.999903, 0.000000, -45.000088",
            "scale": "0.040000, 0.100000, 0.020000",
            "type": "brush"
        },
        {
            "location": "3703.215332, -60.000000, 590.853149",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "30.000097, 0.000000, -59.999603",
            "scale": "0.040000, 0.100000, 0.020000",
            "type": "brush"
        },
        {
            "location": "3709.840332, -68.700172, 590.853149",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "30.000122, 0.000000, -37.093678",
            "scale": "0.040000, 0.100000, 0.020000",
            "type": "brush"
        },
        {
            "location": "3705.101318, -63.294746, 590.853149",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "30.000097, 0.000000, -52.096149",
            "scale": "0.040000, 0.100000, 0.020000",
            "type": "brush"
        },
        {
            "location": "3715.816650, -72.694946, 590.853149",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "30.000097, 0.000000, -22.093769",
            "scale": "0.040000, 0.100000, 0.020000",
            "type": "brush"
        },
        {
            "location": "3722.623291, -75.006775, 590.853149",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "30.000097, 0.000000, -7.095527",
            "scale": "0.040000, 0.100000, 0.020000",
            "type": "brush"
        },
        {
            "location": "3726.000000, -68.145905, 586.691589",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "15.001234, 0.000000, 0.000000",
            "scale": "0.040000, 0.100000, 0.020000",
            "type": "brush"
        },
        {
            "location": "3720.854004, -66.941811, 586.691589",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "15.001309, 0.000000, -15.001454",
            "scale": "0.040000, 0.100000, 0.020000",
            "type": "brush"
        },
        {
            "location": "3716.195068, -64.446869, 586.691589",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "15.001405, 0.000000, -30.000187",
            "scale": "0.040000, 0.100000, 0.020000",
            "type": "brush"
        },
        {
            "location": "3712.340576, -60.831116, 586.691589",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "15.001452, 0.000000, -45.000084",
            "scale": "0.040000, 0.100000, 0.020000",
            "type": "brush"
        },
        {
            "location": "3709.553223, -56.340950, 586.691589",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "15.001608, 0.000000, -59.999752",
            "scale": "0.040000, 0.100000, 0.020000",
            "type": "brush"
        },
        {
            "location": "3714.485107, -63.073334, 586.691589",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "15.001601, 0.000000, -36.210255",
            "scale": "0.040000, 0.100000, 0.020000",
            "type": "brush"
        },
        {
            "location": "3711.044434, -59.061836, 586.691589",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "15.001697, 0.000000, -51.211750",
            "scale": "0.040000, 0.100000, 0.020000",
            "type": "brush"
        },
        {
            "location": "3718.846924, -66.057617, 586.691589",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "15.001519, 0.000000, -21.209555",
            "scale": "0.040000, 0.100000, 0.020000",
            "type": "brush"
        },
        {
            "location": "3723.832520, -67.811325, 586.691589",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "15.001388, 0.000000, -6.210300",
            "scale": "0.040000, 0.100000, 0.020000",
            "type": "brush"
        },
        {
            "location": "3726.000000, -29.535873, 592.585144",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "149.999954, 0.000000, 0.000000",
            "scale": "0.040000, 0.100000, 0.020000",
            "type": "brush"
        },
        {
            "location": "3726.000000, -23.958344, 598.181152",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "135.000046, 0.000000, 0.000000",
            "scale": "0.040000, 0.100000, 0.020000",
            "type": "brush"
        },
        {
            "location": "3726.000000, -20.019211, 605.030029",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "120.000053, 0.000000, 0.000000",
            "scale": "0.040000, 0.100000, 0.020000",
            "type": "brush"
        },
        {
            "location": "3726.000000, -17.986916, 612.665039",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "105.000916, 0.000000, 0.000000",
            "scale": "0.040000, 0.100000, 0.020000",
            "type": "brush"
        },
        {
            "location": "3726.000000, -36.371704, 588.623413",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "164.999527, 0.000000, 0.000000",
            "scale": "0.040000, 0.100000, 0.020000",
            "type": "brush"
        },
        {
            "location": "3705.215332, -40.535881, 590.853149",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "29.999886, 0.000000, -120.000038",
            "scale": "0.040000, 0.100000, 0.020000",
            "type": "brush"
        },
        {
            "location": "3711.552979, -44.194977, 586.691589",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "15.001342, 0.000000, -120.000023",
            "scale": "0.040000, 0.100000, 0.020000",
            "type": "brush"
        },
        {
            "location": "3696.339844, -35.411552, 604.030029",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "59.999535, 0.000007, -120.000008",
            "scale": "0.040000, 0.100000, 0.020000",
            "type": "brush"
        },
        {
            "location": "3700.026611, -37.540070, 596.766968",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "44.999744, 0.000000, -120.000023",
            "scale": "0.040000, 0.100000, 0.020000",
            "type": "brush"
        },
        {
            "location": "3694.406738, -34.295517, 612.147400",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "74.998085, 0.000000, -120.000023",
            "scale": "0.040000, 0.100000, 0.020000",
            "type": "brush"
        },
        {
            "location": "3707.299805, -37.840279, 590.853149",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "29.999903, 0.000000, -127.094543",
            "scale": "0.040000, 0.100000, 0.020000",
            "type": "brush"
        },
        {
            "location": "3715.168945, -40.340508, 586.691589",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "15.001439, 0.000000, -134.999969",
            "scale": "0.040000, 0.100000, 0.020000",
            "type": "brush"
        },
        {
            "location": "3709.994141, -35.165771, 590.853149",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "29.999886, 0.000000, -135.000015",
            "scale": "0.040000, 0.100000, 0.020000",
            "type": "brush"
        },
        {
            "location": "3712.705322, -33.101440, 590.853149",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "29.999901, 0.000000, -142.094757",
            "scale": "0.040000, 0.100000, 0.020000",
            "type": "brush"
        },
        {
            "location": "3716.000000, -31.215384, 590.853149",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "29.999968, 0.000000, -149.999954",
            "scale": "0.040000, 0.100000, 0.020000",
            "type": "brush"
        },
        {
            "location": "3719.153076, -29.923204, 590.853149",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "29.999920, 0.000000, -157.094788",
            "scale": "0.040000, 0.100000, 0.020000",
            "type": "brush"
        },
        {
            "location": "3722.823730, -28.954117, 590.853149",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "29.999968, 0.000000, -164.999527",
            "scale": "0.040000, 0.100000, 0.020000",
            "type": "brush"
        },
        {
            "location": "3726.203857, -28.521805, 590.853149",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "29.999968, 0.000000, -172.094742",
            "scale": "0.040000, 0.100000, 0.020000",
            "type": "brush"
        },
        {
            "location": "3726.897949, -35.785156, 586.691589",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "15.001782, 0.000000, -171.210312",
            "scale": "0.040000, 0.100000, 0.020000",
            "type": "brush"
        },
        {
            "location": "3716.938232, -39.044418, 586.691589",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "15.001599, 0.000000, -141.211060",
            "scale": "0.040000, 0.100000, 0.020000",
            "type": "brush"
        },
        {
            "location": "3712.926758, -42.485207, 586.691589",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "15.001508, 0.000000, -126.210144",
            "scale": "0.040000, 0.100000, 0.020000",
            "type": "brush"
        },
        {
            "location": "3724.717529, -36.022957, 586.691589",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "15.001601, 0.000000, -164.999527",
            "scale": "0.040000, 0.100000, 0.020000",
            "type": "brush"
        },
        {
            "location": "3719.659180, -37.553215, 586.691589",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "15.001508, 0.000000, -150.000076",
            "scale": "0.040000, 0.100000, 0.020000",
            "type": "brush"
        },
        {
            "location": "3721.703613, -36.759109, 586.691589",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "15.001692, 0.000000, -156.211029",
            "scale": "0.040000, 0.100000, 0.020000",
            "type": "brush"
        },
        {
            "location": "3694.359131, -34.267899, 620.565918",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "89.999878, 0.000000, -120.000000",
            "scale": "0.040000, 0.100000, 0.020000",
            "type": "brush"
        },
        {
            "location": "3726.584229, -22.514402, 596.766968",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "44.999706, 0.000000, -174.158005",
            "scale": "0.040000, 0.100000, 0.020000",
            "type": "brush"
        },
        {
            "location": "3722.909424, -22.873251, 596.766968",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "44.999645, 0.000007, -167.841843",
            "scale": "0.040000, 0.100000, 0.020000",
            "type": "brush"
        },
        {
            "location": "3714.509033, -25.319662, 596.766968",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "44.999653, 0.000000, -152.842545",
            "scale": "0.040000, 0.100000, 0.020000",
            "type": "brush"
        },
        {
            "location": "3721.272949, -23.166536, 596.766968",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "44.999645, 0.000000, -164.999527",
            "scale": "0.040000, 0.100000, 0.020000",
            "type": "brush"
        },
        {
            "location": "3717.965576, -24.021826, 596.766968",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "44.999714, 0.000000, -159.157822",
            "scale": "0.040000, 0.100000, 0.020000",
            "type": "brush"
        },
        {
            "location": "3713.004150, -26.026403, 596.766968",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "44.999680, 0.000000, -150.000076",
            "scale": "0.040000, 0.100000, 0.020000",
            "type": "brush"
        },
        {
            "location": "3710.031250, -27.708382, 596.766968",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "44.999645, 0.000000, -144.157822",
            "scale": "0.040000, 0.100000, 0.020000",
            "type": "brush"
        },
        {
            "location": "3707.028076, -29.856720, 596.766968",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "44.999645, 0.000000, -137.842148",
            "scale": "0.040000, 0.100000, 0.020000",
            "type": "brush"
        },
        {
            "location": "3705.757324, -30.928976, 596.766968",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "44.999683, 0.000000, -135.000000",
            "scale": "0.040000, 0.100000, 0.020000",
            "type": "brush"
        },
        {
            "location": "3703.321045, -33.323303, 596.766968",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "44.999550, 0.000000, -129.156555",
            "scale": "0.040000, 0.100000, 0.020000",
            "type": "brush"
        },
        {
            "location": "3700.976318, -36.175659, 596.766968",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "44.999645, 0.000000, -122.842636",
            "scale": "0.040000, 0.100000, 0.020000",
            "type": "brush"
        },
        {
            "location": "3698.395752, -32.551434, 604.030029",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "59.999760, 0.000000, -125.346161",
            "scale": "0.040000, 0.100000, 0.020000",
            "type": "brush"
        },
        {
            "location": "3700.221191, -30.414837, 604.030029",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "59.999638, 0.000000, -129.610489",
            "scale": "0.040000, 0.100000, 0.020000",
            "type": "brush"
        },
        {
            "location": "3702.747314, -27.918859, 604.030029",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "59.999611, 0.000000, -135.000000",
            "scale": "0.040000, 0.100000, 0.020000",
            "type": "brush"
        },
        {
            "location": "3705.473389, -25.688164, 604.030029",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "59.999630, 0.000000, -140.345963",
            "scale": "0.040000, 0.100000, 0.020000",
            "type": "brush"
        },
        {
            "location": "3707.789795, -24.097059, 604.030029",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "59.999275, 0.000000, -144.610428",
            "scale": "0.040000, 0.100000, 0.020000",
            "type": "brush"
        },
        {
            "location": "3710.875732, -22.339849, 604.030029",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "59.999630, 0.000000, -149.999954",
            "scale": "0.040000, 0.100000, 0.020000",
            "type": "brush"
        },
        {
            "location": "3714.086182, -20.890886, 604.030029",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "59.999180, 0.000000, -155.346634",
            "scale": "0.040000, 0.100000, 0.020000",
            "type": "brush"
        },
        {
            "location": "3716.735596, -19.953463, 604.030029",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "59.999603, 0.000000, -159.610504",
            "scale": "0.040000, 0.100000, 0.020000",
            "type": "brush"
        },
        {
            "location": "3720.171143, -19.054747, 604.030029",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "59.999413, 0.000000, -164.999527",
            "scale": "0.040000, 0.100000, 0.020000",
            "type": "brush"
        },
        {
            "location": "3726.448975, -18.266260, 604.030029",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "59.999603, 0.000000, -174.610504",
            "scale": "0.040000, 0.100000, 0.020000",
            "type": "brush"
        },
        {
            "location": "3723.647217, -18.486155, 604.030029",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "59.999413, 0.000000, -170.346008",
            "scale": "0.040000, 0.100000, 0.020000",
            "type": "brush"
        },
        {
            "location": "3696.611816, -31.213404, 612.147400",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "74.997826, 0.000000, -125.430977",
            "scale": "0.040000, 0.100000, 0.020000",
            "type": "brush"
        },
        {
            "location": "3698.714111, -28.761505, 612.147400",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "74.997879, 0.000000, -130.059204",
            "scale": "0.040000, 0.100000, 0.020000",
            "type": "brush"
        },
        {
            "location": "3701.168945, -26.340578, 612.147400",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "74.998055, 0.000007, -134.999985",
            "scale": "0.040000, 0.100000, 0.020000",
            "type": "brush"
        },
        {
            "location": "3704.096191, -23.934549, 612.147400",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "74.997719, 0.000007, -140.431030",
            "scale": "0.040000, 0.100000, 0.020000",
            "type": "brush"
        },
        {
            "location": "3706.761719, -22.110273, 612.147400",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "74.997749, 0.000000, -145.058624",
            "scale": "0.040000, 0.100000, 0.020000",
            "type": "brush"
        },
        {
            "location": "3709.759521, -20.406862, 612.147400",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "74.997864, 0.000000, -150.000076",
            "scale": "0.040000, 0.100000, 0.020000",
            "type": "brush"
        },
        {
            "location": "3713.210205, -18.840219, 612.147400",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "74.997566, 0.000007, -155.431870",
            "scale": "0.040000, 0.100000, 0.020000",
            "type": "brush"
        },
        {
            "location": "3716.256836, -17.767992, 612.147400",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "74.997444, 0.000007, -160.059143",
            "scale": "0.040000, 0.100000, 0.020000",
            "type": "brush"
        },
        {
            "location": "3719.593262, -16.898619, 612.147400",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "74.997856, 0.000007, -164.999527",
            "scale": "0.040000, 0.100000, 0.020000",
            "type": "brush"
        },
        {
            "location": "3723.331787, -16.278540, 612.147400",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "74.997124, 0.000000, -170.430893",
            "scale": "0.040000, 0.100000, 0.020000",
            "type": "brush"
        },
        {
            "location": "3726.552246, -16.031389, 612.147400",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "74.997421, 0.000000, -175.059158",
            "scale": "0.040000, 0.100000, 0.020000",
            "type": "brush"
        },
        {
            "location": "3730.000000, -15.999933, 620.565918",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "89.999489, 0.000007, -179.999954",
            "scale": "0.040000, 0.100000, 0.020000",
            "type": "brush"
        },
        {
            "location": "3723.233154, -16.234606, 620.565918",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "89.999527, 0.000007, -170.301651",
            "scale": "0.040000, 0.100000, 0.020000",
            "type": "brush"
        },
        {
            "location": "3726.642090, -15.973074, 620.565918",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "89.999947, 0.000007, -175.194260",
            "scale": "0.040000, 0.100000, 0.020000",
            "type": "brush"
        },
        {
            "location": "3719.579102, -16.845381, 620.565918",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "89.999924, 0.000000, -164.999771",
            "scale": "0.040000, 0.100000, 0.020000",
            "type": "brush"
        },
        {
            "location": "3713.103760, -18.823553, 620.565918",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "89.999947, 0.000000, -155.301971",
            "scale": "0.040000, 0.100000, 0.020000",
            "type": "brush"
        },
        {
            "location": "3716.328613, -17.688494, 620.565918",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "89.999954, 0.000000, -160.194305",
            "scale": "0.040000, 0.100000, 0.020000",
            "type": "brush"
        },
        {
            "location": "3709.732178, -20.358927, 620.565918",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "89.999947, 0.000000, -150.000076",
            "scale": "0.040000, 0.100000, 0.020000",
            "type": "brush"
        },
        {
            "location": "3706.810303, -22.014635, 620.565918",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "89.999886, 0.000000, -145.194138",
            "scale": "0.040000, 0.100000, 0.020000",
            "type": "brush"
        },
        {
            "location": "3701.130127, -26.301514, 620.565918",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "89.999908, 0.000000, -135.000046",
            "scale": "0.040000, 0.100000, 0.020000",
            "type": "brush"
        },
        {
            "location": "3703.989014, -23.945715, 620.565918",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "89.999939, 0.000000, -140.301880",
            "scale": "0.040000, 0.100000, 0.020000",
            "type": "brush"
        },
        {
            "location": "3698.736572, -28.656874, 620.565918",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "89.999954, 0.000000, -130.194305",
            "scale": "0.040000, 0.100000, 0.020000",
            "type": "brush"
        },
        {
            "location": "3696.511230, -31.252268, 620.565918",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "89.999947, 0.000000, -125.302025",
            "scale": "0.040000, 0.100000, 0.020000",
            "type": "brush"
        },
        {
            "location": "3691.610352, -63.041950, 620.565918",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "89.999680, 0.000000, -75.324989",
            "scale": "0.040000, 0.100000, 0.020000",
            "type": "brush"
        },
        {
            "location": "3690.748291, -59.644428, 620.565918",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "89.999619, 0.000000, -80.608353",
            "scale": "0.040000, 0.100000, 0.020000",
            "type": "brush"
        },
        {
            "location": "3692.729248, -36.839756, 620.565918",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "89.999809, 0.000000, -105.076981",
            "scale": "0.040000, 0.100000, 0.020000",
            "type": "brush"
        },
        {
            "location": "3690.173340, -55.907566, 620.565918",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "89.999657, 0.000000, -86.308167",
            "scale": "0.040000, 0.100000, 0.020000",
            "type": "brush"
        },
        {
            "location": "3689.977295, -52.628170, 620.565918",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "89.999733, 0.000000, -91.259590",
            "scale": "0.040000, 0.100000, 0.020000",
            "type": "brush"
        },
        {
            "location": "3692.358887, -66.267883, 620.565918",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "89.999908, 0.000000, -59.999836",
            "scale": "0.040000, 0.100000, 0.020000",
            "type": "brush"
        },
        {
            "location": "3690.054688, -49.493557, 620.565918",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "89.999718, 0.000007, -95.985229",
            "scale": "0.040000, 0.100000, 0.020000",
            "type": "brush"
        },
        {
            "location": "3690.499023, -45.690231, 620.565918",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "89.999718, 0.000007, -101.757156",
            "scale": "0.040000, 0.100000, 0.020000",
            "type": "brush"
        },
        {
            "location": "3691.093506, -42.832066, 620.565918",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "89.999718, 0.000000, -106.156662",
            "scale": "0.040000, 0.100000, 0.020000",
            "type": "brush"
        },
        {
            "location": "3691.924316, -39.971687, 620.565918",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "89.999649, 0.000000, -110.645317",
            "scale": "0.040000, 0.100000, 0.020000",
            "type": "brush"
        },
        {
            "location": "3690.969238, -43.593361, 612.147400",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "74.997963, 0.000007, -105.000916",
            "scale": "0.040000, 0.100000, 0.020000",
            "type": "brush"
        },
        {
            "location": "3691.855225, -40.359085, 612.147400",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "74.997887, 0.000007, -110.061188",
            "scale": "0.040000, 0.100000, 0.020000",
            "type": "brush"
        },
        {
            "location": "3692.746094, -37.888817, 612.147400",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "74.997742, 0.000000, -114.022804",
            "scale": "0.040000, 0.100000, 0.020000",
            "type": "brush"
        },
        {
            "location": "3690.469482, -46.218304, 612.147400",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "74.997551, 0.000007, -100.968071",
            "scale": "0.040000, 0.100000, 0.020000",
            "type": "brush"
        },
        {
            "location": "3690.087646, -49.850281, 612.147400",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "74.997559, 0.000000, -95.454895",
            "scale": "0.040000, 0.100000, 0.020000",
            "type": "brush"
        },
        {
            "location": "3690.033203, -52.697754, 612.147400",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "74.997444, 0.000000, -91.156670",
            "scale": "0.040000, 0.100000, 0.020000",
            "type": "brush"
        },
        {
            "location": "3690.192383, -55.543102, 612.147400",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "74.997307, 0.000007, -86.855682",
            "scale": "0.040000, 0.100000, 0.020000",
            "type": "brush"
        },
        {
            "location": "3690.659180, -58.901680, 612.147400",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "74.997276, 0.000000, -81.737175",
            "scale": "0.040000, 0.100000, 0.020000",
            "type": "brush"
        },
        {
            "location": "3691.399902, -62.119846, 612.147400",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "74.996979, 0.000007, -76.751869",
            "scale": "0.040000, 0.100000, 0.020000",
            "type": "brush"
        },
        {
            "location": "3694.818848, -38.712543, 604.030029",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "59.999084, 0.000007, -114.169495",
            "scale": "0.040000, 0.100000, 0.020000",
            "type": "brush"
        },
        {
            "location": "3693.480713, -42.728443, 604.030029",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "59.999153, 0.000000, -107.381882",
            "scale": "0.040000, 0.100000, 0.020000",
            "type": "brush"
        },
        {
            "location": "3692.765869, -45.991119, 604.030029",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "59.999268, 0.000000, -102.026611",
            "scale": "0.040000, 0.100000, 0.020000",
            "type": "brush"
        },
        {
            "location": "3692.416504, -48.629871, 604.030029",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "59.999535, 0.000000, -97.757904",
            "scale": "0.040000, 0.100000, 0.020000",
            "type": "brush"
        },
        {
            "location": "3692.264160, -51.298382, 604.030029",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "59.999439, 0.000000, -93.472229",
            "scale": "0.040000, 0.100000, 0.020000",
            "type": "brush"
        },
        {
            "location": "3692.312500, -53.985207, 604.030029",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "59.999413, 0.000000, -89.163567",
            "scale": "0.040000, 0.100000, 0.020000",
            "type": "brush"
        },
        {
            "location": "3692.738525, -57.844570, 604.030029",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "59.999413, 0.000000, -82.936279",
            "scale": "0.040000, 0.100000, 0.020000",
            "type": "brush"
        },
        {
            "location": "3693.654785, -61.896320, 604.030029",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "59.999275, 0.000000, -76.272011",
            "scale": "0.040000, 0.100000, 0.020000",
            "type": "brush"
        },
        {
            "location": "3696.893066, -59.188988, 596.766968",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "44.999645, 0.000000, -67.133339",
            "scale": "0.040000, 0.100000, 0.020000",
            "type": "brush"
        },
        {
            "location": "3696.210938, -54.962406, 596.766968",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "44.999645, 0.000000, -74.820351",
            "scale": "0.040000, 0.100000, 0.020000",
            "type": "brush"
        },
        {
            "location": "3696.078613, -51.418488, 596.766968",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "44.999691, 0.000000, -81.189392",
            "scale": "0.040000, 0.100000, 0.020000",
            "type": "brush"
        },
        {
            "location": "3696.326660, -47.985176, 596.766968",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "44.999653, 0.000007, -87.369873",
            "scale": "0.040000, 0.100000, 0.020000",
            "type": "brush"
        },
        {
            "location": "3697.040039, -44.201900, 596.766968",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "44.999645, 0.000000, -94.283226",
            "scale": "0.040000, 0.100000, 0.020000",
            "type": "brush"
        },
        {
            "location": "3698.186279, -40.577896, 596.766968",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "44.999607, 0.000000, -101.108459",
            "scale": "0.040000, 0.100000, 0.020000",
            "type": "brush"
        },
        {
            "location": "3703.838379, -43.827888, 590.853149",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "30.000097, 0.000000, -111.976410",
            "scale": "0.040000, 0.100000, 0.020000",
            "type": "brush"
        },
        {
            "location": "3702.786621, -48.145882, 590.853149",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "29.999901, 0.000000, -101.981728",
            "scale": "0.040000, 0.100000, 0.020000",
            "type": "brush"
        },
        {
            "location": "3702.501465, -52.625137, 590.853149",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "29.999903, 0.000000, -91.886322",
            "scale": "0.040000, 0.100000, 0.020000",
            "type": "brush"
        },
        {
            "location": "3702.909912, -56.588909, 590.853149",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "29.999903, 0.000000, -82.925896",
            "scale": "0.040000, 0.100000, 0.020000",
            "type": "brush"
        },
        {
            "location": "3710.303711, -47.726212, 586.691589",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "15.001396, 0.000000, -108.190620",
            "scale": "0.040000, 0.100000, 0.020000",
            "type": "brush"
        },
        {
            "location": "3709.804932, -51.397324, 586.691589",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "15.001541, 0.000000, -96.510323",
            "scale": "0.040000, 0.100000, 0.020000",
            "type": "brush"
        },
        {
            "location": "3718.000000, -59.999992, 584.565918",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "-0.000122, 0.000000, 0.000000",
            "scale": "0.140000, 0.160000, 0.020000",
            "type": "brush"
        },
        {
            "location": "3726.000000, -86.000000, 618.565918",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "ground"
                },
                {
                    "group": 1,
                    "surface": "ground"
                },
                {
                    "group": 1,
                    "surface": "ground"
                },
                {
                    "group": 1,
                    "surface": "ground"
                },
                {
                    "group": 1,
                    "surface": "ground"
                },
                {
                    "group": 1,
                    "surface": "ground"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "0.000000, 0.000000, 0.000000",
            "scale": "0.040000, 0.020000, 0.020000",
            "type": "brush"
        },
        {
            "location": "3722.656494, -85.675537, 618.565918",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "ground"
                },
                {
                    "group": 1,
                    "surface": "ground"
                },
                {
                    "group": 1,
                    "surface": "ground"
                },
                {
                    "group": 1,
                    "surface": "ground"
                },
                {
                    "group": 1,
                    "surface": "ground"
                },
                {
                    "group": 1,
                    "surface": "ground"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "0.000000, 0.000000, -5.059756",
            "scale": "0.040000, 0.020000, 0.020000",
            "type": "brush"
        },
        {
            "location": "3718.866699, -84.940224, 618.565918",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "ground"
                },
                {
                    "group": 1,
                    "surface": "ground"
                },
                {
                    "group": 1,
                    "surface": "ground"
                },
                {
                    "group": 1,
                    "surface": "ground"
                },
                {
                    "group": 1,
                    "surface": "ground"
                },
                {
                    "group": 1,
                    "surface": "ground"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "0.000000, 0.000000, -10.876481",
            "scale": "0.040000, 0.020000, 0.020000",
            "type": "brush"
        },
        {
            "location": "3716.068115, -84.133484, 618.565918",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "ground"
                },
                {
                    "group": 1,
                    "surface": "ground"
                },
                {
                    "group": 1,
                    "surface": "ground"
                },
                {
                    "group": 1,
                    "surface": "ground"
                },
                {
                    "group": 1,
                    "surface": "ground"
                },
                {
                    "group": 1,
                    "surface": "ground"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "0.000000, 0.000000, -15.262897",
            "scale": "0.040000, 0.020000, 0.020000",
            "type": "brush"
        },
        {
            "location": "3712.960205, -82.954269, 618.565918",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "ground"
                },
                {
                    "group": 1,
                    "surface": "ground"
                },
                {
                    "group": 1,
                    "surface": "ground"
                },
                {
                    "group": 1,
                    "surface": "ground"
                },
                {
                    "group": 1,
                    "surface": "ground"
                },
                {
                    "group": 1,
                    "surface": "ground"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "0.000000, 0.000000, -20.268368",
            "scale": "0.040000, 0.020000, 0.020000",
            "type": "brush"
        },
        {
            "location": "3709.355957, -81.172195, 618.565918",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "ground"
                },
                {
                    "group": 1,
                    "surface": "ground"
                },
                {
                    "group": 1,
                    "surface": "ground"
                },
                {
                    "group": 1,
                    "surface": "ground"
                },
                {
                    "group": 1,
                    "surface": "ground"
                },
                {
                    "group": 1,
                    "surface": "ground"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "0.000000, 0.000000, -26.323895",
            "scale": "0.040000, 0.020000, 0.020000",
            "type": "brush"
        },
        {
            "location": "3706.597900, -79.463379, 618.565918",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "ground"
                },
                {
                    "group": 1,
                    "surface": "ground"
                },
                {
                    "group": 1,
                    "surface": "ground"
                },
                {
                    "group": 1,
                    "surface": "ground"
                },
                {
                    "group": 1,
                    "surface": "ground"
                },
                {
                    "group": 1,
                    "surface": "ground"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "0.000000, 0.000000, -31.212753",
            "scale": "0.040000, 0.020000, 0.020000",
            "type": "brush"
        },
        {
            "location": "3703.565430, -77.170883, 618.565918",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "ground"
                },
                {
                    "group": 1,
                    "surface": "ground"
                },
                {
                    "group": 1,
                    "surface": "ground"
                },
                {
                    "group": 1,
                    "surface": "ground"
                },
                {
                    "group": 1,
                    "surface": "ground"
                },
                {
                    "group": 1,
                    "surface": "ground"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "0.000000, 0.000000, -36.937733",
            "scale": "0.040000, 0.020000, 0.020000",
            "type": "brush"
        },
        {
            "location": "3700.681641, -74.489555, 618.565918",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "ground"
                },
                {
                    "group": 1,
                    "surface": "ground"
                },
                {
                    "group": 1,
                    "surface": "ground"
                },
                {
                    "group": 1,
                    "surface": "ground"
                },
                {
                    "group": 1,
                    "surface": "ground"
                },
                {
                    "group": 1,
                    "surface": "ground"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "0.000000, 0.000000, -42.871048",
            "scale": "0.040000, 0.020000, 0.020000",
            "type": "brush"
        },
        {
            "location": "3698.443359, -71.966522, 618.565918",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "ground"
                },
                {
                    "group": 1,
                    "surface": "ground"
                },
                {
                    "group": 1,
                    "surface": "ground"
                },
                {
                    "group": 1,
                    "surface": "ground"
                },
                {
                    "group": 1,
                    "surface": "ground"
                },
                {
                    "group": 1,
                    "surface": "ground"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "0.000000, 0.000000, -47.948887",
            "scale": "0.040000, 0.020000, 0.020000",
            "type": "brush"
        },
        {
            "location": "3696.177734, -68.864792, 618.565918",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "ground"
                },
                {
                    "group": 1,
                    "surface": "ground"
                },
                {
                    "group": 1,
                    "surface": "ground"
                },
                {
                    "group": 1,
                    "surface": "ground"
                },
                {
                    "group": 1,
                    "surface": "ground"
                },
                {
                    "group": 1,
                    "surface": "ground"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "0.000000, 0.000000, -53.736088",
            "scale": "0.040000, 0.020000, 0.020000",
            "type": "brush"
        },
        {
            "location": "3694.278076, -65.630371, 618.565918",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "ground"
                },
                {
                    "group": 1,
                    "surface": "ground"
                },
                {
                    "group": 1,
                    "surface": "ground"
                },
                {
                    "group": 1,
                    "surface": "ground"
                },
                {
                    "group": 1,
                    "surface": "ground"
                },
                {
                    "group": 1,
                    "surface": "ground"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "0.000000, 0.000000, -59.385487",
            "scale": "0.040000, 0.020000, 0.020000",
            "type": "brush"
        },
        {
            "location": "3693.165039, -62.463497, 618.565918",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "ground"
                },
                {
                    "group": 1,
                    "surface": "ground"
                },
                {
                    "group": 1,
                    "surface": "ground"
                },
                {
                    "group": 1,
                    "surface": "ground"
                },
                {
                    "group": 1,
                    "surface": "ground"
                },
                {
                    "group": 1,
                    "surface": "ground"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "0.000000, 0.000000, -72.175781",
            "scale": "0.040000, 0.020000, 0.020000",
            "type": "brush"
        },
        {
            "location": "3692.372314, -59.322910, 618.565918",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "ground"
                },
                {
                    "group": 1,
                    "surface": "ground"
                },
                {
                    "group": 1,
                    "surface": "ground"
                },
                {
                    "group": 1,
                    "surface": "ground"
                },
                {
                    "group": 1,
                    "surface": "ground"
                },
                {
                    "group": 1,
                    "surface": "ground"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "0.000000, 0.000000, -77.278671",
            "scale": "0.040000, 0.020000, 0.020000",
            "type": "brush"
        },
        {
            "location": "3691.857178, -56.080959, 618.565918",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "ground"
                },
                {
                    "group": 1,
                    "surface": "ground"
                },
                {
                    "group": 1,
                    "surface": "ground"
                },
                {
                    "group": 1,
                    "surface": "ground"
                },
                {
                    "group": 1,
                    "surface": "ground"
                },
                {
                    "group": 1,
                    "surface": "ground"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "0.000000, 0.000000, -82.452560",
            "scale": "0.040000, 0.020000, 0.020000",
            "type": "brush"
        },
        {
            "location": "3691.682373, -53.997570, 618.565918",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "ground"
                },
                {
                    "group": 1,
                    "surface": "ground"
                },
                {
                    "group": 1,
                    "surface": "ground"
                },
                {
                    "group": 1,
                    "surface": "ground"
                },
                {
                    "group": 1,
                    "surface": "ground"
                },
                {
                    "group": 1,
                    "surface": "ground"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "0.000000, 0.000000, -85.746582",
            "scale": "0.040000, 0.020000, 0.020000",
            "type": "brush"
        },
        {
            "location": "3691.638184, -51.114761, 618.565918",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "ground"
                },
                {
                    "group": 1,
                    "surface": "ground"
                },
                {
                    "group": 1,
                    "surface": "ground"
                },
                {
                    "group": 1,
                    "surface": "ground"
                },
                {
                    "group": 1,
                    "surface": "ground"
                },
                {
                    "group": 1,
                    "surface": "ground"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "0.000000, 0.000000, -90.289368",
            "scale": "0.040000, 0.020000, 0.020000",
            "type": "brush"
        },
        {
            "location": "3691.903320, -47.529064, 618.565918",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "ground"
                },
                {
                    "group": 1,
                    "surface": "ground"
                },
                {
                    "group": 1,
                    "surface": "ground"
                },
                {
                    "group": 1,
                    "surface": "ground"
                },
                {
                    "group": 1,
                    "surface": "ground"
                },
                {
                    "group": 1,
                    "surface": "ground"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "0.000000, 0.000000, -95.955475",
            "scale": "0.040000, 0.020000, 0.020000",
            "type": "brush"
        },
        {
            "location": "3692.174316, -45.717041, 618.565918",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "ground"
                },
                {
                    "group": 1,
                    "surface": "ground"
                },
                {
                    "group": 1,
                    "surface": "ground"
                },
                {
                    "group": 1,
                    "surface": "ground"
                },
                {
                    "group": 1,
                    "surface": "ground"
                },
                {
                    "group": 1,
                    "surface": "ground"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "0.000000, 0.000000, -98.841988",
            "scale": "0.040000, 0.020000, 0.020000",
            "type": "brush"
        },
        {
            "location": "3692.739502, -43.074749, 618.565918",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "ground"
                },
                {
                    "group": 1,
                    "surface": "ground"
                },
                {
                    "group": 1,
                    "surface": "ground"
                },
                {
                    "group": 1,
                    "surface": "ground"
                },
                {
                    "group": 1,
                    "surface": "ground"
                },
                {
                    "group": 1,
                    "surface": "ground"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "0.000000, 0.000000, -103.100235",
            "scale": "0.040000, 0.020000, 0.020000",
            "type": "brush"
        },
        {
            "location": "3693.391357, -40.810192, 618.565918",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "ground"
                },
                {
                    "group": 1,
                    "surface": "ground"
                },
                {
                    "group": 1,
                    "surface": "ground"
                },
                {
                    "group": 1,
                    "surface": "ground"
                },
                {
                    "group": 1,
                    "surface": "ground"
                },
                {
                    "group": 1,
                    "surface": "ground"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "0.000000, 0.000000, -106.812325",
            "scale": "0.040000, 0.020000, 0.020000",
            "type": "brush"
        },
        {
            "location": "3694.103027, -38.810509, 618.565918",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "ground"
                },
                {
                    "group": 1,
                    "surface": "ground"
                },
                {
                    "group": 1,
                    "surface": "ground"
                },
                {
                    "group": 1,
                    "surface": "ground"
                },
                {
                    "group": 1,
                    "surface": "ground"
                },
                {
                    "group": 1,
                    "surface": "ground"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "0.000000, 0.000000, -110.156265",
            "scale": "0.040000, 0.020000, 0.020000",
            "type": "brush"
        },
        {
            "location": "3726.000000, -20.000000, 618.565918",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "ground"
                },
                {
                    "group": 1,
                    "surface": "ground"
                },
                {
                    "group": 1,
                    "surface": "ground"
                },
                {
                    "group": 1,
                    "surface": "ground"
                },
                {
                    "group": 1,
                    "surface": "ground"
                },
                {
                    "group": 1,
                    "surface": "ground"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "0.000000, 0.000000, 0.000000",
            "scale": "0.040000, 0.020000, 0.020000",
            "type": "brush"
        },
        {
            "location": "3723.208008, -20.264336, 618.565918",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "ground"
                },
                {
                    "group": 1,
                    "surface": "ground"
                },
                {
                    "group": 1,
                    "surface": "ground"
                },
                {
                    "group": 1,
                    "surface": "ground"
                },
                {
                    "group": 1,
                    "surface": "ground"
                },
                {
                    "group": 1,
                    "surface": "ground"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "0.000000, 0.000000, 4.457724",
            "scale": "0.040000, 0.020000, 0.020000",
            "type": "brush"
        },
        {
            "location": "3719.627197, -20.930141, 618.565918",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "ground"
                },
                {
                    "group": 1,
                    "surface": "ground"
                },
                {
                    "group": 1,
                    "surface": "ground"
                },
                {
                    "group": 1,
                    "surface": "ground"
                },
                {
                    "group": 1,
                    "surface": "ground"
                },
                {
                    "group": 1,
                    "surface": "ground"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "0.000000, 0.000000, 10.249118",
            "scale": "0.040000, 0.020000, 0.020000",
            "type": "brush"
        },
        {
            "location": "3716.118164, -21.958565, 618.565918",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "ground"
                },
                {
                    "group": 1,
                    "surface": "ground"
                },
                {
                    "group": 1,
                    "surface": "ground"
                },
                {
                    "group": 1,
                    "surface": "ground"
                },
                {
                    "group": 1,
                    "surface": "ground"
                },
                {
                    "group": 1,
                    "surface": "ground"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "0.000000, 0.000000, 16.062639",
            "scale": "0.040000, 0.020000, 0.020000",
            "type": "brush"
        },
        {
            "location": "3713.091309, -23.171253, 618.565918",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "ground"
                },
                {
                    "group": 1,
                    "surface": "ground"
                },
                {
                    "group": 1,
                    "surface": "ground"
                },
                {
                    "group": 1,
                    "surface": "ground"
                },
                {
                    "group": 1,
                    "surface": "ground"
                },
                {
                    "group": 1,
                    "surface": "ground"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "0.000000, 0.000000, 21.244387",
            "scale": "0.040000, 0.020000, 0.020000",
            "type": "brush"
        },
        {
            "location": "3711.146973, -24.125687, 618.565918",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "ground"
                },
                {
                    "group": 1,
                    "surface": "ground"
                },
                {
                    "group": 1,
                    "surface": "ground"
                },
                {
                    "group": 1,
                    "surface": "ground"
                },
                {
                    "group": 1,
                    "surface": "ground"
                },
                {
                    "group": 1,
                    "surface": "ground"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "0.000000, 0.000000, 24.685892",
            "scale": "0.040000, 0.020000, 0.020000",
            "type": "brush"
        },
        {
            "location": "3708.931396, -25.399607, 618.565918",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "ground"
                },
                {
                    "group": 1,
                    "surface": "ground"
                },
                {
                    "group": 1,
                    "surface": "ground"
                },
                {
                    "group": 1,
                    "surface": "ground"
                },
                {
                    "group": 1,
                    "surface": "ground"
                },
                {
                    "group": 1,
                    "surface": "ground"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "0.000000, 0.000000, 28.749426",
            "scale": "0.040000, 0.020000, 0.020000",
            "type": "brush"
        },
        {
            "location": "3705.968994, -27.458286, 618.565918",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "ground"
                },
                {
                    "group": 1,
                    "surface": "ground"
                },
                {
                    "group": 1,
                    "surface": "ground"
                },
                {
                    "group": 1,
                    "surface": "ground"
                },
                {
                    "group": 1,
                    "surface": "ground"
                },
                {
                    "group": 1,
                    "surface": "ground"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "0.000000, 0.000000, 34.485371",
            "scale": "0.040000, 0.020000, 0.020000",
            "type": "brush"
        },
        {
            "location": "3704.197998, -28.917511, 618.565918",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "ground"
                },
                {
                    "group": 1,
                    "surface": "ground"
                },
                {
                    "group": 1,
                    "surface": "ground"
                },
                {
                    "group": 1,
                    "surface": "ground"
                },
                {
                    "group": 1,
                    "surface": "ground"
                },
                {
                    "group": 1,
                    "surface": "ground"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "0.000000, 0.000000, 38.130135",
            "scale": "0.040000, 0.020000, 0.020000",
            "type": "brush"
        },
        {
            "location": "3702.047119, -30.971069, 618.565918",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "ground"
                },
                {
                    "group": 1,
                    "surface": "ground"
                },
                {
                    "group": 1,
                    "surface": "ground"
                },
                {
                    "group": 1,
                    "surface": "ground"
                },
                {
                    "group": 1,
                    "surface": "ground"
                },
                {
                    "group": 1,
                    "surface": "ground"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "0.000000, 0.000000, 42.859497",
            "scale": "0.040000, 0.020000, 0.020000",
            "type": "brush"
        },
        {
            "location": "3700.291016, -32.930199, 618.565918",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "ground"
                },
                {
                    "group": 1,
                    "surface": "ground"
                },
                {
                    "group": 1,
                    "surface": "ground"
                },
                {
                    "group": 1,
                    "surface": "ground"
                },
                {
                    "group": 1,
                    "surface": "ground"
                },
                {
                    "group": 1,
                    "surface": "ground"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "0.000000, 0.000000, 47.039330",
            "scale": "0.040000, 0.020000, 0.020000",
            "type": "brush"
        },
        {
            "location": "3698.413574, -35.393112, 618.565918",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "ground"
                },
                {
                    "group": 1,
                    "surface": "ground"
                },
                {
                    "group": 1,
                    "surface": "ground"
                },
                {
                    "group": 1,
                    "surface": "ground"
                },
                {
                    "group": 1,
                    "surface": "ground"
                },
                {
                    "group": 1,
                    "surface": "ground"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "0.000000, 0.000000, 51.964462",
            "scale": "0.040000, 0.020000, 0.020000",
            "type": "brush"
        },
        {
            "location": "3696.679199, -38.139336, 618.565918",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "ground"
                },
                {
                    "group": 1,
                    "surface": "ground"
                },
                {
                    "group": 1,
                    "surface": "ground"
                },
                {
                    "group": 1,
                    "surface": "ground"
                },
                {
                    "group": 1,
                    "surface": "ground"
                },
                {
                    "group": 1,
                    "surface": "ground"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "0.000000, 0.000000, 57.124996",
            "scale": "0.040000, 0.020000, 0.020000",
            "type": "brush"
        },
        {
            "location": "3695.644531, -40.090515, 618.565918",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "ground"
                },
                {
                    "group": 1,
                    "surface": "ground"
                },
                {
                    "group": 1,
                    "surface": "ground"
                },
                {
                    "group": 1,
                    "surface": "ground"
                },
                {
                    "group": 1,
                    "surface": "ground"
                },
                {
                    "group": 1,
                    "surface": "ground"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "0.000000, 0.000000, 60.636600",
            "scale": "0.040000, 0.020000, 0.020000",
            "type": "brush"
        },
        {
            "location": "3703.000000, -52.000000, 619.565918",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "ground"
                },
                {
                    "group": 1,
                    "surface": "ground"
                },
                {
                    "group": 1,
                    "surface": "ground"
                },
                {
                    "group": 1,
                    "surface": "ground"
                }
            ],
            "mesh": "Cylinder",
            "name": "Default",
            "rotation": "0.000000, 0.000000, 0.000000",
            "scale": "0.190000, 0.450000, 0.010000",
            "type": "brush"
        },
        {
            "location": "3714.000000, -52.000000, 619.565918",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "ground"
                },
                {
                    "group": 1,
                    "surface": "ground"
                },
                {
                    "group": 1,
                    "surface": "ground"
                },
                {
                    "group": 1,
                    "surface": "ground"
                }
            ],
            "mesh": "Cylinder",
            "name": "Default",
            "rotation": "0.000000, 0.000000, 0.000000",
            "scale": "0.400000, 0.590000, 0.010000",
            "type": "brush"
        },
        {
            "location": "3714.000000, -84.000000, 618.565918",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "ground"
                },
                {
                    "group": 1,
                    "surface": "ground"
                },
                {
                    "group": 1,
                    "surface": "ground"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "ground"
                },
                {
                    "group": 1,
                    "surface": "wall"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "0.000000, 0.000000, 0.000000",
            "scale": "0.210000, 0.640000, 0.020000",
            "type": "brush"
        },
        {
            "location": "3726.000000, -86.000038, 620.565918",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "-89.999878, 0.000000, 0.000000",
            "scale": "0.040000, 0.020000, 0.020000",
            "type": "brush"
        },
        {
            "location": "3723.599365, -85.797318, 620.565918",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "-89.999886, 0.000000, -3.628114",
            "scale": "0.040000, 0.020000, 0.020000",
            "type": "brush"
        },
        {
            "location": "3719.941406, -85.189545, 620.565918",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "-89.999847, 0.000000, -9.214275",
            "scale": "0.040000, 0.020000, 0.020000",
            "type": "brush"
        },
        {
            "location": "3717.595703, -84.602676, 620.565918",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "-89.999886, 0.000000, -12.856281",
            "scale": "0.040000, 0.020000, 0.020000",
            "type": "brush"
        },
        {
            "location": "3715.850830, -84.061127, 620.565918",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "-89.999748, 0.000000, -15.607347",
            "scale": "0.040000, 0.020000, 0.020000",
            "type": "brush"
        },
        {
            "location": "3713.491211, -83.178177, 620.565918",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "-89.999878, 0.000000, -19.400146",
            "scale": "0.040000, 0.020000, 0.020000",
            "type": "brush"
        },
        {
            "location": "3712.013672, -82.531853, 620.565918",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "-89.999878, 0.000000, -21.827780",
            "scale": "0.040000, 0.020000, 0.020000",
            "type": "brush"
        },
        {
            "location": "3709.648926, -81.335388, 620.565918",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "-89.999878, 0.000000, -25.818277",
            "scale": "0.040000, 0.020000, 0.020000",
            "type": "brush"
        },
        {
            "location": "3708.079834, -80.422157, 620.565918",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "-89.999878, 0.000000, -28.553432",
            "scale": "0.040000, 0.020000, 0.020000",
            "type": "brush"
        },
        {
            "location": "3705.504395, -78.691254, 620.565918",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "-89.999878, 0.000000, -33.228470",
            "scale": "0.040000, 0.020000, 0.020000",
            "type": "brush"
        },
        {
            "location": "3703.426025, -77.053833, 620.565918",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "-89.999878, 0.000000, -37.210678",
            "scale": "0.040000, 0.020000, 0.020000",
            "type": "brush"
        },
        {
            "location": "3701.054932, -74.869354, 620.565918",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "-89.999886, 0.000000, -42.069050",
            "scale": "0.040000, 0.020000, 0.020000",
            "type": "brush"
        },
        {
            "location": "3698.561768, -72.111992, 620.565918",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "-89.999878, 0.000000, -47.665905",
            "scale": "0.040000, 0.020000, 0.020000",
            "type": "brush"
        },
        {
            "location": "3697.322510, -70.514053, 620.565918",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "-89.999878, 0.000000, -50.713764",
            "scale": "0.040000, 0.020000, 0.020000",
            "type": "brush"
        },
        {
            "location": "3696.016357, -68.616493, 620.565918",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "-89.999886, 0.000007, -54.181637",
            "scale": "0.040000, 0.020000, 0.020000",
            "type": "brush"
        },
        {
            "location": "3694.605469, -66.242844, 620.565918",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "-89.999878, -0.000007, -58.338951",
            "scale": "0.040000, 0.020000, 0.020000",
            "type": "brush"
        },
        {
            "location": "3726.000000, -16.000038, 620.565918",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "-89.999878, 0.000000, 0.000000",
            "scale": "0.040000, 0.020000, 0.020000",
            "type": "brush"
        },
        {
            "location": "3722.175781, -16.375824, 620.565918",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "-89.999878, 0.000000, 5.499676",
            "scale": "0.040000, 0.020000, 0.020000",
            "type": "brush"
        },
        {
            "location": "3719.447510, -16.873894, 620.565918",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "-89.999878, 0.000000, 9.468687",
            "scale": "0.040000, 0.020000, 0.020000",
            "type": "brush"
        },
        {
            "location": "3716.026611, -17.781754, 620.565918",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "-89.999817, 0.000000, 14.534247",
            "scale": "0.040000, 0.020000, 0.020000",
            "type": "brush"
        },
        {
            "location": "3712.143066, -19.222927, 620.565918",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "-89.999680, 0.000000, 20.461393",
            "scale": "0.040000, 0.020000, 0.020000",
            "type": "brush"
        },
        {
            "location": "3708.776611, -20.865211, 620.565918",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "-89.999817, 0.000000, 25.820911",
            "scale": "0.040000, 0.020000, 0.020000",
            "type": "brush"
        },
        {
            "location": "3705.512207, -22.859535, 620.565918",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "-89.999634, 0.000000, 31.298073",
            "scale": "0.040000, 0.020000, 0.020000",
            "type": "brush"
        },
        {
            "location": "3702.523682, -25.097746, 620.565918",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "-89.999229, 0.000014, 36.639835",
            "scale": "0.040000, 0.020000, 0.020000",
            "type": "brush"
        },
        {
            "location": "3699.773193, -27.588079, 620.565918",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "-89.999542, 0.000000, 41.951672",
            "scale": "0.040000, 0.020000, 0.020000",
            "type": "brush"
        },
        {
            "location": "3697.444336, -30.109186, 620.565918",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "-89.999565, 0.000000, 46.861469",
            "scale": "0.040000, 0.020000, 0.020000",
            "type": "brush"
        },
        {
            "location": "3694.928711, -33.410614, 620.565918",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "-89.999634, 0.000000, 52.803650",
            "scale": "0.040000, 0.020000, 0.020000",
            "type": "brush"
        },
        {
            "location": "3693.144287, -36.275261, 620.565918",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "-89.999619, 0.000000, 57.630989",
            "scale": "0.040000, 0.020000, 0.020000",
            "type": "brush"
        },
        {
            "location": "3691.869385, -39.479034, 620.565918",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "-89.999542, 0.000000, 66.699646",
            "scale": "0.040000, 0.020000, 0.020000",
            "type": "brush"
        },
        {
            "location": "3691.003418, -42.332764, 620.565918",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "-89.999657, 0.000000, 71.168404",
            "scale": "0.040000, 0.020000, 0.020000",
            "type": "brush"
        },
        {
            "location": "3690.264648, -45.815086, 620.565918",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "-89.999626, 0.000000, 76.502495",
            "scale": "0.040000, 0.020000, 0.020000",
            "type": "brush"
        },
        {
            "location": "3689.870117, -49.115292, 620.565918",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "-89.999573, 0.000000, 81.485413",
            "scale": "0.040000, 0.020000, 0.020000",
            "type": "brush"
        },
        {
            "location": "3689.768555, -52.749748, 620.565918",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "-89.999634, 0.000000, 86.935661",
            "scale": "0.040000, 0.020000, 0.020000",
            "type": "brush"
        },
        {
            "location": "3689.954346, -55.837830, 620.565918",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "-89.999626, 0.000000, 91.572357",
            "scale": "0.040000, 0.020000, 0.020000",
            "type": "brush"
        },
        {
            "location": "3690.426270, -59.100136, 620.565918",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "-89.999619, 0.000000, 96.512894",
            "scale": "0.040000, 0.020000, 0.020000",
            "type": "brush"
        },
        {
            "location": "3691.253906, -62.579006, 620.565918",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "-89.999619, 0.000000, 101.873070",
            "scale": "0.040000, 0.020000, 0.020000",
            "type": "brush"
        },
        {
            "location": "3692.054688, -65.043442, 620.565918",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "-89.999619, 0.000000, 105.756645",
            "scale": "0.040000, 0.020000, 0.020000",
            "type": "brush"
        },
        {
            "location": "3693.474365, -68.437088, 620.565918",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "-89.999542, 0.000000, 111.270172",
            "scale": "0.040000, 0.020000, 0.020000",
            "type": "brush"
        },
        {
            "location": "3732.000000, -86.000000, 610.565918",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "ground"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "ground"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "ground"
                },
                {
                    "group": 1,
                    "surface": "wall"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "0.000000, 0.000000, 0.000000",
            "scale": "0.020000, 0.680000, 0.020000",
            "type": "brush"
        },
        {
            "location": "3732.000000, -87.000000, 614.565918",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "ground"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "ground"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "ground"
                },
                {
                    "group": 1,
                    "surface": "wall"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "0.000000, 0.000000, 0.000000",
            "scale": "0.020000, 0.700000, 0.020000",
            "type": "brush"
        },
        {
            "location": "3732.000000, -82.000000, 598.565918",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "ground"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "ground"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "ground"
                },
                {
                    "group": 1,
                    "surface": "wall"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "0.000000, 0.000000, 0.000000",
            "scale": "0.020000, 0.600000, 0.020000",
            "type": "brush"
        },
        {
            "location": "3732.000000, -79.000000, 594.565918",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "ground"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "ground"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "ground"
                },
                {
                    "group": 1,
                    "surface": "wall"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "0.000000, 0.000000, 0.000000",
            "scale": "0.020000, 0.540000, 0.020000",
            "type": "brush"
        },
        {
            "location": "3732.000000, -80.000000, 596.565918",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "ground"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "ground"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "ground"
                },
                {
                    "group": 1,
                    "surface": "wall"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "0.000000, 0.000000, 0.000000",
            "scale": "0.020000, 0.570000, 0.020000",
            "type": "brush"
        },
        {
            "location": "3732.000000, -83.000000, 600.565918",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "ground"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "ground"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "ground"
                },
                {
                    "group": 1,
                    "surface": "wall"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "0.000000, 0.000000, 0.000000",
            "scale": "0.020000, 0.620000, 0.020000",
            "type": "brush"
        },
        {
            "location": "3732.000000, -77.000000, 592.565918",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "ground"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "ground"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "ground"
                },
                {
                    "group": 1,
                    "surface": "wall"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "0.000000, 0.000000, 0.000000",
            "scale": "0.020000, 0.500000, 0.020000",
            "type": "brush"
        },
        {
            "location": "3732.000000, -75.000000, 590.565918",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "ground"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "ground"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "ground"
                },
                {
                    "group": 1,
                    "surface": "wall"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "0.000000, 0.000000, 0.000000",
            "scale": "0.020000, 0.460000, 0.020000",
            "type": "brush"
        },
        {
            "location": "3732.000000, -72.000000, 588.565918",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "ground"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "ground"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "ground"
                },
                {
                    "group": 1,
                    "surface": "wall"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "0.000000, 0.000000, 0.000000",
            "scale": "0.020000, 0.400000, 0.020000",
            "type": "brush"
        },
        {
            "location": "3732.000000, -69.000000, 586.565918",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "ground"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "ground"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "ground"
                },
                {
                    "group": 1,
                    "surface": "wall"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "0.000000, 0.000000, 0.000000",
            "scale": "0.020000, 0.330000, 0.020000",
            "type": "brush"
        },
        {
            "location": "3732.000000, -86.000000, 604.565918",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "ground"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "ground"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "ground"
                },
                {
                    "group": 1,
                    "surface": "wall"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "0.000000, 0.000000, 0.000000",
            "scale": "0.020000, 0.680000, 0.020000",
            "type": "brush"
        },
        {
            "location": "3732.000000, -86.000000, 608.565918",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "ground"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "ground"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "ground"
                },
                {
                    "group": 1,
                    "surface": "wall"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "0.000000, 0.000000, 0.000000",
            "scale": "0.020000, 0.680000, 0.020000",
            "type": "brush"
        },
        {
            "location": "3732.000000, -86.000000, 612.565918",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "ground"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "ground"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "ground"
                },
                {
                    "group": 1,
                    "surface": "wall"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "0.000000, 0.000000, 0.000000",
            "scale": "0.020000, 0.680000, 0.020000",
            "type": "brush"
        },
        {
            "location": "3732.000000, -87.000000, 616.565918",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "ground"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "ground"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "ground"
                },
                {
                    "group": 1,
                    "surface": "wall"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "0.000000, 0.000000, 0.000000",
            "scale": "0.020000, 0.700000, 0.020000",
            "type": "brush"
        },
        {
            "location": "4096.000000, 0.000000, 548.565918",
            "mesh": "Cylinder",
            "name": "WeaponClip",
            "rotation": "0.000000, 0.000000, 0.000000",
            "scale": "115.199997, 115.199982, 0.320000",
            "type": "brush"
        },
        {
            "location": "3892.292725, 343.373260, 446.389282",
            "name": "SpawnPoint",
            "properties": [
                {
                    "name": "Name",
                    "value": "SpawnPoint0"
                },
                {
                    "name": "TeamMask",
                    "value": 2
                },
                {
                    "name": "Path",
                    "value": ""
                },
                {
                    "name": "LoopingPath",
                    "value": false
                },
                {
                    "name": "PermittedCharacterProfiles",
                    "value": ""
                }
            ],
            "rotation": "0.000000, 0.000000, 74.999405",
            "scale": "0.250000, 0.250000, 0.250000",
            "type": "gameObject"
        },
        {
            "location": "3990.660156, 299.802368, 446.389282",
            "name": "SpawnPoint",
            "properties": [
                {
                    "name": "Name",
                    "value": "SpawnPoint0"
                },
                {
                    "name": "TeamMask",
                    "value": 2
                },
                {
                    "name": "Path",
                    "value": ""
                },
                {
                    "name": "LoopingPath",
                    "value": false
                },
                {
                    "name": "PermittedCharacterProfiles",
                    "value": ""
                }
            ],
            "rotation": "0.000000, 0.000000, 59.999741",
            "scale": "0.250000, 0.250000, 0.250000",
            "type": "gameObject"
        },
        {
            "location": "4074.399170, 232.256744, 446.389282",
            "name": "SpawnPoint",
            "properties": [
                {
                    "name": "Name",
                    "value": "SpawnPoint0"
                },
                {
                    "name": "TeamMask",
                    "value": 2
                },
                {
                    "name": "Path",
                    "value": ""
                },
                {
                    "name": "LoopingPath",
                    "value": false
                },
                {
                    "name": "PermittedCharacterProfiles",
                    "value": ""
                }
            ],
            "rotation": "0.000000, 0.000000, 44.999744",
            "scale": "0.250000, 0.250000, 0.250000",
            "type": "gameObject"
        },
        {
            "location": "4380.000000, -54.000061, 448.565918",
            "mesh": "WedgeA",
            "name": "Clip",
            "rotation": "0.000000, 0.000000, 89.999954",
            "scale": "10.640000, 5.439998, 8.239999",
            "type": "brush"
        },
        {
            "location": "3228.000000, -53.999939, 448.565918",
            "mesh": "WedgeA",
            "name": "Clip",
            "rotation": "0.000000, 0.000000, -89.999939",
            "scale": "10.640000, 5.439998, 8.239999",
            "type": "brush"
        },
        {
            "location": "4060.256836, -350.398743, 446.389282",
            "name": "SpawnPoint",
            "properties": [
                {
                    "name": "Name",
                    "value": "SpawnPoint0"
                },
                {
                    "name": "TeamMask",
                    "value": 2
                },
                {
                    "name": "Path",
                    "value": ""
                },
                {
                    "name": "LoopingPath",
                    "value": false
                },
                {
                    "name": "PermittedCharacterProfiles",
                    "value": ""
                }
            ],
            "rotation": "0.000000, 0.000000, -45.000088",
            "scale": "0.250000, 0.250000, 0.250000",
            "type": "gameObject"
        },
        {
            "location": "3973.339600, -413.802094, 446.389282",
            "name": "SpawnPoint",
            "properties": [
                {
                    "name": "Name",
                    "value": "SpawnPoint0"
                },
                {
                    "name": "TeamMask",
                    "value": 2
                },
                {
                    "name": "Path",
                    "value": ""
                },
                {
                    "name": "LoopingPath",
                    "value": false
                },
                {
                    "name": "PermittedCharacterProfiles",
                    "value": ""
                }
            ],
            "rotation": "0.000000, 0.000000, -59.999138",
            "scale": "0.250000, 0.250000, 0.250000",
            "type": "gameObject"
        },
        {
            "location": "3872.974121, -452.549042, 446.389282",
            "name": "SpawnPoint",
            "properties": [
                {
                    "name": "Name",
                    "value": "SpawnPoint0"
                },
                {
                    "name": "TeamMask",
                    "value": 2
                },
                {
                    "name": "Path",
                    "value": ""
                },
                {
                    "name": "LoopingPath",
                    "value": false
                },
                {
                    "name": "PermittedCharacterProfiles",
                    "value": ""
                }
            ],
            "rotation": "0.000000, 0.000000, -74.999969",
            "scale": "0.250000, 0.250000, 0.250000",
            "type": "gameObject"
        },
        {
            "location": "3766.000000, -463.999664, 446.389282",
            "name": "SpawnPoint",
            "properties": [
                {
                    "name": "Name",
                    "value": "SpawnPoint0"
                },
                {
                    "name": "TeamMask",
                    "value": 2
                },
                {
                    "name": "Path",
                    "value": ""
                },
                {
                    "name": "LoopingPath",
                    "value": false
                },
                {
                    "name": "PermittedCharacterProfiles",
                    "value": ""
                }
            ],
            "rotation": "0.000000, 0.000000, -90.001152",
            "scale": "0.250000, 0.250000, 0.250000",
            "type": "gameObject"
        },
        {
            "location": "3659.707520, -447.372894, 446.389282",
            "name": "SpawnPoint",
            "properties": [
                {
                    "name": "Name",
                    "value": "SpawnPoint0"
                },
                {
                    "name": "TeamMask",
                    "value": 2
                },
                {
                    "name": "Path",
                    "value": ""
                },
                {
                    "name": "LoopingPath",
                    "value": false
                },
                {
                    "name": "PermittedCharacterProfiles",
                    "value": ""
                }
            ],
            "rotation": "0.000000, 0.000000, -105.000320",
            "scale": "0.250000, 0.250000, 0.250000",
            "type": "gameObject"
        },
        {
            "location": "3561.340088, -403.802185, 446.389282",
            "name": "SpawnPoint",
            "properties": [
                {
                    "name": "Name",
                    "value": "SpawnPoint0"
                },
                {
                    "name": "TeamMask",
                    "value": 2
                },
                {
                    "name": "Path",
                    "value": ""
                },
                {
                    "name": "LoopingPath",
                    "value": false
                },
                {
                    "name": "PermittedCharacterProfiles",
                    "value": ""
                }
            ],
            "rotation": "0.000000, 0.000000, -120.000313",
            "scale": "0.250000, 0.250000, 0.250000",
            "type": "gameObject"
        },
        {
            "location": "3477.601318, -336.256866, 446.389282",
            "name": "SpawnPoint",
            "properties": [
                {
                    "name": "Name",
                    "value": "SpawnPoint0"
                },
                {
                    "name": "TeamMask",
                    "value": 2
                },
                {
                    "name": "Path",
                    "value": ""
                },
                {
                    "name": "LoopingPath",
                    "value": false
                },
                {
                    "name": "PermittedCharacterProfiles",
                    "value": ""
                }
            ],
            "rotation": "0.000000, 0.000000, -135.000046",
            "scale": "0.250000, 0.250000, 0.250000",
            "type": "gameObject"
        },
        {
            "location": "3776.000000, -52.000000, 76.565918",
            "mesh": "Tube",
            "name": "Clip",
            "rotation": "0.000000, 0.000000, 74.999405",
            "scale": "17.779999, 17.779997, 11.959998",
            "type": "brush"
        },
        {
            "location": "3491.743164, 246.398651, 446.389282",
            "name": "SpawnPoint",
            "properties": [
                {
                    "name": "Name",
                    "value": "SpawnPoint0"
                },
                {
                    "name": "TeamMask",
                    "value": 2
                },
                {
                    "name": "Path",
                    "value": ""
                },
                {
                    "name": "LoopingPath",
                    "value": false
                },
                {
                    "name": "PermittedCharacterProfiles",
                    "value": ""
                }
            ],
            "rotation": "0.000000, 0.000000, 134.999649",
            "scale": "0.250000, 0.250000, 0.250000",
            "type": "gameObject"
        },
        {
            "location": "3578.660156, 309.801910, 446.389282",
            "name": "SpawnPoint",
            "properties": [
                {
                    "name": "Name",
                    "value": "SpawnPoint0"
                },
                {
                    "name": "TeamMask",
                    "value": 2
                },
                {
                    "name": "Path",
                    "value": ""
                },
                {
                    "name": "LoopingPath",
                    "value": false
                },
                {
                    "name": "PermittedCharacterProfiles",
                    "value": ""
                }
            ],
            "rotation": "0.000000, 0.000000, 119.999748",
            "scale": "0.250000, 0.250000, 0.250000",
            "type": "gameObject"
        },
        {
            "location": "3679.025635, 348.549316, 446.389282",
            "name": "SpawnPoint",
            "properties": [
                {
                    "name": "Name",
                    "value": "SpawnPoint0"
                },
                {
                    "name": "TeamMask",
                    "value": 2
                },
                {
                    "name": "Path",
                    "value": ""
                },
                {
                    "name": "LoopingPath",
                    "value": false
                },
                {
                    "name": "PermittedCharacterProfiles",
                    "value": ""
                }
            ],
            "rotation": "0.000000, 0.000000, 105.000542",
            "scale": "0.250000, 0.250000, 0.250000",
            "type": "gameObject"
        },
        {
            "location": "3232.000000, -95.000000, 186.815918",
            "name": "Hurt",
            "properties": [
                {
                    "name": "Kill",
                    "value": true
                },
                {
                    "name": "Damage",
                    "value": 0.0
                },
                {
                    "name": "Cooldown",
                    "value": 0.0
                }
            ],
            "rotation": "0.000000, 0.000000, 0.000000",
            "scale": "2.255000, 2.185000, 2.345000",
            "type": "gameObject"
        },
        {
            "location": "3228.000000, -99.000000, 211.957031",
            "name": "Waypoint",
            "properties": [
                {
                    "name": "Name",
                    "value": "1"
                },
                {
                    "name": "BotPauseTimeMin",
                    "value": 0.0
                },
                {
                    "name": "BotPauseTimeMax",
                    "value": 0.0
                }
            ],
            "rotation": "0.000000, 0.000000, 0.000000",
            "scale": "0.250000, 0.250000, 0.250000",
            "type": "gameObject"
        },
        {
            "location": "3684.000000, -52.000000, 587.270203",
            "name": "Teleporter",
            "properties": [
                {
                    "name": "Target",
                    "value": "1"
                },
                {
                    "name": "TeleportDelay",
                    "value": 0.0
                }
            ],
            "rotation": "0.000000, 0.000000, 0.000000",
            "scale": "0.020000, 1.680000, 3.720000",
            "type": "gameObject"
        },
        {
            "location": "3804.000000, -52.000000, 642.389282",
            "name": "SpawnPoint",
            "properties": [
                {
                    "name": "Name",
                    "value": "SpawnPoint0"
                },
                {
                    "name": "TeamMask",
                    "value": 1
                },
                {
                    "name": "Path",
                    "value": ""
                },
                {
                    "name": "LoopingPath",
                    "value": false
                },
                {
                    "name": "PermittedCharacterProfiles",
                    "value": "Character Profile"
                }
            ],
            "rotation": "0.000000, 0.000000, 89.999954",
            "scale": "0.250000, 0.250000, 0.250000",
            "type": "gameObject"
        },
        {
            "location": "3784.000000, 29.999912, 587.270203",
            "name": "Teleporter",
            "properties": [
                {
                    "name": "Target",
                    "value": "1"
                },
                {
                    "name": "TeleportDelay",
                    "value": 0.0
                }
            ],
            "rotation": "0.000000, 0.000000, -89.999939",
            "scale": "0.020000, 1.920000, 3.720000",
            "type": "gameObject"
        },
        {
            "location": "3879.516602, -53.267921, 587.270203",
            "name": "Teleporter",
            "properties": [
                {
                    "name": "Target",
                    "value": "1"
                },
                {
                    "name": "TeleportDelay",
                    "value": 0.0
                }
            ],
            "rotation": "0.000000, 0.000000, -179.999893",
            "scale": "0.020000, 1.640000, 3.720000",
            "type": "gameObject"
        },
        {
            "location": "3782.000000, -135.999893, 587.270203",
            "name": "Teleporter",
            "properties": [
                {
                    "name": "Target",
                    "value": "1"
                },
                {
                    "name": "TeleportDelay",
                    "value": 0.0
                }
            ],
            "rotation": "0.000000, 0.000000, 90.000076",
            "scale": "0.020000, 1.960000, 3.720000",
            "type": "gameObject"
        }
    ],
    "version": "0.0.7"
}