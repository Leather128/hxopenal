package;

class Main {
	public static function main():Void {
		var song:Sound = new Sound('song.wav', true, false, 1.0);
		var counter:Float = 0.0;

		while (song.playing) {
			song.position = [0.0, Math.cos(counter) * 5.0, Math.sin(counter) * 5.0];
			counter += 0.1;
			Sys.sleep(0.1);

			continue;
		}

		song.dispose();
		Sound.SoundSystem.dispose();
	}
}
