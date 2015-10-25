package thx.unit;

import thx.unit.angle.Degree;
import thx.unit.angle.Radian;
import thx.unit.Angle;
import utest.Assert;

class TestAngle {
  public function new() {}

  public function testAngle() {
    var deg : Degree = 30;
    function by6(rad : Radian) : Radian {
      return rad * 6;
    }
    Assert.floatEquals(Math.PI, by6(deg).toFloat());
  }

  public function testRuntime() {
    var angle : Angle = "30rad";
    Assert.isTrue(angle.toRadian() == (30.0 : Radian));
  }
}
