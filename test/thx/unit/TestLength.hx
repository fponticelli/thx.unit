package thx.unit;

import utest.Assert;
import thx.unit.length.*;

class TestLength {
  public function new() {}

  public function testBasic() {
    var mm : Millimeter = 25.4,
        inch : Inch = mm;
    Assert.isTrue((1 : Inch) == inch);
    Assert.isTrue(
      ((10 : Millimeter) * 100).toMetre() == (1 : Metre)
    );
  }
}
