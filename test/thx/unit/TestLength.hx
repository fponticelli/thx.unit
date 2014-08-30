package thx.unit;

import utest.Assert;
import thx.unit.length.*;

class TestLength {
  public function new() {}

  public function testBasic() {
    var mm : Millimeter = 25.4,
        inch : Inch = mm;
    Assert.floatEquals(1, inch.toFloat());
    Assert.floatEquals(
      ((10 : Millimeter) * 100).toMetre().toFloat(),
      1
    );
  }
}