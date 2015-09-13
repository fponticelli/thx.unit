package thx.unit;

import thx.unit.digital.*;
import utest.Assert;

class TestDigital {
  public function new() {}

  public function testBasic() {
    var mg : Megabyte = 1,
        mb : Megabit = 1;
    Assert.isTrue((1000000 : Byte) == mb.toByte());
    Assert.isTrue((1048576 : Byte) == mg.toByte());
    Assert.isTrue(mg.toByte() > mb.toByte());
  }
}
