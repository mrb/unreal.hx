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
package unreal.aimodule;

@:umodule("AIModule")
@:glueCppIncludes("Blueprint/AIBlueprintHelperLibrary.h")
@:uextern extern class UAIBlueprintHelperLibrary extends unreal.UBlueprintFunctionLibrary {
  static public function CreateMoveToProxyObject(WorldContextObject : unreal.UObject, Pawn : unreal.APawn, Destination : unreal.FVector, TargetActor : unreal.AActor, AcceptanceRadius : unreal.Float32, bStopOnOverlap : Bool) : unreal.aimodule.UAIAsyncTaskBlueprintProxy;
  static public function SendAIMessage(Target : unreal.APawn, Message : unreal.FName, MessageSource : unreal.UObject, bSuccess : Bool) : Void;
  static public function SpawnAIFromClass(WorldContextObject : unreal.UObject, PawnClass : unreal.TSubclassOf<unreal.APawn>, BehaviorTree : unreal.aimodule.UBehaviorTree, Location : unreal.FVector, Rotation : unreal.FRotator, bNoCollisionFail : Bool) : unreal.APawn;
  
  /**
    The way it works exactly is if the actor passed in is a pawn, then the function retrieves
        pawn's controller cast to AIController. Otherwise the function returns actor cast to AIController.
  **/
  static public function GetAIController(ControlledActor : unreal.AActor) : unreal.aimodule.AAIController;
  static public function GetBlackboard(Target : unreal.AActor) : unreal.aimodule.UBlackboardComponent;
  
  /**
    locks indicated AI resources of animated pawn
  **/
  static public function LockAIResourcesWithAnimation(AnimInstance : unreal.UAnimInstance, bLockMovement : Bool, LockAILogic : Bool) : Void;
  
  /**
    unlocks indicated AI resources of animated pawn. Will unlock only animation-locked resources
  **/
  static public function UnlockAIResourcesWithAnimation(AnimInstance : unreal.UAnimInstance, bUnlockMovement : Bool, UnlockAILogic : Bool) : Void;
  static public function IsValidAILocation(Location : unreal.FVector) : Bool;
  static public function IsValidAIDirection(DirectionVector : unreal.FVector) : Bool;
  static public function IsValidAIRotation(Rotation : unreal.FRotator) : Bool;
  
}
