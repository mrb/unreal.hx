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
package unreal.editorlivestreaming;


/**
  Describes the available preset resolutions for web camera video with the editor's live streaming feature
**/
@:umodule("EditorLiveStreaming")
@:glueCppIncludes("EditorLiveStreamingSettings.h")
@:uname("EEditorLiveStreamingWebCamResolution.Type")
@:uextern extern enum EEditorLiveStreamingWebCamResolution {
  
  /**
    320 x 240 (4:3)
  **/
  @DisplayName("320 x 240 (4:3)")
  Normal_320x240;
  
  /**
    320 x 180 (16:9)
  **/
  @DisplayName("320 x 180 (16:9)")
  Wide_320x180;
  
  /**
    640 x 480 (4:3)
  **/
  @DisplayName("640 x 480 (4:3)")
  Normal_640x480;
  
  /**
    640 x 360 (16:9)
  **/
  @DisplayName("640 x 360 (16:9)")
  Wide_640x360;
  
  /**
    800 x 600 (4:3)
  **/
  @DisplayName("800 x 600 (4:3)")
  Normal_800x600;
  
  /**
    800 x 450 (16:9)
  **/
  @DisplayName("800 x 450 (16:9)")
  Wide_800x450;
  
  /**
    1024 x 768 (4:3)
  **/
  @DisplayName("1024 x 768 (4:3)")
  Normal_1024x768;
  
  /**
    1024 x 576 (16:9)
  **/
  @DisplayName("1024 x 576 (16:9)")
  Wide_1024x576;
  
  /**
    1080 x 810 (4:3)
  **/
  @DisplayName("1080 x 810 (4:3)")
  Normal_1080x810;
  
  /**
    1080 x 720 (16:9)
  **/
  @DisplayName("1080 x 720 (16:9)")
  Wide_1080x720;
  
  /**
    1280 x 960 (4:3)
  **/
  @DisplayName("1280 x 960 (4:3)")
  Normal_1280x960;
  
  /**
    1280 x 720 (16:9, 720p)
  **/
  @DisplayName("1280 x 720 (16:9, 720p)")
  Wide_1280x720;
  
  /**
    1920 x 1440 (4:3)
  **/
  @DisplayName("1920 x 1440 (4:3)")
  Normal_1920x1440;
  
  /**
    1920 x 1080 (16:9, 1080p)
  **/
  @DisplayName("1920 x 1080 (16:9, 1080p)")
  Wide_1920x1080;
  
}
