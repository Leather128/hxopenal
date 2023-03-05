package;

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
	var myVal:String;
	var myInt:Int;

	public function new() {}

	public function setup():Void {
		myVal = "foo";
		myInt = 1 + 1;
	}

	/* Every test function name has to start with 'test' */
	public function testValue():Void {
		Assert.equals("foo", myVal);
	}

	public function testMath1():Void {
		Assert.isTrue(myInt == 2);
	}

	public function testMath2():Void {
		Assert.isFalse(myInt == 3);
	}
}
