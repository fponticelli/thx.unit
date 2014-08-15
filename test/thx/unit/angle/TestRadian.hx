package thx.unit.angle;

import utest.Assert;
import thx.unit.angle.Radian;

class TestRadian {
	public function new() {}

	public function testBasic() {
		var angle : Radian = 1;
		Assert.equals("1rad", angle.toString());
	}

	public function testConvertToDegree() {
		var angle : Radian = Math.PI;
		Assert.equals(180, angle.toDegrees().toFloat());
	}

	public function testEquals() {
		var rad : Radian = Math.PI,
			deg : Degree = 180;
		Assert.isTrue(rad == deg);
		Assert.isTrue(deg == rad);
	}
}