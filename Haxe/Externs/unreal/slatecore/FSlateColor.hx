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
package unreal.slatecore;


/**
  A Slate color can be a directly specified value, or the color can be pulled from a WidgetStyle.
**/
@:umodule("SlateCore")
@:glueCppIncludes("Framework/Styling/ButtonWidgetStyle.h")
@:uextern extern class FSlateColor {
  
  /**
    The rule for which color to pick.
  **/
  private var ColorUseRule : unreal.slatecore.ESlateColorStylingMode;
  
  /**
    The current specified color; only meaningful when ColorToUse == UseColor_Specified.
  **/
  private var SpecifiedColor : unreal.FLinearColor;
  
}