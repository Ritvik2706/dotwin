Name=Cockroach Simulator [with easter eggs]
PlayerCharacters=Counter-Striker
BotCharacters=egg10.bot
IsChallenge=true
Timelimit=240.0
PlayerProfile=Counter-Striker
AddedBots=egg10.bot;egg10.bot;egg10.bot;egg10.bot;egg10.bot;egg10.bot;egg10.bot;egg10.bot;egg10.bot;egg10.bot;egg10.bot;egg10.bot;egg10.bot;egg10.bot;egg10.bot
PlayerMaxLives=0
BotMaxLives=1;1;1;1;1;1;1;1;1;1;1;1;1;1;1
PlayerTeam=1
BotTeams=2;2;2;2;2;2;2;2;2;2;2;2;2;2;2
ScoreToWin=15.0
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
MultSqrtAcc=true
EnableOverDamage=true
MapName=multilayerwallgigadense.json
MapScale=3.8125
BlockProjectilePredictors=true
BlockCheats=true
InvinciblePlayer=true
InvincibleBots=false
Timescale=1.0
BlockHealthbars=true
TimeRefilledByKill=0.0
BlockHitMarkers=true
BlockHitSounds=true
BlockMissSounds=true
BlockFCT=true
LockFOVRange=true
LockedFOVMin=60.0
LockedFOVMax=120.0
LockedFOVScale=Clamped Horizontal
EndChallengeAfterKills=0.0
EndChallengeAfterDamage=0.0
GameTag=Cockroach Simulator
WeaponHeroTag=semi-auto hitscan
AimTypeTag=Clicking
AimSubTypeTag=Static
AimTypeFlicking=true
AimTypeProjectile=false
AimTypePlayerMovement=false
DifficultyTag=1
AuthorsTag=@wa11p1per
Description=Find all the easter eggs! There are only 15.[nl]With each update, i will be adding more and more easter eggs
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
Name=egg10
DodgeProfileNames=Mimic
DodgeProfileWeights=1.0
DodgeProfileMaxChangeTime=5.0
DodgeProfileMinChangeTime=1.0
WeaponsProfileNames=;;;;;;;
WeaponProfileWeights=1.0;1.0;1.0;1.0;1.0;1.0;1.0;1.0
AimingProfileNames=Default;Default;Default;Default;Default;Default;Default;Default
WeaponSwitchTime=3.0
UseWeapons=false
CharacterProfile=main egg1
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
Name=Counter-Striker
MaxHealth=100.0
WeaponProfileNames=LG;;;;;;;
MinRespawnDelay=0.0001
MaxRespawnDelay=0.0001
StepUpHeight=75.0
CrouchHeightModifier=0.75
CrouchAnimationSpeed=1.0
CameraOffset=X=0.000 Y=0.000 Z=0.000
HeadshotOnly=false
DamageKnockbackFactor=1.0
MaxSpeed=1100.0
MaxCrouchSpeed=250.0
Acceleration=6000.0
Friction=7.5
BrakingFrictionFactor=1.25
JumpVelocity=2400.0
Gravity=4.0
AirControl=0.34
CanCrouch=true
CanPogoJump=false
CanCrouchInAir=true
CanJumpFromCrouch=true
// Note: the color channel values are interpreted as 0.0 (0%) to 1.0 (100%) going over 1.0 will start to produce a glow effect when the user is in HDR mode (SceneColor is set to "Medium" or higher)
EnemyBodyColor=X=0.546 Y=0.776 Z=0.546
EnemyBodyColorOnHit=X=1.000 Y=1.000 Z=1.000
EnemyBodyColorOnLookAt=X=1.000 Y=1.000 Z=1.000
EnemyHeadColor=X=0.608 Y=0.463 Z=0.314
EnemyHeadColorOnHit=X=1.000 Y=1.000 Z=1.000
EnemyHeadColorOnLookAt=X=1.000 Y=1.000 Z=1.000
TeamBodyColor=X=0.000 Y=0.000 Z=0.771
TeamHeadColor=X=0.149 Y=0.542 Z=1.000
MainBBType=Cylindrical
MainBBHeight=30.0
MainBBRadius=15.0
MainBBHasHead=true
MainBBHeadRadius=25.0
MainBBHeadOffset=0.0
MainBBHide=false
ProjBBType=Cylindrical
ProjBBHeight=30.0
ProjBBRadius=15.0
ProjBBHasHead=true
ProjBBHeadRadius=25.0
ProjBBHeadOffset=0.0
ProjBBHide=true
BlockSelfDamage=true
InvinciblePlayer=false
InvincibleBots=false
BlockTeamDamage=true
HasJetpack=false
JetpackActivationDelay=0.5
JetpackFullFuelTime=1000.0
JetpackFuelIncPerSec=100.0
JetpackFuelRegensInAir=true
JetpackThrust=6000.0
JetpackMaxZVelocity=600.0
JetpackAirControlWithThrust=0.25
AirJumpCount=0
AirJumpVelocity=800.0
AbilityProfileNames=;;;
HideWeapon=false
AerialFriction=0.0
StrafeSpeedMult=1.0
BackSpeedMult=1.0
RespawnInvulnTime=0.0
BlockedSpawnRadius=256.0
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
CharacterModel=None
CharacterSkin=Default
MeshHitDetection=false
SpawnOffsetMin=X=0.000 Y=0.000 Z=0.000
SpawnOffsetMax=X=0.000 Y=0.000 Z=0.000
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
Name=main egg1
MaxHealth=1.0
WeaponProfileNames=;;;;;;;
MinRespawnDelay=0.001
MaxRespawnDelay=0.001
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
MainBBHeight=52.0
MainBBRadius=19.0
MainBBHasHead=false
MainBBHeadRadius=0.1
MainBBHeadOffset=0.0
MainBBHide=true
ProjBBType=Spheroid
ProjBBHeight=66.0
ProjBBRadius=24.0
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
BrakingDeceleration=2048.0
TerminalVelocity=0.0
CharacterModel=Stylized Shape
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
Name=Mimic
MaxTargetDistance=2500.0
MinTargetDistance=750.0
ToggleLeftRight=true
ToggleForwardBack=false
MinLRTimeChange=0.2
MaxLRTimeChange=0.5
MinFBTimeChange=0.2
MaxFBTimeChange=0.5
DamageReactionChangesDirection=true
DamageReactionChanceToIgnore=0.5
DamageReactionMinimumDelay=0.125
DamageReactionMaximumDelay=0.25
DamageReactionCooldown=1.0
DamageReactionThreshold=0.0
DamageReactionResetTimer=0.0
JumpFrequency=0.5
CrouchInAirFrequency=0.0
CrouchOnGroundFrequency=0.0
TargetStrafeOverride=Mimic
TargetStrafeMinDelay=0.125
TargetStrafeMaxDelay=0.25
MinProfileChangeTime=0.0
MaxProfileChangeTime=0.0
MinCrouchTime=0.3
MaxCrouchTime=0.6
MinJumpTime=0.3
MaxJumpTime=0.6
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
                "material": "MI_WA_PureColor",
                "pack": "Default",
                "properties": [
                    {
                        "name": "Tint",
                        "value": "86858aff"
                    },
                    {
                        "name": "Scale",
                        "value": 10.0
                    },
                    {
                        "name": "Roughness",
                        "value": 0.5679611563682556
                    },
                    {
                        "name": "Metallic",
                        "value": 0.0
                    },
                    {
                        "name": "FullBright",
                        "value": 0.6898359060287476
                    }
                ]
            },
            "ground": {
                "material": "MI_WA_Paint_B",
                "pack": "Default",
                "properties": [
                    {
                        "name": "Tint",
                        "value": "ffffff00"
                    },
                    {
                        "name": "Scale",
                        "value": 6.124026298522949
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
                "material": "MI_WA_WoodFloorWalnut",
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
                "material": "MI_WA_PureColor",
                "pack": "Default",
                "properties": [
                    {
                        "name": "Tint",
                        "value": "0"
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
                "material": "MI_WA_BigConcreteTiles",
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
                        "value": 1.0
                    },
                    {
                        "name": "Metallic",
                        "value": 0.9861111044883728
                    },
                    {
                        "name": "FullBright",
                        "value": 1.0
                    }
                ]
            },
            "ground": {
                "material": "MI_WA_WoodParquet",
                "pack": "Default",
                "properties": [
                    {
                        "name": "Tint",
                        "value": "945e43ff"
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
                        "value": 1.0
                    },
                    {
                        "name": "FullBright",
                        "value": 0.0
                    }
                ]
            },
            "ramp": {
                "material": "MI_WA_SciFiPaddingB",
                "pack": "Default",
                "properties": [
                    {
                        "name": "Tint",
                        "value": "ff0000ff"
                    },
                    {
                        "name": "Scale",
                        "value": 1.0
                    },
                    {
                        "name": "Roughness",
                        "value": 0.3689320385456085
                    },
                    {
                        "name": "Metallic",
                        "value": 0.0
                    },
                    {
                        "name": "FullBright",
                        "value": 0.0
                    }
                ]
            },
            "wall": {
                "material": "MI_WA_MetalSheet",
                "pack": "Default",
                "properties": [
                    {
                        "name": "Tint",
                        "value": "ffffffff"
                    },
                    {
                        "name": "Scale",
                        "value": 0.9182542562484741
                    },
                    {
                        "name": "Roughness",
                        "value": 0.21759259700775146
                    },
                    {
                        "name": "Metallic",
                        "value": 0.8366289734840393
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
            "location": "-3567.998535, -2144.000000, 399.999786",
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
                    "value": "Counter-Striker"
                }
            ],
            "rotation": "0.000000, 0.000000, 179.999954",
            "scale": "0.262295, 0.262295, 0.262295",
            "type": "gameObject"
        },
        {
            "location": "-9111.996094, 3231.999023, 903.999695",
            "name": "Crate",
            "rotation": "0.000000, 0.000000, 45.000031",
            "scale": "0.476728, 0.357614, 0.480000",
            "type": "prop"
        },
        {
            "location": "-9095.996094, 2951.999023, 399.999817",
            "name": "Crate",
            "rotation": "0.000000, 0.000000, 15.000221",
            "scale": "0.476728, 0.635759, 1.000000",
            "type": "prop"
        },
        {
            "location": "-9175.995117, 1567.999390, 935.901672",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
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
            "mesh": "Cylinder",
            "name": "Default",
            "rotation": "104.036270, 90.000000, 14.036263",
            "scale": "0.080000, 0.080000, 0.320000",
            "type": "brush"
        },
        {
            "location": "-9095.996094, 2751.999023, 399.999817",
            "name": "Crate",
            "rotation": "0.000000, 0.000000, 0.000000",
            "scale": "0.476728, 0.953638, 1.000000",
            "type": "prop"
        },
        {
            "location": "-2943.999023, -863.999756, 391.999756",
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
                    "value": "main egg1"
                }
            ],
            "rotation": "0.000000, 0.000000, 0.000000",
            "scale": "0.262295, 0.262295, 0.262295",
            "type": "gameObject"
        },
        {
            "location": "-3111.999023, 1151.999512, 791.999634",
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
                    "value": "main egg1"
                }
            ],
            "rotation": "0.000000, 0.000000, 0.000000",
            "scale": "0.262295, 0.262295, 0.262295",
            "type": "gameObject"
        },
        {
            "location": "-7295.998047, -2831.999023, 399.999756",
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
                    "value": "main egg1"
                }
            ],
            "rotation": "0.000000, 0.000000, 0.000000",
            "scale": "0.262295, 0.262295, 0.262295",
            "type": "gameObject"
        },
        {
            "location": "-6759.998047, -2415.999023, 431.999756",
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
                    "value": "main egg1"
                }
            ],
            "rotation": "0.000000, 0.000000, 0.000000",
            "scale": "0.262295, 0.262295, 0.262295",
            "type": "gameObject"
        },
        {
            "location": "-2935.999023, -735.999756, 815.999634",
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
                    "value": "main egg1"
                }
            ],
            "rotation": "0.000000, 0.000000, 0.000000",
            "scale": "0.262295, 0.262295, 0.262295",
            "type": "gameObject"
        },
        {
            "location": "-9175.995117, 1599.999390, 1119.901855",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
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
            "mesh": "Cylinder",
            "name": "Default",
            "rotation": "104.036270, 90.000000, 14.036263",
            "scale": "0.080000, 0.080000, 0.320000",
            "type": "brush"
        },
        {
            "location": "-8216.000000, 927.999756, 1215.999390",
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
                    "value": "main egg1"
                }
            ],
            "rotation": "0.000000, 0.000000, 0.000000",
            "scale": "0.262295, 0.262295, 0.262295",
            "type": "gameObject"
        },
        {
            "location": "-5111.998047, 215.999939, 783.999634",
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
                    "value": "main egg1"
                }
            ],
            "rotation": "0.000000, 0.000000, 0.000000",
            "scale": "0.262295, 0.262295, 0.262295",
            "type": "gameObject"
        },
        {
            "location": "-2919.999023, -1967.999512, 407.999756",
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
                    "value": "main egg1"
                }
            ],
            "rotation": "0.000000, 0.000000, 0.000000",
            "scale": "0.262295, 0.262295, 0.262295",
            "type": "gameObject"
        },
        {
            "location": "-9177.995117, 1221.999390, 516.901855",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
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
            "mesh": "Cylinder",
            "name": "Default",
            "rotation": "104.036270, -90.000000, -14.036263",
            "scale": "0.240000, 0.240000, 0.320000",
            "type": "brush"
        },
        {
            "location": "-9111.996094, 2735.999023, 911.999756",
            "name": "Crate",
            "rotation": "0.000000, 0.000000, 15.000273",
            "scale": "0.476728, 0.635759, 1.000000",
            "type": "prop"
        },
        {
            "location": "-9175.995117, 1244.999390, 511.901703",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
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
            "mesh": "Cylinder",
            "name": "Default",
            "rotation": "0.000400, -60.000061, 89.999710",
            "scale": "0.060000, 0.060000, 3.840000",
            "type": "brush"
        },
        {
            "location": "-8544.000000, 719.999756, 711.999634",
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
                    "value": "main egg1"
                }
            ],
            "rotation": "0.000000, 0.000000, 0.000000",
            "scale": "0.262295, 0.262295, 0.262295",
            "type": "gameObject"
        },
        {
            "location": "-9159.996094, -2495.999023, 775.999634",
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
                    "value": "main egg1"
                }
            ],
            "rotation": "0.000000, 0.000000, 0.000000",
            "scale": "0.262295, 0.262295, 0.262295",
            "type": "gameObject"
        },
        {
            "location": "-8831.996094, 1575.999512, 1223.999390",
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
                    "value": "main egg1"
                }
            ],
            "rotation": "0.000000, 0.000000, 0.000000",
            "scale": "0.262295, 0.262295, 0.262295",
            "type": "gameObject"
        },
        {
            "location": "-9111.996094, 2719.999023, 655.999695",
            "name": "Crate",
            "rotation": "0.000000, 0.000000, 30.000053",
            "scale": "0.476728, 0.476819, 0.480000",
            "type": "prop"
        },
        {
            "location": "-9159.996094, 2783.999023, 1167.999390",
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
                    "value": "main egg1"
                }
            ],
            "rotation": "0.000000, 0.000000, 0.000000",
            "scale": "0.262295, 0.262295, 0.262295",
            "type": "gameObject"
        },
        {
            "location": "-7071.997070, -3023.998535, 319.999817",
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
            "scale": "42.079975, 42.079971, 0.640000",
            "type": "brush"
        },
        {
            "location": "-9247.994141, -3023.998535, 319.999817",
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
            "scale": "22.079988, 63.999969, 0.640000",
            "type": "brush"
        },
        {
            "location": "-7071.997070, 1247.999146, 319.999817",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 1,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "-89.999939, 0.000000, 0.000000",
            "scale": "20.480000, 15.199992, 0.640000",
            "type": "brush"
        },
        {
            "location": "-7071.997070, 1247.999146, 319.999817",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ground"
                },
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
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "-89.999939, 0.000000, 89.999947",
            "scale": "21.919989, 15.199992, 0.640000",
            "type": "brush"
        },
        {
            "location": "-2799.998535, 1183.999146, 319.999817",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "-89.999878, 0.000000, -89.999947",
            "scale": "2.560000, 15.199992, 0.640000",
            "type": "brush"
        },
        {
            "location": "-2799.998535, -2767.998535, 319.999817",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "-89.999878, 0.000000, -89.999947",
            "scale": "2.560000, 15.199992, 0.640000",
            "type": "brush"
        },
        {
            "location": "-7071.997070, -887.999817, 319.999817",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "-89.999939, 0.000000, 0.000000",
            "scale": "2.480000, 15.199992, 0.640000",
            "type": "brush"
        },
        {
            "location": "-7071.997070, 143.999802, 319.999817",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "-89.999939, 0.000000, 0.000000",
            "scale": "2.480000, 15.199992, 0.640000",
            "type": "brush"
        },
        {
            "location": "-7007.997070, -760.000244, 319.999817",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "-89.999878, 0.000000, -89.999947",
            "scale": "1.280000, 15.199992, 0.640000",
            "type": "brush"
        },
        {
            "location": "-7007.997070, 79.999741, 319.999817",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "-89.999878, 0.000000, -89.999947",
            "scale": "1.120000, 15.199992, 0.640000",
            "type": "brush"
        },
        {
            "location": "-7007.997070, 79.999741, 1841.999146",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "-179.881226, -90.000000, -0.118736",
            "scale": "3.200000, 10.299997, 0.640000",
            "type": "brush"
        },
        {
            "location": "-7071.997070, 89.999870, 319.999817",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 1,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "-89.999939, 0.000000, 89.999947",
            "scale": "11.319997, 15.199992, 0.640000",
            "type": "brush"
        },
        {
            "location": "-5085.997070, 89.999870, 319.999817",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "-89.999939, 0.000000, 89.999947",
            "scale": "11.120000, 15.199992, 0.640000",
            "type": "brush"
        },
        {
            "location": "-5271.997070, 143.999802, 319.999817",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "-89.999939, 0.000000, 0.000000",
            "scale": "2.480000, 15.199992, 0.640000",
            "type": "brush"
        },
        {
            "location": "-6831.997070, 143.999802, 319.999817",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "-89.999939, 0.000000, 0.000000",
            "scale": "2.480000, 15.199992, 0.640000",
            "type": "brush"
        },
        {
            "location": "-6113.997070, 143.999802, 319.999817",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "-89.999939, 0.000000, 0.000000",
            "scale": "2.480000, 15.199992, 0.640000",
            "type": "brush"
        },
        {
            "location": "-5965.997070, 143.999802, 319.999817",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "-89.999939, 0.000000, 0.000000",
            "scale": "2.480000, 15.199992, 0.640000",
            "type": "brush"
        },
        {
            "location": "-5731.997070, 143.999802, 319.999817",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "-89.999939, 0.000000, 0.000000",
            "scale": "2.480000, 15.199992, 0.640000",
            "type": "brush"
        },
        {
            "location": "-5507.997070, 143.999802, 319.999817",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "-89.999939, 0.000000, 0.000000",
            "scale": "2.480000, 15.199992, 0.640000",
            "type": "brush"
        },
        {
            "location": "-7071.997070, -3023.998535, 319.999817",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "-89.999939, 0.000000, 89.999947",
            "scale": "21.919989, 15.199992, 0.640000",
            "type": "brush"
        },
        {
            "location": "-6855.997070, -887.999817, 319.999817",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "-89.999939, 0.000000, 0.000000",
            "scale": "2.480000, 15.199992, 0.640000",
            "type": "brush"
        },
        {
            "location": "-6639.997070, -887.999817, 319.999817",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "-89.999939, 0.000000, 0.000000",
            "scale": "2.480000, 15.199992, 0.640000",
            "type": "brush"
        },
        {
            "location": "-5027.997070, 143.999802, 319.999817",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "-89.999939, 0.000000, 0.000000",
            "scale": "2.480000, 15.199992, 0.640000",
            "type": "brush"
        },
        {
            "location": "-4842.997070, -166.000153, 319.999817",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "-89.999939, 0.000014, 89.999947",
            "scale": "2.480000, 15.199992, 0.640000",
            "type": "brush"
        },
        {
            "location": "-4842.997070, -897.999817, 319.999817",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "-89.999939, 0.000014, 89.999947",
            "scale": "2.480000, 15.199992, 0.640000",
            "type": "brush"
        },
        {
            "location": "-5025.997070, -887.999817, 319.999817",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "-89.999939, 0.000000, 0.000000",
            "scale": "2.480000, 15.199992, 0.640000",
            "type": "brush"
        },
        {
            "location": "-4777.997070, 79.999741, 1839.999146",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "0.019806, -90.000000, 179.980225",
            "scale": "4.400000, 10.299997, 0.640000",
            "type": "brush"
        },
        {
            "location": "-2799.998535, 1049.999268, 319.999817",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "-89.999878, 0.000000, -89.999947",
            "scale": "2.560000, 15.199992, 0.640000",
            "type": "brush"
        },
        {
            "location": "-2799.998535, 281.999695, 319.999817",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "-89.999878, 0.000000, -89.999947",
            "scale": "2.560000, 15.199992, 0.640000",
            "type": "brush"
        },
        {
            "location": "-4785.997070, -887.999817, 319.999817",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "-89.999939, 0.000000, 0.000000",
            "scale": "2.480000, 15.199992, 0.640000",
            "type": "brush"
        },
        {
            "location": "-4545.997070, -887.999817, 319.999817",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "-89.999939, 0.000000, 0.000000",
            "scale": "2.480000, 15.199992, 0.640000",
            "type": "brush"
        },
        {
            "location": "-4306.000000, -887.999817, 319.999817",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "-89.999939, 0.000000, 0.000000",
            "scale": "2.480000, 15.199992, 0.640000",
            "type": "brush"
        },
        {
            "location": "-4065.998535, -887.999817, 319.999817",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "-89.999939, 0.000000, 0.000000",
            "scale": "2.480000, 15.199992, 0.640000",
            "type": "brush"
        },
        {
            "location": "-3825.998535, -887.999817, 319.999817",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "-89.999939, 0.000000, 0.000000",
            "scale": "2.480000, 15.199992, 0.640000",
            "type": "brush"
        },
        {
            "location": "-3585.998535, -887.999817, 319.999817",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "-89.999939, 0.000000, 0.000000",
            "scale": "2.480000, 15.199992, 0.640000",
            "type": "brush"
        },
        {
            "location": "-3345.998535, -887.999817, 319.999817",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "-89.999939, 0.000000, 0.000000",
            "scale": "2.480000, 15.199992, 0.640000",
            "type": "brush"
        },
        {
            "location": "-3105.998535, -887.999817, 319.999817",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "-89.999939, 0.000000, 0.000000",
            "scale": "2.480000, 15.199992, 0.640000",
            "type": "brush"
        },
        {
            "location": "-3105.998535, -3023.998779, 319.999817",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "-89.999939, 0.000000, 0.000000",
            "scale": "2.480000, 15.199992, 0.640000",
            "type": "brush"
        },
        {
            "location": "-3233.998535, -3023.998779, 319.999817",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "-89.999939, 0.000000, 0.000000",
            "scale": "2.480000, 15.199992, 0.640000",
            "type": "brush"
        },
        {
            "location": "-3361.998535, -3023.998779, 319.999817",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "-89.999939, 0.000000, 0.000000",
            "scale": "2.480000, 15.199992, 0.640000",
            "type": "brush"
        },
        {
            "location": "-7073.997070, -3023.998779, 319.999817",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "-89.999939, 0.000000, 0.000000",
            "scale": "2.480000, 15.199992, 0.640000",
            "type": "brush"
        },
        {
            "location": "-6945.997070, -3023.998779, 319.999817",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "-89.999939, 0.000000, 0.000000",
            "scale": "2.480000, 15.199992, 0.640000",
            "type": "brush"
        },
        {
            "location": "-6817.997070, -3023.998779, 319.999817",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "-89.999939, 0.000000, 0.000000",
            "scale": "2.480000, 15.199992, 0.640000",
            "type": "brush"
        },
        {
            "location": "-5153.997070, -3023.998779, 319.999817",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "-89.999939, 0.000000, 0.000000",
            "scale": "2.480000, 15.199992, 0.640000",
            "type": "brush"
        },
        {
            "location": "-5025.997070, -3023.998779, 319.999817",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "-89.999939, 0.000000, 0.000000",
            "scale": "2.480000, 15.199992, 0.640000",
            "type": "brush"
        },
        {
            "location": "-6689.997070, -3023.998779, 319.999817",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "-89.999939, 0.000000, 0.000000",
            "scale": "2.480000, 15.199992, 0.640000",
            "type": "brush"
        },
        {
            "location": "-6433.997070, -3023.998779, 319.999817",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "-89.999939, 0.000000, 0.000000",
            "scale": "2.480000, 15.199992, 0.640000",
            "type": "brush"
        },
        {
            "location": "-6561.997070, -3023.998779, 319.999817",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "-89.999939, 0.000000, 0.000000",
            "scale": "2.480000, 15.199992, 0.640000",
            "type": "brush"
        },
        {
            "location": "-3489.998535, -3023.998779, 319.999817",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "-89.999939, 0.000000, 0.000000",
            "scale": "2.480000, 15.199992, 0.640000",
            "type": "brush"
        },
        {
            "location": "-3617.998535, -3023.998779, 319.999817",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "-89.999939, 0.000000, 0.000000",
            "scale": "2.480000, 15.199992, 0.640000",
            "type": "brush"
        },
        {
            "location": "-3745.998535, -3023.998779, 319.999817",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "-89.999939, 0.000000, 0.000000",
            "scale": "2.480000, 15.199992, 0.640000",
            "type": "brush"
        },
        {
            "location": "-3873.998535, -3023.998779, 319.999817",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "-89.999939, 0.000000, 0.000000",
            "scale": "2.480000, 15.199992, 0.640000",
            "type": "brush"
        },
        {
            "location": "-6305.997070, -3023.998779, 319.999817",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "-89.999939, 0.000000, 0.000000",
            "scale": "2.480000, 15.199992, 0.640000",
            "type": "brush"
        },
        {
            "location": "-5153.997070, -3023.998779, 319.999817",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "-89.999939, 90.000000, 0.000000",
            "scale": "2.480000, 15.199992, 0.640000",
            "type": "brush"
        },
        {
            "location": "-3617.998535, -3023.998779, 319.999817",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "-116.564972, 90.000000, -26.565033",
            "scale": "2.480000, 15.199992, 0.640000",
            "type": "brush"
        },
        {
            "location": "-5153.997070, -3023.998779, 1599.999390",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "-116.564972, 90.000000, -26.565033",
            "scale": "2.480000, 15.199992, 0.640000",
            "type": "brush"
        },
        {
            "location": "-3745.998535, -3023.998779, 1599.999390",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "-89.999939, 90.000000, 0.000000",
            "scale": "2.480000, 15.199992, 0.640000",
            "type": "brush"
        },
        {
            "location": "-7313.997070, -3023.998779, 319.999817",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "-89.999939, 0.000000, 0.000000",
            "scale": "2.480000, 15.199992, 0.640000",
            "type": "brush"
        },
        {
            "location": "-9233.994141, -3023.998779, 319.999817",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "-89.999939, 0.000000, 0.000000",
            "scale": "2.480000, 15.199992, 0.640000",
            "type": "brush"
        },
        {
            "location": "-9105.994141, -3023.998779, 319.999817",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "-89.999939, 0.000000, 0.000000",
            "scale": "2.480000, 15.199992, 0.640000",
            "type": "brush"
        },
        {
            "location": "-8977.994141, -3023.998779, 319.999817",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "-89.999939, 0.000000, 0.000000",
            "scale": "2.480000, 15.199993, 0.640000",
            "type": "brush"
        },
        {
            "location": "-8849.994141, -3023.998779, 319.999817",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "-89.999939, 0.000000, 0.000000",
            "scale": "2.480000, 15.199992, 0.640000",
            "type": "brush"
        },
        {
            "location": "-8722.000000, -3023.998779, 319.999817",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "-89.999939, 0.000000, 0.000000",
            "scale": "2.480000, 15.199992, 0.640000",
            "type": "brush"
        },
        {
            "location": "-7441.997070, -3023.998779, 319.999817",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "-89.999939, 0.000000, 0.000000",
            "scale": "2.480000, 15.199992, 0.640000",
            "type": "brush"
        },
        {
            "location": "-8594.000000, -3023.998779, 319.999817",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "-89.999939, 0.000000, 0.000000",
            "scale": "2.480000, 15.199992, 0.640000",
            "type": "brush"
        },
        {
            "location": "-7329.997070, -3023.998779, 319.999817",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "-116.564972, 90.000000, -26.565033",
            "scale": "2.480000, 15.199992, 0.640000",
            "type": "brush"
        },
        {
            "location": "-7329.997070, -3023.998779, 1599.999390",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "-89.999939, 90.000000, 0.000000",
            "scale": "2.480000, 15.199992, 0.640000",
            "type": "brush"
        },
        {
            "location": "-9247.994141, -3023.998535, 319.999817",
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
                    "surface": "ground"
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
                    "surface": "ground"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "-89.999939, 0.000000, 89.999947",
            "scale": "21.919989, 15.199992, 0.640000",
            "type": "brush"
        },
        {
            "location": "-9247.994141, -975.999634, 319.999817",
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
                    "surface": "ground"
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
                    "surface": "ground"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "-89.999939, 0.000000, 89.999947",
            "scale": "21.919989, 15.199992, 0.640000",
            "type": "brush"
        },
        {
            "location": "-9247.994141, 1199.999268, 319.999817",
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
                    "surface": "ceiling"
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
                    "surface": "ground"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "-89.999939, 0.000000, 89.999947",
            "scale": "14.119994, 15.199992, 0.640000",
            "type": "brush"
        },
        {
            "location": "-9183.994141, 2623.998535, 390.999817",
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
                    "group": 0,
                    "surface": "ground"
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
                    "group": 0,
                    "surface": "ground"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "-179.999939, 0.000000, 0.000000",
            "scale": "12.639999, 15.199992, 0.640000",
            "type": "brush"
        },
        {
            "location": "-2799.998535, -294.000122, 319.999817",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "0.007724, 90.000000, 0.007541",
            "scale": "2.560000, 15.199992, 0.640000",
            "type": "brush"
        },
        {
            "location": "-2799.998535, -949.999756, 319.999817",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "-0.019470, 90.000000, -0.019671",
            "scale": "2.560000, 15.199992, 0.640000",
            "type": "brush"
        },
        {
            "location": "-2799.998535, -294.000122, 1583.999268",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "-0.019470, 90.000000, -0.019671",
            "scale": "2.560000, 15.199992, 0.640000",
            "type": "brush"
        },
        {
            "location": "-2799.998535, 25.999861, 319.999817",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "-89.999878, 0.000000, -89.999947",
            "scale": "9.759999, 15.199992, 0.640000",
            "type": "brush"
        },
        {
            "location": "-9183.994141, 1247.999146, 319.999817",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "-89.999939, 0.000000, 0.000000",
            "scale": "2.560000, 15.199992, 3.039999",
            "type": "brush"
        },
        {
            "location": "-8143.997070, 1247.999146, 319.999817",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "-89.999939, 0.000000, 0.000000",
            "scale": "2.560000, 15.199992, 3.039999",
            "type": "brush"
        },
        {
            "location": "-8400.000000, 1247.999146, 319.999817",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "-89.999939, 0.000000, 0.000000",
            "scale": "2.560000, 15.199992, 3.039999",
            "type": "brush"
        },
        {
            "location": "-8624.000000, 1247.999146, 319.999817",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "-89.999939, 0.000000, 0.000000",
            "scale": "2.560000, 15.199992, 3.039999",
            "type": "brush"
        },
        {
            "location": "-8799.994141, 1247.999146, 319.999817",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "-89.999939, 0.000000, 0.000000",
            "scale": "2.560000, 15.199992, 3.039999",
            "type": "brush"
        },
        {
            "location": "-9023.994141, 1247.999146, 319.999817",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "-89.999939, 0.000000, 0.000000",
            "scale": "2.560000, 15.199992, 3.039999",
            "type": "brush"
        },
        {
            "location": "-2799.998535, -1813.999390, 319.999817",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "-89.999878, 0.000000, -89.999947",
            "scale": "9.759999, 15.199992, 0.640000",
            "type": "brush"
        },
        {
            "location": "-2799.998535, -869.999756, 319.999817",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "-89.999878, 0.000000, -89.999947",
            "scale": "9.759999, 15.199992, 0.640000",
            "type": "brush"
        },
        {
            "location": "-9183.994141, 2623.998535, 319.999817",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 1,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "-89.999939, 0.000000, 0.000000",
            "scale": "12.639999, 15.199992, 0.640000",
            "type": "brush"
        },
        {
            "location": "-7887.997070, 2623.998535, 319.999817",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 1,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "-89.999878, 0.000000, -89.999947",
            "scale": "2.560000, 15.199992, 0.640000",
            "type": "brush"
        },
        {
            "location": "-7887.997070, 1503.999268, 319.999817",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 1,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "-89.999878, 0.000000, -89.999947",
            "scale": "2.560000, 15.199992, 0.640000",
            "type": "brush"
        },
        {
            "location": "-7887.997070, 1759.999390, 319.999817",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 1,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "-89.999878, 0.000000, -89.999947",
            "scale": "2.560000, 15.199992, 0.640000",
            "type": "brush"
        },
        {
            "location": "-7887.997070, 2527.998535, 319.999817",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ground"
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
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "-89.999878, 0.000000, -89.999947",
            "scale": "2.560000, 15.199992, 0.640000",
            "type": "brush"
        },
        {
            "location": "-7887.997070, 2527.998535, 1839.999268",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 1,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "-179.881226, -90.000000, -0.118736",
            "scale": "2.560000, 15.199992, 0.640000",
            "type": "brush"
        },
        {
            "location": "-4842.997070, -646.000183, 319.999817",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ramp"
                },
                {
                    "group": 0,
                    "surface": "ramp"
                },
                {
                    "group": 0,
                    "surface": "ramp"
                },
                {
                    "group": 0,
                    "surface": "ramp"
                },
                {
                    "group": 0,
                    "surface": "ramp"
                },
                {
                    "group": 0,
                    "surface": "ramp"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "-89.999947, 0.000027, 44.999908",
            "scale": "4.679997, 10.879994, 0.320000",
            "type": "brush"
        },
        {
            "location": "-2799.998535, -294.000122, 1327.999268",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "0.020212, 90.000000, 0.019999",
            "scale": "2.560000, 15.199992, 0.640000",
            "type": "brush"
        },
        {
            "location": "-6582.997070, 125.999763, 319.999817",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ramp"
                },
                {
                    "group": 0,
                    "surface": "ramp"
                },
                {
                    "group": 0,
                    "surface": "ramp"
                },
                {
                    "group": 0,
                    "surface": "ramp"
                },
                {
                    "group": 0,
                    "surface": "ramp"
                },
                {
                    "group": 0,
                    "surface": "ramp"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "-89.999878, 0.000027, -30.000126",
            "scale": "4.679997, 10.879994, 0.320000",
            "type": "brush"
        },
        {
            "location": "-4531.997070, -399.999817, 760.499634",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
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
            "mesh": "Pipe",
            "name": "Default",
            "rotation": "-89.999939, 0.000000, 0.000000",
            "scale": "1.280000, 2.400000, 1.280000",
            "type": "brush"
        },
        {
            "location": "-4571.997070, -359.999817, 760.499634",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
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
            "mesh": "Pipe",
            "name": "Default",
            "rotation": "-89.999939, 0.000000, 0.000000",
            "scale": "1.280000, 2.400000, 1.280000",
            "type": "brush"
        },
        {
            "location": "-6236.602051, -61.743702, 760.499634",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
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
            "mesh": "Pipe",
            "name": "Default",
            "rotation": "-89.999947, 0.000007, -74.999557",
            "scale": "1.280000, 2.400000, 1.280000",
            "type": "brush"
        },
        {
            "location": "-6264.889160, -110.733475, 760.499634",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
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
            "mesh": "Pipe",
            "name": "Default",
            "rotation": "-89.999916, 0.000007, -74.999557",
            "scale": "1.280000, 2.400000, 1.280000",
            "type": "brush"
        },
        {
            "location": "-5067.997070, 1247.999146, 319.999817",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "-89.999939, 0.000000, 0.000000",
            "scale": "22.480000, 15.199992, 0.640000",
            "type": "brush"
        },
        {
            "location": "-7071.997070, 133.999863, 321.999817",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 1,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "0.000000, 0.000000, 0.000000",
            "scale": "20.079988, 10.999993, 0.640000",
            "type": "brush"
        },
        {
            "location": "-5875.997070, 79.999741, 1839.999146",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 1,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "106.699455, -90.000000, -16.699259",
            "scale": "4.400000, 10.299997, 0.640000",
            "type": "brush"
        },
        {
            "location": "-7007.997070, -30.000244, 387.999817",
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
            "rotation": "-179.881226, -90.000000, -0.118736",
            "scale": "1.120000, 7.399999, 0.640000",
            "type": "brush"
        },
        {
            "location": "-5611.997070, -952.999878, 319.999817",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "-89.999748, 0.000020, 179.999954",
            "scale": "2.480000, 15.199992, 0.640000",
            "type": "brush"
        },
        {
            "location": "-4879.997070, -952.999878, 319.999817",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "-89.999748, 0.000014, 179.999954",
            "scale": "2.480000, 15.199992, 0.640000",
            "type": "brush"
        },
        {
            "location": "-5131.997070, -952.999878, 319.999817",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ramp"
                },
                {
                    "group": 0,
                    "surface": "ramp"
                },
                {
                    "group": 0,
                    "surface": "ramp"
                },
                {
                    "group": 0,
                    "surface": "ramp"
                },
                {
                    "group": 0,
                    "surface": "ramp"
                },
                {
                    "group": 0,
                    "surface": "ramp"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "-89.999809, 0.000027, 134.999863",
            "scale": "4.679997, 10.879994, 0.320000",
            "type": "brush"
        },
        {
            "location": "-5417.997559, -682.000305, 760.499634",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
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
            "mesh": "Pipe",
            "name": "Default",
            "rotation": "-89.999939, 0.000014, 89.999947",
            "scale": "1.280000, 2.400000, 1.280000",
            "type": "brush"
        },
        {
            "location": "-5377.997559, -642.000305, 760.499634",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
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
            "mesh": "Pipe",
            "name": "Default",
            "rotation": "-89.999939, 0.000000, 89.999947",
            "scale": "1.280000, 2.400000, 1.280000",
            "type": "brush"
        },
        {
            "location": "-5857.997070, -887.999878, 1839.999146",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "-63.434845, -90.000000, -26.565033",
            "scale": "4.400000, 10.299997, 0.640000",
            "type": "brush"
        },
        {
            "location": "-6415.997070, -887.999817, 319.999817",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "-89.999939, 0.000000, 0.000000",
            "scale": "2.480000, 15.199992, 0.640000",
            "type": "brush"
        },
        {
            "location": "-6223.997070, -887.999817, 319.999817",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "-89.999939, 0.000000, 0.000000",
            "scale": "2.480000, 15.199992, 0.640000",
            "type": "brush"
        },
        {
            "location": "-6071.997070, -887.999817, 319.999817",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "-89.999939, 0.000000, 0.000000",
            "scale": "2.480000, 15.199992, 0.640000",
            "type": "brush"
        },
        {
            "location": "-5607.997070, -3099.998535, 567.999634",
            "name": "Window",
            "rotation": "0.000000, 0.000000, 0.000000",
            "scale": "2.260000, 4.103475, 3.433333",
            "type": "prop"
        },
        {
            "location": "-4326.000000, -3101.998535, 567.999634",
            "name": "Window",
            "rotation": "0.000000, 0.000000, 0.000000",
            "scale": "2.260000, 4.103475, 3.433333",
            "type": "prop"
        },
        {
            "location": "-7891.997070, -3101.998535, 567.999634",
            "name": "Window",
            "rotation": "0.000000, 0.000000, 0.000000",
            "scale": "2.265000, 4.103475, 3.433333",
            "type": "prop"
        },
        {
            "location": "-2783.998535, 538.000000, 567.999634",
            "name": "Window",
            "rotation": "0.000000, 0.000000, 89.999954",
            "scale": "1.300000, 4.103475, 2.533334",
            "type": "prop"
        },
        {
            "location": "-7952.997070, 1541.999268, 319.999817",
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
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "-89.999939, 0.000014, 89.999947",
            "scale": "2.480000, 15.199992, 0.640000",
            "type": "brush"
        },
        {
            "location": "-7952.997070, 2273.998535, 319.999817",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 1,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ground"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "-89.999939, 0.000014, 89.999947",
            "scale": "2.480000, 15.199992, 0.640000",
            "type": "brush"
        },
        {
            "location": "-7952.997070, 1793.999268, 319.999817",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ramp"
                },
                {
                    "group": 0,
                    "surface": "ramp"
                },
                {
                    "group": 0,
                    "surface": "ramp"
                },
                {
                    "group": 0,
                    "surface": "ramp"
                },
                {
                    "group": 0,
                    "surface": "ramp"
                },
                {
                    "group": 0,
                    "surface": "ramp"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "-89.999947, 0.000027, 44.999908",
            "scale": "4.679997, 10.879994, 0.320000",
            "type": "brush"
        },
        {
            "location": "-7681.997070, 2080.000000, 760.499634",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
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
            "mesh": "Pipe",
            "name": "Default",
            "rotation": "-89.999939, 0.000000, 0.000000",
            "scale": "1.280000, 2.400000, 1.280000",
            "type": "brush"
        },
        {
            "location": "-7641.997070, 2039.999268, 760.499634",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
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
            "mesh": "Pipe",
            "name": "Default",
            "rotation": "-89.999939, 0.000000, 0.000000",
            "scale": "1.280000, 2.400000, 1.280000",
            "type": "brush"
        },
        {
            "location": "-7887.997070, 2519.998291, 1839.999146",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ground"
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
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "-179.995026, -90.000000, -0.004959",
            "scale": "4.400000, 10.299997, 0.640000",
            "type": "brush"
        },
        {
            "location": "-2859.998535, 281.999695, 536.000000",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "-0.019470, 90.000000, -0.019671",
            "scale": "0.400000, 5.119999, 0.640000",
            "type": "brush"
        },
        {
            "location": "-2879.998535, 703.999634, 575.909363",
            "name": "Tree",
            "rotation": "0.000000, 0.000000, 0.000000",
            "scale": "1.000000, 1.000000, 1.000000",
            "type": "prop"
        },
        {
            "location": "-9183.994141, 3391.998535, 319.999817",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "-89.999939, 0.000000, 0.000000",
            "scale": "12.639999, 15.199992, 0.640000",
            "type": "brush"
        },
        {
            "location": "-7332.140137, 3347.038086, 760.499634",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
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
            "mesh": "Pipe",
            "name": "Default",
            "rotation": "-89.999931, 0.000000, -44.999992",
            "scale": "1.280000, 2.400000, 1.280000",
            "type": "brush"
        },
        {
            "location": "-7725.997070, 3392.998535, 319.999817",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ramp"
                },
                {
                    "group": 0,
                    "surface": "ramp"
                },
                {
                    "group": 0,
                    "surface": "ramp"
                },
                {
                    "group": 0,
                    "surface": "ramp"
                },
                {
                    "group": 0,
                    "surface": "ramp"
                },
                {
                    "group": 0,
                    "surface": "ramp"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "-89.999939, 0.000027, -0.000061",
            "scale": "4.679997, 10.879994, 0.320000",
            "type": "brush"
        },
        {
            "location": "-7727.997070, 3327.998535, 319.999817",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "-89.999878, 0.000000, -179.999939",
            "scale": "2.560000, 15.199992, 0.640000",
            "type": "brush"
        },
        {
            "location": "-6967.997070, 3327.998535, 1839.999023",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "106.699455, -90.000000, -16.699259",
            "scale": "4.400000, 10.299997, 0.640000",
            "type": "brush"
        },
        {
            "location": "-7332.140137, 3403.606445, 760.499634",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
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
            "mesh": "Pipe",
            "name": "Default",
            "rotation": "-89.999931, 0.000000, -44.999992",
            "scale": "1.280000, 2.400000, 1.280000",
            "type": "brush"
        },
        {
            "location": "-6959.997070, 3327.998535, 1839.999268",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "106.699455, -90.000000, -16.699259",
            "scale": "2.560000, 15.199992, 0.640000",
            "type": "brush"
        },
        {
            "location": "-6959.997070, 3327.998535, 319.999817",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "-89.999878, 0.000000, -179.999939",
            "scale": "2.560000, 15.199992, 0.640000",
            "type": "brush"
        },
        {
            "location": "-7007.997070, 3327.998535, 319.999817",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "-89.999878, 0.000000, -179.999939",
            "scale": "2.560000, 15.199992, 0.640000",
            "type": "brush"
        },
        {
            "location": "-9247.994141, 2579.998535, 319.999817",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "-89.999939, 0.000000, 89.999947",
            "scale": "8.119999, 15.199992, 0.640000",
            "type": "brush"
        },
        {
            "location": "-6978.997070, -2995.998535, 383.999817",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "0.000000, 0.000000, 0.000000",
            "scale": "0.320000, 20.119986, 0.320000",
            "type": "brush"
        },
        {
            "location": "-6978.997070, -2964.998535, 383.999817",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "-89.999939, 0.000000, 0.000000",
            "scale": "0.320000, 10.239999, 0.320000",
            "type": "brush"
        },
        {
            "location": "-6722.997070, -1236.999268, 383.999817",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "-89.999939, 0.000000, 0.000000",
            "scale": "0.320000, 10.239999, 0.320000",
            "type": "brush"
        },
        {
            "location": "-6722.997070, -980.999634, 383.999817",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "-89.999939, 0.000000, 0.000000",
            "scale": "0.320000, 10.239999, 0.320000",
            "type": "brush"
        },
        {
            "location": "-6722.997070, -2964.998535, 383.999817",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "-89.999939, 0.000000, 0.000000",
            "scale": "0.320000, 10.239999, 0.320000",
            "type": "brush"
        },
        {
            "location": "-6978.997070, -2995.998535, 671.999634",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "0.000000, 0.000000, 0.000000",
            "scale": "0.320000, 20.119986, 0.320000",
            "type": "brush"
        },
        {
            "location": "-6722.997070, -2995.998535, 671.999634",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "0.000000, 0.000000, 0.000000",
            "scale": "0.320000, 20.119986, 0.320000",
            "type": "brush"
        },
        {
            "location": "-6722.997070, -2995.998535, 383.999817",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "0.000000, 0.000000, 0.000000",
            "scale": "0.320000, 20.119986, 0.320000",
            "type": "brush"
        },
        {
            "location": "-6978.997070, -2452.998535, 383.999817",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "-89.999939, 0.000000, 0.000000",
            "scale": "0.320000, 10.239999, 0.320000",
            "type": "brush"
        },
        {
            "location": "-6722.997070, -2452.998535, 383.999817",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "-89.999939, 0.000000, 0.000000",
            "scale": "0.320000, 10.239999, 0.320000",
            "type": "brush"
        },
        {
            "location": "-6722.997070, -2708.998535, 383.999817",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "-89.999939, 0.000000, 0.000000",
            "scale": "0.320000, 10.239999, 0.320000",
            "type": "brush"
        },
        {
            "location": "-6706.997070, -1492.999268, 383.999817",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "-89.999939, 0.000000, 0.000000",
            "scale": "0.160000, 10.239999, 0.320000",
            "type": "brush"
        },
        {
            "location": "-6978.997070, -980.999634, 383.999817",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "-89.999939, 0.000000, 0.000000",
            "scale": "0.320000, 10.239999, 0.320000",
            "type": "brush"
        },
        {
            "location": "-6978.997070, -1492.999268, 383.999817",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "-89.999939, 0.000000, 0.000000",
            "scale": "0.320000, 10.239999, 0.320000",
            "type": "brush"
        },
        {
            "location": "-6718.997070, -2963.998535, 415.999817",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "0.000000, 0.000000, 0.000000",
            "scale": "0.320000, 2.240000, 2.560000",
            "type": "brush"
        },
        {
            "location": "-6606.997070, -2691.998535, 415.999817",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "0.000000, 0.000000, 29.999968",
            "scale": "0.320000, 2.240000, 2.560000",
            "type": "brush"
        },
        {
            "location": "-6950.997070, -2995.998535, 359.999817",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "0.000000, 0.000000, 0.000000",
            "scale": "2.320000, 20.119986, 0.320000",
            "type": "brush"
        },
        {
            "location": "-6946.997070, -2963.998535, 415.999817",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "0.000000, 0.000000, -89.999939",
            "scale": "0.320000, 2.240000, 9.919993",
            "type": "brush"
        },
        {
            "location": "-6962.997070, -2452.998535, 687.999634",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "-89.999939, 0.000000, 0.000000",
            "scale": "2.560000, 7.199997, 0.160000",
            "type": "brush"
        },
        {
            "location": "-6962.997070, -996.999634, 703.999634",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "-179.999939, 0.000000, 0.000000",
            "scale": "2.560000, 19.679991, 0.160000",
            "type": "brush"
        },
        {
            "location": "-6718.997070, -1491.999268, 415.999817",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "0.000000, 0.000000, 0.000000",
            "scale": "0.320000, 2.240000, 2.560000",
            "type": "brush"
        },
        {
            "location": "-6718.997070, -1235.999268, 415.999817",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "0.000000, 0.000000, 0.000000",
            "scale": "0.320000, 2.240000, 2.560000",
            "type": "brush"
        },
        {
            "location": "-6718.997070, -2451.998535, 415.999817",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "0.000000, 0.000000, 0.000000",
            "scale": "0.320000, 9.279999, 2.560000",
            "type": "brush"
        },
        {
            "location": "-6978.997070, -2964.998535, 687.999634",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "-89.999939, 0.000014, 89.999947",
            "scale": "4.800000, 7.199997, 0.160000",
            "type": "brush"
        },
        {
            "location": "-6962.997070, -996.999634, 1407.999268",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "-179.999939, 0.000000, 0.000000",
            "scale": "2.720000, 5.279994, 0.160000",
            "type": "brush"
        },
        {
            "location": "-6962.997070, -2452.998535, 1407.999268",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "-179.999939, 0.000000, 0.000000",
            "scale": "2.720000, 5.279994, 0.160000",
            "type": "brush"
        },
        {
            "location": "-6978.997070, -1492.999268, 687.999634",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "-89.999939, 0.000014, 89.999947",
            "scale": "4.800000, 7.199997, 0.160000",
            "type": "brush"
        },
        {
            "location": "-6946.997070, -979.999634, 415.999817",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "0.000000, 0.000000, -89.999939",
            "scale": "0.320000, 2.240000, 9.919993",
            "type": "brush"
        },
        {
            "location": "-6962.997070, -1508.999268, 687.999634",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "-89.999939, 0.000000, 0.000000",
            "scale": "2.560000, 7.199997, 0.160000",
            "type": "brush"
        },
        {
            "location": "-6686.997070, -996.999634, 687.999634",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "-89.999916, 0.000007, -74.999557",
            "scale": "2.560000, 7.199997, 0.160000",
            "type": "brush"
        },
        {
            "location": "-6686.997070, -1252.999268, 687.999634",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "-89.999878, 0.000000, -89.999947",
            "scale": "2.560000, 7.199997, 0.160000",
            "type": "brush"
        },
        {
            "location": "-6686.997070, -2732.998535, 687.999634",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "-89.999878, 0.000000, -89.999947",
            "scale": "2.480000, 7.199997, 0.160000",
            "type": "brush"
        },
        {
            "location": "-6686.997070, -2468.998535, 687.999634",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "-89.999817, 0.000000, 59.999905",
            "scale": "2.480000, 7.199997, 0.160000",
            "type": "brush"
        },
        {
            "location": "-6946.997070, -2443.998535, 391.999817",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "0.000000, 0.000000, -89.999939",
            "scale": "0.320000, 2.240000, 2.960000",
            "type": "brush"
        },
        {
            "location": "-6681.997559, -1258.000244, 760.499634",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
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
            "mesh": "Pipe",
            "name": "Default",
            "rotation": "-89.999939, 0.000014, 89.999947",
            "scale": "0.640000, 2.400000, 0.640000",
            "type": "brush"
        },
        {
            "location": "-6621.997559, -1226.000244, 760.499634",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
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
            "mesh": "Pipe",
            "name": "Default",
            "rotation": "-89.999939, 0.000014, 89.999947",
            "scale": "0.640000, 2.400000, 0.640000",
            "type": "brush"
        },
        {
            "location": "-6681.997559, -1290.000244, 504.499817",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
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
            "mesh": "Pipe",
            "name": "Default",
            "rotation": "-89.999939, 0.000014, 89.999947",
            "scale": "0.640000, 1.600000, 0.640000",
            "type": "brush"
        },
        {
            "location": "-6681.997559, -1210.000244, 504.499817",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
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
            "mesh": "Pipe",
            "name": "Default",
            "rotation": "-89.999939, 0.000014, 89.999947",
            "scale": "0.640000, 1.600000, 0.640000",
            "type": "brush"
        },
        {
            "location": "-6681.997559, -2761.998779, 504.499817",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
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
            "mesh": "Pipe",
            "name": "Default",
            "rotation": "-89.999939, 0.000014, 89.999947",
            "scale": "0.640000, 1.600000, 0.640000",
            "type": "brush"
        },
        {
            "location": "-6681.997559, -2753.999023, 760.499634",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
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
            "mesh": "Pipe",
            "name": "Default",
            "rotation": "-89.999939, 0.000014, 89.999947",
            "scale": "0.640000, 2.400000, 0.640000",
            "type": "brush"
        },
        {
            "location": "-6589.997559, -2653.998779, 504.499817",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
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
            "mesh": "Pipe",
            "name": "Default",
            "rotation": "-89.999939, 0.000014, 89.999947",
            "scale": "0.640000, 1.600000, 0.640000",
            "type": "brush"
        },
        {
            "location": "-6577.997559, -2278.000488, 760.499634",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
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
            "mesh": "Pipe",
            "name": "Default",
            "rotation": "-89.999939, 0.000014, 89.999947",
            "scale": "0.640000, 2.400000, 0.640000",
            "type": "brush"
        },
        {
            "location": "-5170.997070, -2612.998535, 607.999634",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "-179.999939, 0.000000, -89.999939",
            "scale": "2.720000, 5.279994, 0.160000",
            "type": "brush"
        },
        {
            "location": "-6681.997559, -2074.000244, 504.499817",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
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
            "mesh": "Pipe",
            "name": "Default",
            "rotation": "46.686245, -90.000000, -46.686169",
            "scale": "0.640000, 3.839999, 0.640000",
            "type": "brush"
        },
        {
            "location": "-5170.997070, -2612.998535, 607.999634",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "-179.999939, 0.000000, -89.999939",
            "scale": "0.320000, 0.320000, 2.240000",
            "type": "brush"
        },
        {
            "location": "-5666.997070, -2612.998535, 607.999634",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "-179.999939, 0.000000, -89.999939",
            "scale": "0.320000, 0.320000, 2.240000",
            "type": "brush"
        },
        {
            "location": "-5666.997070, -2852.998535, 607.999634",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "-179.999939, 0.000000, -89.999939",
            "scale": "0.320000, 0.320000, 2.240000",
            "type": "brush"
        },
        {
            "location": "-5170.997070, -2852.998535, 607.999634",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "-179.999939, 0.000000, -89.999939",
            "scale": "0.320000, 0.320000, 2.240000",
            "type": "brush"
        },
        {
            "location": "-5579.997070, -2787.998535, 595.909363",
            "name": "Tree",
            "rotation": "0.000000, 0.000000, 0.000000",
            "scale": "1.000000, 1.000000, 1.000000",
            "type": "prop"
        },
        {
            "location": "-5911.997070, -2783.998535, 385.998352",
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
            "mesh": "WideCapsule",
            "name": "Default",
            "rotation": "0.000000, 0.000000, 0.000000",
            "scale": "1.988403, 1.988402, 3.000000",
            "type": "brush"
        },
        {
            "location": "-4682.997070, -972.999756, 607.999634",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "-179.999939, 0.000000, 0.000034",
            "scale": "2.720000, 6.879999, 0.160000",
            "type": "brush"
        },
        {
            "location": "-4442.997070, -1628.999268, 607.999634",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "-179.999939, 0.000000, 0.000061",
            "scale": "0.320000, 0.320000, 2.240000",
            "type": "brush"
        },
        {
            "location": "-4442.997070, -972.999756, 607.999634",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "-179.999939, 0.000000, 0.000061",
            "scale": "0.320000, 0.320000, 2.240000",
            "type": "brush"
        },
        {
            "location": "-4682.997070, -972.999756, 607.999634",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "-179.999939, 0.000000, 0.000061",
            "scale": "0.320000, 0.320000, 2.240000",
            "type": "brush"
        },
        {
            "location": "-4682.997070, -1628.999268, 607.999634",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "-179.999939, 0.000000, 0.000061",
            "scale": "0.320000, 0.320000, 2.240000",
            "type": "brush"
        },
        {
            "location": "-4442.997070, -1165.000122, 607.999634",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "-179.999939, 0.000000, 0.000061",
            "scale": "0.320000, 0.320000, 2.240000",
            "type": "brush"
        },
        {
            "location": "-4682.997070, -1165.000122, 607.999634",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "-179.999939, 0.000000, 0.000061",
            "scale": "0.320000, 0.320000, 2.240000",
            "type": "brush"
        },
        {
            "location": "-4666.997070, -988.999756, 600.999634",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "-179.999939, 0.000000, 0.000061",
            "scale": "2.400000, 1.920000, 2.240000",
            "type": "brush"
        },
        {
            "location": "-4240.000000, -1343.999268, 383.999817",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "Cylinder",
            "name": "Default",
            "rotation": "0.000000, 0.000000, 0.000000",
            "scale": "0.160000, 0.160000, 1.280000",
            "type": "brush"
        },
        {
            "location": "-4304.000000, -1343.999268, 511.999817",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "Cylinder",
            "name": "Default",
            "rotation": "0.000000, 0.000000, 0.000000",
            "scale": "1.600000, 1.600000, 0.160000",
            "type": "brush"
        },
        {
            "location": "-4304.000000, -1407.999268, 383.999817",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "Cylinder",
            "name": "Default",
            "rotation": "0.000000, 0.000000, -89.999939",
            "scale": "0.160000, 0.160000, 1.280000",
            "type": "brush"
        },
        {
            "location": "-3562.998535, -1932.999268, 447.999817",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "-179.999939, 0.000000, 0.000061",
            "scale": "0.640000, 0.640000, 0.640000",
            "type": "brush"
        },
        {
            "location": "-4368.000000, -1343.999268, 383.999817",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "Cylinder",
            "name": "Default",
            "rotation": "0.000000, 0.000000, -179.999954",
            "scale": "0.160000, 0.160000, 1.280000",
            "type": "brush"
        },
        {
            "location": "-3626.998535, -972.999756, 463.999817",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "-179.999939, 0.000000, 0.000034",
            "scale": "7.360000, 10.719999, 0.160000",
            "type": "brush"
        },
        {
            "location": "-4304.000000, -1279.999268, 383.999817",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "Cylinder",
            "name": "Default",
            "rotation": "0.000000, 0.000000, 90.000008",
            "scale": "0.160000, 0.160000, 1.280000",
            "type": "brush"
        },
        {
            "location": "-3002.998535, -1932.999268, 447.999817",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "-179.999939, 0.000000, 0.000061",
            "scale": "0.640000, 0.640000, 0.640000",
            "type": "brush"
        },
        {
            "location": "-3562.998535, -1037.000000, 447.999817",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "-179.999939, 0.000000, 0.000061",
            "scale": "0.640000, 0.640000, 0.640000",
            "type": "brush"
        },
        {
            "location": "-3002.998535, -1037.000000, 447.999817",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "-179.999939, 0.000000, 0.000061",
            "scale": "0.640000, 0.640000, 0.640000",
            "type": "brush"
        },
        {
            "location": "-3626.998535, -972.999756, 479.999817",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "-179.999939, 0.000000, 0.000034",
            "scale": "7.360000, 10.719999, 0.160000",
            "type": "brush"
        },
        {
            "location": "-3626.998535, -972.999756, 495.999817",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "-179.999939, 0.000000, 0.000034",
            "scale": "7.360000, 10.719999, 0.160000",
            "type": "brush"
        },
        {
            "location": "-3626.998535, -972.999756, 511.999817",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "-179.999939, 0.000000, 0.000034",
            "scale": "0.160000, 10.719999, 0.160000",
            "type": "brush"
        },
        {
            "location": "-2906.998535, -972.999756, 511.999817",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "-179.999939, 0.000000, 0.000034",
            "scale": "0.160000, 10.719999, 0.160000",
            "type": "brush"
        },
        {
            "location": "-2906.998535, -972.999756, 511.999817",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "-179.999939, 0.000000, -89.999939",
            "scale": "0.160000, 7.199997, 0.160000",
            "type": "brush"
        },
        {
            "location": "-2906.998535, -2028.999390, 511.999817",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "-179.999939, 0.000000, -89.999939",
            "scale": "0.160000, 7.199997, 0.160000",
            "type": "brush"
        },
        {
            "location": "-2906.998535, -972.999756, 528.000000",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "-179.999939, 0.000000, -89.999939",
            "scale": "0.160000, 7.199997, 0.160000",
            "type": "brush"
        },
        {
            "location": "-2906.998535, -972.999756, 584.999634",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "-179.999939, 0.000000, -89.999939",
            "scale": "0.160000, 7.199997, 0.640000",
            "type": "brush"
        },
        {
            "location": "-3609.998535, -2027.999268, 496.000458",
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
            "mesh": "Cube",
            "name": "Default",
            "rotation": "0.000000, 0.000000, 0.000000",
            "scale": "7.000000, 10.399994, 0.400000",
            "type": "brush"
        },
        {
            "location": "-3431.998535, -1082.000000, 536.999634",
            "materialSets": [
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
                },
                {
                    "group": 0,
                    "surface": "wall"
                }
            ],
            "mesh": "WideCapsule",
            "name": "Default",
            "rotation": "0.000000, 0.000000, 0.000000",
            "scale": "2.982604, 1.391882, 0.260000",
            "type": "brush"
        },
        {
            "location": "-3101.998535, -1097.999268, 536.999634",
            "materialSets": [
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
                },
                {
                    "group": 0,
                    "surface": "wall"
                }
            ],
            "mesh": "WideCapsule",
            "name": "Default",
            "rotation": "0.000000, 0.000000, 0.000000",
            "scale": "2.982604, 1.391882, 0.260000",
            "type": "brush"
        },
        {
            "location": "-3431.998535, -1233.999268, 536.999634",
            "materialSets": [
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
                },
                {
                    "group": 0,
                    "surface": "wall"
                }
            ],
            "mesh": "WideCapsule",
            "name": "Default",
            "rotation": "0.000000, 0.000000, -10.750627",
            "scale": "2.982604, 1.391882, 0.260000",
            "type": "brush"
        },
        {
            "location": "-3101.998535, -1243.999268, 536.999634",
            "materialSets": [
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
                },
                {
                    "group": 0,
                    "surface": "wall"
                }
            ],
            "mesh": "WideCapsule",
            "name": "Default",
            "rotation": "0.000000, 0.000000, 2.556507",
            "scale": "2.982604, 1.391882, 0.260000",
            "type": "brush"
        },
        {
            "location": "-3567.998535, -1817.999268, 536.000305",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "0.000000, 0.000000, -12.981709",
            "scale": "5.000000, 4.999999, 0.020000",
            "type": "brush"
        },
        {
            "location": "-3567.998535, -1877.999268, 536.000305",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "0.000000, 0.000000, -0.755463",
            "scale": "5.000000, 4.999999, 0.020000",
            "type": "brush"
        },
        {
            "location": "-3601.998535, -1701.999268, 536.000305",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "0.000000, 0.000000, -40.017075",
            "scale": "5.000000, 4.999999, 0.020000",
            "type": "brush"
        },
        {
            "location": "-3371.998535, -2013.999268, 536.000305",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "0.000000, 0.000000, 25.803646",
            "scale": "5.000000, 4.999999, 0.020000",
            "type": "brush"
        },
        {
            "location": "-3319.998535, -1877.999268, 538.000610",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "0.000000, 0.000000, -0.755463",
            "scale": "2.500000, 2.500000, 0.020000",
            "type": "brush"
        },
        {
            "location": "-3279.998535, -1671.999268, 538.000610",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "0.000000, 0.000000, -0.755463",
            "scale": "2.500000, 2.500000, 0.020000",
            "type": "brush"
        },
        {
            "location": "-3513.998535, -1657.999268, 538.000610",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "0.000000, 0.000000, 9.771254",
            "scale": "2.500000, 2.500000, 0.020000",
            "type": "brush"
        },
        {
            "location": "-3477.998535, -1861.999268, 538.000610",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "0.000000, 0.000000, 9.771297",
            "scale": "2.500000, 2.500000, 0.020000",
            "type": "brush"
        },
        {
            "location": "-3101.998535, -1243.999268, 546.999512",
            "materialSets": [
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
                },
                {
                    "group": 0,
                    "surface": "wall"
                }
            ],
            "mesh": "WideCapsule",
            "name": "Default",
            "rotation": "0.000000, 0.000000, 2.556508",
            "scale": "2.982604, 1.391882, 0.260000",
            "type": "brush"
        },
        {
            "location": "-3101.998535, -1097.999268, 550.999512",
            "materialSets": [
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
                },
                {
                    "group": 0,
                    "surface": "wall"
                }
            ],
            "mesh": "WideCapsule",
            "name": "Default",
            "rotation": "0.000000, 0.000000, 0.000000",
            "scale": "2.982604, 1.391882, 0.260000",
            "type": "brush"
        },
        {
            "location": "-3431.998535, -1082.000000, 546.999512",
            "materialSets": [
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
                },
                {
                    "group": 0,
                    "surface": "wall"
                }
            ],
            "mesh": "WideCapsule",
            "name": "Default",
            "rotation": "0.000000, 0.000000, 0.000000",
            "scale": "2.982604, 1.391882, 0.260000",
            "type": "brush"
        },
        {
            "location": "-3431.998535, -1233.999268, 550.999512",
            "materialSets": [
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
                },
                {
                    "group": 0,
                    "surface": "wall"
                }
            ],
            "mesh": "WideCapsule",
            "name": "Default",
            "rotation": "0.000000, 0.000000, -10.750688",
            "scale": "2.982604, 1.391882, 0.260000",
            "type": "brush"
        },
        {
            "location": "-3611.998535, -1801.999268, 536.000305",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "0.000000, 0.000000, -0.755463",
            "scale": "1.000000, 1.000000, 0.020000",
            "type": "brush"
        },
        {
            "location": "-3609.998535, -1801.999268, 506.000458",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "-89.998444, 89.242554, -89.998444",
            "scale": "0.300000, 1.000000, 0.020000",
            "type": "brush"
        },
        {
            "location": "-3611.998535, -1741.999268, 512.000671",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "WedgeB",
            "name": "Default",
            "rotation": "0.000000, 90.000000, 0.000000",
            "scale": "0.020000, 0.400000, 0.160000",
            "type": "brush"
        },
        {
            "location": "-3609.998535, -1800.999268, 514.000305",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "179.999954, 0.000020, -179.242813",
            "scale": "0.180000, 0.600000, 0.020000",
            "type": "brush"
        },
        {
            "location": "-3627.998535, -1799.999268, 514.000671",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "WedgeB",
            "name": "Default",
            "rotation": "-179.999954, 0.000000, -179.999954",
            "scale": "0.020000, 0.580000, 0.800000",
            "type": "brush"
        },
        {
            "location": "-3611.998535, -1875.999268, 536.000305",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "0.000000, 0.000000, -0.755463",
            "scale": "1.000000, 1.000000, 0.020000",
            "type": "brush"
        },
        {
            "location": "-3609.998535, -1875.999268, 506.000458",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "-89.998444, 89.242554, -89.998444",
            "scale": "0.300000, 1.000000, 0.020000",
            "type": "brush"
        },
        {
            "location": "-3609.998535, -1874.999268, 514.000305",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "179.999954, 0.000020, -179.242813",
            "scale": "0.180000, 0.600000, 0.020000",
            "type": "brush"
        },
        {
            "location": "-3609.998535, -1850.999268, 514.000305",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "179.999954, 0.000020, -179.242813",
            "scale": "0.180000, 0.600000, 0.020000",
            "type": "brush"
        },
        {
            "location": "-3627.998535, -1875.999268, 483.000458",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "-89.998444, 89.242554, -89.998444",
            "scale": "0.300000, 1.000000, 0.020000",
            "type": "brush"
        },
        {
            "location": "-3627.998535, -1852.999268, 458.000458",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "-89.998444, 89.242554, -89.998444",
            "scale": "0.300000, 0.600000, 0.020000",
            "type": "brush"
        },
        {
            "location": "-3627.998535, -1875.999268, 458.000458",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "-89.998444, 89.242554, -89.998444",
            "scale": "0.300000, 0.600000, 0.020000",
            "type": "brush"
        },
        {
            "location": "-3627.998535, -1875.999268, 433.000458",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "-89.998444, 89.242554, -89.998444",
            "scale": "0.300000, 0.600000, 0.020000",
            "type": "brush"
        },
        {
            "location": "-3627.998535, -1859.999268, 433.000458",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "-89.998444, 89.242554, -89.998444",
            "scale": "0.300000, 0.600000, 0.020000",
            "type": "brush"
        },
        {
            "location": "-3627.998535, -1835.999268, 498.000519",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "WedgeB",
            "name": "Default",
            "rotation": "-179.999954, 0.000000, -179.999954",
            "scale": "0.020000, 0.580000, 0.800000",
            "type": "brush"
        },
        {
            "location": "-3627.998535, -1875.999268, 418.000458",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "-89.998444, 89.242554, -89.998444",
            "scale": "0.300000, 0.400000, 0.020000",
            "type": "brush"
        },
        {
            "location": "-3431.998535, -1233.999268, 550.999512",
            "materialSets": [
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
                },
                {
                    "group": 0,
                    "surface": "wall"
                }
            ],
            "mesh": "WideCapsule",
            "name": "Default",
            "rotation": "0.000000, 0.000000, 4.249574",
            "scale": "2.982604, 1.391882, 0.260000",
            "type": "brush"
        },
        {
            "location": "-3101.998535, -1249.999268, 546.999512",
            "materialSets": [
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
                },
                {
                    "group": 0,
                    "surface": "wall"
                }
            ],
            "mesh": "WideCapsule",
            "name": "Default",
            "rotation": "0.000000, 0.000000, 17.556709",
            "scale": "2.982604, 1.391882, 0.260000",
            "type": "brush"
        },
        {
            "location": "-3101.998535, -1097.999268, 550.999512",
            "materialSets": [
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
                },
                {
                    "group": 0,
                    "surface": "wall"
                }
            ],
            "mesh": "WideCapsule",
            "name": "Default",
            "rotation": "0.000000, 0.000000, -15.000353",
            "scale": "2.982604, 1.391882, 0.260000",
            "type": "brush"
        },
        {
            "location": "-3431.998535, -1082.000000, 546.999512",
            "materialSets": [
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
                },
                {
                    "group": 0,
                    "surface": "wall"
                }
            ],
            "mesh": "WideCapsule",
            "name": "Default",
            "rotation": "0.000000, 0.000000, -15.000353",
            "scale": "2.982604, 1.391882, 0.260000",
            "type": "brush"
        },
        {
            "location": "-3567.998535, -1987.999268, 536.000305",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "0.000000, 0.000000, -0.755463",
            "scale": "5.000000, 4.999999, 0.020000",
            "type": "brush"
        },
        {
            "location": "-3506.998535, -1894.999268, 536.000305",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "0.000000, 0.000000, -12.981771",
            "scale": "5.000000, 4.999999, 0.020000",
            "type": "brush"
        },
        {
            "location": "-3279.998535, -1675.999268, 538.000610",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "0.000000, 0.000000, -0.755463",
            "scale": "2.500000, 2.500000, 0.020000",
            "type": "brush"
        },
        {
            "location": "-3503.998535, -1839.999268, 536.000305",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "0.000000, 0.000000, -0.755463",
            "scale": "5.000000, 4.999999, 0.020000",
            "type": "brush"
        },
        {
            "location": "-3477.998535, -2022.999268, 538.000610",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "0.000000, 0.000000, 9.771339",
            "scale": "2.500000, 2.500000, 0.020000",
            "type": "brush"
        },
        {
            "location": "-3102.998535, -1254.999268, 546.999512",
            "materialSets": [
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
                },
                {
                    "group": 0,
                    "surface": "wall"
                }
            ],
            "mesh": "WideCapsule",
            "name": "Default",
            "rotation": "0.000000, 0.000000, 2.556568",
            "scale": "2.982604, 1.391882, 0.260000",
            "type": "brush"
        },
        {
            "location": "-6976.997070, 960.999695, 599.999329",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "Cylinder",
            "name": "Default",
            "rotation": "0.000000, -90.000000, 0.000000",
            "scale": "0.360000, 0.360000, 0.450000",
            "type": "brush"
        },
        {
            "location": "-7008.997070, 960.999695, 599.999329",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
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
            "mesh": "Cylinder",
            "name": "Default",
            "rotation": "0.000000, -90.000000, 0.000000",
            "scale": "0.130000, 0.130000, 0.850000",
            "type": "brush"
        },
        {
            "location": "-6710.997070, 959.999634, 515.249451",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "Torus",
            "name": "Default",
            "rotation": "0.000000, 0.000000, 0.000000",
            "scale": "1.250000, 1.250000, 0.640000",
            "type": "brush"
        },
        {
            "location": "-6710.997070, 959.999634, 388.999725",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "Cylinder",
            "name": "Default",
            "rotation": "0.000000, 0.000000, 0.000000",
            "scale": "1.250000, 1.250000, 0.640000",
            "type": "brush"
        },
        {
            "location": "-6773.997070, 957.999634, 388.999268",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "0.000000, 0.000000, 0.000000",
            "scale": "1.250000, 2.500000, 0.640000",
            "type": "brush"
        },
        {
            "location": "-6773.997070, 957.999634, 450.999268",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "0.000000, 0.000000, 0.000000",
            "scale": "1.250000, 2.500000, 0.640000",
            "type": "brush"
        },
        {
            "location": "-6710.997070, 959.999634, 610.249329",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "Torus",
            "name": "Default",
            "rotation": "0.000000, 0.000000, 0.000000",
            "scale": "1.830000, 1.830000, 0.640000",
            "type": "brush"
        },
        {
            "location": "-6710.997070, 959.999634, 450.999725",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "Cylinder",
            "name": "Default",
            "rotation": "0.000000, 0.000000, 0.000000",
            "scale": "1.250000, 1.250000, 0.640000",
            "type": "brush"
        },
        {
            "location": "-6681.997070, 1130.999268, 617.999329",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "Cone",
            "name": "Default",
            "rotation": "-179.999954, 0.000014, -179.999954",
            "scale": "1.250000, 1.250000, 1.250000",
            "type": "brush"
        },
        {
            "location": "-6773.997070, 1003.999573, 504.999268",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "0.000000, 0.000000, 0.000000",
            "scale": "1.250000, 2.500000, 0.640000",
            "type": "brush"
        },
        {
            "location": "-6773.997070, 1014.999573, 551.999329",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "0.000000, 0.000000, 0.000000",
            "scale": "1.250000, 2.500000, 0.640000",
            "type": "brush"
        },
        {
            "location": "-6738.997070, 1069.000000, 604.999329",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "0.000000, 0.000000, 0.000000",
            "scale": "0.600000, 0.600000, 1.440000",
            "type": "brush"
        },
        {
            "location": "-6710.997070, 959.999634, 564.249329",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "Torus",
            "name": "Default",
            "rotation": "0.000000, 0.000000, 0.000000",
            "scale": "1.500000, 1.500000, 1.999999",
            "type": "brush"
        },
        {
            "location": "-6710.997070, 959.999634, 540.249329",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "Torus",
            "name": "Default",
            "rotation": "0.000000, 0.000000, 0.000000",
            "scale": "1.340000, 1.340000, 1.999999",
            "type": "brush"
        },
        {
            "location": "-6710.997070, 959.999634, 588.249329",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "Torus",
            "name": "Default",
            "rotation": "0.000000, 0.000000, 0.000000",
            "scale": "1.670000, 1.670000, 1.999999",
            "type": "brush"
        },
        {
            "location": "-6738.997070, 1130.999268, 617.999329",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "Cone",
            "name": "Default",
            "rotation": "-179.999954, 0.000014, -179.999954",
            "scale": "1.250000, 1.250000, 1.250000",
            "type": "brush"
        },
        {
            "location": "-6681.997070, 1130.999268, 617.999329",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "Cylinder",
            "name": "Default",
            "rotation": "0.000000, 0.000000, 0.000000",
            "scale": "1.250000, 1.250000, 0.600000",
            "type": "brush"
        },
        {
            "location": "-6738.997070, 1130.999268, 617.999329",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "Cylinder",
            "name": "Default",
            "rotation": "0.000000, 0.000000, 0.000000",
            "scale": "1.250000, 1.250000, 0.600000",
            "type": "brush"
        },
        {
            "location": "-6681.997070, 1130.999268, 661.999329",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "Cylinder",
            "name": "Default",
            "rotation": "0.000000, 0.000000, 0.000000",
            "scale": "1.250000, 1.250000, 0.600000",
            "type": "brush"
        },
        {
            "location": "-6681.997070, 1130.999268, 747.999329",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "Cylinder",
            "name": "Default",
            "rotation": "0.000000, 0.000000, 0.000000",
            "scale": "1.250000, 1.250000, 0.600000",
            "type": "brush"
        },
        {
            "location": "-6738.997070, 1130.999268, 649.999329",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "Cylinder",
            "name": "Default",
            "rotation": "0.000000, 0.000000, 0.000000",
            "scale": "1.250000, 1.250000, 0.600000",
            "type": "brush"
        },
        {
            "location": "-6738.997070, 1130.999268, 708.999329",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "Cylinder",
            "name": "Default",
            "rotation": "0.000000, 0.000000, 0.000000",
            "scale": "1.250000, 1.250000, 0.600000",
            "type": "brush"
        },
        {
            "location": "-6738.997070, 1069.000000, 663.999329",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "0.000000, 0.000000, 0.000000",
            "scale": "0.600000, 0.600000, 1.440000",
            "type": "brush"
        },
        {
            "location": "-6710.997070, 959.999634, 609.249329",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "Torus",
            "name": "Default",
            "rotation": "0.000000, 0.000000, 0.000000",
            "scale": "1.750000, 1.750000, 0.640000",
            "type": "brush"
        },
        {
            "location": "-6710.997070, 959.999634, 608.249329",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "Torus",
            "name": "Default",
            "rotation": "0.000000, 0.000000, 0.000000",
            "scale": "1.750000, 1.750000, 0.640000",
            "type": "brush"
        },
        {
            "location": "-6710.997070, 959.999634, 605.249329",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "Torus",
            "name": "Default",
            "rotation": "0.000000, 0.000000, 0.000000",
            "scale": "1.750000, 1.750000, 0.640000",
            "type": "brush"
        },
        {
            "location": "-6710.997070, 959.999634, 591.249329",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "Torus",
            "name": "Default",
            "rotation": "0.000000, 0.000000, 0.000000",
            "scale": "1.670000, 1.670000, 1.999999",
            "type": "brush"
        },
        {
            "location": "-6773.997070, 947.999573, 504.999268",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "0.000000, 0.000000, 0.000000",
            "scale": "0.160000, 2.500000, 0.640000",
            "type": "brush"
        },
        {
            "location": "-6664.997070, 947.999573, 504.999268",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "0.000000, 0.000000, 0.000000",
            "scale": "0.160000, 2.500000, 0.640000",
            "type": "brush"
        },
        {
            "location": "-6710.997070, 1089.000122, 725.999329",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
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
            "mesh": "Cylinder",
            "name": "Default",
            "rotation": "0.000000, 0.000000, 0.000000",
            "scale": "0.130000, 0.130000, 0.850000",
            "type": "brush"
        },
        {
            "location": "-6718.997070, 902.999573, 484.999298",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "-15.000353, 0.000000, 0.000000",
            "scale": "0.160000, 0.160000, 1.280000",
            "type": "brush"
        },
        {
            "location": "-6722.997070, 902.999573, 484.999298",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "-15.000445, 0.000000, 0.000000",
            "scale": "0.240000, 0.160000, 1.280000",
            "type": "brush"
        },
        {
            "location": "-6710.997070, 959.999634, 610.249329",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "Torus",
            "name": "Default",
            "rotation": "0.000000, 0.000000, 0.000000",
            "scale": "1.830000, 1.830000, 0.640000",
            "type": "brush"
        },
        {
            "location": "-6707.838379, 901.835938, 484.999298",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "-15.000538, 0.000000, 15.000333",
            "scale": "0.240000, 0.160000, 1.280000",
            "type": "brush"
        },
        {
            "location": "-6710.997070, 959.999634, 610.249329",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "Torus",
            "name": "Default",
            "rotation": "0.000000, 0.000000, 15.000326",
            "scale": "1.830000, 1.830000, 0.640000",
            "type": "brush"
        },
        {
            "location": "-6710.997070, 959.999634, 610.249329",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "Torus",
            "name": "Default",
            "rotation": "0.000000, 0.000000, 15.000326",
            "scale": "1.830000, 1.830000, 0.640000",
            "type": "brush"
        },
        {
            "location": "-6679.180176, 911.209229, 484.999298",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "-15.000538, 0.000000, 44.999939",
            "scale": "0.240000, 0.160000, 1.280000",
            "type": "brush"
        },
        {
            "location": "-6710.997070, 959.999634, 610.249329",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "Torus",
            "name": "Default",
            "rotation": "0.000000, 0.000000, 59.999905",
            "scale": "1.830000, 1.830000, 0.640000",
            "type": "brush"
        },
        {
            "location": "-6667.633789, 921.107422, 484.999298",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "-15.000631, 0.000000, 59.999786",
            "scale": "0.240000, 0.160000, 1.280000",
            "type": "brush"
        },
        {
            "location": "-6710.997070, 959.999634, 610.249329",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "Torus",
            "name": "Default",
            "rotation": "0.000000, 0.000000, 74.999619",
            "scale": "1.830000, 1.830000, 0.640000",
            "type": "brush"
        },
        {
            "location": "-6659.046875, 933.655762, 484.999298",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "-15.000720, 0.000000, 74.999489",
            "scale": "0.240000, 0.160000, 1.280000",
            "type": "brush"
        },
        {
            "location": "-6710.997070, 959.999634, 610.249329",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "Torus",
            "name": "Default",
            "rotation": "0.000000, 0.000000, 89.999924",
            "scale": "1.830000, 1.830000, 0.640000",
            "type": "brush"
        },
        {
            "location": "-6653.997070, 947.999512, 484.999298",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "-15.000811, 0.000000, 89.999809",
            "scale": "0.240000, 0.160000, 1.280000",
            "type": "brush"
        },
        {
            "location": "-6710.997070, 959.999634, 610.249329",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "Torus",
            "name": "Default",
            "rotation": "0.000000, 0.000000, 105.000206",
            "scale": "1.830000, 1.830000, 0.640000",
            "type": "brush"
        },
        {
            "location": "-6652.836426, 963.161072, 484.999298",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "-15.000905, 0.000000, 105.000099",
            "scale": "0.240000, 0.160000, 1.280000",
            "type": "brush"
        },
        {
            "location": "-6710.997070, 959.999634, 610.249329",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "Torus",
            "name": "Default",
            "rotation": "0.000000, 0.000000, 120.000008",
            "scale": "1.830000, 1.830000, 0.640000",
            "type": "brush"
        },
        {
            "location": "-6655.633789, 978.107422, 484.999298",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "-15.000997, 0.000000, 119.999939",
            "scale": "0.240000, 0.160000, 1.280000",
            "type": "brush"
        },
        {
            "location": "-6710.997070, 959.999634, 610.249329",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "Torus",
            "name": "Default",
            "rotation": "0.000000, 0.000000, 135.000000",
            "scale": "1.830000, 1.830000, 0.640000",
            "type": "brush"
        },
        {
            "location": "-6692.890137, 904.636047, 484.999298",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "-15.000631, 0.000000, 30.000122",
            "scale": "0.240000, 0.160000, 1.280000",
            "type": "brush"
        },
        {
            "location": "-6710.997070, 959.999634, 610.249329",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "Torus",
            "name": "Default",
            "rotation": "0.000000, 0.000000, 149.999954",
            "scale": "1.830000, 1.830000, 0.640000",
            "type": "brush"
        },
        {
            "location": "-6737.340820, 908.047668, 484.999298",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "-15.000539, 0.000000, -15.000353",
            "scale": "0.240000, 0.160000, 1.280000",
            "type": "brush"
        },
        {
            "location": "-6710.997070, 959.999634, 610.249329",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "Torus",
            "name": "Default",
            "rotation": "0.000000, 0.000000, 134.999954",
            "scale": "1.830000, 1.830000, 0.640000",
            "type": "brush"
        },
        {
            "location": "-6749.890137, 916.636169, 484.999298",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "-15.000631, 0.000000, -30.000122",
            "scale": "0.240000, 0.160000, 1.280000",
            "type": "brush"
        },
        {
            "location": "-6710.997070, 959.999634, 610.249329",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "Torus",
            "name": "Default",
            "rotation": "0.000000, 0.000000, 119.999969",
            "scale": "1.830000, 1.830000, 0.640000",
            "type": "brush"
        },
        {
            "location": "-6759.787598, 928.180176, 484.999298",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "-15.000720, 0.000000, -45.000084",
            "scale": "0.240000, 0.160000, 1.280000",
            "type": "brush"
        },
        {
            "location": "-6710.997070, 959.999634, 610.249329",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "Torus",
            "name": "Default",
            "rotation": "0.000000, 0.000000, 105.000259",
            "scale": "1.830000, 1.830000, 0.640000",
            "type": "brush"
        },
        {
            "location": "-6766.360840, 941.891968, 484.999298",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "-15.000811, 0.000000, -59.999905",
            "scale": "0.240000, 0.160000, 1.280000",
            "type": "brush"
        },
        {
            "location": "-6710.997070, 959.999634, 610.249329",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "Torus",
            "name": "Default",
            "rotation": "0.000000, 0.000000, 90.000053",
            "scale": "1.830000, 1.830000, 0.640000",
            "type": "brush"
        },
        {
            "location": "-6769.161133, 956.838196, 484.999298",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "-15.000905, 0.000000, -74.999611",
            "scale": "0.240000, 0.160000, 1.280000",
            "type": "brush"
        },
        {
            "location": "-6710.997070, 959.999634, 610.249329",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "Torus",
            "name": "Default",
            "rotation": "0.000000, 0.000000, 74.999641",
            "scale": "1.830000, 1.830000, 0.640000",
            "type": "brush"
        },
        {
            "location": "-6767.997559, 971.999817, 484.999298",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "-15.000998, 0.000000, -89.999878",
            "scale": "0.240000, 0.160000, 1.280000",
            "type": "brush"
        },
        {
            "location": "-6710.997070, 959.999634, 610.249329",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "Torus",
            "name": "Default",
            "rotation": "0.000000, 0.000000, 59.999905",
            "scale": "1.830000, 1.830000, 0.640000",
            "type": "brush"
        },
        {
            "location": "-6762.952148, 986.343750, 484.999298",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "-15.001053, 0.000000, -105.000092",
            "scale": "0.240000, 0.160000, 1.280000",
            "type": "brush"
        },
        {
            "location": "-6710.997070, 959.999634, 610.249329",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "Torus",
            "name": "Default",
            "rotation": "0.000000, 0.000000, 44.999908",
            "scale": "1.830000, 1.830000, 0.640000",
            "type": "brush"
        },
        {
            "location": "-6742.817383, 1008.790466, 484.999298",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "-15.001176, 0.000000, -134.999863",
            "scale": "0.240000, 0.160000, 1.280000",
            "type": "brush"
        },
        {
            "location": "-6710.997070, 959.999634, 610.249329",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "Torus",
            "name": "Default",
            "rotation": "0.000000, 0.000000, 15.000254",
            "scale": "1.830000, 1.830000, 0.640000",
            "type": "brush"
        },
        {
            "location": "-6754.360840, 998.892517, 484.999298",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "-15.001297, 0.000000, -119.999886",
            "scale": "0.240000, 0.160000, 1.280000",
            "type": "brush"
        },
        {
            "location": "-6710.997070, 959.999634, 610.249329",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "Torus",
            "name": "Default",
            "rotation": "0.000000, 0.000000, 30.000084",
            "scale": "1.830000, 1.830000, 0.640000",
            "type": "brush"
        },
        {
            "location": "-6662.206055, 991.819641, 484.999298",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "-15.001454, 0.000000, 135.000107",
            "scale": "0.240000, 0.160000, 1.280000",
            "type": "brush"
        },
        {
            "location": "-6710.997070, 959.999634, 610.249329",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "Torus",
            "name": "Default",
            "rotation": "0.000000, 0.000000, -74.999489",
            "scale": "1.830000, 1.830000, 0.640000",
            "type": "brush"
        },
        {
            "location": "-6709.997070, 1040.000000, 706.999329",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "Cylinder",
            "name": "Default",
            "rotation": "89.999954, 0.000000, 0.000000",
            "scale": "1.750000, 1.750000, 0.160000",
            "type": "brush"
        },
        {
            "location": "-6773.997070, 1004.999573, 521.999451",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "0.000000, 0.000000, 0.000000",
            "scale": "1.250000, 2.500000, 0.640000",
            "type": "brush"
        },
        {
            "location": "-6690.997070, 1049.000122, 547.999329",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
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
            "mesh": "Cylinder",
            "name": "Default",
            "rotation": "0.000000, 0.000000, 0.000000",
            "scale": "0.130000, 0.130000, 0.850000",
            "type": "brush"
        },
        {
            "location": "-6729.997070, 1049.000122, 547.999329",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
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
            "mesh": "Cylinder",
            "name": "Default",
            "rotation": "0.000000, 0.000000, 0.000000",
            "scale": "0.130000, 0.130000, 0.850000",
            "type": "brush"
        },
        {
            "location": "-6681.997070, 1130.999268, 692.999329",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "Cylinder",
            "name": "Default",
            "rotation": "0.000000, 0.000000, 0.000000",
            "scale": "1.250000, 1.250000, 0.600000",
            "type": "brush"
        },
        {
            "location": "-6738.997070, 1130.999268, 747.999329",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "Cylinder",
            "name": "Default",
            "rotation": "0.000000, 0.000000, 0.000000",
            "scale": "1.250000, 1.250000, 0.600000",
            "type": "brush"
        },
        {
            "location": "-6709.997070, 957.999634, 388.999268",
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
            "rotation": "0.000000, 0.000000, 0.000000",
            "scale": "1.250000, 2.500000, 0.640000",
            "type": "brush"
        },
        {
            "location": "-6837.997070, 957.999634, 388.999268",
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
            "rotation": "0.000000, 0.000000, 0.000000",
            "scale": "1.250000, 2.500000, 0.640000",
            "type": "brush"
        },
        {
            "location": "-6709.997070, 845.999634, 388.999268",
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
            "rotation": "0.000000, 0.000000, 0.000000",
            "scale": "1.250000, 2.500000, 0.640000",
            "type": "brush"
        },
        {
            "location": "-6789.997070, 765.999634, 388.999268",
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
            "rotation": "0.000000, 0.000000, 0.000000",
            "scale": "1.250000, 2.500000, 0.640000",
            "type": "brush"
        },
        {
            "location": "-6837.997070, 765.999634, 388.999268",
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
            "rotation": "0.000000, 0.000000, 0.000000",
            "scale": "1.250000, 2.500000, 0.640000",
            "type": "brush"
        },
        {
            "location": "-6709.997070, 765.999634, 388.999268",
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
            "rotation": "0.000000, 0.000000, 0.000000",
            "scale": "1.250000, 2.500000, 0.640000",
            "type": "brush"
        },
        {
            "location": "-6629.997070, 957.999634, 388.999268",
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
            "rotation": "0.000000, 0.000000, 0.000000",
            "scale": "1.250000, 2.500000, 0.640000",
            "type": "brush"
        },
        {
            "location": "-6629.997070, 765.999634, 388.999268",
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
            "rotation": "0.000000, 0.000000, 0.000000",
            "scale": "1.250000, 2.500000, 0.640000",
            "type": "brush"
        },
        {
            "location": "-6917.997070, 765.999634, 388.999268",
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
            "rotation": "0.000000, 0.000000, 0.000000",
            "scale": "1.250000, 2.500000, 0.640000",
            "type": "brush"
        },
        {
            "location": "-6917.997070, 957.999634, 388.999268",
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
            "rotation": "0.000000, 0.000000, 0.000000",
            "scale": "1.250000, 2.500000, 0.640000",
            "type": "brush"
        },
        {
            "location": "-5148.997070, 173.999908, 395.999817",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "0.000000, 0.000000, 0.000000",
            "scale": "0.320000, 9.719998, 0.320000",
            "type": "brush"
        },
        {
            "location": "-5148.997070, 173.999908, 555.999634",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "0.000000, 0.000000, 0.000000",
            "scale": "0.320000, 9.719998, 0.320000",
            "type": "brush"
        },
        {
            "location": "-5308.997070, 173.999908, 395.999817",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "0.000000, 0.000000, 0.000000",
            "scale": "0.320000, 9.719998, 0.320000",
            "type": "brush"
        },
        {
            "location": "-5308.997070, 173.999908, 555.999634",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "0.000000, 0.000000, 0.000000",
            "scale": "0.320000, 9.719998, 0.320000",
            "type": "brush"
        },
        {
            "location": "-5308.997070, 173.999908, 1227.999268",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "0.000000, 0.000000, 0.000000",
            "scale": "0.320000, 9.719998, 0.320000",
            "type": "brush"
        },
        {
            "location": "-5148.997070, 173.999908, 1227.999268",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "0.000000, 0.000000, 0.000000",
            "scale": "0.320000, 9.719998, 0.320000",
            "type": "brush"
        },
        {
            "location": "-5308.997070, 205.999908, 395.999817",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "-89.999939, 0.000000, 0.000000",
            "scale": "0.320000, 8.639998, 0.320000",
            "type": "brush"
        },
        {
            "location": "-5148.997070, 205.999908, 395.999817",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "-89.999939, 0.000000, 0.000000",
            "scale": "0.320000, 8.639998, 0.320000",
            "type": "brush"
        },
        {
            "location": "-5148.997070, 1149.999268, 395.999817",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "-89.999939, 0.000000, 0.000000",
            "scale": "0.320000, 8.639998, 0.320000",
            "type": "brush"
        },
        {
            "location": "-5308.997070, 1149.999268, 395.999817",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "-89.999939, 0.000000, 0.000000",
            "scale": "0.320000, 8.639998, 0.320000",
            "type": "brush"
        },
        {
            "location": "-5276.997070, 189.999908, 395.999817",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "-89.999939, 0.000000, 0.000000",
            "scale": "1.280000, 8.639998, 0.160000",
            "type": "brush"
        },
        {
            "location": "-5276.997070, 1149.999268, 395.999817",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "-89.999939, 0.000000, 0.000000",
            "scale": "1.280000, 8.639998, 0.160000",
            "type": "brush"
        },
        {
            "location": "-5308.997070, 365.999817, 587.999634",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "-89.999939, 0.000000, 0.000000",
            "scale": "0.320000, 6.399999, 0.320000",
            "type": "brush"
        },
        {
            "location": "-5276.997070, 365.999847, 395.999817",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "-89.999939, 0.000000, 0.000000",
            "scale": "1.280000, 8.639998, 0.160000",
            "type": "brush"
        },
        {
            "location": "-5308.997070, 989.999634, 395.999817",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "-89.999939, 0.000000, 0.000000",
            "scale": "0.320000, 8.639998, 0.320000",
            "type": "brush"
        },
        {
            "location": "-5276.997070, 973.999634, 395.999817",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "-89.999939, 0.000000, 0.000000",
            "scale": "1.280000, 8.639998, 0.160000",
            "type": "brush"
        },
        {
            "location": "-5276.997070, 189.999908, 1243.999268",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "0.000000, 0.000000, 0.000000",
            "scale": "1.280000, 9.439993, 0.160000",
            "type": "brush"
        },
        {
            "location": "-5259.997070, 1068.000000, 1251.909302",
            "name": "Tree",
            "rotation": "0.000000, 0.000000, 0.000000",
            "scale": "1.000000, 1.000000, 1.000000",
            "type": "prop"
        },
        {
            "location": "-5116.997070, 1117.999268, 395.999817",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "-89.999878, 0.000000, -89.999947",
            "scale": "9.279999, 8.479994, 0.160000",
            "type": "brush"
        },
        {
            "location": "-5316.997070, 205.999908, 395.999817",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "-89.999878, 0.000000, 105.000275",
            "scale": "1.280000, 8.639998, 0.080000",
            "type": "brush"
        },
        {
            "location": "-5316.997070, 989.999634, 395.999817",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "-89.999939, 0.000014, 89.999947",
            "scale": "1.280000, 8.639998, 0.080000",
            "type": "brush"
        },
        {
            "location": "-5349.997559, 303.999664, 760.499634",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
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
            "mesh": "Pipe",
            "name": "Default",
            "rotation": "-89.999939, 0.000014, 89.999947",
            "scale": "0.640000, 2.400000, 0.640000",
            "type": "brush"
        },
        {
            "location": "-5321.997559, 1011.999329, 760.499634",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
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
            "mesh": "Pipe",
            "name": "Default",
            "rotation": "-89.999939, 0.000014, 89.999947",
            "scale": "0.640000, 2.400000, 0.640000",
            "type": "brush"
        },
        {
            "location": "-5290.997070, 173.999908, 395.999817",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "0.000000, 0.000000, 0.000000",
            "scale": "1.600000, 9.719998, 0.160000",
            "type": "brush"
        },
        {
            "location": "-5316.997070, 365.999817, 395.999817",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "-89.999939, 0.000014, 89.999947",
            "scale": "3.000000, 8.639998, 0.080000",
            "type": "brush"
        },
        {
            "location": "-5321.997559, 643.999329, 760.499634",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
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
            "mesh": "Pipe",
            "name": "Default",
            "rotation": "-89.999939, 0.000014, 89.999947",
            "scale": "0.640000, 2.400000, 0.640000",
            "type": "brush"
        },
        {
            "location": "-5391.899414, 669.591675, 395.999817",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "-89.999931, 0.000020, 74.999489",
            "scale": "3.000000, 8.639998, 0.080000",
            "type": "brush"
        },
        {
            "location": "-5389.997559, 691.999329, 760.499634",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
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
            "mesh": "Pipe",
            "name": "Default",
            "rotation": "-89.999931, 0.000020, 74.999489",
            "scale": "0.640000, 2.400000, 0.640000",
            "type": "brush"
        },
        {
            "location": "-5276.997070, 173.999908, 563.999634",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "0.000000, 0.000000, 0.000000",
            "scale": "1.280000, 9.719998, 0.160000",
            "type": "brush"
        },
        {
            "location": "-5308.997070, 673.999634, 395.999817",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "-89.999939, 0.000000, 0.000000",
            "scale": "1.800000, 8.639998, 0.160000",
            "type": "brush"
        },
        {
            "location": "-6406.997070, 914.999756, 811.999634",
            "materialSets": [
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
            "rotation": "-179.999939, 0.000000, 90.000008",
            "scale": "2.720000, 6.879999, 0.160000",
            "type": "brush"
        },
        {
            "location": "-5734.997070, 1170.999268, 811.999634",
            "materialSets": [
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
            "rotation": "-179.999939, 0.000000, 90.000053",
            "scale": "0.160000, 0.160000, 1.600000",
            "type": "brush"
        },
        {
            "location": "-5734.997070, 914.999634, 811.999634",
            "materialSets": [
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
            "rotation": "-179.999939, 0.000000, 90.000053",
            "scale": "0.160000, 0.160000, 1.600000",
            "type": "brush"
        },
        {
            "location": "-6406.997070, 1170.999268, 811.999634",
            "materialSets": [
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
            "rotation": "-179.999939, 0.000000, 90.000053",
            "scale": "0.160000, 0.160000, 1.600000",
            "type": "brush"
        },
        {
            "location": "-6214.997070, 1170.999268, 811.999634",
            "materialSets": [
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
            "rotation": "-179.999939, 0.000000, 90.000053",
            "scale": "0.160000, 0.160000, 1.600000",
            "type": "brush"
        },
        {
            "location": "-6214.997070, 914.999634, 811.999634",
            "materialSets": [
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
            "rotation": "-179.999939, 0.000000, 90.000053",
            "scale": "0.160000, 0.160000, 1.600000",
            "type": "brush"
        },
        {
            "location": "-6406.997070, 914.999634, 811.999634",
            "materialSets": [
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
            "rotation": "-179.999939, 0.000000, 90.000053",
            "scale": "0.160000, 0.160000, 1.600000",
            "type": "brush"
        },
        {
            "location": "-6406.997070, 914.999756, 667.999634",
            "materialSets": [
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
            "rotation": "-179.999939, 0.000000, 90.000008",
            "scale": "2.720000, 2.080000, 0.160000",
            "type": "brush"
        },
        {
            "location": "-6390.997070, 906.999756, 667.999634",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "90.000092, 90.000000, 0.000000",
            "scale": "0.620000, 1.760000, 0.160000",
            "type": "brush"
        },
        {
            "location": "-6390.997070, 906.999756, 733.999634",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "90.000092, 90.000000, 0.000000",
            "scale": "0.620000, 1.760000, 0.160000",
            "type": "brush"
        },
        {
            "location": "-6406.997070, 914.999634, 811.999634",
            "materialSets": [
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
            "rotation": "-179.999939, 0.000000, 90.000053",
            "scale": "2.600000, 0.080000, 1.600000",
            "type": "brush"
        },
        {
            "location": "-6206.997070, 914.999634, 811.999634",
            "materialSets": [
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
            "rotation": "-179.999939, 0.000000, 90.000053",
            "scale": "2.600000, 0.080000, 1.600000",
            "type": "brush"
        },
        {
            "location": "-6406.997070, 914.999756, 733.999634",
            "materialSets": [
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
            "rotation": "-179.999939, 0.000000, 90.000008",
            "scale": "2.720000, 2.080000, 0.040000",
            "type": "brush"
        },
        {
            "location": "-6343.997559, 905.999329, 766.499634",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
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
            "mesh": "Pipe",
            "name": "Default",
            "rotation": "-179.999939, -0.000061, 89.999954",
            "scale": "0.480000, 1.600000, 0.480000",
            "type": "brush"
        },
        {
            "location": "-6343.997559, 905.999329, 700.499634",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
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
            "mesh": "Pipe",
            "name": "Default",
            "rotation": "-179.999939, -0.000061, 89.999954",
            "scale": "0.480000, 1.600000, 0.480000",
            "type": "brush"
        },
        {
            "location": "-5943.997559, 1173.999023, 810.499634",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
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
            "mesh": "Pipe",
            "name": "Default",
            "rotation": "-89.999939, 0.000034, 89.999924",
            "scale": "0.480000, 1.600000, 0.480000",
            "type": "brush"
        },
        {
            "location": "-5815.997070, 943.999634, 812.000427",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "RampConcave",
            "name": "Default",
            "rotation": "0.000000, 90.000000, 0.000000",
            "scale": "0.320000, 0.640000, 0.640000",
            "type": "brush"
        },
        {
            "location": "-5815.997070, 943.999634, 812.000427",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "RampConcave",
            "name": "Default",
            "rotation": "0.000000, 90.000000, 0.000000",
            "scale": "0.320000, 1.279999, 0.640000",
            "type": "brush"
        },
        {
            "location": "-6071.997070, 943.999634, 812.000427",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "RampConcave",
            "name": "Default",
            "rotation": "89.999748, 90.000000, 0.000000",
            "scale": "0.320000, 1.279999, 0.640000",
            "type": "brush"
        },
        {
            "location": "-6071.997070, 1159.999268, 812.000427",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "RampConcave",
            "name": "Default",
            "rotation": "-179.999863, 90.000000, 0.000000",
            "scale": "0.320000, 1.279999, 0.640000",
            "type": "brush"
        },
        {
            "location": "-5815.997070, 1159.999268, 812.000427",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "RampConcave",
            "name": "Default",
            "rotation": "-116.565308, 90.000000, -26.565033",
            "scale": "0.320000, 1.279999, 0.640000",
            "type": "brush"
        },
        {
            "location": "-6071.997070, 943.999634, 844.000427",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "RampConcave",
            "name": "Default",
            "rotation": "0.000000, -90.000000, 0.000000",
            "scale": "0.320000, 1.279999, 0.640000",
            "type": "brush"
        },
        {
            "location": "-6071.997070, 1159.999268, 844.000427",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "RampConcave",
            "name": "Default",
            "rotation": "-90.000000, -90.000000, 0.000000",
            "scale": "0.320000, 1.279999, 0.640000",
            "type": "brush"
        },
        {
            "location": "-5815.997070, 1159.999268, 844.000427",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "RampConcave",
            "name": "Default",
            "rotation": "-178.734161, -90.000000, -1.265865",
            "scale": "0.320000, 1.279999, 0.640000",
            "type": "brush"
        },
        {
            "location": "-5815.997070, 943.999634, 844.000427",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "RampConcave",
            "name": "Default",
            "rotation": "85.236237, -90.000000, 4.763644",
            "scale": "0.320000, 1.279999, 0.640000",
            "type": "brush"
        },
        {
            "location": "-5943.997559, 1165.999023, 830.499634",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
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
            "mesh": "Pipe",
            "name": "Default",
            "rotation": "-179.999939, -0.000061, -0.000061",
            "scale": "0.480000, 0.160000, 0.480000",
            "type": "brush"
        },
        {
            "location": "-5943.997070, 1119.999268, 816.000427",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "Torus",
            "name": "Default",
            "rotation": "0.000000, 0.000000, 0.000000",
            "scale": "0.320000, 0.320000, 0.320000",
            "type": "brush"
        },
        {
            "location": "-5947.997070, 1099.999268, 812.000427",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "0.000000, 0.000000, 0.000000",
            "scale": "0.080000, 0.080000, 0.080000",
            "type": "brush"
        },
        {
            "location": "-5953.037109, 1101.716675, 812.000427",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "0.000000, 0.000000, -15.000353",
            "scale": "0.080000, 0.080000, 0.080000",
            "type": "brush"
        },
        {
            "location": "-5943.997070, 1119.999268, 816.000427",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "Torus",
            "name": "Default",
            "rotation": "0.000000, 0.000000, -15.000353",
            "scale": "0.320000, 0.320000, 0.320000",
            "type": "brush"
        },
        {
            "location": "-5957.463379, 1104.678711, 812.000427",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "0.000000, 0.000000, -30.000092",
            "scale": "0.080000, 0.080000, 0.080000",
            "type": "brush"
        },
        {
            "location": "-5943.997070, 1119.999268, 816.000427",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "Torus",
            "name": "Default",
            "rotation": "0.000000, 0.000000, -30.000092",
            "scale": "0.320000, 0.320000, 0.320000",
            "type": "brush"
        },
        {
            "location": "-5960.970703, 1108.686157, 812.000427",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "0.000000, 0.000000, -45.000088",
            "scale": "0.080000, 0.080000, 0.080000",
            "type": "brush"
        },
        {
            "location": "-5943.997070, 1119.999268, 816.000427",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "Torus",
            "name": "Default",
            "rotation": "0.000000, 0.000000, -45.000088",
            "scale": "0.320000, 0.320000, 0.320000",
            "type": "brush"
        },
        {
            "location": "-5967.317871, 1113.464111, 812.000427",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "0.000000, 0.000000, -59.999905",
            "scale": "0.080000, 0.080000, 0.080000",
            "type": "brush"
        },
        {
            "location": "-5943.997070, 1119.999268, 816.000427",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "Torus",
            "name": "Default",
            "rotation": "0.000000, 0.000000, -59.999905",
            "scale": "0.320000, 0.320000, 0.320000",
            "type": "brush"
        },
        {
            "location": "-5964.351074, 1118.686646, 812.000427",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "0.000000, 0.000000, -74.999557",
            "scale": "0.080000, 0.080000, 0.080000",
            "type": "brush"
        },
        {
            "location": "-5943.997070, 1119.999268, 816.000427",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "Torus",
            "name": "Default",
            "rotation": "0.000000, 0.000000, -74.999557",
            "scale": "0.320000, 0.320000, 0.320000",
            "type": "brush"
        },
        {
            "location": "-5963.997070, 1124.000122, 812.000427",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "0.000000, 0.000000, -89.999878",
            "scale": "0.080000, 0.080000, 0.080000",
            "type": "brush"
        },
        {
            "location": "-5943.997070, 1119.999268, 816.000427",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "Torus",
            "name": "Default",
            "rotation": "0.000000, 0.000000, -89.999878",
            "scale": "0.320000, 0.320000, 0.320000",
            "type": "brush"
        },
        {
            "location": "-5962.283203, 1129.040161, 812.000427",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "0.000000, 0.000000, -105.000145",
            "scale": "0.080000, 0.080000, 0.080000",
            "type": "brush"
        },
        {
            "location": "-5943.997070, 1119.999268, 816.000427",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "Torus",
            "name": "Default",
            "rotation": "0.000000, 0.000000, -105.000145",
            "scale": "0.320000, 0.320000, 0.320000",
            "type": "brush"
        },
        {
            "location": "-5959.317871, 1133.464233, 812.000427",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "0.000000, 0.000000, -119.999939",
            "scale": "0.080000, 0.080000, 0.080000",
            "type": "brush"
        },
        {
            "location": "-5943.997070, 1119.999268, 816.000427",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "Torus",
            "name": "Default",
            "rotation": "0.000000, 0.000000, -119.999939",
            "scale": "0.320000, 0.320000, 0.320000",
            "type": "brush"
        },
        {
            "location": "-5955.311035, 1136.970093, 812.000427",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "0.000000, 0.000000, -134.999863",
            "scale": "0.080000, 0.080000, 0.080000",
            "type": "brush"
        },
        {
            "location": "-5943.997070, 1119.999268, 816.000427",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "Torus",
            "name": "Default",
            "rotation": "0.000000, 0.000000, -134.999863",
            "scale": "0.320000, 0.320000, 0.320000",
            "type": "brush"
        },
        {
            "location": "-5950.536133, 1139.320801, 812.000427",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "0.000000, 0.000000, -149.999847",
            "scale": "0.080000, 0.080000, 0.080000",
            "type": "brush"
        },
        {
            "location": "-5943.997070, 1119.999268, 816.000427",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "Torus",
            "name": "Default",
            "rotation": "0.000000, 0.000000, -149.999847",
            "scale": "0.320000, 0.320000, 0.320000",
            "type": "brush"
        },
        {
            "location": "-5945.310059, 1140.354248, 812.000427",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "0.000000, 0.000000, -164.999527",
            "scale": "0.080000, 0.080000, 0.080000",
            "type": "brush"
        },
        {
            "location": "-5943.997070, 1119.999268, 816.000427",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "Torus",
            "name": "Default",
            "rotation": "0.000000, 0.000000, -164.999527",
            "scale": "0.320000, 0.320000, 0.320000",
            "type": "brush"
        },
        {
            "location": "-5939.997070, 1140.000488, 812.000427",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "0.000000, 0.000000, -179.999756",
            "scale": "0.080000, 0.080000, 0.080000",
            "type": "brush"
        },
        {
            "location": "-5943.997070, 1119.999268, 816.000427",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "Torus",
            "name": "Default",
            "rotation": "0.000000, 0.000000, -179.999756",
            "scale": "0.320000, 0.320000, 0.320000",
            "type": "brush"
        },
        {
            "location": "-5934.956543, 1138.282959, 812.000427",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "0.000000, 0.000000, 164.999817",
            "scale": "0.080000, 0.080000, 0.080000",
            "type": "brush"
        },
        {
            "location": "-5943.997070, 1119.999268, 816.000427",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "Torus",
            "name": "Default",
            "rotation": "0.000000, 0.000000, 164.999817",
            "scale": "0.320000, 0.320000, 0.320000",
            "type": "brush"
        },
        {
            "location": "-5930.535156, 1135.320801, 812.000427",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "0.000000, 0.000000, 150.000076",
            "scale": "0.080000, 0.080000, 0.080000",
            "type": "brush"
        },
        {
            "location": "-5943.997070, 1119.999268, 816.000427",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "Torus",
            "name": "Default",
            "rotation": "0.000000, 0.000000, 150.000076",
            "scale": "0.320000, 0.320000, 0.320000",
            "type": "brush"
        },
        {
            "location": "-5927.025879, 1131.313721, 812.000427",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "0.000000, 0.000000, 135.000046",
            "scale": "0.080000, 0.080000, 0.080000",
            "type": "brush"
        },
        {
            "location": "-5943.997070, 1119.999268, 816.000427",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "Torus",
            "name": "Default",
            "rotation": "0.000000, 0.000000, 135.000046",
            "scale": "0.320000, 0.320000, 0.320000",
            "type": "brush"
        },
        {
            "location": "-5924.675781, 1126.535156, 812.000427",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "0.000000, 0.000000, 120.000053",
            "scale": "0.080000, 0.080000, 0.080000",
            "type": "brush"
        },
        {
            "location": "-5943.997070, 1119.999268, 816.000427",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "Torus",
            "name": "Default",
            "rotation": "0.000000, 0.000000, 120.000053",
            "scale": "0.320000, 0.320000, 0.320000",
            "type": "brush"
        },
        {
            "location": "-5923.642578, 1121.311768, 812.000427",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "0.000000, 0.000000, 105.000351",
            "scale": "0.080000, 0.080000, 0.080000",
            "type": "brush"
        },
        {
            "location": "-5943.997070, 1119.999268, 816.000427",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "Torus",
            "name": "Default",
            "rotation": "0.000000, 0.000000, 105.000351",
            "scale": "0.320000, 0.320000, 0.320000",
            "type": "brush"
        },
        {
            "location": "-5923.996582, 1115.998901, 812.000427",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "0.000000, 0.000000, 90.000137",
            "scale": "0.080000, 0.080000, 0.080000",
            "type": "brush"
        },
        {
            "location": "-5943.997070, 1119.999268, 816.000427",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "Torus",
            "name": "Default",
            "rotation": "0.000000, 0.000000, 90.000137",
            "scale": "0.320000, 0.320000, 0.320000",
            "type": "brush"
        },
        {
            "location": "-5925.713379, 1110.959351, 812.000427",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "0.000000, 0.000000, 74.999702",
            "scale": "0.080000, 0.080000, 0.080000",
            "type": "brush"
        },
        {
            "location": "-5943.997070, 1119.999268, 816.000427",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "Torus",
            "name": "Default",
            "rotation": "0.000000, 0.000000, 74.999702",
            "scale": "0.320000, 0.320000, 0.320000",
            "type": "brush"
        },
        {
            "location": "-5928.679199, 1106.535034, 812.000427",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "0.000000, 0.000000, 59.999905",
            "scale": "0.080000, 0.080000, 0.080000",
            "type": "brush"
        },
        {
            "location": "-5943.997070, 1119.999268, 816.000427",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "Torus",
            "name": "Default",
            "rotation": "0.000000, 0.000000, 59.999905",
            "scale": "0.320000, 0.320000, 0.320000",
            "type": "brush"
        },
        {
            "location": "-5932.683594, 1103.028687, 812.000427",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "0.000000, 0.000000, 44.999973",
            "scale": "0.080000, 0.080000, 0.080000",
            "type": "brush"
        },
        {
            "location": "-5943.997070, 1119.999268, 816.000427",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "Torus",
            "name": "Default",
            "rotation": "0.000000, 0.000000, 44.999973",
            "scale": "0.320000, 0.320000, 0.320000",
            "type": "brush"
        },
        {
            "location": "-5937.463379, 1100.678345, 812.000427",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "0.000000, 0.000000, 30.000053",
            "scale": "0.080000, 0.080000, 0.080000",
            "type": "brush"
        },
        {
            "location": "-5943.997070, 1119.999268, 816.000427",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "Torus",
            "name": "Default",
            "rotation": "0.000000, 0.000000, 30.000053",
            "scale": "0.320000, 0.320000, 0.320000",
            "type": "brush"
        },
        {
            "location": "-5942.685059, 1099.644897, 812.000427",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "0.000000, 0.000000, 15.000326",
            "scale": "0.080000, 0.080000, 0.080000",
            "type": "brush"
        },
        {
            "location": "-5943.997070, 1119.999268, 816.000427",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "Torus",
            "name": "Default",
            "rotation": "0.000000, 0.000000, 15.000326",
            "scale": "0.320000, 0.320000, 0.320000",
            "type": "brush"
        },
        {
            "location": "-5947.998047, 1099.998901, 812.000427",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "0.000000, 0.000000, 0.000000",
            "scale": "0.080000, 0.080000, 0.080000",
            "type": "brush"
        },
        {
            "location": "-5943.997070, 1119.999268, 816.000427",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "Torus",
            "name": "Default",
            "rotation": "0.000000, 0.000000, 0.000000",
            "scale": "0.320000, 0.320000, 0.320000",
            "type": "brush"
        },
        {
            "location": "-6071.998047, 943.999329, 812.000427",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "0.000000, 0.000000, 0.000000",
            "scale": "2.560000, 1.600000, 0.080000",
            "type": "brush"
        },
        {
            "location": "-6071.998047, 1135.998901, 812.000427",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "0.000000, 0.000000, 0.000000",
            "scale": "2.560000, 0.240000, 0.080000",
            "type": "brush"
        },
        {
            "location": "-5987.998047, 1103.998901, 812.000427",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "0.000000, 0.000000, 0.000000",
            "scale": "0.320000, 0.240000, 0.080000",
            "type": "brush"
        },
        {
            "location": "-5987.998047, 1115.998901, 812.000427",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "0.000000, 0.000000, 0.000000",
            "scale": "0.320000, 0.240000, 0.080000",
            "type": "brush"
        },
        {
            "location": "-5931.998047, 1115.998901, 812.000427",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "0.000000, 0.000000, 0.000000",
            "scale": "1.000000, 0.240000, 0.080000",
            "type": "brush"
        },
        {
            "location": "-5931.998047, 1103.998901, 812.000427",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "0.000000, 0.000000, 0.000000",
            "scale": "1.000000, 0.240000, 0.080000",
            "type": "brush"
        },
        {
            "location": "-6067.998047, 1115.998901, 812.000427",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "0.000000, 0.000000, 0.000000",
            "scale": "1.000000, 0.240000, 0.080000",
            "type": "brush"
        },
        {
            "location": "-6059.998047, 1103.998901, 812.000427",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "0.000000, 0.000000, 0.000000",
            "scale": "1.000000, 0.240000, 0.080000",
            "type": "brush"
        },
        {
            "location": "-5975.998047, 1159.998901, 804.000427",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "0.000000, 0.000000, 0.000000",
            "scale": "1.000000, 0.240000, 0.400000",
            "type": "brush"
        },
        {
            "location": "-6071.998047, 1159.998901, 804.000427",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "0.000000, 0.000000, 0.000000",
            "scale": "1.000000, 0.240000, 0.400000",
            "type": "brush"
        },
        {
            "location": "-5915.998047, 1159.998901, 804.000427",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "0.000000, 0.000000, 0.000000",
            "scale": "1.000000, 0.240000, 0.400000",
            "type": "brush"
        },
        {
            "location": "-5945.216797, 1119.999268, 795.999634",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "Pipe90",
            "name": "Default",
            "rotation": "0.000000, -90.000000, 0.000000",
            "scale": "0.576000, 1.344000, 1.439999",
            "type": "brush"
        },
        {
            "location": "-5943.997559, 1167.999023, 886.499634",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
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
            "mesh": "Pipe",
            "name": "Default",
            "rotation": "-144.735565, 90.000000, 35.264404",
            "scale": "0.080000, 0.240000, 0.080000",
            "type": "brush"
        },
        {
            "location": "-5943.997559, 1169.999023, 874.499634",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
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
            "mesh": "Pipe",
            "name": "Default",
            "rotation": "160.528793, 90.000000, -19.471220",
            "scale": "0.160000, 0.240000, 0.160000",
            "type": "brush"
        },
        {
            "location": "-5943.997559, 1159.999023, 874.499634",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
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
            "mesh": "Pipe",
            "name": "Default",
            "rotation": "-160.528748, 90.000000, 19.471230",
            "scale": "0.160000, 0.240000, 0.160000",
            "type": "brush"
        },
        {
            "location": "-5943.997070, 1151.999268, 874.999634",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
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
            "mesh": "Pipe90",
            "name": "Default",
            "rotation": "89.999878, 0.000000, -89.999947",
            "scale": "0.160000, 0.160000, 0.160000",
            "type": "brush"
        },
        {
            "location": "-3071.998535, -47.999992, 735.999634",
            "materialSets": [
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
            "rotation": "-179.999939, 0.000000, 0.000034",
            "scale": "2.080000, 8.479994, 0.160000",
            "type": "brush"
        },
        {
            "location": "-3135.998535, -63.999977, 735.999756",
            "materialSets": [
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
            "mesh": "RampConvex",
            "name": "Default",
            "rotation": "104.036270, -90.000000, -14.036263",
            "scale": "0.160000, 0.160000, 0.160000",
            "type": "brush"
        },
        {
            "location": "-3135.998535, -47.999989, 735.999634",
            "materialSets": [
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
            "rotation": "-179.999939, 0.000000, 0.000034",
            "scale": "0.640000, 2.240000, 0.160000",
            "type": "brush"
        },
        {
            "location": "-3071.998535, -272.000000, 720.000244",
            "materialSets": [
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
            "mesh": "RampConcave",
            "name": "Default",
            "rotation": "-90.000000, 90.000000, 0.000000",
            "scale": "0.160000, 0.160000, 0.160000",
            "type": "brush"
        },
        {
            "location": "-2892.998535, -47.999977, 719.999634",
            "materialSets": [
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
            "rotation": "-179.999939, 0.000000, 0.000061",
            "scale": "0.320000, 0.320000, 3.680000",
            "type": "brush"
        },
        {
            "location": "-3135.998535, -255.999908, 735.999756",
            "materialSets": [
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
            "mesh": "RampConvex",
            "name": "Default",
            "rotation": "-179.999939, -90.000000, -0.000009",
            "scale": "0.160000, 0.160000, 0.160000",
            "type": "brush"
        },
        {
            "location": "-3151.998535, -64.000008, 735.999634",
            "materialSets": [
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
            "rotation": "-179.999939, 0.000000, 0.000034",
            "scale": "0.160000, 1.920000, 0.160000",
            "type": "brush"
        },
        {
            "location": "-3071.998535, -671.999634, 720.000244",
            "materialSets": [
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
            "mesh": "RampConcave",
            "name": "Default",
            "rotation": "-1.898438, 90.000000, -1.898412",
            "scale": "0.160000, 0.160000, 0.160000",
            "type": "brush"
        },
        {
            "location": "-3135.998535, -671.999634, 735.999634",
            "materialSets": [
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
            "rotation": "-179.999939, 0.000000, 0.000034",
            "scale": "0.640000, 2.240000, 0.160000",
            "type": "brush"
        },
        {
            "location": "-3135.998535, -687.999634, 735.999756",
            "materialSets": [
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
            "mesh": "RampConvex",
            "name": "Default",
            "rotation": "104.036270, -90.000000, -14.036263",
            "scale": "0.160000, 0.160000, 0.160000",
            "type": "brush"
        },
        {
            "location": "-3151.998535, -687.999634, 735.999634",
            "materialSets": [
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
            "rotation": "-179.999939, 0.000000, 0.000034",
            "scale": "0.160000, 1.920000, 0.160000",
            "type": "brush"
        },
        {
            "location": "-3135.998535, -879.999634, 735.999756",
            "materialSets": [
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
            "mesh": "RampConvex",
            "name": "Default",
            "rotation": "179.999847, -90.000000, 0.000191",
            "scale": "0.160000, 0.160000, 0.160000",
            "type": "brush"
        },
        {
            "location": "-3135.998535, -63.999977, 383.999817",
            "materialSets": [
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
                },
                {
                    "group": 0,
                    "surface": "wall"
                }
            ],
            "mesh": "Cylinder",
            "name": "Default",
            "rotation": "0.000000, 0.000000, 0.000000",
            "scale": "0.320000, 0.320000, 3.519999",
            "type": "brush"
        },
        {
            "location": "-2892.998535, -863.999634, 719.999634",
            "materialSets": [
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
            "rotation": "-179.999939, 0.000000, 0.000061",
            "scale": "0.320000, 0.320000, 3.680000",
            "type": "brush"
        },
        {
            "location": "-3135.998535, -879.999634, 383.999817",
            "materialSets": [
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
                },
                {
                    "group": 0,
                    "surface": "wall"
                }
            ],
            "mesh": "Cylinder",
            "name": "Default",
            "rotation": "0.000000, 0.000000, 0.000000",
            "scale": "0.320000, 0.320000, 3.519999",
            "type": "brush"
        },
        {
            "location": "-3111.998535, -80.000015, 737.999634",
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
                    "surface": "wall"
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
            "rotation": "-179.999939, 0.000000, 0.000034",
            "scale": "1.200000, 1.500000, 0.020000",
            "type": "brush"
        },
        {
            "location": "-3111.998535, -229.999908, 737.999756",
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
            "mesh": "RampConvex",
            "name": "Default",
            "rotation": "179.999847, -90.000000, 0.000191",
            "scale": "0.020000, 0.020000, 0.020000",
            "type": "brush"
        },
        {
            "location": "-3113.998535, -80.000015, 737.999634",
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
                    "surface": "wall"
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
            "rotation": "-179.999939, 0.000000, 0.000034",
            "scale": "0.020000, 1.500000, 0.020000",
            "type": "brush"
        },
        {
            "location": "-2991.998535, -229.999908, 737.999756",
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
            "mesh": "RampConvex",
            "name": "Default",
            "rotation": "-116.564972, -90.000000, 26.565033",
            "scale": "0.020000, 0.020000, 0.020000",
            "type": "brush"
        },
        {
            "location": "-3111.998535, -78.000015, 737.999634",
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
                    "surface": "wall"
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
            "rotation": "-179.999939, 0.000000, 0.000034",
            "scale": "1.200000, 0.020000, 0.020000",
            "type": "brush"
        },
        {
            "location": "-3111.998535, -229.999924, 737.999634",
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
                    "surface": "wall"
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
            "rotation": "-179.999939, 0.000000, 0.000034",
            "scale": "1.200000, 0.020000, 0.020000",
            "type": "brush"
        },
        {
            "location": "-2991.998535, -80.000015, 737.999634",
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
                    "surface": "wall"
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
            "rotation": "-179.999939, 0.000000, 0.000034",
            "scale": "0.020000, 1.500000, 0.020000",
            "type": "brush"
        },
        {
            "location": "-2991.998535, -79.999954, 737.999756",
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
            "mesh": "RampConvex",
            "name": "Default",
            "rotation": "-0.004883, -90.000000, 0.004918",
            "scale": "0.020000, 0.020000, 0.020000",
            "type": "brush"
        },
        {
            "location": "-3111.998535, -79.999954, 737.999756",
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
            "mesh": "RampConvex",
            "name": "Default",
            "rotation": "89.999977, -90.000000, 0.000000",
            "scale": "0.020000, 0.020000, 0.020000",
            "type": "brush"
        },
        {
            "location": "-3135.998535, -95.999969, 399.999817",
            "materialSets": [
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
            "rotation": "-179.999939, 0.000000, 0.000034",
            "scale": "1.960000, 0.960000, 0.160000",
            "type": "brush"
        },
        {
            "location": "-3135.998535, -95.999969, 399.999817",
            "materialSets": [
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
            "rotation": "-89.999939, -0.000034, 0.000000",
            "scale": "1.960000, 1.120000, 0.160000",
            "type": "brush"
        },
        {
            "location": "-3135.998535, -175.999924, 399.999817",
            "materialSets": [
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
            "rotation": "-89.999939, -0.000034, 0.000000",
            "scale": "1.960000, 1.120000, 0.160000",
            "type": "brush"
        },
        {
            "location": "-3135.998535, -95.999969, 528.000000",
            "materialSets": [
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
            "rotation": "-179.999939, 0.000000, 0.000034",
            "scale": "1.960000, 0.960000, 0.160000",
            "type": "brush"
        },
        {
            "location": "-2943.998535, -95.999969, 383.999817",
            "materialSets": [
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
            "rotation": "-179.999908, 90.000000, -0.000036",
            "scale": "1.440000, 0.960000, 0.160000",
            "type": "brush"
        },
        {
            "location": "-3133.998535, -95.999969, 383.999817",
            "materialSets": [
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
            "rotation": "-179.999908, 90.000000, -0.000036",
            "scale": "1.440000, 0.960000, 0.160000",
            "type": "brush"
        },
        {
            "location": "-3135.998535, -175.999939, 431.999817",
            "materialSets": [
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
            "rotation": "-179.999908, 90.000000, -0.000036",
            "scale": "0.160000, 0.160000, 0.160000",
            "type": "brush"
        },
        {
            "location": "-3135.998535, -160.000031, 431.999817",
            "materialSets": [
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
            "rotation": "-179.999908, 90.000000, -0.000036",
            "scale": "0.160000, 0.160000, 0.160000",
            "type": "brush"
        },
        {
            "location": "-3135.998535, -144.000031, 431.999817",
            "materialSets": [
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
            "rotation": "-179.999908, 90.000000, -0.000036",
            "scale": "0.160000, 0.160000, 0.160000",
            "type": "brush"
        },
        {
            "location": "-3135.998535, -128.000031, 431.999817",
            "materialSets": [
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
            "rotation": "-179.999908, 90.000000, -0.000036",
            "scale": "0.160000, 0.160000, 0.160000",
            "type": "brush"
        },
        {
            "location": "-3135.998535, -111.999985, 431.999817",
            "materialSets": [
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
            "rotation": "-179.999908, 90.000000, -0.000036",
            "scale": "0.160000, 0.160000, 0.160000",
            "type": "brush"
        },
        {
            "location": "-3135.998535, -160.000031, 415.999817",
            "materialSets": [
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
            "rotation": "-179.999908, 90.000000, -0.000036",
            "scale": "0.160000, 0.160000, 0.160000",
            "type": "brush"
        },
        {
            "location": "-3135.998535, -160.000031, 399.999817",
            "materialSets": [
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
            "rotation": "-179.999908, 90.000000, -0.000036",
            "scale": "0.160000, 0.160000, 0.160000",
            "type": "brush"
        },
        {
            "location": "-3135.998535, -175.999939, 399.999817",
            "materialSets": [
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
            "rotation": "-179.999908, 90.000000, -0.000036",
            "scale": "0.160000, 0.160000, 0.160000",
            "type": "brush"
        },
        {
            "location": "-3135.998535, -175.999939, 415.999817",
            "materialSets": [
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
            "rotation": "-179.999908, 90.000000, -0.000036",
            "scale": "0.160000, 0.160000, 0.160000",
            "type": "brush"
        },
        {
            "location": "-3135.998535, -128.000031, 415.999817",
            "materialSets": [
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
            "rotation": "-179.999908, 90.000000, -0.000036",
            "scale": "0.160000, 0.160000, 0.160000",
            "type": "brush"
        },
        {
            "location": "-3135.998535, -128.000031, 399.999817",
            "materialSets": [
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
            "rotation": "-179.999908, 90.000000, -0.000036",
            "scale": "0.160000, 0.160000, 0.160000",
            "type": "brush"
        },
        {
            "location": "-3135.998535, -144.000031, 399.999817",
            "materialSets": [
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
            "rotation": "-179.999908, 90.000000, -0.000036",
            "scale": "0.160000, 0.160000, 0.160000",
            "type": "brush"
        },
        {
            "location": "-3135.998535, -111.999985, 399.999817",
            "materialSets": [
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
            "rotation": "-179.999908, 90.000000, -0.000036",
            "scale": "0.160000, 0.160000, 0.160000",
            "type": "brush"
        },
        {
            "location": "-3135.998535, -111.999985, 415.999817",
            "materialSets": [
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
            "rotation": "-179.999908, 90.000000, -0.000036",
            "scale": "0.160000, 0.160000, 0.160000",
            "type": "brush"
        },
        {
            "location": "-3135.998535, -144.000031, 415.999817",
            "materialSets": [
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
            "rotation": "-179.999908, 90.000000, -0.000036",
            "scale": "0.160000, 0.160000, 0.160000",
            "type": "brush"
        },
        {
            "location": "-3135.998535, -175.999939, 463.999817",
            "materialSets": [
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
            "rotation": "-179.999908, 90.000000, -0.000036",
            "scale": "0.160000, 0.160000, 0.160000",
            "type": "brush"
        },
        {
            "location": "-3135.998535, -175.999939, 479.999817",
            "materialSets": [
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
            "rotation": "-179.999908, 90.000000, -0.000036",
            "scale": "0.160000, 0.160000, 0.160000",
            "type": "brush"
        },
        {
            "location": "-3135.998535, -160.000031, 479.999817",
            "materialSets": [
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
            "rotation": "-179.999908, 90.000000, -0.000036",
            "scale": "0.160000, 0.160000, 0.160000",
            "type": "brush"
        },
        {
            "location": "-3135.998535, -144.000031, 479.999817",
            "materialSets": [
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
            "rotation": "-179.999908, 90.000000, -0.000036",
            "scale": "0.160000, 0.160000, 0.160000",
            "type": "brush"
        },
        {
            "location": "-3135.998535, -128.000031, 479.999817",
            "materialSets": [
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
            "rotation": "-179.999908, 90.000000, -0.000036",
            "scale": "0.160000, 0.160000, 0.160000",
            "type": "brush"
        },
        {
            "location": "-3135.998535, -111.999985, 479.999817",
            "materialSets": [
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
            "rotation": "-179.999908, 90.000000, -0.000036",
            "scale": "0.160000, 0.160000, 0.160000",
            "type": "brush"
        },
        {
            "location": "-3135.998535, -111.999985, 463.999817",
            "materialSets": [
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
            "rotation": "-179.999908, 90.000000, -0.000036",
            "scale": "0.160000, 0.160000, 0.160000",
            "type": "brush"
        },
        {
            "location": "-3135.998535, -128.000031, 463.999817",
            "materialSets": [
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
            "rotation": "-179.999908, 90.000000, -0.000036",
            "scale": "0.160000, 0.160000, 0.160000",
            "type": "brush"
        },
        {
            "location": "-3135.998535, -144.000031, 463.999817",
            "materialSets": [
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
            "rotation": "-179.999908, 90.000000, -0.000036",
            "scale": "0.160000, 0.160000, 0.160000",
            "type": "brush"
        },
        {
            "location": "-3135.998535, -160.000031, 463.999817",
            "materialSets": [
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
            "rotation": "-179.999908, 90.000000, -0.000036",
            "scale": "0.160000, 0.160000, 0.160000",
            "type": "brush"
        },
        {
            "location": "-3135.998535, -175.999939, 463.999817",
            "materialSets": [
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
            "rotation": "-179.999908, 90.000000, -0.000036",
            "scale": "0.160000, 0.160000, 0.160000",
            "type": "brush"
        },
        {
            "location": "-3121.998535, -143.999908, 423.999817",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "Cylinder",
            "name": "Default",
            "rotation": "0.000000, 90.000000, 0.000000",
            "scale": "0.080000, 0.080000, 0.160000",
            "type": "brush"
        },
        {
            "location": "-3119.998535, -167.999908, 503.999817",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "Cylinder",
            "name": "Default",
            "rotation": "0.000000, 90.000000, 0.000000",
            "scale": "0.080000, 0.080000, 0.160000",
            "type": "brush"
        },
        {
            "location": "-3133.998535, -144.000031, 495.999817",
            "materialSets": [
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
            "rotation": "-179.999908, 90.000000, -0.000036",
            "scale": "0.160000, 0.160000, 0.160000",
            "type": "brush"
        },
        {
            "location": "-3133.998535, -160.000031, 495.999817",
            "materialSets": [
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
            "rotation": "-179.999908, 90.000000, -0.000036",
            "scale": "0.160000, 0.160000, 0.160000",
            "type": "brush"
        },
        {
            "location": "-3133.998535, -175.999939, 495.999817",
            "materialSets": [
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
            "rotation": "-179.999908, 90.000000, -0.000036",
            "scale": "0.160000, 0.160000, 0.160000",
            "type": "brush"
        },
        {
            "location": "-3133.998535, -128.000031, 495.999817",
            "materialSets": [
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
            "rotation": "-179.999908, 90.000000, -0.000036",
            "scale": "0.160000, 0.160000, 0.160000",
            "type": "brush"
        },
        {
            "location": "-3133.998535, -111.999985, 495.999817",
            "materialSets": [
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
            "rotation": "-179.999908, 90.000000, -0.000036",
            "scale": "0.160000, 0.160000, 0.160000",
            "type": "brush"
        },
        {
            "location": "-3119.998535, -155.999908, 503.999817",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "Cylinder",
            "name": "Default",
            "rotation": "0.000000, 90.000000, 0.000000",
            "scale": "0.080000, 0.080000, 0.160000",
            "type": "brush"
        },
        {
            "location": "-3119.998535, -119.999954, 503.999817",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "Cylinder",
            "name": "Default",
            "rotation": "0.000000, 90.000000, 0.000000",
            "scale": "0.080000, 0.080000, 0.160000",
            "type": "brush"
        },
        {
            "location": "-3135.998535, -831.999634, 399.999817",
            "materialSets": [
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
            "rotation": "-89.999939, -0.000034, 0.000000",
            "scale": "1.960000, 1.920000, 0.160000",
            "type": "brush"
        },
        {
            "location": "-3135.998535, -655.999634, 607.999634",
            "materialSets": [
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
            "rotation": "-179.999939, 0.000000, 0.000034",
            "scale": "1.960000, 1.920000, 0.160000",
            "type": "brush"
        },
        {
            "location": "-3135.998535, -655.999634, 536.000000",
            "materialSets": [
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
            "rotation": "-179.999939, 0.000000, 0.000034",
            "scale": "1.960000, 1.920000, 0.080000",
            "type": "brush"
        },
        {
            "location": "-3135.998535, -655.999634, 399.999817",
            "materialSets": [
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
            "rotation": "-179.999939, 0.000000, 0.000034",
            "scale": "1.960000, 1.920000, 0.160000",
            "type": "brush"
        },
        {
            "location": "-2943.998535, -655.999634, 383.999817",
            "materialSets": [
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
            "rotation": "-179.999908, 90.000000, -0.000036",
            "scale": "2.240000, 1.920000, 0.160000",
            "type": "brush"
        },
        {
            "location": "-3135.998535, -655.999634, 399.999817",
            "materialSets": [
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
            "rotation": "-89.999939, -0.000034, 0.000000",
            "scale": "1.960000, 1.920000, 0.160000",
            "type": "brush"
        },
        {
            "location": "-3143.998535, -663.999634, 535.999634",
            "materialSets": [
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
            "rotation": "-179.999908, 90.000000, -0.000036",
            "scale": "0.640000, 1.760000, 0.080000",
            "type": "brush"
        },
        {
            "location": "-3135.998535, -655.999634, 463.999817",
            "materialSets": [
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
            "rotation": "-179.999939, 0.000000, 0.000034",
            "scale": "1.960000, 1.920000, 0.080000",
            "type": "brush"
        },
        {
            "location": "-3143.998535, -663.999634, 391.999786",
            "materialSets": [
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
            "rotation": "-179.999908, 90.000000, -0.000036",
            "scale": "0.640000, 1.760000, 0.080000",
            "type": "brush"
        },
        {
            "location": "-3143.998535, -663.999634, 463.999786",
            "materialSets": [
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
            "rotation": "-179.999908, 90.000000, -0.000036",
            "scale": "0.640000, 1.760000, 0.080000",
            "type": "brush"
        },
        {
            "location": "-3143.998535, -731.999634, 559.999634",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "Cylinder",
            "name": "Default",
            "rotation": "-90.000000, 90.000000, 0.000000",
            "scale": "0.080000, 0.080000, 0.400000",
            "type": "brush"
        },
        {
            "location": "-3143.998535, -731.999634, 479.999817",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "Cylinder",
            "name": "Default",
            "rotation": "-82.874969, 90.000000, 7.125023",
            "scale": "0.080000, 0.080000, 0.400000",
            "type": "brush"
        },
        {
            "location": "-3143.998535, -731.999634, 415.999817",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "Cylinder",
            "name": "Default",
            "rotation": "-90.000000, 90.000000, 0.000000",
            "scale": "0.080000, 0.080000, 0.400000",
            "type": "brush"
        },
        {
            "location": "-3039.998535, -183.999908, 737.999695",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ground"
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
            "mesh": "NarrowCapsule",
            "name": "Default",
            "rotation": "0.000000, -90.000000, 0.000000",
            "scale": "0.160000, 0.280000, 0.240000",
            "type": "brush"
        },
        {
            "location": "-3033.998535, -182.999908, 741.999756",
            "materialSets": [
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
                },
                {
                    "group": 0,
                    "surface": "wall"
                }
            ],
            "mesh": "Cylinder",
            "name": "Default",
            "rotation": "-89.999939, 0.000000, 0.000000",
            "scale": "0.030000, 0.020000, 0.020000",
            "type": "brush"
        },
        {
            "location": "-3028.998535, -183.999924, 738.999634",
            "materialSets": [
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
            "rotation": "-179.999939, 0.000000, 89.999954",
            "scale": "0.010000, 0.400000, 0.010000",
            "type": "brush"
        },
        {
            "location": "-2989.998535, -183.999924, 737.999634",
            "materialSets": [
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
            "rotation": "-179.999939, 0.000000, 89.999954",
            "scale": "0.010000, 0.400000, 0.010000",
            "type": "brush"
        },
        {
            "location": "-2950.998535, -182.999924, 737.999634",
            "materialSets": [
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
            "rotation": "-179.999939, 0.000000, 89.999954",
            "scale": "0.010000, 0.400000, 0.010000",
            "type": "brush"
        },
        {
            "location": "-2911.998535, -181.999924, 737.999634",
            "materialSets": [
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
            "rotation": "-179.999939, 0.000000, 89.999954",
            "scale": "0.010000, 0.400000, 0.010000",
            "type": "brush"
        },
        {
            "location": "-2872.998535, -180.999924, 737.999634",
            "materialSets": [
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
            "rotation": "-179.999939, 0.000000, 89.999954",
            "scale": "0.010000, 0.090000, 0.010000",
            "type": "brush"
        },
        {
            "location": "-2862.998535, -180.999924, 737.999634",
            "materialSets": [
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
            "rotation": "89.999954, -0.000027, 89.999954",
            "scale": "0.010000, 0.300000, 0.010000",
            "type": "brush"
        },
        {
            "location": "-2862.998535, -180.999924, 709.999634",
            "materialSets": [
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
            "rotation": "64.642395, -0.000027, 89.999947",
            "scale": "0.010000, 0.300000, 0.010000",
            "type": "brush"
        },
        {
            "location": "-2875.998535, -180.999924, 682.999634",
            "materialSets": [
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
            "rotation": "64.642487, -0.000027, 71.349060",
            "scale": "0.010000, 0.300000, 0.010000",
            "type": "brush"
        },
        {
            "location": "-2887.998535, -176.999924, 656.999634",
            "materialSets": [
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
            "rotation": "75.846573, 3.752417, 71.717155",
            "scale": "0.010000, 0.300000, 0.010000",
            "type": "brush"
        },
        {
            "location": "-2893.998535, -172.999924, 628.999634",
            "materialSets": [
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
            "rotation": "69.998283, -6.732175, 72.263741",
            "scale": "0.010000, 0.350000, 0.010000",
            "type": "brush"
        },
        {
            "location": "-2921.998535, -172.999924, 542.000000",
            "materialSets": [
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
            "rotation": "75.846436, 3.752417, 71.717094",
            "scale": "0.010000, 0.300000, 0.010000",
            "type": "brush"
        },
        {
            "location": "-2915.998535, -172.999924, 569.999634",
            "materialSets": [
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
            "rotation": "78.525711, -4.362025, 71.702774",
            "scale": "0.010000, 0.300000, 0.010000",
            "type": "brush"
        },
        {
            "location": "-2905.998535, -172.999924, 597.999634",
            "materialSets": [
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
            "rotation": "71.389587, -6.666783, 72.389427",
            "scale": "0.010000, 0.300000, 0.010000",
            "type": "brush"
        },
        {
            "location": "-2871.998535, -304.999847, 479.999817",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "-179.999908, 90.000000, -0.000036",
            "scale": "0.240000, 0.240000, 0.240000",
            "type": "brush"
        },
        {
            "location": "-2872.998535, -308.999847, 483.999817",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "-179.999908, 90.000000, -0.000036",
            "scale": "0.160000, 0.160000, 0.240000",
            "type": "brush"
        },
        {
            "location": "-2874.998535, -314.999847, 489.999817",
            "materialSets": [
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
            "rotation": "13.698368, -9.334717, 0.397461",
            "scale": "0.010000, 0.300000, 0.010000",
            "type": "brush"
        },
        {
            "location": "-2859.998535, -316.999817, 490.999817",
            "materialSets": [
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
                },
                {
                    "group": 0,
                    "surface": "wall"
                }
            ],
            "mesh": "Cylinder",
            "name": "Default",
            "rotation": "0.000000, 90.000000, 0.000000",
            "scale": "0.120000, 0.120000, 0.160000",
            "type": "brush"
        },
        {
            "location": "-2875.998535, -286.000031, 482.999817",
            "materialSets": [
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
            "rotation": "13.698423, -9.334717, 0.397461",
            "scale": "0.010000, 0.300000, 0.010000",
            "type": "brush"
        },
        {
            "location": "-2876.998535, -258.000031, 475.999817",
            "materialSets": [
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
            "rotation": "13.698542, -9.334717, 19.064173",
            "scale": "0.010000, 0.300000, 0.010000",
            "type": "brush"
        },
        {
            "location": "-2886.998535, -231.999939, 468.999817",
            "materialSets": [
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
            "rotation": "10.801631, -7.766690, 28.903149",
            "scale": "0.010000, 0.300000, 0.010000",
            "type": "brush"
        },
        {
            "location": "-2900.998535, -206.999939, 462.999817",
            "materialSets": [
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
            "rotation": "4.725254, 1.254432, 50.012722",
            "scale": "0.010000, 0.400000, 0.010000",
            "type": "brush"
        },
        {
            "location": "-2897.998535, -463.999817, 734.000366",
            "materialSets": [
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
                },
                {
                    "group": 0,
                    "surface": "wall"
                }
            ],
            "mesh": "Cylinder",
            "name": "Default",
            "rotation": "0.000000, 0.000000, 0.000000",
            "scale": "0.640000, 0.960000, 0.040000",
            "type": "brush"
        },
        {
            "location": "-2885.998535, -463.999817, 736.000366",
            "materialSets": [
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
                },
                {
                    "group": 0,
                    "surface": "wall"
                }
            ],
            "mesh": "Cylinder",
            "name": "Default",
            "rotation": "0.000000, 14.999996, 0.000000",
            "scale": "0.060000, 0.060000, 0.320000",
            "type": "brush"
        },
        {
            "location": "-2899.998535, -347.999847, 893.999634",
            "materialSets": [
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
            "rotation": "-179.999939, 0.000000, 0.000034",
            "scale": "0.080000, 2.400000, 1.360000",
            "type": "brush"
        },
        {
            "location": "-2955.053711, -741.882141, 734.000366",
            "materialSets": [
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
                },
                {
                    "group": 0,
                    "surface": "wall"
                }
            ],
            "mesh": "Cylinder",
            "name": "Default",
            "rotation": "0.000000, 0.000000, -44.999996",
            "scale": "0.640000, 0.960000, 0.040000",
            "type": "brush"
        },
        {
            "location": "-2954.568604, -742.367493, 736.000366",
            "materialSets": [
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
                },
                {
                    "group": 0,
                    "surface": "wall"
                }
            ],
            "mesh": "Cylinder",
            "name": "Default",
            "rotation": "0.000000, 0.000000, -44.999996",
            "scale": "0.060000, 0.060000, 0.320000",
            "type": "brush"
        },
        {
            "location": "-2893.998535, -669.999634, 865.999634",
            "materialSets": [
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
            "rotation": "-179.999939, 0.000000, -44.999939",
            "scale": "0.080000, 1.920000, 1.080000",
            "type": "brush"
        },
        {
            "location": "-2863.998535, 1183.999268, 1147.999268",
            "materialSets": [
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
            "rotation": "-179.999939, 0.000000, -89.999939",
            "scale": "3.080000, 8.479994, 0.160000",
            "type": "brush"
        },
        {
            "location": "-2863.998535, 1183.999268, 399.999817",
            "materialSets": [
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
            "rotation": "-179.999939, 0.000000, -89.999939",
            "scale": "3.080000, 8.479994, 0.160000",
            "type": "brush"
        },
        {
            "location": "-2863.998535, 1183.999268, 399.999817",
            "materialSets": [
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
            "rotation": "-89.999931, -0.000061, -89.999931",
            "scale": "3.079999, 7.319999, 0.160000",
            "type": "brush"
        },
        {
            "location": "-3695.998535, 1183.999268, 399.999817",
            "materialSets": [
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
            "rotation": "-89.999931, -0.000061, -89.999931",
            "scale": "3.079999, 7.319999, 0.160000",
            "type": "brush"
        },
        {
            "location": "-2863.998535, 1167.999268, 399.999817",
            "materialSets": [
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
            "rotation": "-89.999939, -0.000061, -179.999939",
            "scale": "8.479994, 7.319999, 0.160000",
            "type": "brush"
        },
        {
            "location": "-3135.998535, 1183.999268, 399.999817",
            "materialSets": [
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
            "rotation": "-89.999931, -0.000061, -89.999931",
            "scale": "3.079999, 7.319999, 0.160000",
            "type": "brush"
        },
        {
            "location": "-2863.998535, 1183.999268, 783.999634",
            "materialSets": [
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
            "rotation": "-179.999939, 0.000000, -89.999939",
            "scale": "3.079999, 2.879999, 0.160000",
            "type": "brush"
        },
        {
            "location": "-2863.998535, 1183.999268, 528.000000",
            "materialSets": [
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
            "rotation": "-179.999939, 0.000000, -89.999939",
            "scale": "3.079999, 2.879999, 0.160000",
            "type": "brush"
        },
        {
            "location": "-3415.998535, 883.999634, 399.999817",
            "materialSets": [
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
            "rotation": "-89.999939, -0.000061, 0.000065",
            "scale": "2.720000, 7.319999, 0.160000",
            "type": "brush"
        },
        {
            "location": "-3401.998535, 867.999634, 783.999634",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "Cylinder",
            "name": "Default",
            "rotation": "-179.999939, 0.000034, -89.999939",
            "scale": "0.080000, 0.080000, 0.320000",
            "type": "brush"
        },
        {
            "location": "-3697.998535, 883.999634, 399.999817",
            "materialSets": [
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
            "rotation": "-89.999939, -0.000061, 0.000065",
            "scale": "2.720000, 7.319999, 0.160000",
            "type": "brush"
        },
        {
            "location": "-2863.998535, 1183.999268, 1039.999268",
            "materialSets": [
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
            "rotation": "-179.999939, 0.000000, -89.999939",
            "scale": "3.079999, 2.879999, 0.160000",
            "type": "brush"
        },
        {
            "location": "-3439.998535, 867.999634, 783.999634",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "Cylinder",
            "name": "Default",
            "rotation": "-179.999939, 0.000034, -89.999939",
            "scale": "0.080000, 0.080000, 0.320000",
            "type": "brush"
        },
        {
            "location": "-3727.998535, 1167.999268, 415.999817",
            "materialSets": [
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
            "rotation": "-179.999939, 0.000000, -89.999939",
            "scale": "8.959994, 12.799997, 0.160000",
            "type": "brush"
        },
        {
            "location": "-3727.998535, 1167.999268, 415.999817",
            "materialSets": [
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
            "rotation": "-89.999939, 90.000000, 0.000000",
            "scale": "1.440000, 12.799997, 0.160000",
            "type": "brush"
        },
        {
            "location": "-3727.998535, 287.999817, 415.999817",
            "materialSets": [
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
            "rotation": "-116.564972, 90.000000, -26.565033",
            "scale": "1.440000, 12.799997, 0.160000",
            "type": "brush"
        },
        {
            "location": "-3743.998535, 287.999817, 383.999817",
            "materialSets": [
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
            "rotation": "-179.999908, 90.000000, -0.000036",
            "scale": "0.160000, 0.160000, 0.160000",
            "type": "brush"
        },
        {
            "location": "-3743.998535, 319.999817, 383.999817",
            "materialSets": [
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
            "rotation": "-179.999908, 90.000000, -0.000036",
            "scale": "0.160000, 0.160000, 0.160000",
            "type": "brush"
        },
        {
            "location": "-3743.998535, 1167.999268, 383.999817",
            "materialSets": [
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
            "rotation": "-179.999908, 90.000000, -0.000036",
            "scale": "0.160000, 0.160000, 0.160000",
            "type": "brush"
        },
        {
            "location": "-3775.998535, 287.999817, 383.999817",
            "materialSets": [
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
            "rotation": "-179.999908, 90.000000, -0.000036",
            "scale": "0.160000, 0.160000, 0.160000",
            "type": "brush"
        },
        {
            "location": "-3743.998535, 303.999817, 383.999817",
            "materialSets": [
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
            "rotation": "-179.999908, 90.000000, -0.000036",
            "scale": "0.160000, 0.160000, 0.160000",
            "type": "brush"
        },
        {
            "location": "-3759.998535, 287.999817, 383.999817",
            "materialSets": [
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
            "rotation": "-179.999908, 90.000000, -0.000036",
            "scale": "0.160000, 0.160000, 0.160000",
            "type": "brush"
        },
        {
            "location": "-3759.998535, 1167.999268, 383.999817",
            "materialSets": [
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
            "rotation": "-179.999908, 90.000000, -0.000036",
            "scale": "0.160000, 0.160000, 0.160000",
            "type": "brush"
        },
        {
            "location": "-3775.998535, 1167.999268, 383.999817",
            "materialSets": [
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
            "rotation": "-179.999908, 90.000000, -0.000036",
            "scale": "0.160000, 0.160000, 0.160000",
            "type": "brush"
        },
        {
            "location": "-3743.998535, 1151.999268, 383.999817",
            "materialSets": [
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
            "rotation": "-179.999908, 90.000000, -0.000036",
            "scale": "0.160000, 0.160000, 0.160000",
            "type": "brush"
        },
        {
            "location": "-3743.998535, 1135.999268, 383.999817",
            "materialSets": [
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
            "rotation": "-179.999908, 90.000000, -0.000036",
            "scale": "0.160000, 0.160000, 0.160000",
            "type": "brush"
        },
        {
            "location": "-5007.997070, 1167.999268, 383.999817",
            "materialSets": [
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
            "rotation": "-179.999908, 90.000000, -0.000036",
            "scale": "0.160000, 0.160000, 0.160000",
            "type": "brush"
        },
        {
            "location": "-4991.997070, 1167.999268, 383.999817",
            "materialSets": [
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
            "rotation": "-179.999908, 90.000000, -0.000036",
            "scale": "0.160000, 0.160000, 0.160000",
            "type": "brush"
        },
        {
            "location": "-4975.997070, 1167.999268, 383.999817",
            "materialSets": [
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
            "rotation": "-179.999908, 90.000000, -0.000036",
            "scale": "0.160000, 0.160000, 0.160000",
            "type": "brush"
        },
        {
            "location": "-5007.997070, 1151.999268, 383.999817",
            "materialSets": [
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
            "rotation": "-179.999908, 90.000000, -0.000036",
            "scale": "0.160000, 0.160000, 0.160000",
            "type": "brush"
        },
        {
            "location": "-5007.997070, 1135.999268, 383.999817",
            "materialSets": [
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
            "rotation": "-179.999908, 90.000000, -0.000036",
            "scale": "0.160000, 0.160000, 0.160000",
            "type": "brush"
        },
        {
            "location": "-5007.997070, 287.999817, 383.999817",
            "materialSets": [
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
            "rotation": "-179.999908, 90.000000, -0.000036",
            "scale": "0.160000, 0.160000, 0.160000",
            "type": "brush"
        },
        {
            "location": "-5007.997070, 303.999817, 383.999817",
            "materialSets": [
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
            "rotation": "-179.999908, 90.000000, -0.000036",
            "scale": "0.160000, 0.160000, 0.160000",
            "type": "brush"
        },
        {
            "location": "-5007.997070, 319.999817, 383.999817",
            "materialSets": [
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
            "rotation": "-179.999908, 90.000000, -0.000036",
            "scale": "0.160000, 0.160000, 0.160000",
            "type": "brush"
        },
        {
            "location": "-4991.997070, 287.999817, 383.999817",
            "materialSets": [
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
            "rotation": "-179.999908, 90.000000, -0.000036",
            "scale": "0.160000, 0.160000, 0.160000",
            "type": "brush"
        },
        {
            "location": "-4975.997070, 287.999817, 383.999817",
            "materialSets": [
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
            "rotation": "-179.999908, 90.000000, -0.000036",
            "scale": "0.160000, 0.160000, 0.160000",
            "type": "brush"
        },
        {
            "location": "-3743.998535, 1167.999268, 415.999817",
            "materialSets": [
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
            "rotation": "-176.207306, 90.000000, 3.792679",
            "scale": "1.440000, 8.959993, 0.160000",
            "type": "brush"
        },
        {
            "location": "-5007.997070, 1167.999268, 415.999817",
            "materialSets": [
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
            "rotation": "178.734161, 90.000000, -1.265865",
            "scale": "1.440000, 8.959993, 0.160000",
            "type": "brush"
        },
        {
            "location": "-5007.997070, 1167.999268, 559.999634",
            "materialSets": [
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
            "rotation": "-1.265869, 90.000000, 178.734131",
            "scale": "1.440000, 8.959993, 0.160000",
            "type": "brush"
        },
        {
            "location": "-4993.997070, 1153.999268, 528.000305",
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
            "mesh": "Cube",
            "name": "Default",
            "rotation": "0.000000, 0.000000, -89.999939",
            "scale": "8.639999, 12.519993, 0.400000",
            "type": "brush"
        },
        {
            "location": "-4356.000000, -703.999634, 385.998352",
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
            "mesh": "WideCapsule",
            "name": "Default",
            "rotation": "0.000000, 0.000000, 0.000000",
            "scale": "2.982604, 2.982604, 3.000000",
            "type": "brush"
        },
        {
            "location": "-4855.997070, 917.999634, 598.999512",
            "materialSets": [
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
                },
                {
                    "group": 0,
                    "surface": "wall"
                }
            ],
            "mesh": "WideCapsule",
            "name": "Default",
            "rotation": "0.000000, 0.000000, -74.999557",
            "scale": "2.982604, 1.391882, 0.260000",
            "type": "brush"
        },
        {
            "location": "-4855.997070, 917.999634, 598.999512",
            "materialSets": [
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
                },
                {
                    "group": 0,
                    "surface": "wall"
                }
            ],
            "mesh": "WideCapsule",
            "name": "Default",
            "rotation": "0.000000, 0.000000, -105.000183",
            "scale": "2.982604, 1.391882, 0.260000",
            "type": "brush"
        },
        {
            "location": "-4855.997070, 917.999634, 598.999512",
            "materialSets": [
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
                },
                {
                    "group": 0,
                    "surface": "wall"
                }
            ],
            "mesh": "WideCapsule",
            "name": "Default",
            "rotation": "0.000000, 0.000000, -89.999939",
            "scale": "2.982604, 1.391882, 0.260000",
            "type": "brush"
        },
        {
            "location": "-4843.997070, 917.999634, 598.999512",
            "materialSets": [
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
                },
                {
                    "group": 0,
                    "surface": "wall"
                }
            ],
            "mesh": "WideCapsule",
            "name": "Default",
            "rotation": "0.000000, 0.000000, -89.999939",
            "scale": "2.982604, 1.391882, 0.260000",
            "type": "brush"
        },
        {
            "location": "-4867.997070, 917.999634, 598.999512",
            "materialSets": [
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
                },
                {
                    "group": 0,
                    "surface": "wall"
                }
            ],
            "mesh": "WideCapsule",
            "name": "Default",
            "rotation": "0.000000, 0.000000, -89.999939",
            "scale": "2.982604, 1.391882, 0.260000",
            "type": "brush"
        },
        {
            "location": "-4731.997070, 623.999634, 568.000610",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "0.000000, 0.000000, -30.755657",
            "scale": "5.000000, 4.999999, 0.020000",
            "type": "brush"
        },
        {
            "location": "-4421.997070, 569.999634, 568.000610",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "0.000000, 0.000000, -30.755688",
            "scale": "5.000000, 4.999999, 0.020000",
            "type": "brush"
        },
        {
            "location": "-4549.997070, 689.999634, 568.000610",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "0.000000, 0.000000, -30.755718",
            "scale": "5.000000, 4.999999, 0.020000",
            "type": "brush"
        },
        {
            "location": "-4439.997070, 723.999634, 568.000610",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "0.000000, 0.000000, -30.755749",
            "scale": "5.000000, 4.999999, 0.020000",
            "type": "brush"
        },
        {
            "location": "-4639.997070, 481.999817, 568.000610",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "0.000000, 0.000000, 14.244737",
            "scale": "5.000000, 4.999999, 0.020000",
            "type": "brush"
        },
        {
            "location": "-4252.000000, 481.999817, 568.000610",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "0.000000, 0.000000, 14.244794",
            "scale": "5.000000, 4.999999, 0.020000",
            "type": "brush"
        },
        {
            "location": "-4252.000000, 327.999817, 568.000610",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "0.000000, 0.000000, 14.244851",
            "scale": "5.000000, 4.999999, 0.020000",
            "type": "brush"
        },
        {
            "location": "-4521.997070, 327.999817, 568.000610",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "0.000000, 0.000000, 14.244908",
            "scale": "5.000000, 4.999999, 0.020000",
            "type": "brush"
        },
        {
            "location": "-4723.997070, 385.999817, 568.000610",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "0.000000, 0.000000, -0.755341",
            "scale": "5.000000, 4.999999, 0.020000",
            "type": "brush"
        },
        {
            "location": "-4439.997070, 723.999634, 570.000610",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "0.000000, 0.000000, -30.755779",
            "scale": "2.500000, 2.500000, 0.020000",
            "type": "brush"
        },
        {
            "location": "-4439.997070, 573.999634, 570.000610",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "0.000000, 0.000000, -30.755812",
            "scale": "2.500000, 2.500000, 0.020000",
            "type": "brush"
        },
        {
            "location": "-4252.000000, 573.999634, 570.000610",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "0.000000, 0.000000, -30.755842",
            "scale": "2.500000, 2.500000, 0.020000",
            "type": "brush"
        },
        {
            "location": "-4252.000000, 765.999634, 570.000610",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "0.000000, 0.000000, -30.755873",
            "scale": "2.500000, 2.500000, 0.020000",
            "type": "brush"
        },
        {
            "location": "-4531.997070, 765.999634, 570.000610",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "0.000000, 0.000000, -30.755899",
            "scale": "2.500000, 2.500000, 0.020000",
            "type": "brush"
        },
        {
            "location": "-4531.997070, 571.999634, 570.000610",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "0.000000, 0.000000, -30.755934",
            "scale": "2.500000, 2.500000, 0.020000",
            "type": "brush"
        },
        {
            "location": "-8905.995117, -1499.999390, 654.999512",
            "materialSets": [
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
                },
                {
                    "group": 0,
                    "surface": "wall"
                }
            ],
            "mesh": "WideCapsule",
            "name": "Default",
            "rotation": "0.000000, 0.000000, -59.999905",
            "scale": "2.982604, 1.391882, 0.260000",
            "type": "brush"
        },
        {
            "location": "-4867.997070, 536.000000, 598.999512",
            "materialSets": [
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
                },
                {
                    "group": 0,
                    "surface": "wall"
                }
            ],
            "mesh": "WideCapsule",
            "name": "Default",
            "rotation": "0.000000, 0.000000, -74.999489",
            "scale": "2.982604, 1.391882, 0.260000",
            "type": "brush"
        },
        {
            "location": "-4867.997070, 536.000000, 598.999512",
            "materialSets": [
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
                },
                {
                    "group": 0,
                    "surface": "wall"
                }
            ],
            "mesh": "WideCapsule",
            "name": "Default",
            "rotation": "0.000000, 0.000000, -105.000076",
            "scale": "2.982604, 1.391882, 0.260000",
            "type": "brush"
        },
        {
            "location": "-4855.997070, 536.000000, 598.999512",
            "materialSets": [
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
                },
                {
                    "group": 0,
                    "surface": "wall"
                }
            ],
            "mesh": "WideCapsule",
            "name": "Default",
            "rotation": "0.000000, 0.000000, -89.999939",
            "scale": "2.982604, 1.391882, 0.260000",
            "type": "brush"
        },
        {
            "location": "-4877.997070, 536.000000, 598.999512",
            "materialSets": [
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
                },
                {
                    "group": 0,
                    "surface": "wall"
                }
            ],
            "mesh": "WideCapsule",
            "name": "Default",
            "rotation": "0.000000, 0.000000, -89.999939",
            "scale": "2.982604, 1.391882, 0.260000",
            "type": "brush"
        },
        {
            "location": "-3415.998535, -383.999817, 423.999817",
            "materialSets": [
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
                },
                {
                    "group": 0,
                    "surface": "wall"
                }
            ],
            "mesh": "Cylinder",
            "name": "Default",
            "rotation": "0.000000, 0.000000, 0.000000",
            "scale": "0.160000, 0.160000, 0.320000",
            "type": "brush"
        },
        {
            "location": "-3295.998535, -391.999817, 399.999817",
            "materialSets": [
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
                },
                {
                    "group": 0,
                    "surface": "wall"
                }
            ],
            "mesh": "Cylinder",
            "name": "Default",
            "rotation": "42.842728, -90.000000, 20.556040",
            "scale": "0.320000, 0.320000, 0.160000",
            "type": "brush"
        },
        {
            "location": "-3415.998535, -375.999817, 447.999817",
            "materialSets": [
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
            "rotation": "-179.999939, -7.500005, 0.000035",
            "scale": "1.280000, 0.160000, 0.160000",
            "type": "brush"
        },
        {
            "location": "-3349.070312, -284.076965, 399.999817",
            "materialSets": [
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
                },
                {
                    "group": 0,
                    "surface": "wall"
                }
            ],
            "mesh": "Cylinder",
            "name": "Default",
            "rotation": "123.398491, -90.000000, 0.000000",
            "scale": "0.320000, 0.320000, 0.160000",
            "type": "brush"
        },
        {
            "location": "-3422.926758, -379.999817, 447.999817",
            "materialSets": [
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
            "rotation": "-179.999939, -7.500005, 59.999931",
            "scale": "1.280000, 0.160000, 0.160000",
            "type": "brush"
        },
        {
            "location": "-3415.998535, -383.999817, 423.999817",
            "materialSets": [
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
                },
                {
                    "group": 0,
                    "surface": "wall"
                }
            ],
            "mesh": "Cylinder",
            "name": "Default",
            "rotation": "0.000000, 0.000000, -59.999905",
            "scale": "0.160000, 0.160000, 0.320000",
            "type": "brush"
        },
        {
            "location": "-3415.998535, -383.999817, 423.999817",
            "materialSets": [
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
                },
                {
                    "group": 0,
                    "surface": "wall"
                }
            ],
            "mesh": "Cylinder",
            "name": "Default",
            "rotation": "0.000000, 0.000000, 0.000000",
            "scale": "0.160000, 0.160000, 0.320000",
            "type": "brush"
        },
        {
            "location": "-3469.070312, -276.076904, 399.999817",
            "materialSets": [
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
                },
                {
                    "group": 0,
                    "surface": "wall"
                }
            ],
            "mesh": "Cylinder",
            "name": "Default",
            "rotation": "3.398376, -90.000000, 180.000000",
            "scale": "0.320000, 0.320000, 0.160000",
            "type": "brush"
        },
        {
            "location": "-3415.998535, -383.999817, 423.999817",
            "materialSets": [
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
                },
                {
                    "group": 0,
                    "surface": "wall"
                }
            ],
            "mesh": "Cylinder",
            "name": "Default",
            "rotation": "0.000000, 0.000000, -119.999969",
            "scale": "0.160000, 0.160000, 0.320000",
            "type": "brush"
        },
        {
            "location": "-3415.998535, -383.999817, 423.999817",
            "materialSets": [
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
                },
                {
                    "group": 0,
                    "surface": "wall"
                }
            ],
            "mesh": "Cylinder",
            "name": "Default",
            "rotation": "0.000000, 0.000000, 119.999969",
            "scale": "0.160000, 0.160000, 0.320000",
            "type": "brush"
        },
        {
            "location": "-3482.926758, -483.922821, 399.999817",
            "materialSets": [
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
                },
                {
                    "group": 0,
                    "surface": "wall"
                }
            ],
            "mesh": "Cylinder",
            "name": "Default",
            "rotation": "-56.601257, -90.000000, 0.000000",
            "scale": "0.320000, 0.320000, 0.160000",
            "type": "brush"
        },
        {
            "location": "-3415.998535, -383.999817, 423.999817",
            "materialSets": [
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
                },
                {
                    "group": 0,
                    "surface": "wall"
                }
            ],
            "mesh": "Cylinder",
            "name": "Default",
            "rotation": "0.000000, 0.000000, -179.999954",
            "scale": "0.160000, 0.160000, 0.320000",
            "type": "brush"
        },
        {
            "location": "-3535.998535, -375.999725, 399.999817",
            "materialSets": [
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
                },
                {
                    "group": 0,
                    "surface": "wall"
                }
            ],
            "mesh": "Cylinder",
            "name": "Default",
            "rotation": "-90.035858, -90.000000, -26.565033",
            "scale": "0.320000, 0.320000, 0.160000",
            "type": "brush"
        },
        {
            "location": "-3415.998535, -391.999908, 447.999817",
            "materialSets": [
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
            "rotation": "-179.999939, -7.500005, 179.999954",
            "scale": "1.280000, 0.160000, 0.160000",
            "type": "brush"
        },
        {
            "location": "-3415.998535, -383.999817, 423.999817",
            "materialSets": [
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
                },
                {
                    "group": 0,
                    "surface": "wall"
                }
            ],
            "mesh": "Cylinder",
            "name": "Default",
            "rotation": "0.000000, 0.000000, 120.000008",
            "scale": "0.320000, 0.320000, 1.120000",
            "type": "brush"
        },
        {
            "location": "-3422.926758, -387.999878, 447.999817",
            "materialSets": [
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
            "rotation": "-179.999939, -7.500005, 120.000008",
            "scale": "1.280000, 0.160000, 0.160000",
            "type": "brush"
        },
        {
            "location": "-3415.998535, -383.999817, 423.999817",
            "materialSets": [
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
                },
                {
                    "group": 0,
                    "surface": "wall"
                }
            ],
            "mesh": "Cylinder",
            "name": "Default",
            "rotation": "0.000000, 0.000000, 59.999905",
            "scale": "0.160000, 0.160000, 0.320000",
            "type": "brush"
        },
        {
            "location": "-3415.998535, -383.999817, 423.999817",
            "materialSets": [
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
                },
                {
                    "group": 0,
                    "surface": "wall"
                }
            ],
            "mesh": "Cylinder",
            "name": "Default",
            "rotation": "0.000000, 0.000000, 59.999905",
            "scale": "0.160000, 0.160000, 0.320000",
            "type": "brush"
        },
        {
            "location": "-3409.070312, -387.999878, 447.999817",
            "materialSets": [
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
            "rotation": "-179.999939, -7.500005, -120.000053",
            "scale": "1.280000, 0.160000, 0.160000",
            "type": "brush"
        },
        {
            "location": "-3415.998535, -383.999817, 423.999817",
            "materialSets": [
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
                },
                {
                    "group": 0,
                    "surface": "wall"
                }
            ],
            "mesh": "Cylinder",
            "name": "Default",
            "rotation": "0.000000, 0.000000, 179.999954",
            "scale": "0.160000, 0.160000, 0.320000",
            "type": "brush"
        },
        {
            "location": "-3362.926758, -491.922913, 399.999817",
            "materialSets": [
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
                },
                {
                    "group": 0,
                    "surface": "wall"
                }
            ],
            "mesh": "Cylinder",
            "name": "Default",
            "rotation": "3.398636, -90.000000, 0.000000",
            "scale": "0.320000, 0.320000, 0.160000",
            "type": "brush"
        },
        {
            "location": "-3409.070312, -379.999786, 447.999817",
            "materialSets": [
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
            "rotation": "-179.999939, -7.500005, -60.000000",
            "scale": "1.280000, 0.160000, 0.160000",
            "type": "brush"
        },
        {
            "location": "-3415.998535, -383.999817, 423.999817",
            "materialSets": [
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
                },
                {
                    "group": 0,
                    "surface": "wall"
                }
            ],
            "mesh": "Cylinder",
            "name": "Default",
            "rotation": "0.000000, 0.000000, -120.000008",
            "scale": "0.160000, 0.160000, 0.320000",
            "type": "brush"
        },
        {
            "location": "-9111.994141, 3143.998535, 651.909302",
            "name": "Tree",
            "rotation": "0.000000, 0.000000, 0.000000",
            "scale": "1.000000, 1.000000, 1.000000",
            "type": "prop"
        },
        {
            "location": "-8032.997070, 813.999695, 1311.999268",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "0.000000, 0.000000, 89.999954",
            "scale": "1.280000, 11.679998, 0.160000",
            "type": "brush"
        },
        {
            "location": "-3419.998535, -383.999817, 609.998169",
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
            "mesh": "WideCapsule",
            "name": "Default",
            "rotation": "0.000000, 0.000000, 0.000000",
            "scale": "2.465619, 2.465619, 0.480000",
            "type": "brush"
        },
        {
            "location": "-9184.994141, 3313.998535, 1151.999268",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "89.999878, 0.000000, -89.999947",
            "scale": "6.920000, 7.519999, 0.160000",
            "type": "brush"
        },
        {
            "location": "-9184.994141, 3313.998535, 1151.999268",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "89.999954, 0.000000, 0.000000",
            "scale": "1.280000, 7.519999, 0.160000",
            "type": "brush"
        },
        {
            "location": "-9184.994141, 2621.998535, 1151.999268",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "89.999954, 0.000000, 0.000000",
            "scale": "1.280000, 7.519999, 0.160000",
            "type": "brush"
        },
        {
            "location": "-3415.998535, -383.999817, 471.999817",
            "materialSets": [
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
                },
                {
                    "group": 0,
                    "surface": "wall"
                }
            ],
            "mesh": "Cylinder",
            "name": "Default",
            "rotation": "0.000000, 0.000000, 120.000008",
            "scale": "0.240000, 0.240000, 1.120000",
            "type": "brush"
        },
        {
            "location": "-9184.994141, 2621.998535, 1151.999268",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "0.000000, 0.000000, 0.000000",
            "scale": "1.280000, 7.239995, 0.160000",
            "type": "brush"
        },
        {
            "location": "-9111.994141, 2779.998535, 1167.909302",
            "name": "Tree",
            "rotation": "0.000000, 0.000000, 0.000000",
            "scale": "1.000000, 1.000000, 1.000000",
            "type": "prop"
        },
        {
            "location": "-9184.994141, 2621.998535, 895.999634",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "0.000000, 0.000000, 0.000000",
            "scale": "1.280000, 7.239995, 0.160000",
            "type": "brush"
        },
        {
            "location": "-3415.998535, -287.999817, 615.999634",
            "materialSets": [
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
                },
                {
                    "group": 0,
                    "surface": "wall"
                }
            ],
            "mesh": "Cylinder",
            "name": "Default",
            "rotation": "0.000000, 0.000000, 90.000008",
            "scale": "0.160000, 0.240000, 0.560000",
            "type": "brush"
        },
        {
            "location": "-3415.998535, -471.999817, 615.999634",
            "materialSets": [
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
                },
                {
                    "group": 0,
                    "surface": "wall"
                }
            ],
            "mesh": "Cylinder",
            "name": "Default",
            "rotation": "0.000000, 0.000000, 90.000008",
            "scale": "0.160000, 0.240000, 0.560000",
            "type": "brush"
        },
        {
            "location": "-9184.994141, 2621.998535, 639.999634",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "0.000000, 0.000000, 0.000000",
            "scale": "1.280000, 7.239995, 0.160000",
            "type": "brush"
        },
        {
            "location": "-3415.998535, -471.999817, 671.999634",
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
            "mesh": "Cylinder",
            "name": "Default",
            "rotation": "0.000000, 0.000000, 90.000008",
            "scale": "0.400000, 0.880000, 0.080000",
            "type": "brush"
        },
        {
            "location": "-3415.998535, -287.999817, 671.999634",
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
            "mesh": "Cylinder",
            "name": "Default",
            "rotation": "0.000000, 0.000000, 90.000008",
            "scale": "0.400000, 0.880000, 0.080000",
            "type": "brush"
        },
        {
            "location": "-9184.994141, 2621.998535, 383.999817",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "0.000000, 0.000000, 0.000000",
            "scale": "1.280000, 7.239995, 0.160000",
            "type": "brush"
        },
        {
            "location": "-3603.998535, -383.999817, 857.998169",
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
            "mesh": "WideCapsule",
            "name": "Default",
            "rotation": "0.000000, -74.999718, 0.000000",
            "scale": "0.795361, 1.033969, 0.480000",
            "type": "brush"
        },
        {
            "location": "-3575.998535, -359.999817, 767.999634",
            "materialSets": [
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
                },
                {
                    "group": 0,
                    "surface": "wall"
                }
            ],
            "mesh": "Cylinder",
            "name": "Default",
            "rotation": "15.000360, -0.000027, 89.999817",
            "scale": "0.160000, 0.240000, 0.800000",
            "type": "brush"
        },
        {
            "location": "-3575.998535, -407.999817, 767.999634",
            "materialSets": [
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
                },
                {
                    "group": 0,
                    "surface": "wall"
                }
            ],
            "mesh": "Cylinder",
            "name": "Default",
            "rotation": "15.000312, -0.000027, 89.999863",
            "scale": "0.160000, 0.240000, 0.800000",
            "type": "brush"
        },
        {
            "location": "-3563.998535, -383.999817, 721.998169",
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
            "mesh": "WideCapsule",
            "name": "Default",
            "rotation": "0.000000, -74.999718, 0.000000",
            "scale": "1.988403, 2.465619, 0.480000",
            "type": "brush"
        },
        {
            "location": "-3495.998535, -439.999817, 607.999634",
            "materialSets": [
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
                },
                {
                    "group": 0,
                    "surface": "wall"
                }
            ],
            "mesh": "Cylinder",
            "name": "Default",
            "rotation": "44.999973, 0.000007, 89.999962",
            "scale": "0.160000, 0.240000, 0.800000",
            "type": "brush"
        },
        {
            "location": "-3495.998535, -319.999817, 607.999634",
            "materialSets": [
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
                },
                {
                    "group": 0,
                    "surface": "wall"
                }
            ],
            "mesh": "Cylinder",
            "name": "Default",
            "rotation": "44.999973, 0.000007, 89.999962",
            "scale": "0.160000, 0.240000, 0.800000",
            "type": "brush"
        },
        {
            "location": "-8032.997070, 813.999695, 1183.999268",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "0.000000, 0.000000, 89.999954",
            "scale": "1.280000, 11.679998, 0.160000",
            "type": "brush"
        },
        {
            "location": "-8032.997070, 813.999695, 1311.999268",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "89.999992, 0.000027, 89.999947",
            "scale": "1.280000, 1.280000, 0.160000",
            "type": "brush"
        },
        {
            "location": "-9168.994141, 813.999695, 1311.999268",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "89.999992, 0.000027, 89.999947",
            "scale": "1.280000, 1.280000, 0.160000",
            "type": "brush"
        },
        {
            "location": "-8944.994141, 925.999695, 1135.999268",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "0.000000, 0.000000, 179.999954",
            "scale": "2.560000, 13.279998, 0.160000",
            "type": "brush"
        },
        {
            "location": "-8944.994141, -401.999756, 1343.999268",
            "materialSets": [
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
                    "surface": "ceiling"
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
            "rotation": "89.999802, 0.000041, 179.999954",
            "scale": "2.560000, 13.279998, 0.160000",
            "type": "brush"
        },
        {
            "location": "-8944.994141, -753.999573, 1343.999268",
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
                    "surface": "wall"
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
            "rotation": "89.999763, 0.000041, 179.999954",
            "scale": "2.560000, 13.279998, 0.160000",
            "type": "brush"
        },
        {
            "location": "-9184.994141, -401.999756, 1343.999268",
            "materialSets": [
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
                    "surface": "ceiling"
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
            "rotation": "89.999809, 0.000041, -89.999939",
            "scale": "3.520000, 13.279998, 0.160000",
            "type": "brush"
        },
        {
            "location": "-8944.994141, -401.999756, 1343.999268",
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
                    "surface": "wall"
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
            "rotation": "-0.000061, -0.000034, 179.999954",
            "scale": "2.560000, 3.680000, 0.160000",
            "type": "brush"
        },
        {
            "location": "-8944.994141, -401.999756, 383.999817",
            "materialSets": [
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
                    "surface": "ceiling"
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
            "rotation": "-0.000061, -0.000034, 179.999954",
            "scale": "2.560000, 3.680000, 0.160000",
            "type": "brush"
        },
        {
            "location": "-8944.994141, -401.999756, 383.999817",
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
                    "surface": "wall"
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
            "rotation": "179.035904, 90.000000, 14.036263",
            "scale": "9.759999, 3.680000, 0.160000",
            "type": "brush"
        },
        {
            "location": "-8832.994141, -689.999634, 895.999634",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "89.999809, 0.000041, -164.999649",
            "scale": "0.160000, 0.800000, 0.160000",
            "type": "brush"
        },
        {
            "location": "-8944.994141, -401.999756, 1135.999268",
            "materialSets": [
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
                    "surface": "ceiling"
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
            "rotation": "-0.000061, -0.000034, 179.999954",
            "scale": "2.560000, 3.680000, 0.160000",
            "type": "brush"
        },
        {
            "location": "-8944.994141, -401.999756, 815.999634",
            "materialSets": [
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
                    "surface": "ceiling"
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
            "rotation": "-0.000061, -0.000034, 179.999954",
            "scale": "2.560000, 3.680000, 0.160000",
            "type": "brush"
        },
        {
            "location": "-8944.994141, -401.999756, 559.999634",
            "materialSets": [
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
                    "surface": "ceiling"
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
            "rotation": "-0.000061, -0.000034, 179.999954",
            "scale": "2.560000, 3.680000, 0.160000",
            "type": "brush"
        },
        {
            "location": "-8944.994141, 925.999695, 847.999634",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
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
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "0.000000, 0.000000, 179.999954",
            "scale": "2.560000, 3.680000, 0.160000",
            "type": "brush"
        },
        {
            "location": "-8960.994141, 558.000122, 847.999634",
            "materialSets": [
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
            "rotation": "0.000000, 0.000000, 179.999954",
            "scale": "2.560000, 3.039999, 0.160000",
            "type": "brush"
        },
        {
            "location": "-8944.994141, 253.999969, 847.999634",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
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
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "0.000000, 0.000000, 179.999954",
            "scale": "2.560000, 6.719996, 0.160000",
            "type": "brush"
        },
        {
            "location": "-8944.994141, 925.999695, 847.999634",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "-178.734161, -90.000000, -1.265865",
            "scale": "2.560000, 3.680000, 0.160000",
            "type": "brush"
        },
        {
            "location": "-8944.994141, 925.999695, 623.999634",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "1.265869, -90.000000, 178.734131",
            "scale": "2.560000, 3.680000, 0.160000",
            "type": "brush"
        },
        {
            "location": "-8960.994141, 558.000122, 528.000000",
            "materialSets": [
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
            "rotation": "178.734161, 90.000000, -1.265865",
            "scale": "2.560000, 0.320000, 0.160000",
            "type": "brush"
        },
        {
            "location": "-8960.994141, 286.000122, 528.000000",
            "materialSets": [
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
            "rotation": "-1.265869, 90.000000, 178.734131",
            "scale": "2.560000, 0.320000, 0.160000",
            "type": "brush"
        },
        {
            "location": "-8960.994141, 526.000122, 783.999634",
            "materialSets": [
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
            "rotation": "89.999947, 0.000000, -89.999939",
            "scale": "2.560000, 0.320000, 0.160000",
            "type": "brush"
        },
        {
            "location": "-8960.994141, 526.000122, 559.999634",
            "materialSets": [
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
            "rotation": "89.999947, 0.000000, -89.999939",
            "scale": "2.560000, 0.320000, 0.160000",
            "type": "brush"
        },
        {
            "location": "-8956.994141, 526.000122, 751.999634",
            "materialSets": [
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
            "rotation": "89.999947, 0.000000, -89.999939",
            "scale": "2.560000, 0.320000, 0.080000",
            "type": "brush"
        },
        {
            "location": "-8960.994141, 558.000122, 528.000000",
            "materialSets": [
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
            "rotation": "89.999947, 0.000000, -89.999939",
            "scale": "2.560000, 0.320000, 0.160000",
            "type": "brush"
        },
        {
            "location": "-8944.994141, 253.999969, 847.999634",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "1.265869, -90.000000, 178.734131",
            "scale": "2.560000, 6.719996, 0.160000",
            "type": "brush"
        },
        {
            "location": "-8944.994141, 253.999969, 639.999634",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "-0.158264, -90.000000, -179.841736",
            "scale": "2.560000, 6.719996, 0.160000",
            "type": "brush"
        },
        {
            "location": "-8944.994141, 605.999695, 442.999817",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "-0.158264, -90.000000, -179.841736",
            "scale": "0.640000, 3.519999, 0.160000",
            "type": "brush"
        },
        {
            "location": "-8944.994141, 558.000061, 847.999634",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
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
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "0.000000, 0.000000, 179.999954",
            "scale": "0.160000, 3.680000, 0.160000",
            "type": "brush"
        },
        {
            "location": "-8960.994141, 509.999939, 528.000000",
            "materialSets": [
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
            "rotation": "89.999947, 0.000000, -89.999939",
            "scale": "2.560000, 0.320000, 0.160000",
            "type": "brush"
        },
        {
            "location": "-8960.994141, 310.000122, 528.000000",
            "materialSets": [
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
            "rotation": "0.158264, 90.000000, -179.841736",
            "scale": "2.560000, 0.320000, 0.160000",
            "type": "brush"
        },
        {
            "location": "-8960.994141, 534.000122, 528.000000",
            "materialSets": [
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
            "rotation": "-1.265869, 90.000000, 178.734131",
            "scale": "2.560000, 0.320000, 0.160000",
            "type": "brush"
        },
        {
            "location": "-8968.994141, 558.000122, 847.999634",
            "materialSets": [
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
            "rotation": "89.999947, 0.000000, -89.999939",
            "scale": "3.040000, 0.640000, 0.160000",
            "type": "brush"
        },
        {
            "location": "-8968.994141, 558.000122, 727.999634",
            "materialSets": [
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
            "rotation": "89.999947, 0.000000, -89.999939",
            "scale": "3.040000, 1.840000, 0.160000",
            "type": "brush"
        },
        {
            "location": "-9027.994141, 355.999817, 851.999634",
            "materialSets": [
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
                },
                {
                    "group": 0,
                    "surface": "wall"
                }
            ],
            "mesh": "Cylinder",
            "name": "Default",
            "rotation": "0.000000, 0.000000, 0.000000",
            "scale": "0.640000, 0.640000, 0.160000",
            "type": "brush"
        },
        {
            "location": "-9027.994141, 459.999817, 851.999634",
            "materialSets": [
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
                },
                {
                    "group": 0,
                    "surface": "wall"
                }
            ],
            "mesh": "Cylinder",
            "name": "Default",
            "rotation": "0.000000, 0.000000, 0.000000",
            "scale": "0.640000, 0.640000, 0.160000",
            "type": "brush"
        },
        {
            "location": "-9123.994141, 459.999817, 851.999634",
            "materialSets": [
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
                },
                {
                    "group": 0,
                    "surface": "wall"
                }
            ],
            "mesh": "Cylinder",
            "name": "Default",
            "rotation": "0.000000, 0.000000, 0.000000",
            "scale": "0.640000, 0.640000, 0.160000",
            "type": "brush"
        },
        {
            "location": "-9123.994141, 355.999817, 851.999634",
            "materialSets": [
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
                },
                {
                    "group": 0,
                    "surface": "wall"
                }
            ],
            "mesh": "Cylinder",
            "name": "Default",
            "rotation": "0.000000, 0.000000, 0.000000",
            "scale": "0.640000, 0.640000, 0.160000",
            "type": "brush"
        },
        {
            "location": "-9168.994141, 345.999878, 1279.999268",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
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
            "rotation": "89.999992, 0.000027, 89.999947",
            "scale": "1.280000, 1.280000, 0.160000",
            "type": "brush"
        },
        {
            "location": "-9056.994141, 361.999878, 1279.999268",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
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
            "rotation": "89.999779, 0.000027, 179.999954",
            "scale": "1.280000, 1.280000, 0.160000",
            "type": "brush"
        },
        {
            "location": "-9056.994141, 473.999878, 1279.999268",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
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
            "rotation": "89.999733, 0.000027, 179.999954",
            "scale": "1.280000, 1.280000, 0.160000",
            "type": "brush"
        },
        {
            "location": "-9056.994141, 345.999878, 1279.999268",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
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
            "rotation": "89.999992, 0.000027, 89.999947",
            "scale": "1.280000, 1.280000, 0.160000",
            "type": "brush"
        },
        {
            "location": "-9056.994141, 473.999878, 1407.999268",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
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
            "rotation": "89.999680, 0.000027, 179.999954",
            "scale": "1.280000, 1.280000, 0.160000",
            "type": "brush"
        },
        {
            "location": "-9168.994141, 345.999878, 1407.999268",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
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
            "rotation": "89.999992, 0.000027, 89.999947",
            "scale": "1.280000, 1.280000, 0.160000",
            "type": "brush"
        },
        {
            "location": "-9056.994141, 345.999878, 1407.999268",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
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
            "rotation": "89.999992, 0.000027, 89.999947",
            "scale": "1.280000, 1.280000, 0.160000",
            "type": "brush"
        },
        {
            "location": "-9056.994141, 361.999878, 1407.999268",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
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
            "rotation": "89.999733, 0.000027, 179.999954",
            "scale": "1.280000, 1.280000, 0.160000",
            "type": "brush"
        },
        {
            "location": "-9056.994141, 345.999878, 1407.999268",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
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
            "rotation": "179.999893, 15.000031, -179.999954",
            "scale": "1.280000, 1.280000, 0.160000",
            "type": "brush"
        },
        {
            "location": "-9056.994141, 361.999878, 1407.999268",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
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
            "rotation": "89.999878, 15.000016, 179.999954",
            "scale": "1.280000, 1.280000, 0.160000",
            "type": "brush"
        },
        {
            "location": "-9056.994141, 473.999878, 1407.999268",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
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
            "rotation": "89.999809, 15.000016, 179.999954",
            "scale": "1.280000, 1.280000, 0.160000",
            "type": "brush"
        },
        {
            "location": "-8191.997070, 895.999634, 1204.926147",
            "name": "McCoy",
            "rotation": "0.000000, 0.000000, 15.000326",
            "scale": "2.000000, 2.000000, 2.000000",
            "type": "prop"
        },
        {
            "location": "-8728.000000, 859.999634, 1327.909302",
            "name": "Tree",
            "rotation": "0.000000, 0.000000, 0.000000",
            "scale": "1.000000, 1.000000, 1.000000",
            "type": "prop"
        },
        {
            "location": "-9039.994141, 879.999634, 1201.222290",
            "name": "TimmyButton",
            "rotation": "0.000000, 0.000000, -149.999954",
            "scale": "0.500000, 0.500000, 0.500000",
            "type": "prop"
        },
        {
            "location": "-8944.994141, 925.999695, 847.999634",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
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
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "0.000000, 0.000000, -89.999939",
            "scale": "2.560000, 3.680000, 0.160000",
            "type": "brush"
        },
        {
            "location": "-8430.000000, 899.999390, 830.499634",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
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
            "mesh": "Pipe",
            "name": "Default",
            "rotation": "-89.999939, 0.000034, 89.999924",
            "scale": "0.480000, 1.600000, 0.480000",
            "type": "brush"
        },
        {
            "location": "-8302.000000, 925.999695, 847.999634",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
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
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "0.000000, 0.000000, -89.999939",
            "scale": "2.560000, 2.690000, 0.160000",
            "type": "brush"
        },
        {
            "location": "-8032.997070, 925.999695, 847.999634",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "1.265869, -90.000000, 178.734131",
            "scale": "3.680000, 2.560000, 0.160000",
            "type": "brush"
        },
        {
            "location": "-8784.994141, 669.999695, 847.999634",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "116.565002, -90.000000, -26.565033",
            "scale": "3.680000, 2.560000, 0.160000",
            "type": "brush"
        },
        {
            "location": "-8430.000000, 893.999390, 906.499634",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
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
            "mesh": "Pipe",
            "name": "Default",
            "rotation": "160.528793, 90.000000, -19.471220",
            "scale": "0.080000, 0.240000, 0.080000",
            "type": "brush"
        },
        {
            "location": "-8430.000000, 877.999634, 894.999634",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
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
            "mesh": "Pipe90",
            "name": "Default",
            "rotation": "89.999878, 0.000000, -89.999947",
            "scale": "0.160000, 0.160000, 0.160000",
            "type": "brush"
        },
        {
            "location": "-8430.000000, 885.999390, 894.499634",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
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
            "mesh": "Pipe",
            "name": "Default",
            "rotation": "152.061722, 90.000000, -27.938326",
            "scale": "0.160000, 0.240000, 0.160000",
            "type": "brush"
        },
        {
            "location": "-8430.000000, 891.999390, 850.499634",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
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
            "mesh": "Pipe",
            "name": "Default",
            "rotation": "-179.999939, -0.000061, -0.000061",
            "scale": "0.480000, 0.160000, 0.480000",
            "type": "brush"
        },
        {
            "location": "-8462.000977, 885.999329, 824.000427",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "0.000000, 0.000000, 0.000000",
            "scale": "1.000000, 0.240000, 0.400000",
            "type": "brush"
        },
        {
            "location": "-8402.000977, 885.999329, 824.000427",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "0.000000, 0.000000, 0.000000",
            "scale": "1.000000, 0.240000, 0.400000",
            "type": "brush"
        },
        {
            "location": "-8302.000000, 885.999634, 832.000427",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "RampConcave",
            "name": "Default",
            "rotation": "-116.565308, 90.000000, -26.565033",
            "scale": "0.320000, 1.279999, 0.640000",
            "type": "brush"
        },
        {
            "location": "-8302.000000, 885.999634, 864.000427",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "RampConcave",
            "name": "Default",
            "rotation": "1.265869, -90.000000, 178.734131",
            "scale": "0.320000, 1.279999, 0.640000",
            "type": "brush"
        },
        {
            "location": "-8558.000977, 885.999329, 824.000427",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "0.000000, 0.000000, 0.000000",
            "scale": "1.000000, 0.240000, 0.400000",
            "type": "brush"
        },
        {
            "location": "-8558.000000, 885.999634, 832.000427",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "RampConcave",
            "name": "Default",
            "rotation": "179.999832, 90.000000, -0.000328",
            "scale": "0.320000, 1.279999, 0.640000",
            "type": "brush"
        },
        {
            "location": "-8558.000000, 669.999634, 864.000427",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "RampConcave",
            "name": "Default",
            "rotation": "0.000000, -90.000000, 0.000000",
            "scale": "0.320000, 1.279999, 0.640000",
            "type": "brush"
        },
        {
            "location": "-8558.000000, 669.999634, 832.000427",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "RampConcave",
            "name": "Default",
            "rotation": "89.999756, 90.000000, 0.000000",
            "scale": "0.320000, 1.279999, 0.640000",
            "type": "brush"
        },
        {
            "location": "-8302.000000, 669.999634, 864.000427",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "RampConcave",
            "name": "Default",
            "rotation": "110.555916, -90.000000, -20.556040",
            "scale": "0.320000, 1.279999, 0.640000",
            "type": "brush"
        },
        {
            "location": "-8302.000000, 669.999634, 832.000427",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "RampConcave",
            "name": "Default",
            "rotation": "0.000000, 90.000000, 0.000000",
            "scale": "0.320000, 1.279999, 0.640000",
            "type": "brush"
        },
        {
            "location": "-8430.000000, 845.999634, 804.000427",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "Torus",
            "name": "Default",
            "rotation": "0.000000, 0.000000, 120.000053",
            "scale": "0.320000, 0.320000, 0.320000",
            "type": "brush"
        },
        {
            "location": "-8924.994141, 925.999695, 847.999634",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
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
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "0.000000, 0.000000, -89.999939",
            "scale": "2.560000, 3.680000, 0.160000",
            "type": "brush"
        },
        {
            "location": "-8968.994141, 558.000122, 619.999634",
            "materialSets": [
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
            "rotation": "89.999947, 0.000000, -89.999939",
            "scale": "3.040000, 1.840000, 0.160000",
            "type": "brush"
        },
        {
            "location": "-8402.000977, 901.999329, 824.000427",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "0.000000, 0.000000, 0.000000",
            "scale": "1.000000, 0.240000, 0.400000",
            "type": "brush"
        },
        {
            "location": "-8494.000977, 901.999329, 824.000427",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "0.000000, 0.000000, 0.000000",
            "scale": "1.000000, 0.240000, 0.400000",
            "type": "brush"
        },
        {
            "location": "-8558.000977, 901.999329, 824.000427",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "0.000000, 0.000000, 0.000000",
            "scale": "1.000000, 0.240000, 0.400000",
            "type": "brush"
        },
        {
            "location": "-8944.994141, 605.999695, 474.999847",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "179.762604, -90.000000, 0.237389",
            "scale": "0.640000, 3.519999, 0.160000",
            "type": "brush"
        },
        {
            "location": "-8557.000000, 669.999695, 847.999634",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "89.999969, -90.000000, 0.000000",
            "scale": "3.680000, 2.560000, 0.160000",
            "type": "brush"
        },
        {
            "location": "-8450.000000, 841.999634, 800.000427",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "0.000000, 0.000000, 0.000000",
            "scale": "0.080000, 0.080000, 0.080000",
            "type": "brush"
        },
        {
            "location": "-8048.997070, 669.999695, 847.999634",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "89.999969, -90.000000, 0.000000",
            "scale": "3.680000, 2.560000, 0.160000",
            "type": "brush"
        },
        {
            "location": "-8302.000000, 885.999634, 800.000427",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "RampConcave",
            "name": "Default",
            "rotation": "-116.565308, 90.000000, -26.565033",
            "scale": "0.320000, 1.279999, 0.640000",
            "type": "brush"
        },
        {
            "location": "-8302.000000, 885.999634, 832.000427",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "RampConcave",
            "name": "Default",
            "rotation": "-0.158264, -90.000000, -179.841736",
            "scale": "0.320000, 1.279999, 0.640000",
            "type": "brush"
        },
        {
            "location": "-8302.000000, 669.999634, 800.000427",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "RampConcave",
            "name": "Default",
            "rotation": "0.000000, 90.000000, 0.000000",
            "scale": "0.320000, 1.279999, 0.640000",
            "type": "brush"
        },
        {
            "location": "-8302.000000, 669.999634, 832.000427",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "RampConcave",
            "name": "Default",
            "rotation": "85.236237, -90.000000, 4.763644",
            "scale": "0.320000, 1.279999, 0.640000",
            "type": "brush"
        },
        {
            "location": "-8558.000000, 669.999634, 800.000427",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "RampConcave",
            "name": "Default",
            "rotation": "89.999748, 90.000000, 0.000000",
            "scale": "0.320000, 1.279999, 0.640000",
            "type": "brush"
        },
        {
            "location": "-8558.000000, 669.999634, 832.000427",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "RampConcave",
            "name": "Default",
            "rotation": "0.000000, -90.000000, 0.000000",
            "scale": "0.320000, 1.279999, 0.640000",
            "type": "brush"
        },
        {
            "location": "-8558.000000, 885.999634, 800.000427",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "RampConcave",
            "name": "Default",
            "rotation": "-179.998734, 90.000000, 0.001093",
            "scale": "0.320000, 1.279999, 0.640000",
            "type": "brush"
        },
        {
            "location": "-8558.000977, 885.999329, 792.000427",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "0.000000, 0.000000, 0.000000",
            "scale": "1.000000, 0.240000, 0.400000",
            "type": "brush"
        },
        {
            "location": "-8462.000977, 885.999329, 792.000427",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "0.000000, 0.000000, 0.000000",
            "scale": "1.000000, 0.240000, 0.400000",
            "type": "brush"
        },
        {
            "location": "-8450.000000, 841.999634, 800.000427",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "0.000000, 0.000000, 0.000000",
            "scale": "0.080000, 0.080000, 0.080000",
            "type": "brush"
        },
        {
            "location": "-8430.000000, 845.999634, 804.000427",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "Torus",
            "name": "Default",
            "rotation": "0.000000, 0.000000, 120.000053",
            "scale": "0.320000, 0.320000, 0.320000",
            "type": "brush"
        },
        {
            "location": "-8448.283203, 836.959534, 800.000427",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "0.000000, 0.000000, 15.000326",
            "scale": "0.080000, 0.080000, 0.080000",
            "type": "brush"
        },
        {
            "location": "-8430.000000, 845.999634, 804.000427",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "Torus",
            "name": "Default",
            "rotation": "0.000000, 0.000000, 135.000046",
            "scale": "0.320000, 0.320000, 0.320000",
            "type": "brush"
        },
        {
            "location": "-8445.317383, 832.535767, 800.000427",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "0.000000, 0.000000, 30.000097",
            "scale": "0.080000, 0.080000, 0.080000",
            "type": "brush"
        },
        {
            "location": "-8430.000000, 845.999634, 804.000427",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "Torus",
            "name": "Default",
            "rotation": "0.000000, 0.000000, 149.999954",
            "scale": "0.320000, 0.320000, 0.320000",
            "type": "brush"
        },
        {
            "location": "-8441.313477, 829.029297, 800.000427",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "0.000000, 0.000000, 45.000103",
            "scale": "0.080000, 0.080000, 0.080000",
            "type": "brush"
        },
        {
            "location": "-8430.000000, 845.999634, 804.000427",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "Torus",
            "name": "Default",
            "rotation": "0.000000, 0.000000, 164.999588",
            "scale": "0.320000, 0.320000, 0.320000",
            "type": "brush"
        },
        {
            "location": "-8436.536133, 826.679016, 800.000427",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "0.000000, 0.000000, 60.000088",
            "scale": "0.080000, 0.080000, 0.080000",
            "type": "brush"
        },
        {
            "location": "-8430.000000, 845.999634, 804.000427",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "Torus",
            "name": "Default",
            "rotation": "0.000000, 0.000000, 179.999878",
            "scale": "0.320000, 0.320000, 0.320000",
            "type": "brush"
        },
        {
            "location": "-8431.312500, 825.645508, 800.000427",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "0.000000, 0.000000, 74.999657",
            "scale": "0.080000, 0.080000, 0.080000",
            "type": "brush"
        },
        {
            "location": "-8430.000000, 845.999634, 804.000427",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "Torus",
            "name": "Default",
            "rotation": "0.000000, 0.000000, -164.999725",
            "scale": "0.320000, 0.320000, 0.320000",
            "type": "brush"
        },
        {
            "location": "-8426.000000, 825.999329, 800.000427",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "0.000000, 0.000000, 89.999954",
            "scale": "0.080000, 0.080000, 0.080000",
            "type": "brush"
        },
        {
            "location": "-8558.000000, 885.999634, 864.000427",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "RampConcave",
            "name": "Default",
            "rotation": "-90.000000, -90.000000, 0.000000",
            "scale": "0.320000, 1.279999, 0.640000",
            "type": "brush"
        },
        {
            "location": "-8420.959961, 827.716003, 800.000427",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "0.000000, 0.000000, 105.000237",
            "scale": "0.080000, 0.080000, 0.080000",
            "type": "brush"
        },
        {
            "location": "-8430.000000, 845.999634, 804.000427",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "Torus",
            "name": "Default",
            "rotation": "0.000000, 0.000000, -134.999954",
            "scale": "0.320000, 0.320000, 0.320000",
            "type": "brush"
        },
        {
            "location": "-8416.535156, 830.679016, 800.000427",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "0.000000, 0.000000, 120.000053",
            "scale": "0.080000, 0.080000, 0.080000",
            "type": "brush"
        },
        {
            "location": "-8430.000000, 845.999634, 804.000427",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "Torus",
            "name": "Default",
            "rotation": "0.000000, 0.000000, -119.999969",
            "scale": "0.320000, 0.320000, 0.320000",
            "type": "brush"
        },
        {
            "location": "-8413.025391, 834.685608, 800.000427",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "0.000000, 0.000000, 135.000046",
            "scale": "0.080000, 0.080000, 0.080000",
            "type": "brush"
        },
        {
            "location": "-8430.000000, 845.999634, 804.000427",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "Torus",
            "name": "Default",
            "rotation": "0.000000, 0.000000, -105.000237",
            "scale": "0.320000, 0.320000, 0.320000",
            "type": "brush"
        },
        {
            "location": "-8410.678711, 839.463440, 800.000427",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "0.000000, 0.000000, 149.999954",
            "scale": "0.080000, 0.080000, 0.080000",
            "type": "brush"
        },
        {
            "location": "-8430.000000, 845.999634, 804.000427",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "Torus",
            "name": "Default",
            "rotation": "0.000000, 0.000000, -90.000053",
            "scale": "0.320000, 0.320000, 0.320000",
            "type": "brush"
        },
        {
            "location": "-8409.645508, 844.686829, 800.000427",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "0.000000, 0.000000, 164.999588",
            "scale": "0.080000, 0.080000, 0.080000",
            "type": "brush"
        },
        {
            "location": "-8430.000000, 845.999634, 804.000427",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "Torus",
            "name": "Default",
            "rotation": "0.000000, 0.000000, -74.999557",
            "scale": "0.320000, 0.320000, 0.320000",
            "type": "brush"
        },
        {
            "location": "-8410.000000, 849.999512, 800.000427",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "0.000000, 0.000000, 179.999878",
            "scale": "0.080000, 0.080000, 0.080000",
            "type": "brush"
        },
        {
            "location": "-8430.000000, 845.999634, 804.000427",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "Torus",
            "name": "Default",
            "rotation": "0.000000, 0.000000, -59.999905",
            "scale": "0.320000, 0.320000, 0.320000",
            "type": "brush"
        },
        {
            "location": "-8411.712891, 855.039673, 800.000427",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "0.000000, 0.000000, -164.999725",
            "scale": "0.080000, 0.080000, 0.080000",
            "type": "brush"
        },
        {
            "location": "-8430.000000, 845.999634, 804.000427",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "Torus",
            "name": "Default",
            "rotation": "0.000000, 0.000000, -44.999908",
            "scale": "0.320000, 0.320000, 0.320000",
            "type": "brush"
        },
        {
            "location": "-8414.678711, 859.463989, 800.000427",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "0.000000, 0.000000, -149.999954",
            "scale": "0.080000, 0.080000, 0.080000",
            "type": "brush"
        },
        {
            "location": "-8430.000000, 845.999634, 804.000427",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "Torus",
            "name": "Default",
            "rotation": "0.000000, 0.000000, -29.999971",
            "scale": "0.320000, 0.320000, 0.320000",
            "type": "brush"
        },
        {
            "location": "-8418.681641, 862.970520, 800.000427",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "0.000000, 0.000000, -134.999954",
            "scale": "0.080000, 0.080000, 0.080000",
            "type": "brush"
        },
        {
            "location": "-8430.000000, 845.999634, 804.000427",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "Torus",
            "name": "Default",
            "rotation": "0.000000, 0.000000, -15.000294",
            "scale": "0.320000, 0.320000, 0.320000",
            "type": "brush"
        },
        {
            "location": "-8423.462891, 865.320190, 800.000427",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "0.000000, 0.000000, -119.999969",
            "scale": "0.080000, 0.080000, 0.080000",
            "type": "brush"
        },
        {
            "location": "-8430.000000, 845.999634, 804.000427",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "Torus",
            "name": "Default",
            "rotation": "0.000000, 0.000000, 0.000000",
            "scale": "0.320000, 0.320000, 0.320000",
            "type": "brush"
        },
        {
            "location": "-8428.681641, 866.353638, 800.000427",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "0.000000, 0.000000, -105.000237",
            "scale": "0.080000, 0.080000, 0.080000",
            "type": "brush"
        },
        {
            "location": "-8430.000000, 845.999634, 804.000427",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "Torus",
            "name": "Default",
            "rotation": "0.000000, 0.000000, 15.000326",
            "scale": "0.320000, 0.320000, 0.320000",
            "type": "brush"
        },
        {
            "location": "-8433.994141, 865.999878, 800.000427",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "0.000000, 0.000000, -90.000053",
            "scale": "0.080000, 0.080000, 0.080000",
            "type": "brush"
        },
        {
            "location": "-8430.000000, 845.999634, 804.000427",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "Torus",
            "name": "Default",
            "rotation": "0.000000, 0.000000, 30.000097",
            "scale": "0.320000, 0.320000, 0.320000",
            "type": "brush"
        },
        {
            "location": "-8439.036133, 864.283264, 800.000427",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "0.000000, 0.000000, -74.999557",
            "scale": "0.080000, 0.080000, 0.080000",
            "type": "brush"
        },
        {
            "location": "-8430.000000, 845.999634, 804.000427",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "Torus",
            "name": "Default",
            "rotation": "0.000000, 0.000000, 45.000103",
            "scale": "0.320000, 0.320000, 0.320000",
            "type": "brush"
        },
        {
            "location": "-8443.462891, 861.320923, 800.000427",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "0.000000, 0.000000, -59.999905",
            "scale": "0.080000, 0.080000, 0.080000",
            "type": "brush"
        },
        {
            "location": "-8430.000000, 845.999634, 804.000427",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "Torus",
            "name": "Default",
            "rotation": "0.000000, 0.000000, 60.000088",
            "scale": "0.320000, 0.320000, 0.320000",
            "type": "brush"
        },
        {
            "location": "-8446.969727, 857.314270, 800.000427",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "0.000000, 0.000000, -44.999908",
            "scale": "0.080000, 0.080000, 0.080000",
            "type": "brush"
        },
        {
            "location": "-8430.000000, 845.999634, 804.000427",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "Torus",
            "name": "Default",
            "rotation": "0.000000, 0.000000, 74.999657",
            "scale": "0.320000, 0.320000, 0.320000",
            "type": "brush"
        },
        {
            "location": "-8449.317383, 852.536194, 800.000427",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "0.000000, 0.000000, -29.999971",
            "scale": "0.080000, 0.080000, 0.080000",
            "type": "brush"
        },
        {
            "location": "-8430.000000, 845.999634, 804.000427",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "Torus",
            "name": "Default",
            "rotation": "0.000000, 0.000000, 89.999954",
            "scale": "0.320000, 0.320000, 0.320000",
            "type": "brush"
        },
        {
            "location": "-8450.348633, 847.313110, 800.000427",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "0.000000, 0.000000, -15.000294",
            "scale": "0.080000, 0.080000, 0.080000",
            "type": "brush"
        },
        {
            "location": "-8430.000000, 845.999634, 804.000427",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "Torus",
            "name": "Default",
            "rotation": "0.000000, 0.000000, 105.000237",
            "scale": "0.320000, 0.320000, 0.320000",
            "type": "brush"
        },
        {
            "location": "-8301.000000, 678.999329, 800.000427",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "0.000000, 0.000000, 89.999954",
            "scale": "1.200100, 1.200100, 0.080000",
            "type": "brush"
        },
        {
            "location": "-8558.000000, 885.999634, 833.000427",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "RampConcave",
            "name": "Default",
            "rotation": "-82.874969, -90.000000, -7.125023",
            "scale": "0.320000, 1.279999, 0.640000",
            "type": "brush"
        },
        {
            "location": "-8373.000000, 671.999329, 800.000427",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "0.000000, 0.000000, 89.999954",
            "scale": "1.200100, 1.200100, 0.080000",
            "type": "brush"
        },
        {
            "location": "-8435.000000, 671.999329, 800.000427",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "0.000000, 0.000000, 89.999954",
            "scale": "1.200100, 1.200100, 0.080000",
            "type": "brush"
        },
        {
            "location": "-8435.000000, 711.999329, 800.000427",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "0.000000, 0.000000, 89.999954",
            "scale": "1.200100, 1.200100, 0.080000",
            "type": "brush"
        },
        {
            "location": "-8363.000000, 711.999329, 800.000427",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "0.000000, 0.000000, 89.999954",
            "scale": "1.200100, 1.200100, 0.080000",
            "type": "brush"
        },
        {
            "location": "-8307.000000, 711.999329, 800.000427",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "0.000000, 0.000000, 89.999954",
            "scale": "1.200100, 1.200100, 0.080000",
            "type": "brush"
        },
        {
            "location": "-8430.000000, 896.999390, 894.499634",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
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
            "mesh": "Pipe",
            "name": "Default",
            "rotation": "-133.313797, 90.000000, 46.686153",
            "scale": "0.160000, 0.240000, 0.160000",
            "type": "brush"
        },
        {
            "location": "-8307.000000, 811.999329, 800.000427",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "0.000000, 0.000000, 89.999954",
            "scale": "0.600000, 0.600000, 0.080000",
            "type": "brush"
        },
        {
            "location": "-8345.000000, 811.999329, 800.000427",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "0.000000, 0.000000, 89.999954",
            "scale": "0.600000, 0.600000, 0.080000",
            "type": "brush"
        },
        {
            "location": "-8356.000000, 811.999329, 800.000427",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "0.000000, 0.000000, 89.999954",
            "scale": "0.600000, 0.600000, 0.080000",
            "type": "brush"
        },
        {
            "location": "-8442.000000, 811.999329, 800.000427",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "0.000000, 0.000000, 89.999954",
            "scale": "0.600000, 0.600000, 0.080000",
            "type": "brush"
        },
        {
            "location": "-8485.000000, 811.999329, 800.000427",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "0.000000, 0.000000, 89.999954",
            "scale": "0.600000, 0.600000, 0.080000",
            "type": "brush"
        },
        {
            "location": "-8442.000000, 863.999329, 800.000427",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "0.000000, 0.000000, 89.999954",
            "scale": "0.600000, 0.600000, 0.080000",
            "type": "brush"
        },
        {
            "location": "-8404.000000, 858.999329, 800.000427",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "0.000000, 0.000000, 89.999954",
            "scale": "0.600000, 0.600000, 0.080000",
            "type": "brush"
        },
        {
            "location": "-8363.000000, 858.999329, 800.000427",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "0.000000, 0.000000, 89.999954",
            "scale": "0.600000, 0.600000, 0.080000",
            "type": "brush"
        },
        {
            "location": "-8301.000000, 925.999695, 751.999634",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "wall"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "179.999954, 0.000007, -89.999802",
            "scale": "2.560000, 2.560000, 0.160000",
            "type": "brush"
        },
        {
            "location": "-8305.000000, 669.999695, 847.999634",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "116.565002, -90.000000, -26.565033",
            "scale": "0.960000, 2.560000, 0.160000",
            "type": "brush"
        },
        {
            "location": "-8303.000000, 665.999695, 735.999634",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "119.036934, -90.000000, -14.036263",
            "scale": "2.560000, 1.280000, 0.160000",
            "type": "brush"
        },
        {
            "location": "-8433.000000, 665.999695, 735.999634",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "89.999969, -90.000000, 0.000000",
            "scale": "2.560000, 1.280000, 0.160000",
            "type": "brush"
        },
        {
            "location": "-8456.000000, 665.999390, 588.499634",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
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
            "mesh": "Pipe",
            "name": "Default",
            "rotation": "-89.999939, 0.000014, 89.999947",
            "scale": "0.480000, 1.600000, 0.480000",
            "type": "brush"
        },
        {
            "location": "-8406.000000, 637.999390, 588.499634",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
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
            "mesh": "Pipe",
            "name": "Default",
            "rotation": "-89.999939, 0.000014, 89.999947",
            "scale": "0.480000, 1.600000, 0.480000",
            "type": "brush"
        },
        {
            "location": "-9103.994141, -495.999817, 1151.999268",
            "name": "Barrel",
            "rotation": "0.000000, 0.000000, 0.000000",
            "scale": "0.500000, 0.500000, 0.640023",
            "type": "prop"
        },
        {
            "location": "-9055.994141, -607.999634, 1151.999268",
            "name": "Barrel",
            "rotation": "0.000000, 0.000000, 0.000000",
            "scale": "0.500000, 0.500000, 0.640023",
            "type": "prop"
        },
        {
            "location": "-9103.994141, -655.999634, 1151.999268",
            "name": "Barrel",
            "rotation": "0.000000, 0.000000, 0.000000",
            "scale": "0.500000, 0.500000, 0.640023",
            "type": "prop"
        },
        {
            "location": "-9055.994141, -559.999634, 831.999634",
            "name": "Barrel",
            "rotation": "0.000000, 0.000000, 0.000000",
            "scale": "0.500000, 0.500000, 0.640023",
            "type": "prop"
        },
        {
            "location": "-8285.000000, 925.999695, 383.999817",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "-89.999931, -0.000061, -89.999931",
            "scale": "2.560000, 2.560000, 0.160000",
            "type": "brush"
        },
        {
            "location": "-8032.997070, 925.999695, 735.999634",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "-0.158264, -90.000000, -179.841736",
            "scale": "3.680000, 2.560000, 0.160000",
            "type": "brush"
        },
        {
            "location": "-8285.000000, 925.999695, 479.999786",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "-89.999931, -0.000061, -89.999931",
            "scale": "2.560000, 2.560000, 0.160000",
            "type": "brush"
        },
        {
            "location": "-8301.000000, 917.999695, 487.999817",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "179.999954, 0.000007, -89.999748",
            "scale": "2.400000, 2.560000, 0.160000",
            "type": "brush"
        },
        {
            "location": "-8557.000000, 925.999695, 479.999786",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "-89.999931, -0.000061, -89.999931",
            "scale": "2.560000, 2.560000, 0.160000",
            "type": "brush"
        },
        {
            "location": "-8557.000000, 925.999695, 367.999786",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "-89.999931, -0.000061, -89.999931",
            "scale": "2.560000, 2.560000, 0.160000",
            "type": "brush"
        },
        {
            "location": "-8048.997070, 665.999695, 479.999817",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "116.565002, -90.000000, -26.565033",
            "scale": "0.960000, 2.400000, 0.160000",
            "type": "brush"
        },
        {
            "location": "-8204.000000, 665.999390, 460.499817",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
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
            "mesh": "Pipe",
            "name": "Default",
            "rotation": "-179.999939, -0.000061, 89.999954",
            "scale": "0.480000, 1.600000, 0.480000",
            "type": "brush"
        },
        {
            "location": "-8468.000000, 665.999390, 460.499817",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
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
            "mesh": "Pipe",
            "name": "Default",
            "rotation": "-179.999939, -0.000061, 89.999954",
            "scale": "0.480000, 1.600000, 0.480000",
            "type": "brush"
        },
        {
            "location": "-8301.000000, 665.999695, 479.999817",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "89.999969, -90.000000, 0.000000",
            "scale": "0.960000, 2.560000, 0.160000",
            "type": "brush"
        },
        {
            "location": "-8573.000000, 665.999695, 479.999817",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "116.565002, -90.000000, -26.565033",
            "scale": "0.960000, 3.759999, 0.160000",
            "type": "brush"
        },
        {
            "location": "-8803.994141, 665.999390, 460.499817",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
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
            "mesh": "Pipe",
            "name": "Default",
            "rotation": "-179.999939, -0.000061, 89.999954",
            "scale": "0.480000, 1.600000, 0.480000",
            "type": "brush"
        },
        {
            "location": "-8048.997070, 909.999695, 859.999634",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "116.565002, -90.000000, -26.565033",
            "scale": "4.840000, 11.519993, 0.160000",
            "type": "brush"
        },
        {
            "location": "-4867.997070, 536.000000, 582.999512",
            "materialSets": [
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
                },
                {
                    "group": 0,
                    "surface": "wall"
                }
            ],
            "mesh": "WideCapsule",
            "name": "Default",
            "rotation": "0.000000, 0.000000, -89.999939",
            "scale": "2.982604, 1.391882, 0.260000",
            "type": "brush"
        },
        {
            "location": "-4867.997070, 536.000000, 582.999512",
            "materialSets": [
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
                },
                {
                    "group": 0,
                    "surface": "wall"
                }
            ],
            "mesh": "WideCapsule",
            "name": "Default",
            "rotation": "0.000000, 0.000000, -74.999428",
            "scale": "2.982604, 1.391882, 0.260000",
            "type": "brush"
        },
        {
            "location": "-4867.997070, 536.000000, 582.999512",
            "materialSets": [
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
                },
                {
                    "group": 0,
                    "surface": "wall"
                }
            ],
            "mesh": "WideCapsule",
            "name": "Default",
            "rotation": "0.000000, 0.000000, -105.000099",
            "scale": "2.982604, 1.391882, 0.260000",
            "type": "brush"
        },
        {
            "location": "-4877.997070, 536.000000, 582.999512",
            "materialSets": [
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
                },
                {
                    "group": 0,
                    "surface": "wall"
                }
            ],
            "mesh": "WideCapsule",
            "name": "Default",
            "rotation": "0.000000, 0.000000, -89.999939",
            "scale": "2.982604, 1.391882, 0.260000",
            "type": "brush"
        },
        {
            "location": "-4855.997070, 536.000000, 582.999512",
            "materialSets": [
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
                },
                {
                    "group": 0,
                    "surface": "wall"
                }
            ],
            "mesh": "WideCapsule",
            "name": "Default",
            "rotation": "0.000000, 0.000000, -89.999939",
            "scale": "2.982604, 1.391882, 0.260000",
            "type": "brush"
        },
        {
            "location": "-4843.997070, 917.999634, 582.999512",
            "materialSets": [
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
                },
                {
                    "group": 0,
                    "surface": "wall"
                }
            ],
            "mesh": "WideCapsule",
            "name": "Default",
            "rotation": "0.000000, 0.000000, -89.999939",
            "scale": "2.982604, 1.391882, 0.260000",
            "type": "brush"
        },
        {
            "location": "-4867.997070, 917.999634, 582.999512",
            "materialSets": [
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
                },
                {
                    "group": 0,
                    "surface": "wall"
                }
            ],
            "mesh": "WideCapsule",
            "name": "Default",
            "rotation": "0.000000, 0.000000, -89.999939",
            "scale": "2.982604, 1.391882, 0.260000",
            "type": "brush"
        },
        {
            "location": "-4855.997070, 917.999634, 582.999512",
            "materialSets": [
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
                },
                {
                    "group": 0,
                    "surface": "wall"
                }
            ],
            "mesh": "WideCapsule",
            "name": "Default",
            "rotation": "0.000000, 0.000000, -89.999939",
            "scale": "2.982604, 1.391882, 0.260000",
            "type": "brush"
        },
        {
            "location": "-4855.997070, 917.999634, 582.999512",
            "materialSets": [
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
                },
                {
                    "group": 0,
                    "surface": "wall"
                }
            ],
            "mesh": "WideCapsule",
            "name": "Default",
            "rotation": "0.000000, 0.000000, -105.000237",
            "scale": "2.982604, 1.391882, 0.260000",
            "type": "brush"
        },
        {
            "location": "-4855.997070, 917.999634, 582.999512",
            "materialSets": [
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
                },
                {
                    "group": 0,
                    "surface": "wall"
                }
            ],
            "mesh": "WideCapsule",
            "name": "Default",
            "rotation": "0.000000, 0.000000, -74.999489",
            "scale": "2.982604, 1.391882, 0.260000",
            "type": "brush"
        },
        {
            "location": "-9154.994141, -2611.998779, 381.999786",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "0.000000, 0.000000, 0.000000",
            "scale": "4.360000, 14.879994, 1.280000",
            "type": "brush"
        },
        {
            "location": "-9164.994141, -2297.998779, 497.999786",
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
            "mesh": "Cube",
            "name": "Default",
            "rotation": "0.000000, 0.000000, 0.000000",
            "scale": "4.360000, 10.679998, 1.280000",
            "type": "brush"
        },
        {
            "location": "-8744.995117, -1119.999390, 753.999695",
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
                }
            ],
            "mesh": "RampConvex",
            "name": "Default",
            "rotation": "0.000000, 0.000000, -89.999939",
            "scale": "1.280000, 0.160000, 0.160000",
            "type": "brush"
        },
        {
            "location": "-9164.994141, -2487.998779, 497.999786",
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
            "mesh": "Cube",
            "name": "Default",
            "rotation": "0.000000, 0.000000, 0.000000",
            "scale": "4.360000, 10.679998, 1.280000",
            "type": "brush"
        },
        {
            "location": "-9164.994141, -1247.999390, 753.999634",
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
            "mesh": "Cube",
            "name": "Default",
            "rotation": "89.999954, 0.000000, 0.000000",
            "scale": "4.360000, 2.480000, 1.280000",
            "type": "brush"
        },
        {
            "location": "-9164.994141, -2611.998779, 753.999634",
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
            "mesh": "Cube",
            "name": "Default",
            "rotation": "89.999954, 0.000000, 0.000000",
            "scale": "4.360000, 2.440000, 1.280000",
            "type": "brush"
        },
        {
            "location": "-9052.995117, -1889.999390, 934.999695",
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
                }
            ],
            "mesh": "RampConvex",
            "name": "Default",
            "rotation": "0.000000, 0.000000, -89.999939",
            "scale": "5.939999, 0.160000, 0.160000",
            "type": "brush"
        },
        {
            "location": "-9036.994141, -2483.998779, 501.999786",
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
            "mesh": "Cube",
            "name": "Default",
            "rotation": "0.000000, 90.000000, 0.000000",
            "scale": "4.340000, 5.939999, 1.280000",
            "type": "brush"
        },
        {
            "location": "-8743.995117, -1247.999390, 625.999695",
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
                }
            ],
            "mesh": "RampConvex",
            "name": "Default",
            "rotation": "0.000000, 0.000000, -89.999939",
            "scale": "12.679997, 0.160000, 0.160000",
            "type": "brush"
        },
        {
            "location": "-8735.000000, -1122.999390, 509.999817",
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
                }
            ],
            "mesh": "RampConvex",
            "name": "Default",
            "rotation": "0.000000, 0.000000, -89.999939",
            "scale": "14.889992, 0.160000, 0.160000",
            "type": "brush"
        },
        {
            "location": "-9036.995117, -2483.998779, 625.999634",
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
            "mesh": "Cube",
            "name": "Default",
            "rotation": "0.000000, 0.000000, 0.000000",
            "scale": "2.940000, 12.359995, 0.160000",
            "type": "brush"
        },
        {
            "location": "-9164.995117, -1247.999390, 753.999634",
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
            "mesh": "Cube",
            "name": "Default",
            "rotation": "0.000000, 0.000000, 0.000000",
            "scale": "4.199997, 1.280000, 0.160000",
            "type": "brush"
        },
        {
            "location": "-9164.995117, -2611.998779, 753.999634",
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
            "mesh": "Cube",
            "name": "Default",
            "rotation": "0.000000, 0.000000, 0.000000",
            "scale": "4.199997, 1.280000, 0.160000",
            "type": "brush"
        },
        {
            "location": "-8744.995117, -2483.998779, 753.999695",
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
                }
            ],
            "mesh": "RampConvex",
            "name": "Default",
            "rotation": "0.000000, 0.000000, -89.999939",
            "scale": "1.280000, 0.160000, 0.160000",
            "type": "brush"
        },
        {
            "location": "-9052.995117, -1247.999390, 934.999695",
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
                }
            ],
            "mesh": "RampConvex",
            "name": "Default",
            "rotation": "0.000000, 0.000000, -89.999939",
            "scale": "6.099998, 0.160000, 0.160000",
            "type": "brush"
        },
        {
            "location": "-9164.995117, -2483.998779, 934.999634",
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
            "mesh": "Cube",
            "name": "Default",
            "rotation": "0.000000, 0.000000, 0.000000",
            "scale": "1.140000, 5.939999, 0.160000",
            "type": "brush"
        },
        {
            "location": "-4867.997070, 536.000000, 598.999512",
            "materialSets": [
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
                },
                {
                    "group": 0,
                    "surface": "wall"
                }
            ],
            "mesh": "WideCapsule",
            "name": "Default",
            "rotation": "0.000000, 0.000000, -74.999428",
            "scale": "2.982604, 1.391882, 0.260000",
            "type": "brush"
        },
        {
            "location": "-8905.995117, -1499.999390, 654.999512",
            "materialSets": [
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
                },
                {
                    "group": 0,
                    "surface": "wall"
                }
            ],
            "mesh": "WideCapsule",
            "name": "Default",
            "rotation": "0.000000, 0.000000, -44.999908",
            "scale": "2.982604, 1.391882, 0.260000",
            "type": "brush"
        },
        {
            "location": "-8905.995117, -1499.999390, 654.999512",
            "materialSets": [
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
                },
                {
                    "group": 0,
                    "surface": "wall"
                }
            ],
            "mesh": "WideCapsule",
            "name": "Default",
            "rotation": "0.000000, 0.000000, -74.999557",
            "scale": "2.982604, 1.391882, 0.260000",
            "type": "brush"
        },
        {
            "location": "-8893.995117, -1492.999390, 654.999512",
            "materialSets": [
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
                },
                {
                    "group": 0,
                    "surface": "wall"
                }
            ],
            "mesh": "WideCapsule",
            "name": "Default",
            "rotation": "0.000000, 0.000000, -59.999905",
            "scale": "2.982604, 1.391882, 0.260000",
            "type": "brush"
        },
        {
            "location": "-8921.995117, -1505.999390, 654.999512",
            "materialSets": [
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
                },
                {
                    "group": 0,
                    "surface": "wall"
                }
            ],
            "mesh": "WideCapsule",
            "name": "Default",
            "rotation": "0.000000, 0.000000, -59.999905",
            "scale": "2.982604, 1.391882, 0.260000",
            "type": "brush"
        },
        {
            "location": "-9164.995117, -1243.999390, 761.999634",
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
            "scale": "4.199997, 1.200000, 0.160000",
            "type": "brush"
        },
        {
            "location": "-9164.995117, -2607.998779, 761.999634",
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
            "scale": "4.199997, 1.200000, 0.160000",
            "type": "brush"
        },
        {
            "location": "-9036.994141, -1857.999390, 501.999786",
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
            "mesh": "Cube",
            "name": "Default",
            "rotation": "0.000000, 90.000000, 0.000000",
            "scale": "4.340000, 6.099999, 1.280000",
            "type": "brush"
        },
        {
            "location": "-9164.995117, -1857.999390, 934.999634",
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
            "mesh": "Cube",
            "name": "Default",
            "rotation": "0.000000, 0.000000, 0.000000",
            "scale": "1.140000, 6.099999, 0.160000",
            "type": "brush"
        },
        {
            "location": "-9156.995117, -1919.999390, 1017.999634",
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
            "rotation": "-85.236237, -90.000000, -4.763644",
            "scale": "4.199997, 1.200000, 0.160000",
            "type": "brush"
        },
        {
            "location": "-9036.995117, -1935.999390, 1017.999634",
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
            "rotation": "19.471304, -90.000000, -19.471241",
            "scale": "4.199997, 1.200000, 0.160000",
            "type": "brush"
        },
        {
            "location": "-9156.995117, -1815.999390, 1017.999634",
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
            "rotation": "-97.124908, -90.000000, 7.125023",
            "scale": "4.199997, 1.200000, 0.160000",
            "type": "brush"
        },
        {
            "location": "-9156.995117, -1935.999390, 1017.999634",
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
            "rotation": "-35.264343, -90.000000, 35.264389",
            "scale": "4.199997, 1.200000, 0.160000",
            "type": "brush"
        },
        {
            "location": "-9156.995117, -1919.999390, 1017.999634",
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
            "mesh": "Cube",
            "name": "Default",
            "rotation": "0.000000, 0.000000, 0.000000",
            "scale": "1.360000, 0.880000, 0.160000",
            "type": "brush"
        },
        {
            "location": "-9036.994141, -2387.998779, 501.999786",
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
            "mesh": "Cube",
            "name": "Default",
            "rotation": "0.000000, 90.000000, 0.000000",
            "scale": "4.340000, 5.939999, 1.280000",
            "type": "brush"
        },
        {
            "location": "-9156.995117, -1831.999390, 1017.999695",
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
                }
            ],
            "mesh": "RampConvex",
            "name": "Default",
            "rotation": "0.000000, 0.000000, 0.000000",
            "scale": "1.360000, 0.160000, 0.160000",
            "type": "brush"
        },
        {
            "location": "-9156.995117, -1919.999390, 1017.999695",
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
                }
            ],
            "mesh": "RampConvex",
            "name": "Default",
            "rotation": "-89.999939, 0.000000, 0.000000",
            "scale": "1.360000, 0.160000, 0.160000",
            "type": "brush"
        },
        {
            "location": "-9164.994141, -1247.999390, 509.999786",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                },
                {
                    "group": 0,
                    "surface": "ground"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "89.999954, 0.000000, 0.000000",
            "scale": "4.360000, 1.400000, 1.280000",
            "type": "brush"
        },
        {
            "location": "-7984.997070, 1261.999390, 389.999725",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "-89.999969, 0.000000, 89.999954",
            "scale": "1.280000, 0.640000, 0.160000",
            "type": "brush"
        },
        {
            "location": "-7359.997559, -2719.998779, 383.637512",
            "name": "Tree",
            "rotation": "0.000000, 0.000000, -59.999905",
            "scale": "4.000000, 4.000000, 4.000000",
            "type": "prop"
        },
        {
            "location": "-8016.997070, 1261.999390, 453.999725",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "0.000002, 0.000000, 89.999954",
            "scale": "1.280000, 1.280000, 0.160000",
            "type": "brush"
        },
        {
            "location": "-8160.997070, 1261.999390, 389.999725",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "-89.999969, 0.000000, 89.999954",
            "scale": "1.280000, 0.640000, 0.160000",
            "type": "brush"
        },
        {
            "location": "-8128.997070, 1261.999390, 389.999725",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "-89.999939, 0.000000, -0.000031",
            "scale": "1.600000, 0.640000, 0.160000",
            "type": "brush"
        },
        {
            "location": "-8112.997070, 1389.999390, 389.999725",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "-89.999939, 0.000000, -0.000031",
            "scale": "1.280000, 0.640000, 0.160000",
            "type": "brush"
        },
        {
            "location": "-8063.997559, 1247.999390, 517.999634",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
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
            "mesh": "Tube",
            "name": "Default",
            "rotation": "89.999954, 0.000000, 0.000000",
            "scale": "1.600000, 1.600000, 1.440000",
            "type": "brush"
        },
        {
            "location": "-8128.997070, 1261.999390, 453.999725",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "-89.999939, 0.000000, -0.000031",
            "scale": "1.600000, 0.640000, 0.160000",
            "type": "brush"
        },
        {
            "location": "-8128.997070, 1261.999390, 517.999634",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "-89.999939, 0.000000, -0.000031",
            "scale": "1.600000, 0.640000, 0.160000",
            "type": "brush"
        },
        {
            "location": "-8128.997070, 1261.999390, 565.999573",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "-89.999939, 0.000000, -0.000031",
            "scale": "1.600000, 0.640000, 0.160000",
            "type": "brush"
        },
        {
            "location": "-8160.997070, 1389.999390, 389.999725",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "-89.999939, 0.000000, -0.000031",
            "scale": "1.280000, 0.640000, 0.160000",
            "type": "brush"
        },
        {
            "location": "-8160.997070, 1261.999390, 453.999725",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "-89.999969, 0.000000, 89.999954",
            "scale": "1.280000, 0.640000, 0.160000",
            "type": "brush"
        },
        {
            "location": "-8160.997070, 1261.999390, 517.999634",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "-89.999969, 0.000000, 89.999954",
            "scale": "1.280000, 0.640000, 0.160000",
            "type": "brush"
        },
        {
            "location": "-7984.997070, 1261.999390, 453.999725",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "-89.999969, 0.000000, 89.999954",
            "scale": "1.280000, 0.640000, 0.160000",
            "type": "brush"
        },
        {
            "location": "-7984.997070, 1261.999390, 517.999634",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "-89.999969, 0.000000, 89.999954",
            "scale": "1.280000, 0.640000, 0.160000",
            "type": "brush"
        },
        {
            "location": "-7984.997070, 1261.999390, 565.999573",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "-89.999969, 0.000000, 89.999954",
            "scale": "1.280000, 0.640000, 0.160000",
            "type": "brush"
        },
        {
            "location": "-8160.997070, 1261.999390, 565.999573",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "-89.999969, 0.000000, 89.999954",
            "scale": "1.280000, 0.640000, 0.160000",
            "type": "brush"
        },
        {
            "location": "-8016.997070, 1261.999390, 437.999725",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "0.000002, 0.000000, 89.999954",
            "scale": "1.280000, 1.280000, 0.160000",
            "type": "brush"
        },
        {
            "location": "-8016.997070, 1261.999390, 565.999573",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "0.000002, 0.000000, 89.999954",
            "scale": "1.280000, 1.280000, 0.160000",
            "type": "brush"
        },
        {
            "location": "-7984.997070, 1261.999390, 565.999573",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "0.000002, 0.000000, 89.999954",
            "scale": "1.280000, 1.280000, 0.160000",
            "type": "brush"
        },
        {
            "location": "-8160.997070, 1261.999390, 565.999573",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "-89.999939, 0.000000, -0.000031",
            "scale": "1.600000, 0.640000, 0.160000",
            "type": "brush"
        },
        {
            "location": "-8160.997070, 1261.999390, 517.999634",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "-89.999939, 0.000000, -0.000031",
            "scale": "1.600000, 0.640000, 0.160000",
            "type": "brush"
        },
        {
            "location": "-8160.997070, 1261.999390, 389.999725",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "-89.999939, 0.000000, -0.000031",
            "scale": "1.600000, 0.640000, 0.160000",
            "type": "brush"
        },
        {
            "location": "-8160.997070, 1261.999390, 453.999725",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "-89.999939, 0.000000, -0.000031",
            "scale": "1.600000, 0.640000, 0.160000",
            "type": "brush"
        },
        {
            "location": "-8016.997070, 1261.999390, 613.999573",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "0.000002, 0.000000, 89.999954",
            "scale": "1.280000, 1.280000, 0.160000",
            "type": "brush"
        },
        {
            "location": "-7968.997070, 1261.999390, 613.999573",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "0.000002, 0.000000, 89.999954",
            "scale": "1.280000, 1.280000, 0.160000",
            "type": "brush"
        },
        {
            "location": "-8128.997070, 1261.999390, 453.999725",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "-89.999969, 0.000000, 89.999954",
            "scale": "1.280000, 0.640000, 0.160000",
            "type": "brush"
        },
        {
            "location": "-7968.997070, 1261.999390, 453.999725",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "0.000002, 0.000000, 89.999954",
            "scale": "1.280000, 1.280000, 0.160000",
            "type": "brush"
        },
        {
            "location": "-8128.997070, 1261.999390, 453.999725",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "-89.999969, 0.000000, 89.999954",
            "scale": "1.280000, 0.640000, 0.160000",
            "type": "brush"
        },
        {
            "location": "-8144.997070, 1261.999390, 453.999725",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "-89.999969, 0.000000, 89.999954",
            "scale": "1.280000, 0.640000, 0.160000",
            "type": "brush"
        },
        {
            "location": "-8144.997070, 1261.999390, 533.999634",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "-89.999969, 0.000000, 89.999954",
            "scale": "1.280000, 0.640000, 0.160000",
            "type": "brush"
        },
        {
            "location": "-8128.997070, 1261.999390, 533.999634",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "-89.999969, 0.000000, 89.999954",
            "scale": "1.280000, 0.640000, 0.160000",
            "type": "brush"
        },
        {
            "location": "-8000.997070, 1261.999390, 517.999634",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "-89.999969, 0.000000, 89.999954",
            "scale": "1.280000, 0.640000, 0.160000",
            "type": "brush"
        },
        {
            "location": "-8000.997070, 1261.999390, 453.999725",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "-89.999969, 0.000000, 89.999954",
            "scale": "1.280000, 0.640000, 0.160000",
            "type": "brush"
        },
        {
            "location": "-7984.997070, 1261.999390, 581.999573",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "0.000002, 0.000000, 89.999954",
            "scale": "1.280000, 1.280000, 0.160000",
            "type": "brush"
        },
        {
            "location": "-7984.997070, 1261.999390, 597.999573",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "0.000002, 0.000000, 89.999954",
            "scale": "1.280000, 1.280000, 0.160000",
            "type": "brush"
        },
        {
            "location": "-8016.997070, 1261.999390, 597.999573",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "0.000002, 0.000000, 89.999954",
            "scale": "1.280000, 1.280000, 0.160000",
            "type": "brush"
        },
        {
            "location": "-8144.997070, 1261.999390, 517.999634",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "-89.999969, 0.000000, 89.999954",
            "scale": "1.280000, 0.640000, 0.160000",
            "type": "brush"
        },
        {
            "location": "-8063.997559, 1247.999390, 613.999573",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
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
            "mesh": "Tube",
            "name": "Default",
            "rotation": "89.999954, 0.000000, 0.000000",
            "scale": "0.160000, 0.160000, 1.440000",
            "type": "brush"
        },
        {
            "location": "-7976.997070, 1375.999390, 605.999573",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
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
            "rotation": "0.000002, 0.000000, 89.999954",
            "scale": "0.160000, 0.480000, 0.160000",
            "type": "brush"
        },
        {
            "location": "-8063.997559, 1247.999390, 518.901917",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
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
            "mesh": "Cylinder",
            "name": "Default",
            "rotation": "89.999954, 0.000000, 0.000000",
            "scale": "0.960000, 0.960000, 0.160000",
            "type": "brush"
        },
        {
            "location": "-8480.000000, 1599.999390, 391.000793",
            "name": "Window",
            "rotation": "0.000000, 0.000000, 90.000008",
            "scale": "1.760000, 0.500000, 3.360000",
            "type": "prop"
        },
        {
            "location": "-8728.000000, 1951.999512, 391.000793",
            "name": "Window",
            "rotation": "0.000000, 0.000000, -179.999954",
            "scale": "1.240000, 0.500000, 3.360000",
            "type": "prop"
        },
        {
            "location": "-8836.995117, 1599.999390, 375.901917",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "wall"
                },
                {
                    "group": 0,
                    "surface": "wall"
                },
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 0,
                    "surface": "wall"
                }
            ],
            "mesh": "Cylinder",
            "name": "Default",
            "rotation": "0.000000, 0.000000, 0.000000",
            "scale": "0.400000, 0.400000, 0.160000",
            "type": "brush"
        },
        {
            "location": "-8836.995117, 1599.999390, 1207.901855",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
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
            "mesh": "Cylinder",
            "name": "Default",
            "rotation": "0.000000, 0.000000, 0.000000",
            "scale": "0.960000, 0.960000, 0.080000",
            "type": "brush"
        },
        {
            "location": "-8836.995117, 1599.999390, 1215.901855",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
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
            "mesh": "Cylinder",
            "name": "Default",
            "rotation": "0.000000, 0.000000, 0.000000",
            "scale": "0.240000, 0.240000, 0.080000",
            "type": "brush"
        },
        {
            "location": "-8836.995117, 1599.999390, 1223.901855",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
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
            "mesh": "Cylinder",
            "name": "Default",
            "rotation": "0.000000, 0.000000, 0.000000",
            "scale": "0.080000, 0.080000, 0.320000",
            "type": "brush"
        },
        {
            "location": "-8849.995117, 1599.999390, 1264.901855",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
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
            "mesh": "Pipe90",
            "name": "Default",
            "rotation": "89.999954, 0.000000, 0.000000",
            "scale": "0.256000, 0.192000, 0.320000",
            "type": "brush"
        },
        {
            "location": "-8846.995117, 1599.999390, 1264.901855",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
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
            "mesh": "Cylinder",
            "name": "Default",
            "rotation": "0.000000, 90.000000, 0.000000",
            "scale": "0.080000, 0.080000, 0.320000",
            "type": "brush"
        },
        {
            "location": "-8913.995117, 1599.999390, 1264.901855",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
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
            "mesh": "Cylinder",
            "name": "Default",
            "rotation": "0.000000, 90.000000, 0.000000",
            "scale": "0.080000, 0.080000, 2.560000",
            "type": "brush"
        },
        {
            "location": "-9176.995117, 1599.999390, 1251.901855",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
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
            "mesh": "Pipe90",
            "name": "Default",
            "rotation": "85.236237, 90.000000, -4.763644",
            "scale": "0.256000, 0.192000, 0.320000",
            "type": "brush"
        },
        {
            "location": "-9176.995117, 1599.999390, 1223.901855",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
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
            "mesh": "Cylinder",
            "name": "Default",
            "rotation": "0.000000, 0.000000, 0.000000",
            "scale": "0.080000, 0.080000, 0.320000",
            "type": "brush"
        },
        {
            "location": "-8868.995117, 1599.999390, 1264.901855",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
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
            "mesh": "Cylinder",
            "name": "Default",
            "rotation": "0.000000, 90.000000, 0.000000",
            "scale": "0.080000, 0.080000, 0.320000",
            "type": "brush"
        },
        {
            "location": "-8884.995117, 1599.999390, 1264.901855",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
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
            "mesh": "Cylinder",
            "name": "Default",
            "rotation": "0.000000, 90.000000, 0.000000",
            "scale": "0.080000, 0.080000, 0.320000",
            "type": "brush"
        },
        {
            "location": "-9176.995117, 1599.999390, 702.901672",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
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
            "mesh": "Cylinder",
            "name": "Default",
            "rotation": "0.000000, 0.000000, 0.000000",
            "scale": "0.080000, 0.080000, 5.319999",
            "type": "brush"
        },
        {
            "location": "-9184.995117, 1599.999390, 702.901672",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
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
            "mesh": "Cylinder",
            "name": "Default",
            "rotation": "0.000000, -90.000000, 0.000000",
            "scale": "0.240000, 0.640000, 0.160000",
            "type": "brush"
        },
        {
            "location": "-9197.995117, 1607.999390, 702.901672",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
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
            "mesh": "Cylinder",
            "name": "Default",
            "rotation": "0.000000, -90.000000, 0.000000",
            "scale": "0.080000, 0.080000, 0.320000",
            "type": "brush"
        },
        {
            "location": "-9197.995117, 1620.999390, 702.901672",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
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
            "mesh": "Cylinder",
            "name": "Default",
            "rotation": "0.000000, -90.000000, 0.000000",
            "scale": "0.080000, 0.080000, 0.320000",
            "type": "brush"
        },
        {
            "location": "-9175.995117, 1599.999390, 1119.901855",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
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
            "mesh": "Cylinder",
            "name": "Default",
            "rotation": "0.000000, 90.000000, 0.000000",
            "scale": "0.080000, 0.080000, 0.320000",
            "type": "brush"
        },
        {
            "location": "-9175.995117, 1599.999390, 874.901672",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
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
            "mesh": "Cylinder",
            "name": "Default",
            "rotation": "0.000000, 90.000000, 0.000000",
            "scale": "0.080000, 0.080000, 0.320000",
            "type": "brush"
        },
        {
            "location": "-9197.995117, 1573.999390, 702.901672",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
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
            "mesh": "Cylinder",
            "name": "Default",
            "rotation": "0.000000, -90.000000, 0.000000",
            "scale": "0.240000, 0.240000, 0.320000",
            "type": "brush"
        },
        {
            "location": "-9188.995117, 1573.999390, 702.901672",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
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
            "mesh": "Cylinder",
            "name": "Default",
            "rotation": "0.000000, -90.000000, 0.000000",
            "scale": "0.080000, 0.080000, 0.320000",
            "type": "brush"
        },
        {
            "location": "-9159.995117, 1572.999390, 703.901672",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
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
            "mesh": "Cylinder",
            "name": "Default",
            "rotation": "-179.999954, -44.999798, -89.999664",
            "scale": "0.080000, 0.080000, 0.320000",
            "type": "brush"
        },
        {
            "location": "-5183.998535, 1095.999878, 1271.999390",
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
                    "value": "main egg1"
                }
            ],
            "rotation": "0.000000, 0.000000, 0.000000",
            "scale": "0.262295, 0.262295, 0.262295",
            "type": "gameObject"
        },
        {
            "location": "-5512.997070, 1160.999512, 991.999329",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
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
            "mesh": "Cylinder",
            "name": "Default",
            "rotation": "0.000000, -90.000000, 0.000000",
            "scale": "0.130000, 0.130000, 0.850000",
            "type": "brush"
        },
        {
            "location": "-5592.997070, 1160.999512, 991.999329",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
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
            "mesh": "Cylinder",
            "name": "Default",
            "rotation": "0.000000, -90.000000, 0.000000",
            "scale": "0.130000, 0.130000, 0.850000",
            "type": "brush"
        },
        {
            "location": "-5552.997070, 1160.999512, 991.999329",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
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
            "mesh": "Cylinder",
            "name": "Default",
            "rotation": "104.036270, -90.000000, -14.036263",
            "scale": "0.130000, 0.130000, 0.850000",
            "type": "brush"
        },
        {
            "location": "-5472.997070, 1160.999512, 991.999329",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
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
            "mesh": "Cylinder",
            "name": "Default",
            "rotation": "104.036270, -90.000000, -14.036263",
            "scale": "0.130000, 0.130000, 0.850000",
            "type": "brush"
        },
        {
            "location": "-5428.997070, 1160.999512, 1071.999268",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
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
            "mesh": "Cylinder",
            "name": "Default",
            "rotation": "-179.999954, 0.000007, -179.999954",
            "scale": "0.130000, 0.130000, 0.850000",
            "type": "brush"
        },
        {
            "location": "-5428.997070, 1160.999512, 1035.999268",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
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
            "mesh": "Cylinder",
            "name": "Default",
            "rotation": "104.036270, -90.000000, -14.036263",
            "scale": "0.130000, 0.130000, 0.850000",
            "type": "brush"
        },
        {
            "location": "-6969.997559, -1418.000000, 1080.499512",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
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
            "mesh": "Pipe",
            "name": "Default",
            "rotation": "0.000058, 0.000048, 89.999954",
            "scale": "1.280000, 1.280000, 1.280000",
            "type": "brush"
        },
        {
            "location": "-6969.997559, -1450.000000, 1272.499512",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
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
            "mesh": "Pipe",
            "name": "Default",
            "rotation": "0.000058, 0.000048, 89.999954",
            "scale": "0.640000, 1.280000, 0.640000",
            "type": "brush"
        },
        {
            "location": "-6722.997070, -1492.999268, 1327.999634",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "-89.999939, 0.000000, 0.000000",
            "scale": "0.160000, 0.640000, 0.010000",
            "type": "brush"
        },
        {
            "location": "-6713.999023, -1511.999756, 1342.814453",
            "name": "SpawnPoint",
            "properties": [
                {
                    "name": "Name",
                    "value": "SpawnPoint1"
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
                    "value": "main egg1"
                }
            ],
            "rotation": "0.000000, 0.000000, 89.999954",
            "scale": "0.262295, 0.262295, 0.262295",
            "type": "gameObject"
        },
        {
            "location": "-6969.997559, -1098.000244, 1080.499512",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
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
            "mesh": "Pipe",
            "name": "Default",
            "rotation": "0.000058, 0.000048, 89.999954",
            "scale": "1.280000, 0.640000, 0.640000",
            "type": "brush"
        },
        {
            "location": "-6969.997559, -1066.000244, 1272.499512",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
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
            "mesh": "Pipe",
            "name": "Default",
            "rotation": "0.000058, 0.000048, 89.999954",
            "scale": "0.640000, 1.280000, 0.640000",
            "type": "brush"
        },
        {
            "location": "-6722.997070, -1492.999268, 383.999817",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "-89.999939, 0.000000, 0.000000",
            "scale": "0.160000, 9.599998, 0.320000",
            "type": "brush"
        },
        {
            "location": "-6945.999023, -1028.000000, 1420.814453",
            "name": "SpawnPoint",
            "properties": [
                {
                    "name": "Name",
                    "value": "SpawnPoint1"
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
                    "value": "main egg1"
                }
            ],
            "rotation": "0.000000, 0.000000, 89.999954",
            "scale": "0.262295, 0.262295, 0.262295",
            "type": "gameObject"
        },
        {
            "location": "-6969.997559, -1066.000244, 888.499634",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
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
            "mesh": "Pipe",
            "name": "Default",
            "rotation": "0.000058, 0.000048, 89.999954",
            "scale": "0.640000, 1.280000, 0.640000",
            "type": "brush"
        },
        {
            "location": "-6969.997559, -1450.000000, 888.499634",
            "materialSets": [
                {
                    "group": 1,
                    "surface": "wall"
                },
                {
                    "group": 1,
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
            "mesh": "Pipe",
            "name": "Default",
            "rotation": "0.000058, 0.000048, 89.999954",
            "scale": "1.280000, 1.280000, 1.280000",
            "type": "brush"
        },
        {
            "location": "-6722.997070, -1508.999268, 1359.999634",
            "materialSets": [
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                },
                {
                    "group": 0,
                    "surface": "ceiling"
                }
            ],
            "mesh": "Cube",
            "name": "Default",
            "rotation": "-89.999939, 0.000000, 89.999901",
            "scale": "0.160000, 0.320000, 0.010000",
            "type": "brush"
        },
        {
            "location": "-6938.999023, -1580.999756, 411.999817",
            "name": "Crate",
            "rotation": "0.000000, -25.304169, 0.000000",
            "scale": "0.500000, 0.500000, 0.500000",
            "type": "prop"
        }
    ],
    "version": "0.0.7"
}