import utest.Runner;
import utest.ui.Report;
import utest.Assert;

class TestAll {
  public static function main() {
    var runner = new Runner();
    // runner.addCase(new TestAll());
    // runner.addCase(new thx.unit.TestAngle());
    // runner.addCase(new thx.unit.angle.TestDegree());
    // runner.addCase(new thx.unit.angle.TestRadian());
    // runner.addCase(new thx.unit.TestAmountOfSubstance());
    // runner.addCase(new thx.unit.TestCurrent());
    // runner.addCase(new thx.unit.TestDigital());
    runner.addCase(new thx.unit.TestLength());
    // runner.addCase(new thx.unit.TestLuminousIntensity());
    // runner.addCase(new thx.unit.TestMass());
    // runner.addCase(new thx.unit.TestTemperature());
    // runner.addCase(new thx.unit.TestTime());
    Report.create(runner);
    runner.run();
  }
}
