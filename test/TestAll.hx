import thx.unit.angle.Degree;
import thx.unit.angle.Radian;
import utest.Runner;
import utest.ui.Report;
import utest.Assert;

class TestAll {
	public static function main() {
		var runner = new Runner();
		runner.addCase(new TestAll());
		runner.addCase(new thx.unit.angle.TestDegree());
		runner.addCase(new thx.unit.angle.TestRadian());

		runner.addCase(new thx.unit.length.TestLength());
		Report.create(runner);
		runner.run();
	}

	public function new() {}

	public function testAngle() {
		var deg : Degree = 30;
		function by6(rad : Radian) : Radian {
			return rad * 6;
		}
		Assert.equals(Math.PI, by6(deg));
	}
}