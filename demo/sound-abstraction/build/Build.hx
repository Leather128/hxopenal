package;

class Build {
	public static function main():Void {
		#if sys
		sys.io.File.copy('sneaky.wav', 'bin/sneaky.wav');

		if (Sys.systemName() == 'Windows') {
			var localHaxelibPath:String = new sys.io.Process('haxelib', ['libpath', 'hxopenal']).stdout.readLine();
			sys.io.File.copy('${localHaxelibPath}vendor/openal/lib/windows/x64/OpenAL32.dll', 'bin/OpenAL32.dll');
		}
		#end
	}
}