class Build {
	public static function main():Void {
		#if sys
		try {
			sys.io.File.copy('bin/haxe/Test', 'bin/Test');
			sys.FileSystem.deleteFile('bin/haxe/Test');

			if (Sys.systemName() == 'Linux') {
				Sys.command('chmod', ['+x', 'bin/Test']);
			}
		} catch (error) {
			trace('Error in copying executable file: ${error}');
		}

		try {
			sys.io.File.copy('build/audio.wav', 'bin/audio.wav');
			return;
		} catch (error) {
			trace('Error in copying audio.wav file: ${error}');
		}

		Sys.exit(1);
		#else
		trace('No access to system\'s FileSystem! Exiting!');
		return;
		#end
	}
}
