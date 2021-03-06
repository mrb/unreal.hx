/**
   * 
   * WARNING! This file was autogenerated by: 
   *  _   _ _____     ___   _   _ __   __ 
   * | | | |  ___|   /   | | | | |\ \ / / 
   * | | | | |__    / /| | | |_| | \ V /  
   * | | | |  __|  / /_| | |  _  | /   \  
   * | |_| | |___  \___  | | | | |/ /^\ \ 
   *  \___/\____/      |_/ \_| |_/\/   \/ 
   * 
   * This file was autogenerated by UE4HaxeExternGenerator using UHT definitions. It only includes UPROPERTYs and UFUNCTIONs. Do not modify it!
   * In order to add more definitions, create or edit a type with the same name/package, but with an `_Extra` suffix
**/
package unreal.gameplayabilities;


/**
  Reticles allow targeting to be visualized. Tasks can spawn these. Artists/designers can create BPs for these.
**/
@:umodule("GameplayAbilities")
@:glueCppIncludes("Abilities/GameplayAbilityWorldReticle.h")
@:uextern extern class AGameplayAbilityWorldReticle extends unreal.AActor {
  
  /**
    Called whenever bIsTargetValid changes value.
  **/
  public function OnValidTargetChanged(bNewValue : Bool) : Void;
  
  /**
    Called whenever bIsTargetAnActor changes value.
  **/
  public function OnTargetingAnActor(bNewValue : Bool) : Void;
  public function OnParametersInitialized() : Void;
  public function SetReticleMaterialParamFloat(ParamName : unreal.FName, value : unreal.Float32) : Void;
  public function SetReticleMaterialParamVector(ParamName : unreal.FName, value : unreal.FVector) : Void;
  @:final public function FaceTowardSource(bFaceIn2D : Bool) : Void;
  
  /**
    In the future, we may want to grab things like sockets off of this.
  **/
  private var TargetingActor : unreal.AActor;
  
  /**
    This is used in the process of determining whether we should replicate to a specific client.
  **/
  private var MasterPC : unreal.APlayerController;
  
  /**
    If the target is an actor snap to it's location
  **/
  public var bSnapToTargetedActor : Bool;
  
  /**
    Makes the reticle's default owner-facing behavior operate in 2D (flat) instead of 3D (pitched). Defaults to true.
  **/
  public var bFaceOwnerFlat : Bool;
  public var Parameters : unreal.gameplayabilities.FWorldReticleParameters;
  
}
