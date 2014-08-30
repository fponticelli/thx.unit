package thx.unit;

import thx.unit.amountofsubstance.*;
import utest.Assert;

class TestAmountOfSubstance {
  public function new() {}

  public function testBasic() {
    Assert.isTrue(
      (100 : Mole) < (1 : PoundMole)
    );
  }
}