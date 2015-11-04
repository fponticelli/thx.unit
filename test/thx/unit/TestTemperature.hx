package thx.unit;

import thx.unit.temperature.*;
import utest.Assert;
import thx.unit.Temperature;

class TestTemperature {
  public function new() {}

  public function testBasic() {
    var c : Celsius = 27,
        f : Fahrenheit = 80.6;
    Assert.isTrue(c.toFahrenheit() == f);
  }

// test is exluded for Java and Python before v.3.3 because they have a bug
// matching UTF8 characters
#if ((!java && !python) || (haxe_330))
  public function testRuntime() {
    var t : Temperature = "25°C";
    Assert.isTrue((77 : Fahrenheit) == t.toFahrenheit());
    Assert.isTrue((298.15 : Kelvin) == t.toKelvin());
  }
#end
}
