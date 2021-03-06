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
package unreal.umg;


/**
  A throbber widget that orients images in a spinning circle.
  
  ● No Children
  ● Spinner Progress
**/
@:umodule("UMG")
@:glueCppIncludes("UMG.h")
@:uextern extern class UCircularThrobber extends unreal.umg.UWidget {
  public var Image : unreal.slatecore.FSlateBrush;
  
  /**
    Image to use for each segment of the throbber
  **/
  @:deprecated public var PieceImage_DEPRECATED : unreal.USlateBrushAsset;
  
  /**
    The radius of the circle
  **/
  public var Radius : unreal.Float32;
  
  /**
    The amount of time for a full circle (in seconds)
  **/
  public var Period : unreal.Float32;
  
  /**
    How many pieces there are
  **/
  public var NumberOfPieces : unreal.Int32;
  
  /**
    Sets how many pieces there are.
  **/
  @:final public function SetNumberOfPieces(InNumberOfPieces : unreal.Int32) : Void;
  
  /**
    Sets the amount of time for a full circle (in seconds).
  **/
  @:final public function SetPeriod(InPeriod : unreal.Float32) : Void;
  
  /**
    Sets the radius of the circle.
  **/
  @:final public function SetRadius(InRadius : unreal.Float32) : Void;
  
}
