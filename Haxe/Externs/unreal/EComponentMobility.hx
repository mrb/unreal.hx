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
  Describes how often this component is allowed to move.
**/
@:glueCppIncludes("Components/SceneComponent.h")
@:uname("EComponentMobility.Type")
@:uextern extern enum EComponentMobility {
  
  /**
    Static objects cannot be moved or changed in game.
    - Allows baked lighting
    - Fastest rendering
  **/
  Static;
  
  /**
    A stationary light will only have its shadowing and bounced lighting from static geometry baked by Lightmass, all other lighting will be dynamic.
    - Stationary only makes sense for light components
    - It can change color and intensity in game.
    - Can't move
    - Allows partial baked lighting
    - Dynamic shadows
  **/
  Stationary;
  
  /**
    Movable objects can be moved and changed in game.
    - Totally dynamic
    - Can cast dynamic shadows
    - Slowest rendering
  **/
  Movable;
  
}