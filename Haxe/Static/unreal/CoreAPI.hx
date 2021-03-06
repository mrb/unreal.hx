package unreal;

#if macro
import haxe.macro.Expr;
import haxe.macro.Context;
class UObject {} // trick to avoid triggering build macros
#else
import unreal.UObject;
import unreal.Wrapper;
#end

#if !macro
@:access(unreal.Wrapper)
@:access(unreal.UObject.wrapped)
#end
class CoreAPI {

  static var delayedInits:Array<Void->Void>;
  static var hasInit = false;

  /**
    Runs function `fn` after hxcpp static initialization but before any other Unreal code has executed
   **/
  public static function runAtInit(fn:Void->Void) {
    if (hasInit) {
      var msg = 'All `runAtInit` functions should be registered at initialization time (e.g. on `__init__` static functions)';
      trace('Error', msg);
      throw msg;
    } else if (delayedInits == null) {
      delayedInits = [fn];
    } else {
      delayedInits.push(fn);
    }
  }

#if WITH_EDITOR

  static var hotReloadFns:Array<Void->Void>;
  /**
    Runs function `fn` every time hot reload happens
   **/
  public static function onHotReload(fn:Void->Void) {
    if (hotReloadFns == null) {
      hotReloadFns = [fn];
    } else {
      hotReloadFns.push(fn);
    }
  }
#end

  #if !macro
  public static function equals(a:Dynamic, b:Dynamic) : Bool {
    if ((a == null) && (b == null)) {
      return true;
    } else if (a == null || b == null) {
      return false;
    } else if (Std.is(a, Wrapper) && Std.is(b, Wrapper)) {
      var wrapperA:Wrapper = cast a;
      var wrapperB:Wrapper = cast b;
      if (wrapperA.wrapped.ptr.getPointer() == wrapperB.wrapped.ptr.getPointer())
        return true;
      if (Type.getClass(wrapperA) == Type.getClass(wrapperB))
        return wrapperA._equals(wrapperB);
      return false;
    } else if (Std.is(a, unreal.UObject) && Std.is(b, UObject)) {
      var uobjectA:UObject = cast a;
      var ubojectB:UObject = cast b;
      return uobjectA.wrapped == ubojectB.wrapped;
    }
    return a == b;
  }

  inline public static function copy<T : Wrapper>(type:T):PHaxeCreated<T> {
    return cast type._copy();
  }

  inline public static function copyStruct<T : Wrapper>(type:T):T {
    return cast type._copyStruct();
  }
  #end // !macro

  /**
   * For UObject types, returns the object casted to the input class, or null if the object is null or not of that type.
   * This is meant as a replacement for Cast<Type> in Unreal C++
   * Example:
   *  var actor:AActor = GetOwner();
   *  var pawn:APawn = actor.as(APawn);
   *  if (pawn != null) { ... }
   */
  public static inline function as<T>(obj:UObject, cls:Class<T>) : Null<T> {
    return Std.is(obj, cls) ? cast obj : null;
  }

  public static macro function getComponent<T>(obj:ExprOf<AActor>, cls:ExprOf<Class<T>>) : ExprOf<T> {
    var clsType = switch (cls.expr) {
    case EConst(CIdent(className)):
      Context.toComplexType(Context.getType(className));
    case _:
      throw new Error('Expected class', cls.pos);
    }

    return macro @:pos(Context.currentPos()) {
      var _o = $obj;
      var _c:$clsType = cast _o.GetComponentByClass($cls.StaticClass());
      _c;
    };
  }

  public static macro function addComponent<T>(obj:ExprOf<AActor>, cls:ExprOf<Class<T>>) : ExprOf<T> {
    var clsType = switch (cls.expr) {
    case EConst(CIdent(className)):
      Context.toComplexType(Context.getType(className));
    case _:
      throw new Error('Expected class', cls.pos);
    }

    return macro @:pos(Context.currentPos()) {
      var _o = $obj;
      var _c:$clsType = unreal.UObject.NewObjectByClass(new unreal.TypeParam<$clsType>(), _o, $cls.StaticClass());
      _c.RegisterComponent();
      _c;
    };
  }

  public static macro function AddDynamic<T:haxe.Constraints.Function>(self:ExprOf<unreal.DynamicMulticastDelegate<T>>, obj:Expr, fn:ExprOf<T>) : Expr {
    var fnName;
    var accessor = obj;
    switch(fn.expr) {
    case EConst(CIdent(s)):
      fnName = s;
    case EField(o,s):
      fnName = s;
      accessor = o;
    default: throw new haxe.macro.Error('Expected identifier', fn.pos);
    }
    return macro $self.__Internal_AddDynamic($obj, unreal.MethodPointer.fromMethod($accessor.$fnName), "::"+$v{fnName});
  }

  public static macro function AddUniqueDynamic<T:haxe.Constraints.Function>(self:ExprOf<unreal.DynamicMulticastDelegate<T>>, obj:Expr, fn:ExprOf<T>) : Expr {
    var fnName;
    var accessor = obj;
    switch(fn.expr) {
    case EConst(CIdent(s)):
      fnName = s;
    case EField(o,s):
      fnName = s;
      accessor = o;
    default: throw new haxe.macro.Error('Expected identifier', fn.pos);
    }
    return macro $self.__Internal_AddUniqueDynamic($obj, unreal.MethodPointer.fromMethod($accessor.$fnName), "::"+$v{fnName});
  }

  public static macro function RemoveDynamic<T:haxe.Constraints.Function>(self:ExprOf<unreal.DynamicMulticastDelegate<T>>, obj:Expr, fn:ExprOf<T>) : Expr {
    var fnName;
    var accessor = obj;
    switch(fn.expr) {
    case EConst(CIdent(s)):
      fnName = s;
    case EField(o,s):
      fnName = s;
      accessor = o;
    default: throw new haxe.macro.Error('Expected identifier', fn.pos);
    }
    return macro $self.__Internal_RemoveDynamic($obj, unreal.MethodPointer.fromMethod($accessor.$fnName), "::"+$v{fnName});
  }

  public static macro function IsAlreadyBound<T:haxe.Constraints.Function>(self:ExprOf<unreal.DynamicMulticastDelegate<T>>, obj:Expr, fn:ExprOf<T>) : Expr {
    var fnName;
    var accessor = obj;
    switch(fn.expr) {
    case EConst(CIdent(s)):
      fnName = s;
    case EField(o,s):
      fnName = s;
      accessor = o;
    default: throw new haxe.macro.Error('Expected identifier', fn.pos);
    }
    return macro $self.__Internal_IsAlreadyBound($obj, unreal.MethodPointer.fromMethod($accessor.$fnName), "::"+$v{fnName});
  }

  public static macro function BindDynamic<T:haxe.Constraints.Function>(self:ExprOf<unreal.DynamicDelegate<T>>, obj:Expr, fn:ExprOf<T>) : Expr {
    var fnName;
    var accessor = obj;
    switch(fn.expr) {
    case EConst(CIdent(s)):
      fnName = s;
    case EField(o,s):
      fnName = s;
      accessor = o;
    default: throw new haxe.macro.Error('Expected identifier', fn.pos);
    }
    return macro $self.__Internal_BindDynamic($obj, unreal.MethodPointer.fromMethod($accessor.$fnName), "::"+$v{fnName});
  }
}
