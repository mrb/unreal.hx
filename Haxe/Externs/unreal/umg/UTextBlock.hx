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
  A simple static text widget.
  
  ● No Children
  ● Text
**/
@:umodule("UMG")
@:glueCppIncludes("UMG.h")
@:uextern extern class UTextBlock extends unreal.umg.UWidget {
  
  /**
    Sets the color and opacity of the text in this text block
    
    @param InColorAndOpacity             The new text color and opacity
  **/
  @:final public function SetColorAndOpacity(InColorAndOpacity : unreal.slatecore.FSlateColor) : Void;
  
  /**
    Sets the opacity of the text in this text block
    
    @param InOpacity              The new text opacity
  **/
  @:final public function SetOpacity(InOpacity : unreal.Float32) : Void;
  
  /**
    Sets the color and opacity of the text drop shadow
    Note: if opacity is zero no shadow will be drawn
    
    @param InShadowColorAndOpacity               The new drop shadow color and opacity
  **/
  @:final public function SetShadowColorAndOpacity(InShadowColorAndOpacity : unreal.FLinearColor) : Void;
  
  /**
    Sets the offset that the text drop shadow should be drawn at
    
    @param InShadowOffset                The new offset
  **/
  @:final public function SetShadowOffset(InShadowOffset : unreal.FVector2D) : Void;
  
  /**
    Dynamically set the font info for this text block
    
    @param InFontInfo THe new font info
  **/
  @:final public function SetFont(InFontInfo : unreal.slatecore.FSlateFontInfo) : Void;
  
  /**
    Set the text justification for this text block
    
    @param Justification new justification
  **/
  @:final public function SetJustification(InJustification : unreal.slate.ETextJustify) : Void;
  
  /**
    The amount to scale each lines height by.
  **/
  public var LineHeightPercentage : unreal.Float32;
  
  /**
    The amount of blank space left around the edges of text area.
  **/
  public var Margin : unreal.slatecore.FMargin;
  
  /**
    The minimum desired size for the text
  **/
  public var MinDesiredWidth : unreal.Float32;
  
  /**
    Whether text wraps onto a new line when it's length exceeds this width; if this value is zero or negative, no wrapping occurs.
  **/
  public var WrapTextAt : unreal.Float32;
  
  /**
    True if we're wrapping text automatically based on the computed horizontal space for this widget
  **/
  public var AutoWrapText : Bool;
  
  /**
    How the text should be aligned with the margin.
  **/
  public var Justification : unreal.slate.ETextJustify;
  
  /**
    The color of the shadow
  **/
  public var ShadowColorAndOpacity : unreal.FLinearColor;
  
  /**
    The direction the shadow is cast
  **/
  public var ShadowOffset : unreal.FVector2D;
  
  /**
    The font to render the text with
  **/
  public var Font : unreal.slatecore.FSlateFontInfo;
  
  /**
    The color of the text
  **/
  public var ColorAndOpacity : unreal.slatecore.FSlateColor;
  @:deprecated public var Style_DEPRECATED : unreal.slatecore.USlateWidgetStyleAsset;
  
}
