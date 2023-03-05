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

	public function setup():Void {
		device = ALC.openDevice(null);

		if (device == null) {
			trace('Failed to open an OpenAL device.');
			Sys.exit(1);
		}

		context = ALC.createContext(device, null);

		if (!ALC.makeContextCurrent(context)) {
			context = null;
			trace('Failed to create OpenAL context.');
			Sys.exit(1);
		}

		var error:ALenum = AL.getError();

		if (error != 0) {
			trace(error);
		}
	}

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

		var error:ALenum = AL.getError();

		if (error != 0) {
			Assert.fail('Failed to make OpenAL context current. Error: ${error}');
		}

		Assert.pass('Successfully created OpenAL context and made it current!');

		ALC.closeDevice(device);
		ALC.destroyContext(context);
		device = null;
		context = null;
	}
}
