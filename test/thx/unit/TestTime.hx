package thx.unit;

import thx.unit.time.*;
import utest.Assert;

class TestTime {
  public function new() {}

  public function testBasic() {
    Assert.isTrue(
      ((120 : Second) * 60).toHour() == (2 : Hour)
    );
  }
}
