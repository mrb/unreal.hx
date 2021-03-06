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
  Represents the appearance of an SComboBox
**/
@:umodule("SlateCore")
@:glueCppIncludes("Framework/Styling/ComboBoxWidgetStyle.h")
@:uextern extern class FComboBoxStyle extends unreal.slatecore.FSlateWidgetStyle {
  @:deprecated public var SelectionChangeSound_DEPRECATED : unreal.FName;
  @:deprecated public var PressedSound_DEPRECATED : unreal.FName;
  
  /**
    The Sound to play when the selection is changed
  **/
  public var SelectionChangeSlateSound : unreal.slatecore.FSlateSound;
  
  /**
    The sound the button should play when pressed
  **/
  public var PressedSlateSound : unreal.slatecore.FSlateSound;
  
  /**
    The style to use for our SComboButton
  **/
  public var ComboButtonStyle : unreal.slatecore.FComboButtonStyle;
  
}
