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
  Encapsulate require and ignore tags
**/
@:umodule("GameplayAbilities")
@:glueCppIncludes("GameplayEffect.h")
@:uextern extern class FGameplayTagRequirements {
  
  /**
    None of these tags may be present
  **/
  public var IgnoreTags : unreal.gameplaytags.FGameplayTagContainer;
  
  /**
    All of these tags must be present
  **/
  public var RequireTags : unreal.gameplaytags.FGameplayTagContainer;
  
}
