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

@:glueCppIncludes("AnimGraphNode_SaveCachedPose.h")
@:uextern extern class FAnimNode_SaveCachedPose extends unreal.FAnimNode_Base {
  public var Pose : unreal.FPoseLink;
  public var LastEvaluatedContextCounter : unreal.Int16;
  public var LastUpdatedContextCounter : unreal.Int16;
  public var LastCacheBonesContextCounter : unreal.Int16;
  public var LastInitializedContextCounter : unreal.Int16;
  
}
