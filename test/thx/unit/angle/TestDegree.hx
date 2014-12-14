package thx.unit.angle;

import utest.Assert;
import thx.unit.angle.Degree;

class TestDegree {
	public function new() {}

	public function testBasic() {
		var angle : Degree = 30;
		Assert.equals("30°", angle.toString());
	}

  public function testNormalize() {
    Assert.equals(30, (30 : Degree).normalize());
    Assert.equals(330, (-30 : Degree).normalize());
    Assert.equals(0, (720 : Degree).normalize());
    Assert.equals(330, (-750 : Degree).normalize());
    Assert.equals(30, (-690 : Degree).normalize());
  }

  public function testNormalizeDirection() {
    Assert.equals(30, (30 : Degree).normalizeDirection());
    Assert.equals(-30, (-30 : Degree).normalizeDirection());
    Assert.equals(-30, (330 : Degree).normalizeDirection());
  }

  public function testFromPoint() {
    Assert.floatEquals(0, Degree.pointToDegree(1, 0));
    Assert.floatEquals(90, Degree.pointToDegree(0, 1));
    Assert.floatEquals(45, Degree.pointToDegree(1, 1));
  }
}