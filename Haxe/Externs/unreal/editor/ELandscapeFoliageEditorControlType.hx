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
package unreal.editor;


/**
  Is Ctrl key required for editing landscape/foliage?
**/
@:umodule("UnrealEd")
@:glueCppIncludes("Settings/LevelEditorViewportSettings.h")
@:uname("ELandscapeFoliageEditorControlType")
@:class @:uextern extern enum ELandscapeFoliageEditorControlType {
  
  /**
    Ignore Ctrl key (allow but don't require Ctrl held)
  **/
  @DisplayName("Ignore Ctrl key (allow but don\'t require Ctrl held)")
  IgnoreCtrl;
  
  /**
    Require Ctrl held for tools
  **/
  @DisplayName("Require Ctrl held for tools")
  RequireCtrl;
  
  /**
    Require Ctrl is not held
  **/
  @DisplayName("Require Ctrl is not held")
  RequireNoCtrl;
  
}
