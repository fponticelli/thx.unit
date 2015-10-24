package thx.unit;

import utest.Assert;
import thx.unit.Units;

class TestUnits {
  public function new() {}

  public function testParse() {
    var tests = [
            { t : "10$", s : "$", v : 10.0 },
            { t : "$10", s : "$", v : 10.0 },
            { t : "light years +10.5e-2", s : "light years", v :  10.5e-2 },
            { t : "-10.5e-2 light years", s : "light years", v : -10.5e-2 },
            { t : "µm6.7", s : "µm", v : 6.7 },
            { t : "6.7µm", s : "µm", v : 6.7 },
          ];
    for(test in tests) {
      var v = Units.parseUnitDecimal(test.t);
      Assert.isTrue(test.v == v.value);
      Assert.equals(test.s, v.symbol);
    }
  }
}
