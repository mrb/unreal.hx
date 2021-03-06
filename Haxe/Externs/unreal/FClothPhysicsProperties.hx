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
package unreal;


/**
  WARNING: This type is defined as NoExport by UHT. It will be empty because of it
  
  now exposed a part of properties based on 3DS Max plug-in
  property names are also changed into 3DS Max plug-in's one
**/
@:glueCppIncludes("Engine/SkeletalMesh.h")
@:noCopy @:noEquals @:uextern extern class FClothPhysicsProperties {
  
  /**
    Minimal amount of distance particles will keep of each other.
  **/
  public var SelfCollisionThickness : unreal.Float32;
  
  /**
    Amount of inertia that is kept when using local space simulation. Internal name is inertia scale
  **/
  public var InertiaBlend : unreal.Float32;
  
  /**
    Amount of gravity that is applied to the cloth.
  **/
  public var GravityScale : unreal.Float32;
  
  /**
    Drag coefficient n the range [0, 1]
  **/
  public var Drag : unreal.Float32;
  
  /**
    Spring damping of the cloth in the range[0, 1]
  **/
  public var Damping : unreal.Float32;
  
  /**
    Friction coefficient in the range[0, 1]
  **/
  public var Friction : unreal.Float32;
  
  /**
    Make cloth simulation less stretchy. A value smaller than 1 will turn it off.
  **/
  public var StretchLimit : unreal.Float32;
  
  /**
    Shearing stiffness of the cloth in the range [0, 1].
  **/
  public var ShearResistance : unreal.Float32;
  
  /**
    Bending stiffness of the cloth in the range [0, 1].
  **/
  public var BendResistance : unreal.Float32;
  
}
