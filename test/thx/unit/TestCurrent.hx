package thx.unit;

import thx.unit.current.*;
import utest.Assert;

class TestCurrent {
  public function new() {}

  public function testBasic() {
    Assert.equals(
      ((100 : Ampere) / 2).toFloat(), 50
    );
  }
}