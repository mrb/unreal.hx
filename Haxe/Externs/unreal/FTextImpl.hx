package unreal;

@:glueCppIncludes("Internationalization/Text.h")
@:uname("FText")
@:uextern extern class FTextImpl {
  static function FromString(str:FString) : FTextImpl;
  function ToString():unreal.Const<unreal.PRef<FString>>;

  static function AsNumber(Val:Float32, Options:Const<PExternal<FNumberFormattingOptions>>, TargetCulture:TThreadSafeSharedPtr<FCulture>) : FTextImpl;

  @:expr(return this.ToString().op_Dereference()) public function toString():String;
}


