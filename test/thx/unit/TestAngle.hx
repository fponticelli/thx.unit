import thx.unit.angle.Degree;
import thx.unit.angle.Radian;
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
}
