package thx.unit;

import thx.unit.temperature.*;
import utest.Assert;

class TestTemperature {
  public function new() {}

  public function testBasic() {
    var c : Celsius = 27,
        f : Fahrenheit = 80.6;
    Assert.isTrue(c.toFahrenheit().nearEqual(f));
  }
}