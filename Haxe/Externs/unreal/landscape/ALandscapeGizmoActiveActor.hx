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
package unreal.landscape;


/**
  WARNING: This type was defined as MinimalAPI on its declaration. Because of that, its properties/methods are inaccessible
  
  
**/
@:umodule("Landscape")
@:glueCppIncludes("LandscapeGizmoActiveActor.h")
@:uextern extern class ALandscapeGizmoActiveActor extends unreal.landscape.ALandscapeGizmoActor {
  #if WITH_EDITORONLY_DATA
  public var UnsnappedRotation : unreal.FRotator;
  public var bSnapToLandscapeGrid : Bool;
  public var LayerInfos : unreal.TArray<unreal.landscape.ULandscapeLayerInfoObject>;
  public var GizmoMeshMaterial : unreal.UMaterial;
  public var GizmoDataMaterial : unreal.UMaterialInstance;
  public var GizmoMaterial : unreal.UMaterial;
  public var CachedScaleXY : unreal.Float32;
  public var CachedHeight : unreal.Float32;
  public var CachedWidth : unreal.Float32;
  public var SampleSizeY : unreal.Int32;
  public var SampleSizeX : unreal.Int32;
  public var SampledNormal : unreal.TArray<unreal.FVector>;
  public var SampledHeight : unreal.TArray<unreal.FVector>;
  public var TextureScale : unreal.FVector2D;
  public var GizmoTexture : unreal.UTexture2D;
  public var DataType : unreal.landscape.ELandscapeGizmoType;
  #end // WITH_EDITORONLY_DATA
  
}
