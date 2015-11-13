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
  WARNING: This type was defined as MinimalAPI on its declaration. Because of that, its properties/methods are inaccessible
  
  A brush component defines a shape that can be modified within the editor. They are used both as part of BSP building, and for volumes.
  @see https://docs.unrealengine.com/latest/INT/Engine/Actors/Volumes
  @see https://docs.unrealengine.com/latest/INT/Engine/Actors/Brushes
**/
@:glueCppIncludes("Components/BrushComponent.h")
@:uextern extern class UBrushComponent extends unreal.UPrimitiveComponent {
  
  /**
    Local space translation
  **/
  @:deprecated public var PrePivot_DEPRECATED : unreal.FVector;
  
  /**
    Description of collision
  **/
  public var BrushBodySetup : unreal.UBodySetup;
  public var Brush : unreal.UModel;
  
}