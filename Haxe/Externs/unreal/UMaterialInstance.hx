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
  
  
**/
@:glueCppIncludes("Materials/MaterialInstance.h")
@:uextern extern class UMaterialInstance extends unreal.UMaterialInterface {
  public var BasePropertyOverrides : unreal.FMaterialInstanceBasePropertyOverrides;
  @:deprecated public var bOverrideBaseProperties_DEPRECATED : Bool;
  
  /**
    Vector parameters.
  **/
  public var VectorParameterValues : unreal.TArray<unreal.FVectorParameterValue>;
  
  /**
    Texture parameters.
  **/
  public var TextureParameterValues : unreal.TArray<unreal.FTextureParameterValue>;
  
  /**
    Scalar parameters.
  **/
  public var ScalarParameterValues : unreal.TArray<unreal.FScalarParameterValue>;
  
  /**
    Font parameters.
  **/
  public var FontParameterValues : unreal.TArray<unreal.FFontParameterValue>;
  
  /**
    Unique ID for this material, used for caching during distributed lighting
  **/
  public var ParentLightingGuid : unreal.FGuid;
  
  /**
    Defines if SubsurfaceProfile from this instance is used or it uses the parent one.
  **/
  public var bOverrideSubsurfaceProfile : Bool;
  
  /**
    Indicates whether the instance has static permutation resources (which are required when static parameters are present)
    Read directly from the rendering thread, can only be modified with the use of a FMaterialUpdateContext.
    When true, StaticPermutationMaterialResources will always be valid and non-null.
  **/
  public var bHasStaticPermutationResource : Bool;
  
  /**
    Parent material.
  **/
  public var Parent : unreal.UMaterialInterface;
  
  /**
    Physical material to use for this graphics material. Used for sounds, effects etc.
  **/
  public var PhysMaterial : unreal.UPhysicalMaterial;
  
}
