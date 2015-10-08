import haxe.DynamicAccess;
import sys.FileSystem.*;
import sys.FileSystem;
import sys.io.File;
import haxe.macro.Compiler;
import haxe.macro.Context;
using StringTools;

/**
  Packages all the generated .cs files in one or multiple Build.cs / Target.cs files
  so they can be added to the build tool assembly.
  This function is executed in macro context (--macro Package.main ... ) (see build.hxml)
 **/
class Package
{
  public static function main(gameSource:String, mappedFiles:Array<{ name:String, target:String }>)
  {
    var targetDir = Compiler.getOutput();
    var srcDir = '$targetDir/src';

    Compiler.define('no-compilation');
    Compiler.define('real-position');

    // find all .Build.hx files
    var buildFiles = getBuildFiles(gameSource);
    if (!FileSystem.exists(targetDir + '/hx'))
      FileSystem.createDirectory(targetDir + '/hx');
    Compiler.addClassPath(targetDir + '/hx');
    var names = [];
    for (file in buildFiles) {
      var name = haxe.io.Path.withoutDirectory(file).substr(0,-('Build.hx'.length + 1));
      var className = name.charAt(0).toUpperCase() + name.substr(1);
      names.push({ name:name, className:className });
      var target = file.substr(0,-2) + 'cs';
      mappedFiles.push({ name:name, target: target });
      sys.io.File.copy(file, '$targetDir/hx/$className.hx');
    }

    var masterT = Context.getType('HaxeModuleRules');
    var masterModule = null;
    for (name in names) {
      var t = Context.getType(name.className); // make sure it's compiled
      var isMaster = Context.unify(t, masterT);
      if (isMaster) {
        if (masterModule == null)
          masterModule = t;
        else
          Context.error('More than one HaxeModuleRules module found: $t and $masterModule', Context.currentPos());
      }
      switch (t) {
      case TInst(cl,_):
        var cl = cl.get();
        cl.meta.add(':nativeGen', [], cl.pos);
        cl.meta.add(':native', [macro $v{name.name}], cl.pos);
      case _:
      }
    }

    if (masterModule == null)
      Context.error('No type extending HaxeModuleRules was found in the provided .Build.hx files', Context.currentPos());

    Context.onAfterGenerate(function() {
      var first = mappedFiles[0];
      if (first == null) throw 'Mapped files cannot be empty';
      var dst = File.write(first.target);
      dst.writeString('// Generated by Haxe\n#pragma warning disable\nusing haxe.root;\n');

      var mappedFiles = [ for (m in mappedFiles) m.name => m.target ];

      function recurse(path:String, pack:String)
      {
        for (file in readDirectory(path))
        {
          var p2 = '$path/$file';
          if (isDirectory(p2))
          {
            recurse(p2, pack + file + '.');
          } else if (p2.endsWith('.cs')) {
            var clsName = file.substr(0,-3);
            // var name = pack + clsName;
            var target = mappedFiles[clsName];
            if (target != null)
              mappedFiles.remove(clsName);
            if (clsName != first.name && target != null)
            {
              var data = File.getContent(p2);
              if (!data.startsWith('// Generated by Haxe'))
                data = '// Generated by Haxe\n' + data;
              File.saveContent(target, data);
              if (target.indexOf('Templates/Source/') >= 0)
              {
                // check if the templates have been already copied
                // if they are, copy them to the target as well (this is just a convenience
                // feature and might not work if the plugin was installed globally instead of locally)
                // If it doesn't work, however, the new Build.cs file will still be copied by HaxeInit.Build.cs
                // job.
                // so this will only work around the need to compile twice to actually see the changes
                // in the files under the template folder - and is a nice convenience when working on the build
                // scripts

                var otherTarget = target.replace('Templates/Source/', '../../../Source/');
                if (exists(otherTarget))
                  File.saveContent(otherTarget, data);
              }
            } else {
              var file = File.read(p2, false);
              try
              {
                file.readLine(); // generated by haxe
                var ln = null;
                while(true)
                {
                  var ln = file.readLine();
                  if (ln.startsWith('using')) // -D no-root
                  {
                    // do nothing
                  } else if (ln.indexOf('#pragma warning') >= 0) {
                  } else {
                    dst.writeString(ln);
                    dst.writeByte('\n'.code);
                  }
                }
              }
              catch(e:haxe.io.Eof) {}
            }
          }
        }
      }

      recurse(srcDir, '');
      dst.close();

      var remaining = [ for (k in mappedFiles.keys()) k ];
      if (remaining.length > 0)
        throw 'The following mapped files weren\'t found: $remaining';
    });
  }

  private static function getBuildFiles(srcDir:String) {
    var ret = [];
    for (dir in FileSystem.readDirectory(srcDir)) {
      if (FileSystem.isDirectory('$srcDir/$dir')) {
        for (file in FileSystem.readDirectory('$srcDir/$dir')) {
          if (file.endsWith('.Build.hx'))
            ret.push('$srcDir/$dir/$file');
        }
      }
    }
    return ret;
  }
}
