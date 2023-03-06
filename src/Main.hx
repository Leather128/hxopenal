package;

import al.ALC;
import al.AL;
import utest.Assert;
import utest.ITest;

class Main {
	public static function main():Void {
		var runner:utest.Runner = new utest.Runner();
		utest.ui.Report.create(runner);

		runner.addCase(new ALTests());
		runner.run();
	}
}

class ALTests implements ITest {
	var device:Device;
	var context:Context;

	public function new() {}

	public function setup():Void {}

	public function testOpenDevice():Void {
		device = ALC.openDevice();

		if (device == null) {
			Assert.fail('Failed to open an OpenAL device.');
		}

		Assert.pass('Successfully opened an OpenAL device!');

		ALC.closeDevice(device);
		device = null;
	}

	public function testCreateContext():Void {
		device = ALC.openDevice();

		if (device == null) {
			Assert.fail('Failed to open an OpenAL device.');
		}

		context = ALC.createContext(device, null);

		if (!ALC.makeContextCurrent(context)) {
			Assert.fail('Failed to create OpenAL context.');
		}

		var error:Int = AL.getError();

		if (error != 0) {
			Assert.fail('Failed to make OpenAL context current. Error: ${error}');
		}

		Assert.pass('Successfully created OpenAL context and made it current!');

		ALC.closeDevice(device);
		ALC.destroyContext(context);
		device = null;
		context = null;
	}

	public function testLoadWav():Void {
		device = ALC.openDevice();

		if (device == null) {
			Assert.fail('Failed to open an OpenAL device.');
		}

		context = ALC.createContext(device, null);

		if (!ALC.makeContextCurrent(context)) {
			Assert.fail('Failed to create OpenAL context.');
		}

		var error:Int = AL.getError();

		if (error != AL.NO_ERROR) {
			Assert.fail('Failed to make OpenAL context current. Error: ${error}');
		}

		AL.listener3f(AL.POSITION, 0, 0, 0);
		AL.listener3f(AL.VELOCITY, 0, 0, 0);

		var orientationVectors:Array<Single> = [
			1, 0, 0,
			0, 1, 0,
		];

		AL.listenerfv(AL.ORIENTATION, cast cpp.NativeArray.address(orientationVectors, 0));

		var buffers:Array<Int> = [];
		AL.genBuffers(1, buffers);

		var file:sys.io.FileInput = sys.io.File.read('audio.wav', true);
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

		trace('[OpenAL] Filename: audio.wav | Channels: ${wav.header.channels} | Sampling rate: ${wav.header.samplingRate}');

		AL.bufferData(buffers[0], format, wav.data.getData(), wav.data.length, wav.header.samplingRate);

		var sources:Array<Int> = [];
		AL.genSources(1, sources);
		AL.source3f(sources[0], AL.POSITION, 1, 0, 0);
		AL.source3f(sources[0], AL.VELOCITY, 0, 0, 0);
		AL.sourcef(sources[0], AL.PITCH, 1);
		AL.sourcef(sources[0], AL.GAIN, 1);
		AL.sourcei(sources[0], AL.LOOPING, AL.FALSE);
		AL.sourcei(sources[0], AL.BUFFER, buffers[0]);

		AL.sourcePlay(sources[0]);

		var sourceState:Int = 0;
		AL.getSourcei(sources[0], AL.SOURCE_STATE, cpp.Pointer.addressOf(sourceState));

		while (sourceState == AL.PLAYING) {
			AL.getSourcei(sources[0], AL.SOURCE_STATE, cpp.Pointer.addressOf(sourceState));
		}

		AL.deleteSources(1, sources[0]);
		AL.deleteBuffers(1, buffers[0]);

		ALC.makeContextCurrent(null);
		ALC.destroyContext(context);
		ALC.closeDevice(device);

		device = null;
		context = null;

		Assert.pass('Successfully played audio.wav!');
	}
}
