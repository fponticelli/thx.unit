package thx.unit;

import thx.unit.current.*;
import utest.Assert;

class TestCurrent {
  public function new() {}

  public function testBasic() {
    Assert.isTrue(
      ((100 : Ampere) / 2) == (50 : Ampere)
    );
  }
}
