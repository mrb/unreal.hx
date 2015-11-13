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
package unreal.cablecomponent;


/**
  Component that allows you to specify custom triangle mesh geometry
**/
@:umodule("CableComponent")
@:glueCppIncludes("CableComponent.h")
@:uextern extern class UCableComponent extends unreal.UMeshComponent {
  
  /**
    How many times to repeat the material along the length of the cable
  **/
  public var TileMaterial : unreal.Float32;
  
  /**
    Number of sides of the cable geometry
  **/
  public var NumSides : unreal.Int32;
  
  /**
    How wide the cable geometry is
  **/
  public var CableWidth : unreal.Float32;
  
  /**
    The number of solver iterations controls how 'stiff' the cable is
  **/
  public var SolverIterations : unreal.Int32;
  
  /**
    Controls the simulation substep time for the cable
  **/
  public var SubstepTime : unreal.Float32;
  
  /**
    How many segments the cable has
  **/
  public var NumSegments : unreal.Int32;
  
  /**
    Rest length of the cable
  **/
  public var CableLength : unreal.Float32;
  
  /**
    End location of cable, relative to AttachEndTo if specified, otherwise relative to cable component.
  **/
  public var EndLocation : unreal.FVector;
  
  /**
    Actor or Component that the end of the cable should be attached to
  **/
  public var AttachEndTo : unreal.FComponentReference;
  
  /**
    Attaches the end of the cable to a specific Component within an Actor *
  **/
  @:final public function SetAttachEndTo(Actor : unreal.AActor, ComponentProperty : unreal.FName) : Void;
  
  /**
    Gets the Actor that the cable is attached to *
  **/
  @:thisConst @:final public function GetAttachedActor() : unreal.AActor;
  
  /**
    Gets the specific USceneComponent that the cable is attached to *
  **/
  @:thisConst @:final public function GetAttachedComponent() : unreal.USceneComponent;
  
}