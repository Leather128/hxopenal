package;

class Main {
	public static function main():Void {
		var song:Sound = new Sound('sneaky.wav', true, false, 0.5);

		while (song.playing) {
			continue;
		}

		song.dispose();
		Sound.SoundSystem.dispose();
	}
}
