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

  public function testRuntime() {
    var t : Temperature = "25°C";
    trace(t);
    Assert.isTrue((77 : Fahrenheit) == t.toFahrenheit());
    Assert.isTrue((298.15 : Kelvin) == t.toKelvin());
  }
}
