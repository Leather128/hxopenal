package;

import al.AL;
import al.ALC;

class Sound {
	private var _data:haxe.io.BytesData;
	private var _buffer:Array<Int> = [];
	private var _source:Array<Int> = [];

	public var looping(default, set):Bool;

	private function set_looping(value:Bool):Bool {
		if (_source.length > 0) {
			AL.sourcei(_source[0], AL.LOOPING, value ? AL.TRUE : AL.FALSE);
		}

		return looping = value;
	}

	public var pitch(default, set):Float;

	private function set_pitch(value:Float):Float {
		if (_source.length > 0) {
			AL.sourcef(_source[0], AL.PITCH, value);
		}

		return pitch = value;
	}

	public var volume(default, set):Float;

	private function set_volume(value:Float):Float {
		if (_source.length > 0) {
			AL.sourcef(_source[0], AL.GAIN, value);
		}

		return volume = value;
	}

	public var time(get, set):Float;

	private function get_time():Float {
		var _time:Single = 0;

		if (_source.length > 0) {
			AL.getSourcef(_source[0], AL.SEC_OFFSET, cpp.Pointer.addressOf(_time));
		}

		return _time;
	}

	private function set_time(value:Float):Float {
		if (_source.length > 0) {
			AL.sourcef(_source[0], AL.SEC_OFFSET, value);
		}

		return time;
	}

	public var playing(get, set):Bool;

	private function get_playing():Bool {
		var _playing:Bool = false;
		var state:Int = 0;

		if (_source.length > 0) {
			AL.getSourcei(_source[0], AL.SOURCE_STATE, cpp.Pointer.addressOf(state));
		}

		if (state == AL.PLAYING) {
			_playing = true;
		}

		return _playing;
	}

	private function set_playing(value:Bool):Bool {
		if (value) {
			play();
		} else {
			pause();
		}

		return playing;
	}

	public var position(default, set):Array<Float>;

	private function set_position(value:Array<Float>):Array<Float> {
		if (value.length < 3)
			return position;

		AL.source3f(_source[0], AL.POSITION, value[0], value[1], value[2]);
		return position = value;
	}

	public function new(path:String, autoPlay:Bool = false, looping:Bool = false, volume:Float = 1.0, pitch:Float = 1.0) {
		if (!SoundSystem.initialized) {
			SoundSystem.init();
		}

		load(path, looping, volume, pitch);

		if (autoPlay) {
			play();
		}
	}

	public function load(path:String, looping:Bool = false, volume:Float = 1.0, pitch:Float = 1.0):Sound {
		var extension:String = path.substring(path.lastIndexOf('.') + 1).toLowerCase();

		switch (extension) {
			case 'wav':
				AL.genBuffers(1, _buffer);

				var file:sys.io.FileInput = sys.io.File.read(path, true);
				var wav:format.wav.Data.WAVE = new format.wav.Reader(file).read();

				var format:Int = switch (wav.header.channels) {
					case 1:
						switch (wav.header.bitsPerSample) {
							case 8:
								AL.FORMAT_MONO8;
							case 16:
								AL.FORMAT_MONO16;
							default:
								-1;
						}
					case 2:
						switch (wav.header.bitsPerSample) {
							case 8:
								AL.FORMAT_STEREO8;
							case 16:
								AL.FORMAT_STEREO16;
							default:
								-1;
						}
					default:
						-1;
				}

				_data = wav.data.getData();

				AL.bufferData(_buffer[0], format, _data, wav.data.length, wav.header.samplingRate);
				AL.genSources(1, _source);

				// hardcoded shit (for now)
				AL.source3f(_source[0], AL.VELOCITY, 0, 0, 0);
				AL.sourcei(_source[0], AL.BUFFER, _buffer[0]);

				// user controlled variables
				position = [0, 0, 0];
				this.pitch = pitch;
				this.volume = volume;
				this.looping = looping;
			default:
				trace('The file extension ${extension} is not supported for audio!');
		}

		return this;
	}

	public function play(resetTime:Bool = false):Sound {
		if (resetTime) {
			time = 0;
		}

		if (_source.length > 0) {
			AL.sourcePlay(_source[0]);
		}

		return this;
	}

	public function stop(resetTime:Bool = false):Sound {
		if (_source.length > 0) {
			AL.sourceStop(_source[0]);
		}

		if (resetTime) {
			time = 0;
		}

		return this;
	}

	public function pause():Sound {
		if (_source.length > 0) {
			AL.sourcePause(_source[0]);
		}

		return this;
	}

	public function dispose():Void {
		stop();

		if (_source.length > 0 && _buffer.length > 0) {
			AL.deleteSources(1, _source[0]);
			AL.deleteBuffers(1, _buffer[0]);
		}

		_data = null;
		_buffer = null;
		_source = null;
	}
}

class SoundSystem {
	public static var device:Device;
	public static var context:Context;
	public static var initialized:Bool = false;

	public static function init():Void {
		if (initialized)
			return;

		var defaultDevice:String = ALC.getString(null, ALC.DEFAULT_DEVICE_SPECIFIER);
		device = ALC.openDevice(defaultDevice);

		if (device == null) {
			trace('Failed to open an OpenAL device.');
			return;
		}

		context = ALC.createContext(device, null);

		if (!ALC.makeContextCurrent(context)) {
			trace('Failed to create OpenAL context.');
			return;
		}

		var error:Int = AL.getError();

		if (error != AL.NO_ERROR) {
			trace('Failed to make OpenAL context current. Error: ${error}');
			return;
		}

		AL.listener3f(AL.POSITION, 0, 0, 0);
		AL.listener3f(AL.VELOCITY, 0, 0, 0);

		var orientationVectors:Array<Single> = [
			1, 0, 0,
			0, 1, 0,
		];

		AL.listenerfv(AL.ORIENTATION, cpp.NativeArray.address(orientationVectors, 0));

		initialized = true;
	}

	public static function dispose():Void {
		ALC.makeContextCurrent(null);
		ALC.destroyContext(context);
		ALC.closeDevice(device);

		device = null;
		context = null;
		initialized = false;
	}
}
