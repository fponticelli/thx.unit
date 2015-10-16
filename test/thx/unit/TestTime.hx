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

  public function testDateDelta() {
    var date : thx.DateTimeUtc = "2015-01-01 06:00:00",
        hour : Hour = 3,
        span : thx.unit.Time = "2h";

    Assert.equals("2015-01-01T09:00:00Z", (date + hour).toString());
    Assert.equals("2015-01-01T08:00:00Z", (date + span).toString());
  }

  public function testDateTime() {
    var time : thx.Time = "03:00",
        hour : Hour = time;
    Assert.equals("3h", hour.toString());
  }
}
