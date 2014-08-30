package thx.unit;

import thx.unit.time.*;
import utest.Assert;

class TestTime {
  public function new() {}

  public function testBasic() {
    Assert.floatEquals(
      ((120 : Second) * 60).toHour().toFloat(),
      (2 : Hour).toFloat()
    );
  }
}