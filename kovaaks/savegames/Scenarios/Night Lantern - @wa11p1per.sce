Name=Night Lantern - @wa11p1per
PlayerCharacters=Player
BotCharacters=target.bot
IsChallenge=true
Timelimit=60.0
PlayerProfile=Player
AddedBots=target.bot;target.bot;target.bot;target.bot;target.bot;target.bot
PlayerMaxLives=0
BotMaxLives=0;0;0;0;0;0
PlayerTeam=1
BotTeams=0;0;0;0;0;0
ScoreToWin=1.0
ScorePerDamage=0.0
ScorePerKill=1.0
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
ScoreLossPerMiss=0.0
MultSqrtAcc=false
EnableOverDamage=true
MapName=4layervertnoboundstighter.json
MapScale=6.0
BlockProjectilePredictors=true
BlockCheats=true
InvinciblePlayer=true
InvincibleBots=false
Timescale=1.0
BlockHealthbars=true
TimeRefilledByKill=0.0
BlockHitMarkers=false
BlockHitSounds=false
BlockMissSounds=true
BlockFCT=true
LockFOVRange=true
LockedFOVMin=103.0
LockedFOVMax=160.0
LockedFOVScale=Clamped Horizontal
EndChallengeAfterKills=0.0
EndChallengeAfterDamage=0.0
GameTag=COD, FN, Apex Legends, Minecraft, Fall Guys, Roblox, CS
WeaponHeroTag=Target Switching, TS, Accuracy, Clicking
AimTypeTag=Clicking
AimSubTypeTag=Dynamic
AimTypeFlicking=false
AimTypeProjectile=false
AimTypePlayerMovement=false
DifficultyTag=3
AuthorsTag=@wa11p1per
Description=Slow moving targets.[nl]3 misses = reload.
GameVersion=3.0.3
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
Name=target
DodgeProfileNames=Long Strafes_very
DodgeProfileWeights=1.0
DodgeProfileMaxChangeTime=60.0
DodgeProfileMinChangeTime=60.0
WeaponsProfileNames=
WeaponProfileWeights=1.0;1.0;1.0;1.0;1.0;1.0;1.0;1.0
AimingProfileNames=Default;Default;Default;Default;Default;Default;Default;Default
WeaponSwitchTime=3.0
UseWeapons=false
CharacterProfile=target
SeeThroughWalls=false
NoDodging=false
StandStillUntilHurt=false
NoAiming=false
AbilityUseTimer=0.05
UseAbilityFrequency=1.0
UseAbilityFreqMinTime=0.1
UseAbilityFreqMaxTime=0.1
ShowLaser=false
LaserRgb=X=1.000 Y=0.300 Z=0.000
LaserAlpha=1.0
RandomizeDodgeProfiles=true
RepeatDodgeProfileEntries=true
UseMinimumRespawnTime=true
DisableScoring=false

[Character Profile]
Name=Player
MaxHealth=100.0
WeaponProfileNames=LG;;;;;;;
MinRespawnDelay=1.0
MaxRespawnDelay=5.0
StepUpHeight=0.0
CrouchHeightModifier=0.5
CrouchAnimationSpeed=1.0
CameraOffset=X=0.000 Y=0.000 Z=0.000
HeadshotOnly=false
DamageKnockbackFactor=0.0
MaxSpeed=0.0
MaxCrouchSpeed=0.0
Acceleration=0.0
Friction=0.0
BrakingFrictionFactor=0.0
JumpVelocity=0.0
Gravity=0.0
AirControl=0.0
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
MainBBHeight=150.0
MainBBRadius=45.0
MainBBHasHead=false
MainBBHeadRadius=0.1
MainBBHeadOffset=0.0
MainBBHide=true
ProjBBType=Cylindrical
ProjBBHeight=300.0
ProjBBRadius=45.0
ProjBBHasHead=false
ProjBBHeadRadius=0.1
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
HideWeapon=false
AerialFriction=0.0
StrafeSpeedMult=1.0
BackSpeedMult=1.0
RespawnInvulnTime=0.0
BlockedSpawnRadius=0.0
BlockSpawnFOV=0.0
BlockSpawnDistance=9999.0
RespawnAnimationDuration=0.5
AllowBufferedJumps=false
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
TPSArmLength=450.0
TPSOffset=X=0.000 Y=60.000 Z=105.000
BrakingDeceleration=2048.0
TerminalVelocity=0.0
CharacterModel=Ecto
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
Name=target
MaxHealth=1.0
WeaponProfileNames=;;;;;;;
MinRespawnDelay=0.001
MaxRespawnDelay=0.001
StepUpHeight=0.0
CrouchHeightModifier=1.0
CrouchAnimationSpeed=1.0
CameraOffset=X=0.000 Y=0.000 Z=0.000
HeadshotOnly=false
DamageKnockbackFactor=0.0
MaxSpeed=450.0
MaxCrouchSpeed=450.0
Acceleration=450.0
Friction=0.0
BrakingFrictionFactor=0.0
JumpVelocity=0.0
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
MainBBType=Spheroid
MainBBHeight=50.0
MainBBRadius=25.0
MainBBHasHead=false
MainBBHeadRadius=0.1
MainBBHeadOffset=0.0
MainBBHide=false
ProjBBType=Spheroid
ProjBBHeight=50.0
ProjBBRadius=25.0
ProjBBHasHead=false
ProjBBHeadRadius=0.1
ProjBBHeadOffset=0.0
ProjBBHide=true
BlockSelfDamage=false
InvinciblePlayer=false
InvincibleBots=false
BlockTeamDamage=true
HasJetpack=false
JetpackActivationDelay=0.2
JetpackFullFuelTime=100000.0
JetpackFuelIncPerSec=0.1
JetpackFuelRegensInAir=true
JetpackThrust=6000.0
JetpackMaxZVelocity=400.0
JetpackAirControlWithThrust=1.0
AirJumpCount=0
AirJumpVelocity=600.0
AbilityProfileNames=
HideWeapon=true
AerialFriction=0.0
StrafeSpeedMult=1.0
BackSpeedMult=1.0
RespawnInvulnTime=0.0
BlockedSpawnRadius=360.0
BlockSpawnFOV=0.0
BlockSpawnDistance=0.0
RespawnAnimationDuration=0.0
AllowBufferedJumps=false
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
BrakingDeceleration=3072.0
TerminalVelocity=0.0
CharacterModel=Pumpkin
CharacterSkin=Default
MeshHitDetection=false
SpawnOffsetMin=X=-0.000 Y=0.000 Z=0.000
SpawnOffsetMax=X=-0.000 Y=0.000 Z=0.000
InvertBlockedSpawn=false
ViewBobTime=0.0
ViewBobAngleAdjustment=0.0
ViewBobCameraZOffset=0.0
ViewBobAffectsShots=false
IsFlyer=true
FlightObeysPitch=true
FlightVelocityUp=600.0
FlightAccelUp=800.0
FlightVelocityDown=600.0
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
Name=Long Strafes_very
MaxTargetDistance=6000.0
MinTargetDistance=0.0
ToggleLeftRight=true
ToggleForwardBack=true
MinLRTimeChange=5.0
MaxLRTimeChange=7.0
MinFBTimeChange=2.0
MaxFBTimeChange=3.0
DamageReactionChangesDirection=false
DamageReactionChanceToIgnore=0.5
DamageReactionMinimumDelay=0.125
DamageReactionMaximumDelay=0.25
DamageReactionCooldown=1.0
DamageReactionThreshold=50.0
DamageReactionResetTimer=0.5
JumpFrequency=0.25
CrouchInAirFrequency=0.25
CrouchOnGroundFrequency=0.25
TargetStrafeOverride=Ignore
TargetStrafeMinDelay=0.125
TargetStrafeMaxDelay=0.25
MinProfileChangeTime=0.0
MaxProfileChangeTime=0.0
MinCrouchTime=1.0
MaxCrouchTime=1.5
MinJumpTime=1.0
MaxJumpTime=1.5
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
BlockedMovementReactionMax=0.125
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
InitialForwardMovementState=Random
InitialRightMovementState=Random

