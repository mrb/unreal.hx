package ue4hx.internal.buf;

class CppWriter extends BaseWriter {

  public function new(path) {
    super(path);
  }

  override private function getContents(module:String):String {
    var bufContents = this.buf.toString();
    if (bufContents == '')
      return null;
    var cpp = new HelperBuf() <<
      '#include <$module.h>\n#include "Engine.h"\n';
    getIncludes(cpp);

    // unfortunately there's no clean way to deal with deprecated functions for now; there's no
    // way to detect them through UHT, so for now we'll just disable them
    cpp << '#ifdef __clang__\n#pragma clang diagnostic push\n' +
      '#pragma clang diagnostic ignored "-Wdeprecated-declarations"\n' +
      '#endif\n';
    cpp << '#ifdef _MSVC_VER\n#pragma warning( disable : 4996 )\n#endif\n';

    cpp << '\n' <<
      bufContents;

    cpp << '#ifdef __clang__\n#pragma clang diagnostic pop\n' +
      '#endif\n';
    cpp << '#ifdef _MSVC_VER\n#pragma warning( default : 4996 )\n#endif\n';

    return cpp.toString();
  }
}


