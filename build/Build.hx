class Build {
	public static function main():Void {
		#if sys
		try {
			sys.io.File.copy('bin/haxe/Main', 'bin/Main');
			sys.FileSystem.deleteFile('bin/haxe/Main');

			if (Sys.systemName() == 'Linux') {
				Sys.command('chmod', ['+x', 'bin/Main']);
			}

			return;
		} catch (error) {
			trace('Error in copying executable file: ${error}');
		}

		Sys.exit(1);
		#else
		trace('No access to system\'s FileSystem! Exiting!');
		return;
		#end
	}
}
