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
  Describes playback modes for UMG sequences.
**/
@:umodule("UMG")
@:glueCppIncludes("UMG.h")
@:uname("EUMGSequencePlayMode.Type")
@:uextern extern enum EUMGSequencePlayMode {
  
  /**
    Animation plays and loops from the beginning to the end.
  **/
  Forward;
  
  /**
    Animation plays and loops from the end to the beginning.
  **/
  Reverse;
  
  /**
    Animation plays from the begging to the end and then from the end to beginning.
  **/
  PingPong;
  
}
