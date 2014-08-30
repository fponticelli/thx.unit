package thx.unit;

import thx.unit.mass.*;
import utest.Assert;

class TestMass {
  public function new() {}

  public function testBasic() {
    var p : Pound = 1;
    Assert.isTrue(p > (400 : Gram));
    Assert.isTrue(p < (1 : Kilogram));
  }
}