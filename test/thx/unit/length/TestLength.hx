package thx.unit.length;

import utest.Assert;

class TestLength {
  public function new() {}

  public function testBasic() {
    var mm : Millimeter = 25.4,
        inch : Inch = mm;
    Assert.floatEquals(1, inch.toFloat());
  }
}