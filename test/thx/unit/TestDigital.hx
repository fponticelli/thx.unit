package thx.unit;

import thx.unit.digital.*;
import utest.Assert;

class TestDigital {
  public function new() {}

  public function testBasic() {
    var mg : Megabyte = 1,
        mb : Megabit = 1;
    Assert.floatEquals(1000000, mb.toByte().toFloat());
    Assert.isTrue(mg.toByte() > mb.toByte());
  }
}