[Weapon Profile]
Name=LG
Type=Hitscan
ShotsPerClick=1
DamagePerShot=1.0
KnockbackFactor=0.0
TimeBetweenShots=0.0116
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
MaxHitscanRange=100000.0
GravityScale=1.0
HeadshotCapable=false
HeadshotMultiplier=2.0
CooldownType=InfiniteUse
MagazineMax=3
ReloadTimeFromEmpty=1.0
ReloadTimeFromPartial=0.1
CooldownTimer=0.8
MaxCharges=3
DamageFalloffStartDistance=100000.0
DamageFalloffStopDistance=100000.0
DamageAtMaxRange=7.0
DelayBeforeShot=0.0
ProjectileGraphic=Ball
VisualLifetime=0.05
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
BounceFactor=0.0
BounceCount=0
HomingProjectileAcceleration=0.0
SpreadSSA=0.0,0.0,0.0,0.0
SpreadSCA=0.0,0.0,0.0,0.0
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
ProjectileWorldHitRadius=0.0
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
HitscanVisualOffset=X=0.000 Y=0.000 Z=-80.000
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
PSRTimeToPeak=0.095
PSRResetDegreesPerSec=40.0
CircularSpread=true
SpreadStationaryVelocity=0.0
PassiveCharging=false
BurstFullyAuto=true
FlatKnockbackHorizontal=0.0
FlatKnockbackVertical=0.0
HitscanRadius=0.0
HitscanVisualRadius=6.0
TaggingDuration=2.0
TaggingMaxFactor=0.5
TaggingHitFactor=0.85
RecoilCrouchScale=1.0
RecoilADSScale=1.0
PSRCrouchScale=1.0
PSRADSScale=1.0
ProjectileAcceleration=0.0
AccelIncludeVertical=true
AimPunchAmount=0.0
AimPunchResetTime=0.05
AimPunchCooldown=0.5
AimPunchHeadshotOnly=false
AimPunchCosmeticOnly=true
MinimumDecelVelocity=0.0
PSRManualNegation=false
PSRAutoReset=true
UsePerBulletSpread=false
PBS0=0.0,0.0
AimPunchUpTime=0.05
AmmoReloadedOnKill=5
CancelReloadOnKill=false
FlatKnockbackHorizontalMin=0.0
FlatKnockbackVerticalMin=0.0
ADSScope=No Scope
ADSFOVOverride=72.099998
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
WeaponModel=Heavy Surge Rifle
WeaponAnimation=Primary
UseIncReload=false
IncReloadStartupTime=0.0
IncReloadLoopTime=0.0
IncReloadAmmoPerLoop=1
IncReloadEndTime=0.0
IncReloadCancelWithShoot=true
WeaponSkin=Default
ProjectileVisualOffset=X=0.000 Y=0.000 Z=0.000
SpreadDecayDelay=0.0
ReloadBeforeRecovery=true
3rdPersonWeaponModel=M4
3rdPersonWeaponSkin=Default
ParticleMuzzleFlash=None
ParticleWallImpact=None
ParticleBodyImpact=None
ParticleProjectileTrail=None
ParticleHitscanTrace=Tracer
ParticleMuzzleFlashScale=1.0
ParticleWallImpactScale=1.0
ParticleBodyImpactScale=1.0
ParticleProjectileTrailScale=1.0
ADSFOVScale=Quake/Source
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
{
    "materialSets": [
        {
            "ceiling": {
                "material": "MI_WA_ConcreteTiles",
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
            "ground": {
                "material": "MI_WA_ConcreteTiles",
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
            "ramp": {
                "material": "MI_WA_GroundGrass",
                "pack": "Default",
                "properties": [
                    {
                        "name": "Tint",
                        "value": "4ca344ff"
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
            "wall": {
                "material": "MI_WA_ConcreteTiles",
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
        },
        {
            "ceiling": {
                "material": "MI_WA_WoodPine",
                "pack": "Default",
                "properties": [
                    {
                        "name": "Tint",
                        "value": "aea721ff"
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
                        "value": 1.0
                    },
                    {
                        "name": "FullBright",
                        "value": 0.0
                    }
                ]
            },
            "ground": {
                "material": "MI_WA_ConcreteTiles",
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
            "ramp": {
                "material": "MI_WA_RockSlate",
                "pack": "Default",
                "properties": [
                    {
                        "name": "Tint",
                        "value": "8c8572ff"
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
                "material": "MI_WA_MetalGold",
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
                        "value": 0.0
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
            "location": "-1726.000000, -498.000000, 528.000000",
            "name": "SpawnPoint",
            "properties": [
                {
                    "name": "Name",
                    "value": ""
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
            "rotation": "0.000000, 0.000000, -179.999954",
            "scale": "0.166667, 0.166667, 0.166667",
            "type": "gameObject"
        },
        {
            "location": "-2688.000000, 1248.000000, -400.000000",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "ramp"
                },
                {
                    "group": 1,
                    "surface": "ramp"
                },
                {
                    "group": 1,
                    "surface": "ramp"
                },
                {
                    "group": 1,
                    "surface": "ramp"
                }
            ],
            "mesh": "Sphere",
            "name": "Default",
            "rotation": "0.000000, 0.000000, 90.000076",
            "scale": "9.600000, 22.079994, 52.160000",
            "type": "brush"
        },
        {
            "location": "-2368.000000, -1984.000000, -400.000000",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "ramp"
                },
                {
                    "group": 1,
                    "surface": "ramp"
                },
                {
                    "group": 1,
                    "surface": "ramp"
                },
                {
                    "group": 1,
                    "surface": "ramp"
                }
            ],
            "mesh": "Sphere",
            "name": "Default",
            "rotation": "0.000000, 0.000000, -104.999916",
            "scale": "9.600000, 22.079994, 52.160000",
            "type": "brush"
        },
        {
            "location": "-2368.000000, -672.000000, 548.000000",
            "name": "SpawnPoint",
            "properties": [
                {
                    "name": "Name",
                    "value": ""
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
                    "value": ""
                }
            ],
            "rotation": "0.000000, 0.000000, 15.000056",
            "scale": "0.166667, 0.166667, 0.166667",
            "type": "gameObject"
        },
        {
            "location": "-1726.000000, -530.000000, 496.000000",
            "name": "SpawnPoint",
            "properties": [
                {
                    "name": "Name",
                    "value": ""
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
            "rotation": "0.000000, 0.000000, -179.999954",
            "scale": "0.166667, 0.166667, 0.166667",
            "type": "gameObject"
        },
        {
            "location": "-1854.000000, -466.000000, 496.000000",
            "name": "SpawnPoint",
            "properties": [
                {
                    "name": "Name",
                    "value": ""
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
            "rotation": "0.000000, 0.000000, -179.999954",
            "scale": "0.166667, 0.166667, 0.166667",
            "type": "gameObject"
        },
        {
            "location": "-1854.000000, -562.000000, 464.000000",
            "name": "SpawnPoint",
            "properties": [
                {
                    "name": "Name",
                    "value": ""
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
            "rotation": "0.000000, 0.000000, -179.999954",
            "scale": "0.166667, 0.166667, 0.166667",
            "type": "gameObject"
        },
        {
            "location": "-1696.000000, -592.000000, 400.000000",
            "mesh": "Cube",
            "name": "Clip",
            "rotation": "-89.999939, 0.000000, 89.999962",
            "scale": "1.920000, 1.920000, 0.020000",
            "type": "brush"
        },
        {
            "location": "-1854.000000, -530.000000, 544.000000",
            "name": "SpawnPoint",
            "properties": [
                {
                    "name": "Name",
                    "value": ""
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
            "rotation": "0.000000, 0.000000, -179.999954",
            "scale": "0.166667, 0.166667, 0.166667",
            "type": "gameObject"
        },
        {
            "location": "-3328.000000, 128.000000, -400.000000",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "ramp"
                },
                {
                    "group": 1,
                    "surface": "ramp"
                },
                {
                    "group": 1,
                    "surface": "ramp"
                },
                {
                    "group": 1,
                    "surface": "ramp"
                }
            ],
            "mesh": "Sphere",
            "name": "Default",
            "rotation": "0.000000, 0.000000, -179.999924",
            "scale": "9.600000, 22.079994, 52.160000",
            "type": "brush"
        },
        {
            "location": "-1726.000000, -498.000000, 464.000000",
            "name": "SpawnPoint",
            "properties": [
                {
                    "name": "Name",
                    "value": ""
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
            "rotation": "0.000000, 0.000000, -179.999954",
            "scale": "0.166667, 0.166667, 0.166667",
            "type": "gameObject"
        },
        {
            "location": "-1854.000000, -466.000000, 448.000000",
            "name": "SpawnPoint",
            "properties": [
                {
                    "name": "Name",
                    "value": ""
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
            "rotation": "0.000000, 0.000000, -179.999954",
            "scale": "0.166667, 0.166667, 0.166667",
            "type": "gameObject"
        },
        {
            "location": "-1854.000000, -530.000000, 464.000000",
            "name": "SpawnPoint",
            "properties": [
                {
                    "name": "Name",
                    "value": ""
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
            "rotation": "0.000000, 0.000000, -179.999954",
            "scale": "0.166667, 0.166667, 0.166667",
            "type": "gameObject"
        },
        {
            "location": "-1726.000000, -434.000000, 464.000000",
            "name": "SpawnPoint",
            "properties": [
                {
                    "name": "Name",
                    "value": ""
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
            "rotation": "0.000000, 0.000000, -179.999954",
            "scale": "0.166667, 0.166667, 0.166667",
            "type": "gameObject"
        },
        {
            "location": "-1758.000000, -434.000000, 464.000000",
            "name": "SpawnPoint",
            "properties": [
                {
                    "name": "Name",
                    "value": ""
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
            "rotation": "0.000000, 0.000000, -179.999954",
            "scale": "0.166667, 0.166667, 0.166667",
            "type": "gameObject"
        },
        {
            "location": "-1726.000000, -530.000000, 528.000000",
            "name": "SpawnPoint",
            "properties": [
                {
                    "name": "Name",
                    "value": ""
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
            "rotation": "0.000000, 0.000000, -179.999954",
            "scale": "0.166667, 0.166667, 0.166667",
            "type": "gameObject"
        },
        {
            "location": "-1854.000000, -434.000000, 432.000000",
            "name": "SpawnPoint",
            "properties": [
                {
                    "name": "Name",
                    "value": ""
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
            "rotation": "0.000000, 0.000000, -179.999954",
            "scale": "0.166667, 0.166667, 0.166667",
            "type": "gameObject"
        },
        {
            "location": "-1790.000000, -434.000000, 432.000000",
            "name": "SpawnPoint",
            "properties": [
                {
                    "name": "Name",
                    "value": ""
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
            "rotation": "0.000000, 0.000000, -179.999954",
            "scale": "0.166667, 0.166667, 0.166667",
            "type": "gameObject"
        },
        {
            "location": "-1726.000000, -562.000000, 496.000000",
            "name": "SpawnPoint",
            "properties": [
                {
                    "name": "Name",
                    "value": ""
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
            "rotation": "0.000000, 0.000000, -179.999954",
            "scale": "0.166667, 0.166667, 0.166667",
            "type": "gameObject"
        },
        {
            "location": "-1726.000000, -434.000000, 496.000000",
            "name": "SpawnPoint",
            "properties": [
                {
                    "name": "Name",
                    "value": ""
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
            "rotation": "0.000000, 0.000000, -179.999954",
            "scale": "0.166667, 0.166667, 0.166667",
            "type": "gameObject"
        },
        {
            "location": "-1726.000000, -466.000000, 464.000000",
            "name": "SpawnPoint",
            "properties": [
                {
                    "name": "Name",
                    "value": ""
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
            "rotation": "0.000000, 0.000000, -179.999954",
            "scale": "0.166667, 0.166667, 0.166667",
            "type": "gameObject"
        },
        {
            "location": "-1726.000000, -562.000000, 432.000000",
            "name": "SpawnPoint",
            "properties": [
                {
                    "name": "Name",
                    "value": ""
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
            "rotation": "0.000000, 0.000000, -179.999954",
            "scale": "0.166667, 0.166667, 0.166667",
            "type": "gameObject"
        },
        {
            "location": "-1888.000000, -592.000000, 400.000000",
            "mesh": "Cube",
            "name": "Clip",
            "rotation": "-89.999992, 0.000000, 0.000000",
            "scale": "1.920000, 1.920000, 0.020000",
            "type": "brush"
        },
        {
            "location": "-1726.000000, -562.000000, 464.000000",
            "name": "SpawnPoint",
            "properties": [
                {
                    "name": "Name",
                    "value": ""
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
            "rotation": "0.000000, 0.000000, -179.999954",
            "scale": "0.166667, 0.166667, 0.166667",
            "type": "gameObject"
        },
        {
            "location": "-1726.000000, -530.000000, 464.000000",
            "name": "SpawnPoint",
            "properties": [
                {
                    "name": "Name",
                    "value": ""
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
            "rotation": "0.000000, 0.000000, -179.999954",
            "scale": "0.166667, 0.166667, 0.166667",
            "type": "gameObject"
        },
        {
            "location": "-1888.000000, -592.000000, 400.000000",
            "mesh": "Cube",
            "name": "Clip",
            "rotation": "-89.999939, -0.000007, 89.999985",
            "scale": "1.920000, 1.920000, 0.020000",
            "type": "brush"
        },
        {
            "location": "-832.000000, -1984.000000, -400.000000",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "ramp"
                },
                {
                    "group": 1,
                    "surface": "ramp"
                },
                {
                    "group": 1,
                    "surface": "ramp"
                },
                {
                    "group": 1,
                    "surface": "ramp"
                }
            ],
            "mesh": "Sphere",
            "name": "Default",
            "rotation": "0.000000, 0.000000, -74.999916",
            "scale": "9.600000, 22.079994, 52.160000",
            "type": "brush"
        },
        {
            "location": "-1822.000000, -434.000000, 528.000000",
            "name": "SpawnPoint",
            "properties": [
                {
                    "name": "Name",
                    "value": ""
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
            "rotation": "0.000000, 0.000000, -179.999954",
            "scale": "0.166667, 0.166667, 0.166667",
            "type": "gameObject"
        },
        {
            "location": "-1726.000000, -530.000000, 432.000000",
            "name": "SpawnPoint",
            "properties": [
                {
                    "name": "Name",
                    "value": ""
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
            "rotation": "0.000000, 0.000000, -179.999954",
            "scale": "0.166667, 0.166667, 0.166667",
            "type": "gameObject"
        },
        {
            "location": "-1822.000000, -562.000000, 528.000000",
            "name": "SpawnPoint",
            "properties": [
                {
                    "name": "Name",
                    "value": ""
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
            "rotation": "0.000000, 0.000000, -179.999954",
            "scale": "0.166667, 0.166667, 0.166667",
            "type": "gameObject"
        },
        {
            "location": "-1854.000000, -434.000000, 528.000000",
            "name": "SpawnPoint",
            "properties": [
                {
                    "name": "Name",
                    "value": ""
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
            "rotation": "0.000000, 0.000000, -179.999954",
            "scale": "0.166667, 0.166667, 0.166667",
            "type": "gameObject"
        },
        {
            "location": "-1854.000000, -498.000000, 528.000000",
            "name": "SpawnPoint",
            "properties": [
                {
                    "name": "Name",
                    "value": ""
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
            "rotation": "0.000000, 0.000000, -179.999954",
            "scale": "0.166667, 0.166667, 0.166667",
            "type": "gameObject"
        },
        {
            "location": "-1758.000000, -562.000000, 528.000000",
            "name": "SpawnPoint",
            "properties": [
                {
                    "name": "Name",
                    "value": ""
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
            "rotation": "0.000000, 0.000000, -179.999954",
            "scale": "0.166667, 0.166667, 0.166667",
            "type": "gameObject"
        },
        {
            "location": "-1726.000000, -434.000000, 528.000000",
            "name": "SpawnPoint",
            "properties": [
                {
                    "name": "Name",
                    "value": ""
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
            "rotation": "0.000000, 0.000000, -179.999954",
            "scale": "0.166667, 0.166667, 0.166667",
            "type": "gameObject"
        },
        {
            "location": "-1758.000000, -562.000000, 464.000000",
            "name": "SpawnPoint",
            "properties": [
                {
                    "name": "Name",
                    "value": ""
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
            "rotation": "0.000000, 0.000000, -179.999954",
            "scale": "0.166667, 0.166667, 0.166667",
            "type": "gameObject"
        },
        {
            "location": "-1854.000000, -530.000000, 496.000000",
            "name": "SpawnPoint",
            "properties": [
                {
                    "name": "Name",
                    "value": ""
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
            "rotation": "0.000000, 0.000000, -179.999954",
            "scale": "0.166667, 0.166667, 0.166667",
            "type": "gameObject"
        },
        {
            "location": "-1758.000000, -434.000000, 528.000000",
            "name": "SpawnPoint",
            "properties": [
                {
                    "name": "Name",
                    "value": ""
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
            "rotation": "0.000000, 0.000000, -179.999954",
            "scale": "0.166667, 0.166667, 0.166667",
            "type": "gameObject"
        },
        {
            "location": "-1726.000000, -498.000000, 512.000000",
            "name": "SpawnPoint",
            "properties": [
                {
                    "name": "Name",
                    "value": ""
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
            "rotation": "0.000000, 0.000000, -179.999954",
            "scale": "0.166667, 0.166667, 0.166667",
            "type": "gameObject"
        },
        {
            "location": "-1854.000000, -562.000000, 496.000000",
            "name": "SpawnPoint",
            "properties": [
                {
                    "name": "Name",
                    "value": ""
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
            "rotation": "0.000000, 0.000000, -179.999954",
            "scale": "0.166667, 0.166667, 0.166667",
            "type": "gameObject"
        },
        {
            "location": "-1726.000000, -466.000000, 528.000000",
            "name": "SpawnPoint",
            "properties": [
                {
                    "name": "Name",
                    "value": ""
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
            "rotation": "0.000000, 0.000000, -179.999954",
            "scale": "0.166667, 0.166667, 0.166667",
            "type": "gameObject"
        },
        {
            "location": "-1790.000000, -562.000000, 464.000000",
            "name": "SpawnPoint",
            "properties": [
                {
                    "name": "Name",
                    "value": ""
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
            "rotation": "0.000000, 0.000000, -179.999954",
            "scale": "0.166667, 0.166667, 0.166667",
            "type": "gameObject"
        },
        {
            "location": "-1854.000000, -498.000000, 496.000000",
            "name": "SpawnPoint",
            "properties": [
                {
                    "name": "Name",
                    "value": ""
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
            "rotation": "0.000000, 0.000000, -179.999954",
            "scale": "0.166667, 0.166667, 0.166667",
            "type": "gameObject"
        },
        {
            "location": "-1726.000000, -434.000000, 544.000000",
            "name": "SpawnPoint",
            "properties": [
                {
                    "name": "Name",
                    "value": ""
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
            "rotation": "0.000000, 0.000000, -179.999954",
            "scale": "0.166667, 0.166667, 0.166667",
            "type": "gameObject"
        },
        {
            "location": "-1758.000000, -434.000000, 432.000000",
            "name": "SpawnPoint",
            "properties": [
                {
                    "name": "Name",
                    "value": ""
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
            "rotation": "0.000000, 0.000000, -179.999954",
            "scale": "0.166667, 0.166667, 0.166667",
            "type": "gameObject"
        },
        {
            "location": "-1758.000000, -562.000000, 496.000000",
            "name": "SpawnPoint",
            "properties": [
                {
                    "name": "Name",
                    "value": ""
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
            "rotation": "0.000000, 0.000000, -179.999954",
            "scale": "0.166667, 0.166667, 0.166667",
            "type": "gameObject"
        },
        {
            "location": "-1822.000000, -434.000000, 544.000000",
            "name": "SpawnPoint",
            "properties": [
                {
                    "name": "Name",
                    "value": ""
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
            "rotation": "0.000000, 0.000000, -179.999954",
            "scale": "0.166667, 0.166667, 0.166667",
            "type": "gameObject"
        },
        {
            "location": "-1888.000000, -398.000000, 400.000000",
            "mesh": "Cube",
            "name": "Clip",
            "rotation": "-89.999962, 0.000000, 0.000000",
            "scale": "1.920000, 1.920000, 0.020000",
            "type": "brush"
        },
        {
            "location": "-1758.000000, -434.000000, 512.000000",
            "name": "SpawnPoint",
            "properties": [
                {
                    "name": "Name",
                    "value": ""
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
            "rotation": "0.000000, 0.000000, -179.999954",
            "scale": "0.166667, 0.166667, 0.166667",
            "type": "gameObject"
        },
        {
            "location": "-1854.000000, -434.000000, 544.000000",
            "name": "SpawnPoint",
            "properties": [
                {
                    "name": "Name",
                    "value": ""
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
            "rotation": "0.000000, 0.000000, -179.999954",
            "scale": "0.166667, 0.166667, 0.166667",
            "type": "gameObject"
        },
        {
            "location": "-1822.000000, -562.000000, 464.000000",
            "name": "SpawnPoint",
            "properties": [
                {
                    "name": "Name",
                    "value": ""
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
            "rotation": "0.000000, 0.000000, -179.999954",
            "scale": "0.166667, 0.166667, 0.166667",
            "type": "gameObject"
        },
        {
            "location": "-1790.000000, -434.000000, 512.000000",
            "name": "SpawnPoint",
            "properties": [
                {
                    "name": "Name",
                    "value": ""
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
            "rotation": "0.000000, 0.000000, -179.999954",
            "scale": "0.166667, 0.166667, 0.166667",
            "type": "gameObject"
        },
        {
            "location": "-1790.000000, -434.000000, 544.000000",
            "name": "SpawnPoint",
            "properties": [
                {
                    "name": "Name",
                    "value": ""
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
            "rotation": "0.000000, 0.000000, -179.999954",
            "scale": "0.166667, 0.166667, 0.166667",
            "type": "gameObject"
        },
        {
            "location": "-1726.000000, -562.000000, 512.000000",
            "name": "SpawnPoint",
            "properties": [
                {
                    "name": "Name",
                    "value": ""
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
            "rotation": "0.000000, 0.000000, -179.999954",
            "scale": "0.166667, 0.166667, 0.166667",
            "type": "gameObject"
        },
        {
            "location": "-1822.000000, -434.000000, 512.000000",
            "name": "SpawnPoint",
            "properties": [
                {
                    "name": "Name",
                    "value": ""
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
            "rotation": "0.000000, 0.000000, -179.999954",
            "scale": "0.166667, 0.166667, 0.166667",
            "type": "gameObject"
        },
        {
            "location": "-1758.000000, -434.000000, 544.000000",
            "name": "SpawnPoint",
            "properties": [
                {
                    "name": "Name",
                    "value": ""
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
            "rotation": "0.000000, 0.000000, -179.999954",
            "scale": "0.166667, 0.166667, 0.166667",
            "type": "gameObject"
        },
        {
            "location": "-1726.000000, -530.000000, 512.000000",
            "name": "SpawnPoint",
            "properties": [
                {
                    "name": "Name",
                    "value": ""
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
            "rotation": "0.000000, 0.000000, -179.999954",
            "scale": "0.166667, 0.166667, 0.166667",
            "type": "gameObject"
        },
        {
            "location": "-1854.000000, -434.000000, 512.000000",
            "name": "SpawnPoint",
            "properties": [
                {
                    "name": "Name",
                    "value": ""
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
            "rotation": "0.000000, 0.000000, -179.999954",
            "scale": "0.166667, 0.166667, 0.166667",
            "type": "gameObject"
        },
        {
            "location": "-1726.000000, -434.000000, 448.000000",
            "name": "SpawnPoint",
            "properties": [
                {
                    "name": "Name",
                    "value": ""
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
            "rotation": "0.000000, 0.000000, -179.999954",
            "scale": "0.166667, 0.166667, 0.166667",
            "type": "gameObject"
        },
        {
            "location": "-1854.000000, -434.000000, 448.000000",
            "name": "SpawnPoint",
            "properties": [
                {
                    "name": "Name",
                    "value": ""
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
            "rotation": "0.000000, 0.000000, -179.999954",
            "scale": "0.166667, 0.166667, 0.166667",
            "type": "gameObject"
        },
        {
            "location": "-1854.000000, -466.000000, 512.000000",
            "name": "SpawnPoint",
            "properties": [
                {
                    "name": "Name",
                    "value": ""
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
            "rotation": "0.000000, 0.000000, -179.999954",
            "scale": "0.166667, 0.166667, 0.166667",
            "type": "gameObject"
        },
        {
            "location": "-1888.000000, -592.000000, 400.000000",
            "mesh": "Cube",
            "name": "Clip",
            "rotation": "0.000000, 0.000000, 0.000000",
            "scale": "1.920000, 1.920000, 0.020000",
            "type": "brush"
        },
        {
            "location": "-1854.000000, -498.000000, 512.000000",
            "name": "SpawnPoint",
            "properties": [
                {
                    "name": "Name",
                    "value": ""
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
            "rotation": "0.000000, 0.000000, -179.999954",
            "scale": "0.166667, 0.166667, 0.166667",
            "type": "gameObject"
        },
        {
            "location": "-1854.000000, -466.000000, 544.000000",
            "name": "SpawnPoint",
            "properties": [
                {
                    "name": "Name",
                    "value": ""
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
            "rotation": "0.000000, 0.000000, -179.999954",
            "scale": "0.166667, 0.166667, 0.166667",
            "type": "gameObject"
        },
        {
            "location": "-1888.000000, -592.000000, 592.000000",
            "mesh": "Cube",
            "name": "Clip",
            "rotation": "0.000000, 0.000000, 0.000000",
            "scale": "1.920000, 1.920000, 0.020000",
            "type": "brush"
        },
        {
            "location": "-1854.000000, -530.000000, 512.000000",
            "name": "SpawnPoint",
            "properties": [
                {
                    "name": "Name",
                    "value": ""
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
            "rotation": "0.000000, 0.000000, -179.999954",
            "scale": "0.166667, 0.166667, 0.166667",
            "type": "gameObject"
        },
        {
            "location": "-1696.000000, 1344.000000, -400.000000",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "ramp"
                },
                {
                    "group": 1,
                    "surface": "ramp"
                },
                {
                    "group": 1,
                    "surface": "ramp"
                },
                {
                    "group": 1,
                    "surface": "ramp"
                }
            ],
            "mesh": "Sphere",
            "name": "Default",
            "rotation": "0.000000, 0.000000, 90.000076",
            "scale": "9.600000, 22.079994, 52.160000",
            "type": "brush"
        },
        {
            "location": "-3328.000000, -864.000000, -400.000000",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "ramp"
                },
                {
                    "group": 1,
                    "surface": "ramp"
                },
                {
                    "group": 1,
                    "surface": "ramp"
                },
                {
                    "group": 1,
                    "surface": "ramp"
                }
            ],
            "mesh": "Sphere",
            "name": "Default",
            "rotation": "0.000000, 0.000000, -179.999924",
            "scale": "9.600000, 22.079994, 52.160000",
            "type": "brush"
        },
        {
            "location": "-1854.000000, -498.000000, 464.000000",
            "name": "SpawnPoint",
            "properties": [
                {
                    "name": "Name",
                    "value": ""
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
            "rotation": "0.000000, 0.000000, -179.999954",
            "scale": "0.166667, 0.166667, 0.166667",
            "type": "gameObject"
        },
        {
            "location": "-1790.000000, -434.000000, 464.000000",
            "name": "SpawnPoint",
            "properties": [
                {
                    "name": "Name",
                    "value": ""
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
            "rotation": "0.000000, 0.000000, -179.999954",
            "scale": "0.166667, 0.166667, 0.166667",
            "type": "gameObject"
        },
        {
            "location": "-1854.000000, -434.000000, 464.000000",
            "name": "SpawnPoint",
            "properties": [
                {
                    "name": "Name",
                    "value": ""
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
            "rotation": "0.000000, 0.000000, -179.999954",
            "scale": "0.166667, 0.166667, 0.166667",
            "type": "gameObject"
        },
        {
            "location": "-1854.000000, -498.000000, 448.000000",
            "name": "SpawnPoint",
            "properties": [
                {
                    "name": "Name",
                    "value": ""
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
            "rotation": "0.000000, 0.000000, -179.999954",
            "scale": "0.166667, 0.166667, 0.166667",
            "type": "gameObject"
        },
        {
            "location": "0.000000, -1376.000000, -400.000000",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "ramp"
                },
                {
                    "group": 1,
                    "surface": "ramp"
                },
                {
                    "group": 1,
                    "surface": "ramp"
                },
                {
                    "group": 1,
                    "surface": "ramp"
                }
            ],
            "mesh": "Sphere",
            "name": "Default",
            "rotation": "0.000000, 0.000000, 0.000000",
            "scale": "9.600000, 22.079994, 52.160000",
            "type": "brush"
        },
        {
            "location": "-1726.000000, -498.000000, 432.000000",
            "name": "SpawnPoint",
            "properties": [
                {
                    "name": "Name",
                    "value": ""
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
            "rotation": "0.000000, 0.000000, -179.999954",
            "scale": "0.166667, 0.166667, 0.166667",
            "type": "gameObject"
        },
        {
            "location": "-1758.000000, -562.000000, 512.000000",
            "name": "SpawnPoint",
            "properties": [
                {
                    "name": "Name",
                    "value": ""
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
            "rotation": "0.000000, 0.000000, -179.999954",
            "scale": "0.166667, 0.166667, 0.166667",
            "type": "gameObject"
        },
        {
            "location": "-1758.000000, -562.000000, 544.000000",
            "name": "SpawnPoint",
            "properties": [
                {
                    "name": "Name",
                    "value": ""
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
            "rotation": "0.000000, 0.000000, -179.999954",
            "scale": "0.166667, 0.166667, 0.166667",
            "type": "gameObject"
        },
        {
            "location": "-1726.000000, -466.000000, 432.000000",
            "name": "SpawnPoint",
            "properties": [
                {
                    "name": "Name",
                    "value": ""
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
            "rotation": "0.000000, 0.000000, -179.999954",
            "scale": "0.166667, 0.166667, 0.166667",
            "type": "gameObject"
        },
        {
            "location": "-1822.000000, -562.000000, 512.000000",
            "name": "SpawnPoint",
            "properties": [
                {
                    "name": "Name",
                    "value": ""
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
            "rotation": "0.000000, 0.000000, -179.999954",
            "scale": "0.166667, 0.166667, 0.166667",
            "type": "gameObject"
        },
        {
            "location": "-1790.000000, -562.000000, 544.000000",
            "name": "SpawnPoint",
            "properties": [
                {
                    "name": "Name",
                    "value": ""
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
            "rotation": "0.000000, 0.000000, -179.999954",
            "scale": "0.166667, 0.166667, 0.166667",
            "type": "gameObject"
        },
        {
            "location": "-1822.000000, -434.000000, 432.000000",
            "name": "SpawnPoint",
            "properties": [
                {
                    "name": "Name",
                    "value": ""
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
            "rotation": "0.000000, 0.000000, -179.999954",
            "scale": "0.166667, 0.166667, 0.166667",
            "type": "gameObject"
        },
        {
            "location": "-1822.000000, -434.000000, 496.000000",
            "name": "SpawnPoint",
            "properties": [
                {
                    "name": "Name",
                    "value": ""
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
            "rotation": "0.000000, 0.000000, -179.999954",
            "scale": "0.166667, 0.166667, 0.166667",
            "type": "gameObject"
        },
        {
            "location": "-1822.000000, -562.000000, 544.000000",
            "name": "SpawnPoint",
            "properties": [
                {
                    "name": "Name",
                    "value": ""
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
            "rotation": "0.000000, 0.000000, -179.999954",
            "scale": "0.166667, 0.166667, 0.166667",
            "type": "gameObject"
        },
        {
            "location": "-1854.000000, -434.000000, 496.000000",
            "name": "SpawnPoint",
            "properties": [
                {
                    "name": "Name",
                    "value": ""
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
            "rotation": "0.000000, 0.000000, -179.999954",
            "scale": "0.166667, 0.166667, 0.166667",
            "type": "gameObject"
        },
        {
            "location": "-1790.000000, -434.000000, 496.000000",
            "name": "SpawnPoint",
            "properties": [
                {
                    "name": "Name",
                    "value": ""
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
            "rotation": "0.000000, 0.000000, -179.999954",
            "scale": "0.166667, 0.166667, 0.166667",
            "type": "gameObject"
        },
        {
            "location": "-1854.000000, -498.000000, 432.000000",
            "name": "SpawnPoint",
            "properties": [
                {
                    "name": "Name",
                    "value": ""
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
            "rotation": "0.000000, 0.000000, -179.999954",
            "scale": "0.166667, 0.166667, 0.166667",
            "type": "gameObject"
        },
        {
            "location": "-1726.000000, -498.000000, 496.000000",
            "name": "SpawnPoint",
            "properties": [
                {
                    "name": "Name",
                    "value": ""
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
            "rotation": "0.000000, 0.000000, -179.999954",
            "scale": "0.166667, 0.166667, 0.166667",
            "type": "gameObject"
        },
        {
            "location": "-1854.000000, -562.000000, 544.000000",
            "name": "SpawnPoint",
            "properties": [
                {
                    "name": "Name",
                    "value": ""
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
            "rotation": "0.000000, 0.000000, -179.999954",
            "scale": "0.166667, 0.166667, 0.166667",
            "type": "gameObject"
        },
        {
            "location": "-1854.000000, -530.000000, 432.000000",
            "name": "SpawnPoint",
            "properties": [
                {
                    "name": "Name",
                    "value": ""
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
            "rotation": "0.000000, 0.000000, -179.999954",
            "scale": "0.166667, 0.166667, 0.166667",
            "type": "gameObject"
        },
        {
            "location": "-1726.000000, -466.000000, 496.000000",
            "name": "SpawnPoint",
            "properties": [
                {
                    "name": "Name",
                    "value": ""
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
            "rotation": "0.000000, 0.000000, -179.999954",
            "scale": "0.166667, 0.166667, 0.166667",
            "type": "gameObject"
        },
        {
            "location": "-1726.000000, -498.000000, 448.000000",
            "name": "SpawnPoint",
            "properties": [
                {
                    "name": "Name",
                    "value": ""
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
            "rotation": "0.000000, 0.000000, -179.999954",
            "scale": "0.166667, 0.166667, 0.166667",
            "type": "gameObject"
        },
        {
            "location": "-1758.000000, -562.000000, 432.000000",
            "name": "SpawnPoint",
            "properties": [
                {
                    "name": "Name",
                    "value": ""
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
            "rotation": "0.000000, 0.000000, -179.999954",
            "scale": "0.166667, 0.166667, 0.166667",
            "type": "gameObject"
        },
        {
            "location": "-1758.000000, -434.000000, 496.000000",
            "name": "SpawnPoint",
            "properties": [
                {
                    "name": "Name",
                    "value": ""
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
            "rotation": "0.000000, 0.000000, -179.999954",
            "scale": "0.166667, 0.166667, 0.166667",
            "type": "gameObject"
        },
        {
            "location": "-1726.000000, -530.000000, 448.000000",
            "name": "SpawnPoint",
            "properties": [
                {
                    "name": "Name",
                    "value": ""
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
            "rotation": "0.000000, 0.000000, -179.999954",
            "scale": "0.166667, 0.166667, 0.166667",
            "type": "gameObject"
        },
        {
            "location": "-1790.000000, -562.000000, 432.000000",
            "name": "SpawnPoint",
            "properties": [
                {
                    "name": "Name",
                    "value": ""
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
            "rotation": "0.000000, 0.000000, -179.999954",
            "scale": "0.166667, 0.166667, 0.166667",
            "type": "gameObject"
        },
        {
            "location": "-1854.000000, -562.000000, 512.000000",
            "name": "SpawnPoint",
            "properties": [
                {
                    "name": "Name",
                    "value": ""
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
            "rotation": "0.000000, 0.000000, -179.999954",
            "scale": "0.166667, 0.166667, 0.166667",
            "type": "gameObject"
        },
        {
            "location": "-1726.000000, -562.000000, 448.000000",
            "name": "SpawnPoint",
            "properties": [
                {
                    "name": "Name",
                    "value": ""
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
            "rotation": "0.000000, 0.000000, -179.999954",
            "scale": "0.166667, 0.166667, 0.166667",
            "type": "gameObject"
        },
        {
            "location": "-1822.000000, -562.000000, 432.000000",
            "name": "SpawnPoint",
            "properties": [
                {
                    "name": "Name",
                    "value": ""
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
            "rotation": "0.000000, 0.000000, -179.999954",
            "scale": "0.166667, 0.166667, 0.166667",
            "type": "gameObject"
        },
        {
            "location": "-1790.000000, -562.000000, 512.000000",
            "name": "SpawnPoint",
            "properties": [
                {
                    "name": "Name",
                    "value": ""
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
            "rotation": "0.000000, 0.000000, -179.999954",
            "scale": "0.166667, 0.166667, 0.166667",
            "type": "gameObject"
        },
        {
            "location": "-1726.000000, -466.000000, 448.000000",
            "name": "SpawnPoint",
            "properties": [
                {
                    "name": "Name",
                    "value": ""
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
            "rotation": "0.000000, 0.000000, -179.999954",
            "scale": "0.166667, 0.166667, 0.166667",
            "type": "gameObject"
        },
        {
            "location": "-1854.000000, -562.000000, 432.000000",
            "name": "SpawnPoint",
            "properties": [
                {
                    "name": "Name",
                    "value": ""
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
            "rotation": "0.000000, 0.000000, -179.999954",
            "scale": "0.166667, 0.166667, 0.166667",
            "type": "gameObject"
        },
        {
            "location": "-1726.000000, -562.000000, 528.000000",
            "name": "SpawnPoint",
            "properties": [
                {
                    "name": "Name",
                    "value": ""
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
            "rotation": "0.000000, 0.000000, -179.999954",
            "scale": "0.166667, 0.166667, 0.166667",
            "type": "gameObject"
        },
        {
            "location": "-1854.000000, -466.000000, 432.000000",
            "name": "SpawnPoint",
            "properties": [
                {
                    "name": "Name",
                    "value": ""
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
            "rotation": "0.000000, 0.000000, -179.999954",
            "scale": "0.166667, 0.166667, 0.166667",
            "type": "gameObject"
        },
        {
            "location": "-64.000000, -448.000000, -48.000000",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "ramp"
                },
                {
                    "group": 1,
                    "surface": "ramp"
                },
                {
                    "group": 1,
                    "surface": "ramp"
                },
                {
                    "group": 1,
                    "surface": "ramp"
                }
            ],
            "mesh": "Sphere",
            "name": "Default",
            "rotation": "0.000000, 0.000000, 0.000000",
            "scale": "9.920000, 9.919999, 22.080000",
            "type": "brush"
        },
        {
            "location": "-1726.000000, -434.000000, 432.000000",
            "name": "SpawnPoint",
            "properties": [
                {
                    "name": "Name",
                    "value": ""
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
            "rotation": "0.000000, 0.000000, -179.999954",
            "scale": "0.166667, 0.166667, 0.166667",
            "type": "gameObject"
        },
        {
            "location": "-1822.000000, -434.000000, 464.000000",
            "name": "SpawnPoint",
            "properties": [
                {
                    "name": "Name",
                    "value": ""
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
            "rotation": "0.000000, 0.000000, -179.999954",
            "scale": "0.166667, 0.166667, 0.166667",
            "type": "gameObject"
        },
        {
            "location": "-160.000000, 704.000000, -592.000000",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "ramp"
                },
                {
                    "group": 1,
                    "surface": "ramp"
                },
                {
                    "group": 1,
                    "surface": "ramp"
                },
                {
                    "group": 1,
                    "surface": "ramp"
                }
            ],
            "mesh": "Sphere",
            "name": "Default",
            "rotation": "0.000000, 0.000000, 30.000013",
            "scale": "9.600000, 22.079994, 52.160000",
            "type": "brush"
        },
        {
            "location": "-1854.000000, -530.000000, 448.000000",
            "name": "SpawnPoint",
            "properties": [
                {
                    "name": "Name",
                    "value": ""
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
            "rotation": "0.000000, 0.000000, -179.999954",
            "scale": "0.166667, 0.166667, 0.166667",
            "type": "gameObject"
        },
        {
            "location": "-1854.000000, -466.000000, 464.000000",
            "name": "SpawnPoint",
            "properties": [
                {
                    "name": "Name",
                    "value": ""
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
            "rotation": "0.000000, 0.000000, -179.999954",
            "scale": "0.166667, 0.166667, 0.166667",
            "type": "gameObject"
        },
        {
            "location": "64.000000, -576.000000, -176.000000",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "ramp"
                },
                {
                    "group": 1,
                    "surface": "ramp"
                },
                {
                    "group": 1,
                    "surface": "ramp"
                },
                {
                    "group": 1,
                    "surface": "ramp"
                }
            ],
            "mesh": "Sphere",
            "name": "Default",
            "rotation": "0.000000, 0.000000, 0.000000",
            "scale": "9.920000, 9.919999, 37.120003",
            "type": "brush"
        },
        {
            "location": "128.000000, -159.999985, 560.000000",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "ramp"
                },
                {
                    "group": 1,
                    "surface": "ramp"
                },
                {
                    "group": 1,
                    "surface": "ramp"
                },
                {
                    "group": 1,
                    "surface": "ramp"
                }
            ],
            "mesh": "Sphere",
            "name": "Default",
            "rotation": "0.000000, 0.000000, 0.000000",
            "scale": "9.920000, 9.919999, 22.080000",
            "type": "brush"
        },
        {
            "location": "-224.000000, -896.000000, -239.999985",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "ramp"
                },
                {
                    "group": 1,
                    "surface": "ramp"
                },
                {
                    "group": 1,
                    "surface": "ramp"
                },
                {
                    "group": 1,
                    "surface": "ramp"
                }
            ],
            "mesh": "Sphere",
            "name": "Default",
            "rotation": "0.000000, 0.000000, 0.000000",
            "scale": "9.920000, 9.919999, 29.760000",
            "type": "brush"
        },
        {
            "location": "-64.000000, 64.000000, -176.000000",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "ramp"
                },
                {
                    "group": 1,
                    "surface": "ramp"
                },
                {
                    "group": 1,
                    "surface": "ramp"
                },
                {
                    "group": 1,
                    "surface": "ramp"
                }
            ],
            "mesh": "Sphere",
            "name": "Default",
            "rotation": "0.000000, 0.000000, 0.000000",
            "scale": "9.920000, 9.919999, 37.120003",
            "type": "brush"
        },
        {
            "location": "-1790.000000, -562.000000, 448.000000",
            "name": "SpawnPoint",
            "properties": [
                {
                    "name": "Name",
                    "value": ""
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
            "rotation": "0.000000, 0.000000, -179.999954",
            "scale": "0.166667, 0.166667, 0.166667",
            "type": "gameObject"
        },
        {
            "location": "-1854.000000, -562.000000, 448.000000",
            "name": "SpawnPoint",
            "properties": [
                {
                    "name": "Name",
                    "value": ""
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
            "rotation": "0.000000, 0.000000, -179.999954",
            "scale": "0.166667, 0.166667, 0.166667",
            "type": "gameObject"
        },
        {
            "location": "-64.000000, -160.000031, -48.000000",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "ramp"
                },
                {
                    "group": 1,
                    "surface": "ramp"
                },
                {
                    "group": 1,
                    "surface": "ramp"
                },
                {
                    "group": 1,
                    "surface": "ramp"
                }
            ],
            "mesh": "Sphere",
            "name": "Default",
            "rotation": "0.000000, 0.000000, 0.000000",
            "scale": "9.920000, 8.319999, 0.000000",
            "type": "brush"
        },
        {
            "location": "-1758.000000, -562.000000, 448.000000",
            "name": "SpawnPoint",
            "properties": [
                {
                    "name": "Name",
                    "value": ""
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
            "rotation": "0.000000, 0.000000, -179.999954",
            "scale": "0.166667, 0.166667, 0.166667",
            "type": "gameObject"
        },
        {
            "location": "-1822.000000, -562.000000, 448.000000",
            "name": "SpawnPoint",
            "properties": [
                {
                    "name": "Name",
                    "value": ""
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
            "rotation": "0.000000, 0.000000, -179.999954",
            "scale": "0.166667, 0.166667, 0.166667",
            "type": "gameObject"
        },
        {
            "location": "-1726.000000, -466.000000, 544.000000",
            "name": "SpawnPoint",
            "properties": [
                {
                    "name": "Name",
                    "value": ""
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
            "rotation": "0.000000, 0.000000, -179.999954",
            "scale": "0.166667, 0.166667, 0.166667",
            "type": "gameObject"
        },
        {
            "location": "-1790.000000, -562.000000, 480.000000",
            "name": "SpawnPoint",
            "properties": [
                {
                    "name": "Name",
                    "value": ""
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
            "rotation": "0.000000, 0.000000, -179.999954",
            "scale": "0.166667, 0.166667, 0.166667",
            "type": "gameObject"
        },
        {
            "location": "-1854.000000, -498.000000, 544.000000",
            "name": "SpawnPoint",
            "properties": [
                {
                    "name": "Name",
                    "value": ""
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
            "rotation": "0.000000, 0.000000, -179.999954",
            "scale": "0.166667, 0.166667, 0.166667",
            "type": "gameObject"
        },
        {
            "location": "-1854.000000, -530.000000, 528.000000",
            "name": "SpawnPoint",
            "properties": [
                {
                    "name": "Name",
                    "value": ""
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
            "rotation": "0.000000, 0.000000, -179.999954",
            "scale": "0.166667, 0.166667, 0.166667",
            "type": "gameObject"
        },
        {
            "location": "-1726.000000, -498.000000, 544.000000",
            "name": "SpawnPoint",
            "properties": [
                {
                    "name": "Name",
                    "value": ""
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
            "rotation": "0.000000, 0.000000, -179.999954",
            "scale": "0.166667, 0.166667, 0.166667",
            "type": "gameObject"
        },
        {
            "location": "-1790.000000, -562.000000, 528.000000",
            "name": "SpawnPoint",
            "properties": [
                {
                    "name": "Name",
                    "value": ""
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
            "rotation": "0.000000, 0.000000, -179.999954",
            "scale": "0.166667, 0.166667, 0.166667",
            "type": "gameObject"
        },
        {
            "location": "-1726.000000, -434.000000, 512.000000",
            "name": "SpawnPoint",
            "properties": [
                {
                    "name": "Name",
                    "value": ""
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
            "rotation": "0.000000, 0.000000, -179.999954",
            "scale": "0.166667, 0.166667, 0.166667",
            "type": "gameObject"
        },
        {
            "location": "-1822.000000, -434.000000, 448.000000",
            "name": "SpawnPoint",
            "properties": [
                {
                    "name": "Name",
                    "value": ""
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
            "rotation": "0.000000, 0.000000, -179.999954",
            "scale": "0.166667, 0.166667, 0.166667",
            "type": "gameObject"
        },
        {
            "location": "-1790.000000, -562.000000, 496.000000",
            "name": "SpawnPoint",
            "properties": [
                {
                    "name": "Name",
                    "value": ""
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
            "rotation": "0.000000, 0.000000, -179.999954",
            "scale": "0.166667, 0.166667, 0.166667",
            "type": "gameObject"
        },
        {
            "location": "-1790.000000, -434.000000, 528.000000",
            "name": "SpawnPoint",
            "properties": [
                {
                    "name": "Name",
                    "value": ""
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
            "rotation": "0.000000, 0.000000, -179.999954",
            "scale": "0.166667, 0.166667, 0.166667",
            "type": "gameObject"
        },
        {
            "location": "-1726.000000, -466.000000, 512.000000",
            "name": "SpawnPoint",
            "properties": [
                {
                    "name": "Name",
                    "value": ""
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
            "rotation": "0.000000, 0.000000, -179.999954",
            "scale": "0.166667, 0.166667, 0.166667",
            "type": "gameObject"
        },
        {
            "location": "-1822.000000, -562.000000, 496.000000",
            "name": "SpawnPoint",
            "properties": [
                {
                    "name": "Name",
                    "value": ""
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
            "rotation": "0.000000, 0.000000, -179.999954",
            "scale": "0.166667, 0.166667, 0.166667",
            "type": "gameObject"
        },
        {
            "location": "-1726.000000, -562.000000, 544.000000",
            "name": "SpawnPoint",
            "properties": [
                {
                    "name": "Name",
                    "value": ""
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
            "rotation": "0.000000, 0.000000, -179.999954",
            "scale": "0.166667, 0.166667, 0.166667",
            "type": "gameObject"
        },
        {
            "location": "-1854.000000, -562.000000, 528.000000",
            "name": "SpawnPoint",
            "properties": [
                {
                    "name": "Name",
                    "value": ""
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
            "rotation": "0.000000, 0.000000, -179.999954",
            "scale": "0.166667, 0.166667, 0.166667",
            "type": "gameObject"
        },
        {
            "location": "-1854.000000, -466.000000, 528.000000",
            "name": "SpawnPoint",
            "properties": [
                {
                    "name": "Name",
                    "value": ""
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
            "rotation": "0.000000, 0.000000, -179.999954",
            "scale": "0.166667, 0.166667, 0.166667",
            "type": "gameObject"
        },
        {
            "location": "-1726.000000, -530.000000, 544.000000",
            "name": "SpawnPoint",
            "properties": [
                {
                    "name": "Name",
                    "value": ""
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
            "rotation": "0.000000, 0.000000, -179.999954",
            "scale": "0.166667, 0.166667, 0.166667",
            "type": "gameObject"
        },
        {
            "location": "-1790.000000, -434.000000, 448.000000",
            "name": "SpawnPoint",
            "properties": [
                {
                    "name": "Name",
                    "value": ""
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
            "rotation": "0.000000, 0.000000, -179.999954",
            "scale": "0.166667, 0.166667, 0.166667",
            "type": "gameObject"
        },
        {
            "location": "-1758.000000, -434.000000, 448.000000",
            "name": "SpawnPoint",
            "properties": [
                {
                    "name": "Name",
                    "value": ""
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
            "rotation": "0.000000, 0.000000, -179.999954",
            "scale": "0.166667, 0.166667, 0.166667",
            "type": "gameObject"
        },
        {
            "location": "-3321.999756, -262.000092, -176.000000",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "wall"
                },
                {
                    "group": 0,
                    "surface": "ramp"
                },
                {
                    "group": 0,
                    "surface": "wall"
                },
                {
                    "group": 0,
                    "surface": "wall"
                },
                {
                    "group": 0,
                    "surface": "wall"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "0.000000, 0.000000, -89.999939",
            "scale": "15.360000, 15.359999, 0.160000",
            "type": "brush"
        },
        {
            "location": "-1792.000000, -256.000000, -159.999985",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "ramp"
                },
                {
                    "group": 1,
                    "surface": "ramp"
                },
                {
                    "group": 1,
                    "surface": "ramp"
                },
                {
                    "group": 1,
                    "surface": "ramp"
                },
                {
                    "group": 1,
                    "surface": "ramp"
                },
                {
                    "group": 1,
                    "surface": "ramp"
                }
            ],
            "mesh": "TruncatedPyramid",
            "name": "Default",
            "rotation": "0.000000, 0.000000, 0.000000",
            "scale": "1.600000, 1.600000, 0.960000",
            "type": "brush"
        },
        {
            "location": "-1822.000000, -286.000000, 192.000000",
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
            "scale": "0.600000, 0.600000, 0.400000",
            "type": "brush"
        },
        {
            "location": "-1834.000000, -298.000000, -64.000000",
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
            "scale": "0.840000, 0.840000, 0.160000",
            "type": "brush"
        },
        {
            "location": "-1792.000000, -256.000000, -47.999981",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "ceiling"
                },
                {
                    "group": 1,
                    "surface": "ceiling"
                },
                {
                    "group": 1,
                    "surface": "ceiling"
                },
                {
                    "group": 1,
                    "surface": "ceiling"
                },
                {
                    "group": 1,
                    "surface": "ceiling"
                },
                {
                    "group": 1,
                    "surface": "ceiling"
                }
            ],
            "mesh": "TruncatedPyramid",
            "name": "Default",
            "rotation": "0.000000, 0.000000, 0.000000",
            "scale": "0.600000, 0.600000, 6.759999",
            "type": "brush"
        },
        {
            "location": "-1822.000000, -286.000000, 572.000000",
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
            "scale": "0.600000, 0.600000, 0.600000",
            "type": "brush"
        },
        {
            "location": "-1816.000000, -566.000000, 650.000000",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "ceiling"
                },
                {
                    "group": 1,
                    "surface": "ceiling"
                },
                {
                    "group": 1,
                    "surface": "ceiling"
                },
                {
                    "group": 1,
                    "surface": "ceiling"
                },
                {
                    "group": 1,
                    "surface": "ceiling"
                },
                {
                    "group": 1,
                    "surface": "ceiling"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "15.000056, 0.000000, 0.000000",
            "scale": "0.500000, 3.000000, 0.500000",
            "type": "brush"
        },
        {
            "location": "-1804.000000, -470.000000, 626.000000",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "ceiling"
                },
                {
                    "group": 1,
                    "surface": "ceiling"
                },
                {
                    "group": 1,
                    "surface": "ceiling"
                },
                {
                    "group": 1,
                    "surface": "ceiling"
                },
                {
                    "group": 1,
                    "surface": "ceiling"
                },
                {
                    "group": 1,
                    "surface": "ceiling"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "45.000088, 0.000000, 0.000000",
            "scale": "0.260000, 3.000000, 0.260000",
            "type": "brush"
        },
        {
            "location": "-1821.000000, -524.000000, 634.000000",
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
            "rotation": "15.000056, 0.000000, 0.000000",
            "scale": "0.600000, 0.600000, 0.600000",
            "type": "brush"
        },
        {
            "location": "-1792.000000, -498.000000, 618.000000",
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
            "mesh": "Torus",
            "name": "Default",
            "rotation": "0.000000, -90.000000, 0.000000",
            "scale": "0.240000, 0.160000, 0.320000",
            "type": "brush"
        },
        {
            "location": "-1792.000000, -498.000000, 598.000000",
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
            "mesh": "Torus",
            "name": "Default",
            "rotation": "0.000000, -90.000000, 0.000000",
            "scale": "0.240000, 0.160000, 0.320000",
            "type": "brush"
        },
        {
            "location": "-1792.000000, -498.000000, 578.000000",
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
            "mesh": "Torus",
            "name": "Default",
            "rotation": "0.000000, -90.000000, 0.000000",
            "scale": "0.240000, 0.160000, 0.320000",
            "type": "brush"
        },
        {
            "location": "-1792.000000, -498.000000, 558.000000",
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
            "mesh": "Torus",
            "name": "Default",
            "rotation": "0.000000, -90.000000, 0.000000",
            "scale": "0.240000, 0.160000, 0.320000",
            "type": "brush"
        },
        {
            "location": "-1792.000000, -498.000000, 538.000000",
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
            "mesh": "Torus",
            "name": "Default",
            "rotation": "0.000000, -90.000000, 0.000000",
            "scale": "0.240000, 0.160000, 0.320000",
            "type": "brush"
        },
        {
            "location": "-1812.784668, -485.999939, 523.853699",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "ground"
                }
            ],
            "mesh": "DoubleRamp",
            "name": "Default",
            "rotation": "89.999878, 0.000000, -119.999969",
            "scale": "0.280000, 0.040000, 0.240000",
            "type": "brush"
        },
        {
            "location": "-1823.177002, -516.000000, 521.853760",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "wall"
                },
                {
                    "group": 0,
                    "surface": "ramp"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "wall"
                },
                {
                    "group": 0,
                    "surface": "ramp"
                }
            ],
            "mesh": "DoubleRamp",
            "name": "Default",
            "rotation": "89.999870, 0.000000, -59.999958",
            "scale": "0.412500, 0.040000, 0.360000",
            "type": "brush"
        },
        {
            "location": "-1792.000000, -473.999939, 523.853699",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "ground"
                }
            ],
            "mesh": "DoubleRamp",
            "name": "Default",
            "rotation": "89.999817, 0.000000, -179.999954",
            "scale": "0.280000, 0.040000, 0.240000",
            "type": "brush"
        },
        {
            "location": "-1771.215332, -486.000000, 523.853699",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "ground"
                }
            ],
            "mesh": "DoubleRamp",
            "name": "Default",
            "rotation": "89.999817, 0.000007, 120.000008",
            "scale": "0.280000, 0.040000, 0.240000",
            "type": "brush"
        },
        {
            "location": "-1789.171631, -495.171570, 523.853760",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "ground"
                }
            ],
            "mesh": "DoubleRamp",
            "name": "Default",
            "rotation": "0.000000, 0.000000, 134.999954",
            "scale": "0.360000, 0.080000, 0.080000",
            "type": "brush"
        },
        {
            "location": "-1760.823120, -516.000000, 521.853760",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "wall"
                },
                {
                    "group": 0,
                    "surface": "ramp"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "wall"
                },
                {
                    "group": 0,
                    "surface": "ramp"
                }
            ],
            "mesh": "DoubleRamp",
            "name": "Default",
            "rotation": "89.999817, 0.000000, 59.999950",
            "scale": "0.412500, 0.040000, 0.360000",
            "type": "brush"
        },
        {
            "location": "-1760.823120, -480.000000, 521.853760",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "wall"
                },
                {
                    "group": 0,
                    "surface": "ramp"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "wall"
                },
                {
                    "group": 0,
                    "surface": "ramp"
                }
            ],
            "mesh": "DoubleRamp",
            "name": "Default",
            "rotation": "89.999817, 0.000007, 120.000008",
            "scale": "0.412500, 0.040000, 0.360000",
            "type": "brush"
        },
        {
            "location": "-1771.215332, -510.000092, 523.853699",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "ground"
                }
            ],
            "mesh": "DoubleRamp",
            "name": "Default",
            "rotation": "89.999817, 0.000000, 59.999950",
            "scale": "0.280000, 0.040000, 0.240000",
            "type": "brush"
        },
        {
            "location": "-1788.000000, -498.000000, 523.853760",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "ground"
                }
            ],
            "mesh": "DoubleRamp",
            "name": "Default",
            "rotation": "0.000000, 0.000000, 89.999954",
            "scale": "0.360000, 0.080000, 0.080000",
            "type": "brush"
        },
        {
            "location": "-1792.000000, -462.000000, 521.853760",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "wall"
                },
                {
                    "group": 0,
                    "surface": "ramp"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "wall"
                },
                {
                    "group": 0,
                    "surface": "ramp"
                }
            ],
            "mesh": "DoubleRamp",
            "name": "Default",
            "rotation": "89.999817, 0.000000, -179.999954",
            "scale": "0.412500, 0.040000, 0.360000",
            "type": "brush"
        },
        {
            "location": "-1812.784668, -510.000000, 523.853699",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "ground"
                }
            ],
            "mesh": "DoubleRamp",
            "name": "Default",
            "rotation": "89.999893, 0.000000, -59.999958",
            "scale": "0.280000, 0.040000, 0.240000",
            "type": "brush"
        },
        {
            "location": "-1792.000000, -502.000000, 523.853760",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "ground"
                }
            ],
            "mesh": "DoubleRamp",
            "name": "Default",
            "rotation": "0.000000, 0.000000, 0.000000",
            "scale": "0.360000, 0.080000, 0.080000",
            "type": "brush"
        },
        {
            "location": "-1823.177002, -480.000000, 521.853760",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "wall"
                },
                {
                    "group": 0,
                    "surface": "ramp"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "wall"
                },
                {
                    "group": 0,
                    "surface": "ramp"
                }
            ],
            "mesh": "DoubleRamp",
            "name": "Default",
            "rotation": "89.999878, 0.000000, -119.999969",
            "scale": "0.412500, 0.040000, 0.360000",
            "type": "brush"
        },
        {
            "location": "-1812.784668, -510.000000, 467.853699",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "wall"
                },
                {
                    "group": 0,
                    "surface": "ramp"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "wall"
                },
                {
                    "group": 0,
                    "surface": "ramp"
                }
            ],
            "mesh": "DoubleRamp",
            "name": "Default",
            "rotation": "89.999878, 0.000000, -59.999931",
            "scale": "0.280000, 0.040000, 0.240000",
            "type": "brush"
        },
        {
            "location": "-1792.000000, -522.000000, 467.853699",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "wall"
                },
                {
                    "group": 0,
                    "surface": "ramp"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "wall"
                },
                {
                    "group": 0,
                    "surface": "ramp"
                }
            ],
            "mesh": "DoubleRamp",
            "name": "Default",
            "rotation": "89.999931, 0.000000, 0.000000",
            "scale": "0.280000, 0.040000, 0.240000",
            "type": "brush"
        },
        {
            "location": "-1792.000000, -534.000000, 521.853760",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "wall"
                },
                {
                    "group": 0,
                    "surface": "ramp"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "wall"
                },
                {
                    "group": 0,
                    "surface": "ramp"
                }
            ],
            "mesh": "DoubleRamp",
            "name": "Default",
            "rotation": "89.999931, 0.000000, 0.000000",
            "scale": "0.412500, 0.040000, 0.360000",
            "type": "brush"
        },
        {
            "location": "-1771.215332, -486.000000, 467.853699",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "wall"
                },
                {
                    "group": 0,
                    "surface": "ramp"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "wall"
                },
                {
                    "group": 0,
                    "surface": "ramp"
                }
            ],
            "mesh": "DoubleRamp",
            "name": "Default",
            "rotation": "89.999817, 0.000007, 120.000008",
            "scale": "0.280000, 0.040000, 0.240000",
            "type": "brush"
        },
        {
            "location": "-1792.000000, -473.999939, 467.853699",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "wall"
                },
                {
                    "group": 0,
                    "surface": "ramp"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "wall"
                },
                {
                    "group": 0,
                    "surface": "ramp"
                }
            ],
            "mesh": "DoubleRamp",
            "name": "Default",
            "rotation": "89.999779, 0.000000, -179.999954",
            "scale": "0.280000, 0.040000, 0.240000",
            "type": "brush"
        },
        {
            "location": "-1772.000000, -533.000000, 519.853882",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "wall"
                },
                {
                    "group": 0,
                    "surface": "wall"
                }
            ],
            "mesh": "Ramp",
            "name": "Default",
            "rotation": "-46.090939, -75.778931, 118.833267",
            "scale": "0.570000, 0.020000, 0.020000",
            "type": "brush"
        },
        {
            "location": "-1771.215332, -510.000092, 467.853699",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "ground"
                }
            ],
            "mesh": "DoubleRamp",
            "name": "Default",
            "rotation": "89.999809, 0.000000, 59.999916",
            "scale": "0.280000, 0.040000, 0.240000",
            "type": "brush"
        },
        {
            "location": "-1832.310913, -497.820496, 519.853882",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "wall"
                },
                {
                    "group": 0,
                    "surface": "wall"
                }
            ],
            "mesh": "Ramp",
            "name": "Default",
            "rotation": "-46.091133, -75.778824, -1.166692",
            "scale": "0.570000, 0.020000, 0.020000",
            "type": "brush"
        },
        {
            "location": "-1771.689209, -463.179535, 519.853882",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "wall"
                },
                {
                    "group": 0,
                    "surface": "wall"
                }
            ],
            "mesh": "Ramp",
            "name": "Default",
            "rotation": "-46.091030, -75.778831, -121.166718",
            "scale": "0.570000, 0.020000, 0.020000",
            "type": "brush"
        },
        {
            "location": "-1812.310913, -532.820496, 519.853882",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "wall"
                },
                {
                    "group": 0,
                    "surface": "wall"
                }
            ],
            "mesh": "Ramp",
            "name": "Default",
            "rotation": "-46.091198, -75.778847, 58.833210",
            "scale": "0.570000, 0.020000, 0.020000",
            "type": "brush"
        },
        {
            "location": "-1792.000000, -498.000000, 513.853760",
            "materialSets": [
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
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "Torus",
            "name": "Default",
            "rotation": "0.000000, 0.000000, -120.000053",
            "scale": "0.080000, 0.080000, 0.080000",
            "type": "brush"
        },
        {
            "location": "-1792.000000, -498.000000, 503.999969",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
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
            "mesh": "Sphere",
            "name": "Default",
            "rotation": "0.000000, 0.000000, 0.000000",
            "scale": "0.070000, 0.070000, 0.060000",
            "type": "brush"
        },
        {
            "location": "-1792.000000, -498.000000, 499.000000",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
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
            "mesh": "Sphere",
            "name": "Default",
            "rotation": "0.000000, 0.000000, 0.000000",
            "scale": "0.120000, 0.120000, 0.120000",
            "type": "brush"
        },
        {
            "location": "-1792.000000, -498.000000, 506.853760",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
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
            "mesh": "Torus",
            "name": "Default",
            "rotation": "0.000000, 0.000000, -120.000053",
            "scale": "0.070000, 0.070000, 0.320000",
            "type": "brush"
        },
        {
            "location": "-1751.689209, -498.179535, 519.853882",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "wall"
                },
                {
                    "group": 0,
                    "surface": "wall"
                }
            ],
            "mesh": "Ramp",
            "name": "Default",
            "rotation": "-46.090977, -75.778862, 178.833282",
            "scale": "0.570000, 0.020000, 0.020000",
            "type": "brush"
        },
        {
            "location": "-1812.000000, -463.000000, 519.853882",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "wall"
                },
                {
                    "group": 0,
                    "surface": "wall"
                }
            ],
            "mesh": "Ramp",
            "name": "Default",
            "rotation": "-46.091064, -75.778793, -61.166676",
            "scale": "0.570000, 0.020000, 0.020000",
            "type": "brush"
        },
        {
            "location": "-1792.000000, -498.000000, 510.853760",
            "materialSets": [
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
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "Torus",
            "name": "Default",
            "rotation": "0.000000, 0.000000, -120.000053",
            "scale": "0.080000, 0.080000, 0.080000",
            "type": "brush"
        },
        {
            "location": "-1792.000000, -498.000000, 511.853760",
            "materialSets": [
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
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "Torus",
            "name": "Default",
            "rotation": "0.000000, 0.000000, -120.000053",
            "scale": "0.080000, 0.080000, 0.080000",
            "type": "brush"
        },
        {
            "location": "-1792.000000, -498.000000, 514.853760",
            "materialSets": [
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
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "Torus",
            "name": "Default",
            "rotation": "0.000000, 0.000000, -120.000053",
            "scale": "0.080000, 0.080000, 0.080000",
            "type": "brush"
        },
        {
            "location": "-1792.000000, -498.000000, 512.853760",
            "materialSets": [
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
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "Torus",
            "name": "Default",
            "rotation": "0.000000, 0.000000, -120.000053",
            "scale": "0.080000, 0.080000, 0.080000",
            "type": "brush"
        },
        {
            "location": "-1812.784668, -485.999939, 467.853699",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "wall"
                },
                {
                    "group": 0,
                    "surface": "ramp"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "wall"
                },
                {
                    "group": 0,
                    "surface": "ramp"
                }
            ],
            "mesh": "DoubleRamp",
            "name": "Default",
            "rotation": "89.999878, 0.000000, -119.999969",
            "scale": "0.280000, 0.040000, 0.240000",
            "type": "brush"
        },
        {
            "location": "-1789.171631, -500.828461, 523.853760",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "ground"
                }
            ],
            "mesh": "DoubleRamp",
            "name": "Default",
            "rotation": "0.000000, 0.000000, 44.999939",
            "scale": "0.360000, 0.080000, 0.080000",
            "type": "brush"
        },
        {
            "location": "-1792.000000, -522.000000, 523.853699",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "ground"
                }
            ],
            "mesh": "DoubleRamp",
            "name": "Default",
            "rotation": "89.999931, 0.000000, 0.000000",
            "scale": "0.280000, 0.040000, 0.240000",
            "type": "brush"
        },
        {
            "location": "-1812.677002, -534.186523, 518.000000",
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
            "rotation": "-89.999878, 0.000007, 150.000092",
            "scale": "0.030000, 0.070000, 0.030000",
            "type": "brush"
        },
        {
            "location": "-1726.000000, -466.000000, 480.000000",
            "name": "SpawnPoint",
            "properties": [
                {
                    "name": "Name",
                    "value": ""
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
            "rotation": "0.000000, 0.000000, -179.999954",
            "scale": "0.166667, 0.166667, 0.166667",
            "type": "gameObject"
        },
        {
            "location": "-1750.323120, -497.813477, 518.000000",
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
            "rotation": "-89.999908, 0.000000, -89.999809",
            "scale": "0.030000, 0.070000, 0.030000",
            "type": "brush"
        },
        {
            "location": "192.000000, -320.000000, -144.000000",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "ramp"
                },
                {
                    "group": 1,
                    "surface": "ramp"
                },
                {
                    "group": 1,
                    "surface": "ramp"
                },
                {
                    "group": 1,
                    "surface": "ramp"
                }
            ],
            "mesh": "Sphere",
            "name": "Default",
            "rotation": "0.000000, 0.000000, 0.000000",
            "scale": "9.600000, 22.079994, 52.160000",
            "type": "brush"
        },
        {
            "location": "-1726.000000, -530.000000, 480.000000",
            "name": "SpawnPoint",
            "properties": [
                {
                    "name": "Name",
                    "value": ""
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
            "rotation": "0.000000, 0.000000, -179.999954",
            "scale": "0.166667, 0.166667, 0.166667",
            "type": "gameObject"
        },
        {
            "location": "-1854.000000, -562.000000, 480.000000",
            "name": "SpawnPoint",
            "properties": [
                {
                    "name": "Name",
                    "value": ""
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
            "rotation": "0.000000, 0.000000, -179.999954",
            "scale": "0.166667, 0.166667, 0.166667",
            "type": "gameObject"
        },
        {
            "location": "-1790.000000, -434.000000, 480.000000",
            "name": "SpawnPoint",
            "properties": [
                {
                    "name": "Name",
                    "value": ""
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
            "rotation": "0.000000, 0.000000, -179.999954",
            "scale": "0.166667, 0.166667, 0.166667",
            "type": "gameObject"
        },
        {
            "location": "-1823.177002, -516.000000, 518.853760",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "wall"
                },
                {
                    "group": 0,
                    "surface": "ramp"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "wall"
                },
                {
                    "group": 0,
                    "surface": "ramp"
                }
            ],
            "mesh": "DoubleRamp",
            "name": "Default",
            "rotation": "89.999878, 0.000000, -59.999931",
            "scale": "0.412500, 0.040000, 0.360000",
            "type": "brush"
        },
        {
            "location": "-1771.323120, -461.813477, 518.000000",
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
            "rotation": "-89.999878, 0.000000, -29.999886",
            "scale": "0.030000, 0.070000, 0.030000",
            "type": "brush"
        },
        {
            "location": "-1726.000000, -562.000000, 480.000000",
            "name": "SpawnPoint",
            "properties": [
                {
                    "name": "Name",
                    "value": ""
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
            "rotation": "0.000000, 0.000000, -179.999954",
            "scale": "0.166667, 0.166667, 0.166667",
            "type": "gameObject"
        },
        {
            "location": "-1771.000000, -534.000000, 518.000000",
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
            "rotation": "-89.999947, 0.000000, -149.999847",
            "scale": "0.030000, 0.070000, 0.030000",
            "type": "brush"
        },
        {
            "location": "-970.643433, 621.924988, -800.005737",
            "name": "Tree",
            "rotation": "0.000000, 0.000000, 135.000153",
            "scale": "9.196474, 9.449889, 10.812602",
            "type": "prop"
        },
        {
            "location": "-914.074951, -1425.356689, -800.005737",
            "name": "Tree",
            "rotation": "0.000000, 0.000000, 45.000183",
            "scale": "9.196474, 9.449889, 10.812602",
            "type": "prop"
        },
        {
            "location": "-3066.000000, -326.000000, -800.005737",
            "name": "Tree",
            "rotation": "0.000000, 0.000000, -89.999840",
            "scale": "9.196474, 9.449889, 10.812602",
            "type": "prop"
        },
        {
            "location": "-1758.000000, -562.000000, 480.000000",
            "name": "SpawnPoint",
            "properties": [
                {
                    "name": "Name",
                    "value": ""
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
            "rotation": "0.000000, 0.000000, -179.999954",
            "scale": "0.166667, 0.166667, 0.166667",
            "type": "gameObject"
        },
        {
            "location": "-1822.000000, -562.000000, 480.000000",
            "name": "SpawnPoint",
            "properties": [
                {
                    "name": "Name",
                    "value": ""
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
            "rotation": "0.000000, 0.000000, -179.999954",
            "scale": "0.166667, 0.166667, 0.166667",
            "type": "gameObject"
        },
        {
            "location": "-1854.000000, -466.000000, 480.000000",
            "name": "SpawnPoint",
            "properties": [
                {
                    "name": "Name",
                    "value": ""
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
            "rotation": "0.000000, 0.000000, -179.999954",
            "scale": "0.166667, 0.166667, 0.166667",
            "type": "gameObject"
        },
        {
            "location": "-2729.925293, 565.356628, -800.005737",
            "name": "Tree",
            "rotation": "0.000000, 0.000000, -134.999863",
            "scale": "9.196474, 9.449889, 10.812602",
            "type": "prop"
        },
        {
            "location": "-1782.000000, -1754.000000, -800.005737",
            "name": "Tree",
            "rotation": "0.000000, 0.000000, 0.000184",
            "scale": "9.196474, 9.449889, 10.812602",
            "type": "prop"
        },
        {
            "location": "-1822.000000, -434.000000, 480.000000",
            "name": "SpawnPoint",
            "properties": [
                {
                    "name": "Name",
                    "value": ""
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
            "rotation": "0.000000, 0.000000, -179.999954",
            "scale": "0.166667, 0.166667, 0.166667",
            "type": "gameObject"
        },
        {
            "location": "-1758.000000, -434.000000, 480.000000",
            "name": "SpawnPoint",
            "properties": [
                {
                    "name": "Name",
                    "value": ""
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
            "rotation": "0.000000, 0.000000, -179.999954",
            "scale": "0.166667, 0.166667, 0.166667",
            "type": "gameObject"
        },
        {
            "location": "-1726.000000, -434.000000, 480.000000",
            "name": "SpawnPoint",
            "properties": [
                {
                    "name": "Name",
                    "value": ""
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
            "rotation": "0.000000, 0.000000, -179.999954",
            "scale": "0.166667, 0.166667, 0.166667",
            "type": "gameObject"
        },
        {
            "location": "-1760.823120, -480.000000, 518.853760",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "wall"
                },
                {
                    "group": 0,
                    "surface": "ramp"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "wall"
                },
                {
                    "group": 0,
                    "surface": "ramp"
                }
            ],
            "mesh": "DoubleRamp",
            "name": "Default",
            "rotation": "89.999817, 0.000007, 120.000008",
            "scale": "0.412500, 0.040000, 0.360000",
            "type": "brush"
        },
        {
            "location": "-1854.000000, -434.000000, 480.000000",
            "name": "SpawnPoint",
            "properties": [
                {
                    "name": "Name",
                    "value": ""
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
            "rotation": "0.000000, 0.000000, -179.999954",
            "scale": "0.166667, 0.166667, 0.166667",
            "type": "gameObject"
        },
        {
            "location": "-1792.000000, -534.000000, 518.853760",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "wall"
                },
                {
                    "group": 0,
                    "surface": "ramp"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "wall"
                },
                {
                    "group": 0,
                    "surface": "ramp"
                }
            ],
            "mesh": "DoubleRamp",
            "name": "Default",
            "rotation": "89.999931, 0.000000, 0.000000",
            "scale": "0.412500, 0.040000, 0.360000",
            "type": "brush"
        },
        {
            "location": "-1726.000000, -498.000000, 480.000000",
            "name": "SpawnPoint",
            "properties": [
                {
                    "name": "Name",
                    "value": ""
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
            "rotation": "0.000000, 0.000000, -179.999954",
            "scale": "0.166667, 0.166667, 0.166667",
            "type": "gameObject"
        },
        {
            "location": "-1760.823120, -516.000000, 518.853760",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "ground"
                }
            ],
            "mesh": "DoubleRamp",
            "name": "Default",
            "rotation": "89.999809, 0.000000, 59.999916",
            "scale": "0.412500, 0.040000, 0.360000",
            "type": "brush"
        },
        {
            "location": "-1792.000000, -462.000000, 518.853760",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "wall"
                },
                {
                    "group": 0,
                    "surface": "ramp"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "wall"
                },
                {
                    "group": 0,
                    "surface": "ramp"
                }
            ],
            "mesh": "DoubleRamp",
            "name": "Default",
            "rotation": "89.999779, 0.000000, -179.999954",
            "scale": "0.412500, 0.040000, 0.360000",
            "type": "brush"
        },
        {
            "location": "-1785.999756, 1273.999878, -176.000000",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "wall"
                },
                {
                    "group": 0,
                    "surface": "ramp"
                },
                {
                    "group": 0,
                    "surface": "wall"
                },
                {
                    "group": 0,
                    "surface": "wall"
                },
                {
                    "group": 0,
                    "surface": "wall"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "0.000000, 0.000000, -89.999939",
            "scale": "15.360000, 15.359999, 0.160000",
            "type": "brush"
        },
        {
            "location": "-2673.356689, -1193.925049, -800.005737",
            "name": "Tree",
            "rotation": "0.000000, 0.000000, -44.999817",
            "scale": "9.196474, 9.449889, 10.812602",
            "type": "prop"
        },
        {
            "location": "-3321.999756, 1273.999878, -176.000000",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "wall"
                },
                {
                    "group": 0,
                    "surface": "ramp"
                },
                {
                    "group": 0,
                    "surface": "wall"
                },
                {
                    "group": 0,
                    "surface": "wall"
                },
                {
                    "group": 0,
                    "surface": "wall"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "0.000000, 0.000000, -89.999939",
            "scale": "15.360000, 15.359999, 0.160000",
            "type": "brush"
        },
        {
            "location": "-1785.999756, -262.000183, -176.000000",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "wall"
                },
                {
                    "group": 0,
                    "surface": "ramp"
                },
                {
                    "group": 0,
                    "surface": "wall"
                },
                {
                    "group": 0,
                    "surface": "wall"
                },
                {
                    "group": 0,
                    "surface": "wall"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "0.000000, 0.000000, -89.999939",
            "scale": "15.360000, 15.359999, 0.160000",
            "type": "brush"
        },
        {
            "location": "-1854.000000, -498.000000, 480.000000",
            "name": "SpawnPoint",
            "properties": [
                {
                    "name": "Name",
                    "value": ""
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
            "rotation": "0.000000, 0.000000, -179.999954",
            "scale": "0.166667, 0.166667, 0.166667",
            "type": "gameObject"
        },
        {
            "location": "-1861.999878, 957.999939, -800.005737",
            "name": "Tree",
            "rotation": "0.000000, 0.000000, -179.999817",
            "scale": "9.196474, 9.449889, 10.812602",
            "type": "prop"
        },
        {
            "location": "-1854.000000, -530.000000, 480.000000",
            "name": "SpawnPoint",
            "properties": [
                {
                    "name": "Name",
                    "value": ""
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
            "rotation": "0.000000, 0.000000, -179.999954",
            "scale": "0.166667, 0.166667, 0.166667",
            "type": "gameObject"
        },
        {
            "location": "-1833.677002, -498.186523, 518.000000",
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
            "rotation": "-89.999878, 0.000000, 90.000137",
            "scale": "0.030000, 0.070000, 0.030000",
            "type": "brush"
        },
        {
            "location": "-1813.000000, -462.000000, 518.000000",
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
            "rotation": "-89.999878, 0.000000, 30.000147",
            "scale": "0.030000, 0.070000, 0.030000",
            "type": "brush"
        },
        {
            "location": "-1823.177002, -480.000000, 518.853760",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "wall"
                },
                {
                    "group": 0,
                    "surface": "ramp"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "wall"
                },
                {
                    "group": 0,
                    "surface": "ramp"
                }
            ],
            "mesh": "DoubleRamp",
            "name": "Default",
            "rotation": "89.999878, 0.000000, -119.999969",
            "scale": "0.412500, 0.040000, 0.360000",
            "type": "brush"
        }
    ],
    "version": "0.0.7"
}