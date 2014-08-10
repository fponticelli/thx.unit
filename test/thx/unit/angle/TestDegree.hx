package thx.unit.angle;

import utest.Assert;
import thx.unit.angle.Degree;

class TestDegree {
	public function new() {}

	public function testBasic() {
		var angle : Degree = 30;
		Assert.equals("30̊", angle.toString());
	}
}