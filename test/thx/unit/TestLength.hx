package thx.unit;

import utest.Assert;
import thx.unit.Length;
import thx.unit.length.*;

class TestLength {
  public function new() {}

  public function testBasic() {
    var mm : Millimetre = 25.4,
        inch : Inch = mm;
    Assert.isTrue((1 : Inch) == inch);
    Assert.isTrue(
      ((10 : Millimetre) * 100).toMetre() == (1 : Metre)
    );
  }

  public function testLength() {
    var len = Length.foot(3);
    Assert.equals("3ft", len.toString());
    var inches = len.toInch();
    Assert.equals("36in", inches.toString());
  }

  public function testParse() {
    var len : Length = "2.54cm";
    Assert.isTrue(2.54 == len.value);
    Assert.isTrue("cm" == len.symbol);
  }
}
