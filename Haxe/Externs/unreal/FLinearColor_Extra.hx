package unreal;

extern class FLinearColor_Extra {

  public var A : Float32;

  @:uname("new")
  public static function create() : PHaxeCreated<FLinearColor>;

  @:uname("new")
  public static function createWithValues(r:Float32,g:Float32,b:Float32,a:Float32) : PHaxeCreated<FLinearColor>;

	/**
	 * Linearly interpolates between two colors by the specified progress amount.  The interpolation is performed in HSV color space
	 * taking the shortest path to the new color's hue.  This can give better results than FMath::Lerp(), but is much more expensive.
	 * The incoming colors are in RGB space, and the output color will be RGB.  The alpha value will also be interpolated.
	 *
	 * @param	From		The color and alpha to interpolate from as linear RGBA
	 * @param	To			The color and alpha to interpolate to as linear RGBA
	 * @param	Progress	Scalar interpolation amount (usually between 0.0 and 1.0 inclusive)
	 *
	 * @return	The interpolated color in linear RGB space along with the interpolated alpha value
	 */
  static public function LerpUsingHSV(From:Const<PRef<FLinearColor>>, To:Const<PRef<FLinearColor>>, Progress:Float32) : FLinearColor;

	/** Quantizes the linear color and returns the result as a FColor with optional sRGB conversion and quality as goal. */
  @:thisConst
	public function ToFColor(bSRGB:Bool) : FColor;
}
