package thx.unit;

import thx.unit.luminousintensity.*;
import utest.Assert;

class TestLuminousIntensity {
  public function new() {}

  public function testBasic() {
    Assert.isTrue(
      (1 : Candela) > ( 1 : Candlepower)
    );
  }
}