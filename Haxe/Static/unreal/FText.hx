package unreal;

@:forward abstract FText(FTextImpl) from FTextImpl to FTextImpl {
#if !bake_externs
  inline public function new(str:String) {
    this = FTextImpl.FromString(str);
  }

  inline public static function create(str:String):FText {
    return FTextImpl.FromString(str);
  }

  inline public static function asNumber(Val:Float32, Options:Const<PExternal<FNumberFormattingOptions>>, TargetCulture:TThreadSafeSharedPtr<FCulture>) : FTextImpl {
    return FTextImpl.AsNumber(Val, Options, TargetCulture);
  }

  @:from inline private static function fromString(str:String):FText {
    return create(str);
  }

  public function toString():String {
    return this.ToString().toString();
  }
#end
}
