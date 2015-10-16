package thx.unit;

import thx.unit.time.*;
import thx.Error;

abstract Time(TimeImpl) from TimeImpl to TimeImpl {
  @:from static public function fromString(s : String) : Time {
    var o = Units.parseUnit(s);
    if(null == o) throw new Error("unable to parse " + s + " to Time");
    return fromPair(o);
  }

  @:from inline static public function plankTimeUnit(value : PlankTimeUnit) : Time
    return TimePlankTimeUnit(value);

  @:from inline static public function jiffyPhysics(value : JiffyPhysics) : Time
    return TimeJiffyPhysics(value);

  @:from inline static public function svedberg(value : Svedberg) : Time
    return TimeSvedberg(value);

  @:from inline static public function picosecond(value : Picosecond) : Time
    return TimePicosecond(value);

  @:from inline static public function nanosecond(value : Nanosecond) : Time
    return TimeNanosecond(value);

  @:from inline static public function shake(value : Shake) : Time
    return TimeShake(value);

  @:from inline static public function tick(value : Tick) : Time
    return TimeTick(value);

  @:from inline static public function microsecond(value : Microsecond) : Time
    return TimeMicrosecond(value);

  @:from inline static public function fourth(value : Fourth) : Time
    return TimeFourth(value);

  @:from inline static public function millisecond(value : Millisecond) : Time
    return TimeMillisecond(value);

  @:from inline static public function third(value : Third) : Time
    return TimeThird(value);

  @:from inline static public function second(value : Second) : Time
    return TimeSecond(value);

  @:from inline static public function minute(value : Minute) : Time
    return TimeMinute(value);

  @:from inline static public function ke(value : Ke) : Time
    return TimeKe(value);

  @:from inline static public function kilosecond(value : Kilosecond) : Time
    return TimeKilosecond(value);

  @:from inline static public function hour(value : Hour) : Time
    return TimeHour(value);

  @:from inline static public function day(value : Day) : Time
    return TimeDay(value);

  @:from inline static public function week(value : Week) : Time
    return TimeWeek(value);

  @:from inline static public function megasecond(value : Megasecond) : Time
    return TimeMegasecond(value);

  @:from inline static public function fortnight(value : Fortnight) : Time
    return TimeFortnight(value);

  @:from inline static public function synodicMonth(value : SynodicMonth) : Time
    return TimeSynodicMonth(value);

  @:from inline static public function tropicalMonth(value : TropicalMonth) : Time
    return TimeTropicalMonth(value);

  @:from inline static public function julianYear(value : JulianYear) : Time
    return TimeJulianYear(value);

  @:from inline static public function gigasecond(value : Gigasecond) : Time
    return TimeGigasecond(value);

  @:from inline static public function terasecond(value : Terasecond) : Time
    return TimeTerasecond(value);

  public static function fromPair(info : { value : Decimal, symbol : String}, ?pos : haxe.PosInfos) : Time return switch info.symbol.toLowerCase() {
    case "tp", "plank time unit": TimePlankTimeUnit(info.value);
    case "jiffy", "jiffy physics": TimeJiffyPhysics(info.value);
    case "s", "svedberg": TimeSvedberg(info.value);
    case "ps", "picosecond": TimePicosecond(info.value);
    case "ns", "nanosecond": TimeNanosecond(info.value);
    case "shake", "shake": TimeShake(info.value);
    case "tick", "tick": TimeTick(info.value);
    case "μs", "microsecond": TimeMicrosecond(info.value);
    case "fourth", "fourth": TimeFourth(info.value);
    case "ms", "millisecond": TimeMillisecond(info.value);
    case "third", "third": TimeThird(info.value);
    case "s", "second": TimeSecond(info.value);
    case "min", "minute": TimeMinute(info.value);
    case "ke", "ke": TimeKe(info.value);
    case "ks", "kilosecond": TimeKilosecond(info.value);
    case "h", "hour": TimeHour(info.value);
    case "day", "day": TimeDay(info.value);
    case "week", "week": TimeWeek(info.value);
    case "ms", "megasecond": TimeMegasecond(info.value);
    case "fortnight", "fortnight": TimeFortnight(info.value);
    case "synodic month", "synodic month": TimeSynodicMonth(info.value);
    case "tropical month", "tropical month": TimeTropicalMonth(info.value);
    case "julian year", "julian year": TimeJulianYear(info.value);
    case "gs", "gigasecond": TimeGigasecond(info.value);
    case "ts", "terasecond": TimeTerasecond(info.value);
    case _: throw new thx.Error("invalid symbol " + info.symbol, pos);
  }

  public var value(get, never) : Decimal;
  public var symbol(get, never) : String;

  function getInfo() return switch this {
    case TimePlankTimeUnit(unit): { value : unit.toDecimal(), symbol : PlankTimeUnit.symbol };
    case TimeJiffyPhysics(unit): { value : unit.toDecimal(), symbol : JiffyPhysics.symbol };
    case TimeSvedberg(unit): { value : unit.toDecimal(), symbol : Svedberg.symbol };
    case TimePicosecond(unit): { value : unit.toDecimal(), symbol : Picosecond.symbol };
    case TimeNanosecond(unit): { value : unit.toDecimal(), symbol : Nanosecond.symbol };
    case TimeShake(unit): { value : unit.toDecimal(), symbol : Shake.symbol };
    case TimeTick(unit): { value : unit.toDecimal(), symbol : Tick.symbol };
    case TimeMicrosecond(unit): { value : unit.toDecimal(), symbol : Microsecond.symbol };
    case TimeFourth(unit): { value : unit.toDecimal(), symbol : Fourth.symbol };
    case TimeMillisecond(unit): { value : unit.toDecimal(), symbol : Millisecond.symbol };
    case TimeThird(unit): { value : unit.toDecimal(), symbol : Third.symbol };
    case TimeSecond(unit): { value : unit.toDecimal(), symbol : Second.symbol };
    case TimeMinute(unit): { value : unit.toDecimal(), symbol : Minute.symbol };
    case TimeKe(unit): { value : unit.toDecimal(), symbol : Ke.symbol };
    case TimeKilosecond(unit): { value : unit.toDecimal(), symbol : Kilosecond.symbol };
    case TimeHour(unit): { value : unit.toDecimal(), symbol : Hour.symbol };
    case TimeDay(unit): { value : unit.toDecimal(), symbol : Day.symbol };
    case TimeWeek(unit): { value : unit.toDecimal(), symbol : Week.symbol };
    case TimeMegasecond(unit): { value : unit.toDecimal(), symbol : Megasecond.symbol };
    case TimeFortnight(unit): { value : unit.toDecimal(), symbol : Fortnight.symbol };
    case TimeSynodicMonth(unit): { value : unit.toDecimal(), symbol : SynodicMonth.symbol };
    case TimeTropicalMonth(unit): { value : unit.toDecimal(), symbol : TropicalMonth.symbol };
    case TimeJulianYear(unit): { value : unit.toDecimal(), symbol : JulianYear.symbol };
    case TimeGigasecond(unit): { value : unit.toDecimal(), symbol : Gigasecond.symbol };
    case TimeTerasecond(unit): { value : unit.toDecimal(), symbol : Terasecond.symbol };
  }

  public function abs() : Time return switch this {
    case TimePlankTimeUnit(unit): unit.abs();
    case TimeJiffyPhysics(unit): unit.abs();
    case TimeSvedberg(unit): unit.abs();
    case TimePicosecond(unit): unit.abs();
    case TimeNanosecond(unit): unit.abs();
    case TimeShake(unit): unit.abs();
    case TimeTick(unit): unit.abs();
    case TimeMicrosecond(unit): unit.abs();
    case TimeFourth(unit): unit.abs();
    case TimeMillisecond(unit): unit.abs();
    case TimeThird(unit): unit.abs();
    case TimeSecond(unit): unit.abs();
    case TimeMinute(unit): unit.abs();
    case TimeKe(unit): unit.abs();
    case TimeKilosecond(unit): unit.abs();
    case TimeHour(unit): unit.abs();
    case TimeDay(unit): unit.abs();
    case TimeWeek(unit): unit.abs();
    case TimeMegasecond(unit): unit.abs();
    case TimeFortnight(unit): unit.abs();
    case TimeSynodicMonth(unit): unit.abs();
    case TimeTropicalMonth(unit): unit.abs();
    case TimeJulianYear(unit): unit.abs();
    case TimeGigasecond(unit): unit.abs();
    case TimeTerasecond(unit): unit.abs();
  }

  @:op( -A ) public function negate() : Time return switch this {
    case TimePlankTimeUnit(unit): unit.negate();
    case TimeJiffyPhysics(unit): unit.negate();
    case TimeSvedberg(unit): unit.negate();
    case TimePicosecond(unit): unit.negate();
    case TimeNanosecond(unit): unit.negate();
    case TimeShake(unit): unit.negate();
    case TimeTick(unit): unit.negate();
    case TimeMicrosecond(unit): unit.negate();
    case TimeFourth(unit): unit.negate();
    case TimeMillisecond(unit): unit.negate();
    case TimeThird(unit): unit.negate();
    case TimeSecond(unit): unit.negate();
    case TimeMinute(unit): unit.negate();
    case TimeKe(unit): unit.negate();
    case TimeKilosecond(unit): unit.negate();
    case TimeHour(unit): unit.negate();
    case TimeDay(unit): unit.negate();
    case TimeWeek(unit): unit.negate();
    case TimeMegasecond(unit): unit.negate();
    case TimeFortnight(unit): unit.negate();
    case TimeSynodicMonth(unit): unit.negate();
    case TimeTropicalMonth(unit): unit.negate();
    case TimeJulianYear(unit): unit.negate();
    case TimeGigasecond(unit): unit.negate();
    case TimeTerasecond(unit): unit.negate();
  }

  @:op( A+B) public function add(that : Time) : Time return switch this {
    case TimePlankTimeUnit(unit): unit.add(that.toPlankTimeUnit());
    case TimeJiffyPhysics(unit): unit.add(that.toJiffyPhysics());
    case TimeSvedberg(unit): unit.add(that.toSvedberg());
    case TimePicosecond(unit): unit.add(that.toPicosecond());
    case TimeNanosecond(unit): unit.add(that.toNanosecond());
    case TimeShake(unit): unit.add(that.toShake());
    case TimeTick(unit): unit.add(that.toTick());
    case TimeMicrosecond(unit): unit.add(that.toMicrosecond());
    case TimeFourth(unit): unit.add(that.toFourth());
    case TimeMillisecond(unit): unit.add(that.toMillisecond());
    case TimeThird(unit): unit.add(that.toThird());
    case TimeSecond(unit): unit.add(that.toSecond());
    case TimeMinute(unit): unit.add(that.toMinute());
    case TimeKe(unit): unit.add(that.toKe());
    case TimeKilosecond(unit): unit.add(that.toKilosecond());
    case TimeHour(unit): unit.add(that.toHour());
    case TimeDay(unit): unit.add(that.toDay());
    case TimeWeek(unit): unit.add(that.toWeek());
    case TimeMegasecond(unit): unit.add(that.toMegasecond());
    case TimeFortnight(unit): unit.add(that.toFortnight());
    case TimeSynodicMonth(unit): unit.add(that.toSynodicMonth());
    case TimeTropicalMonth(unit): unit.add(that.toTropicalMonth());
    case TimeJulianYear(unit): unit.add(that.toJulianYear());
    case TimeGigasecond(unit): unit.add(that.toGigasecond());
    case TimeTerasecond(unit): unit.add(that.toTerasecond());
  }

  @:op( A-B) public function subtract(that : Time) : Time return switch this {
    case TimePlankTimeUnit(unit): unit.subtract(that.toPlankTimeUnit());
    case TimeJiffyPhysics(unit): unit.subtract(that.toJiffyPhysics());
    case TimeSvedberg(unit): unit.subtract(that.toSvedberg());
    case TimePicosecond(unit): unit.subtract(that.toPicosecond());
    case TimeNanosecond(unit): unit.subtract(that.toNanosecond());
    case TimeShake(unit): unit.subtract(that.toShake());
    case TimeTick(unit): unit.subtract(that.toTick());
    case TimeMicrosecond(unit): unit.subtract(that.toMicrosecond());
    case TimeFourth(unit): unit.subtract(that.toFourth());
    case TimeMillisecond(unit): unit.subtract(that.toMillisecond());
    case TimeThird(unit): unit.subtract(that.toThird());
    case TimeSecond(unit): unit.subtract(that.toSecond());
    case TimeMinute(unit): unit.subtract(that.toMinute());
    case TimeKe(unit): unit.subtract(that.toKe());
    case TimeKilosecond(unit): unit.subtract(that.toKilosecond());
    case TimeHour(unit): unit.subtract(that.toHour());
    case TimeDay(unit): unit.subtract(that.toDay());
    case TimeWeek(unit): unit.subtract(that.toWeek());
    case TimeMegasecond(unit): unit.subtract(that.toMegasecond());
    case TimeFortnight(unit): unit.subtract(that.toFortnight());
    case TimeSynodicMonth(unit): unit.subtract(that.toSynodicMonth());
    case TimeTropicalMonth(unit): unit.subtract(that.toTropicalMonth());
    case TimeJulianYear(unit): unit.subtract(that.toJulianYear());
    case TimeGigasecond(unit): unit.subtract(that.toGigasecond());
    case TimeTerasecond(unit): unit.subtract(that.toTerasecond());
  }

  @:op( A*B) public function multiply(that : Decimal) : Time return switch this {
    case TimePlankTimeUnit(unit): unit.multiply(that);
    case TimeJiffyPhysics(unit): unit.multiply(that);
    case TimeSvedberg(unit): unit.multiply(that);
    case TimePicosecond(unit): unit.multiply(that);
    case TimeNanosecond(unit): unit.multiply(that);
    case TimeShake(unit): unit.multiply(that);
    case TimeTick(unit): unit.multiply(that);
    case TimeMicrosecond(unit): unit.multiply(that);
    case TimeFourth(unit): unit.multiply(that);
    case TimeMillisecond(unit): unit.multiply(that);
    case TimeThird(unit): unit.multiply(that);
    case TimeSecond(unit): unit.multiply(that);
    case TimeMinute(unit): unit.multiply(that);
    case TimeKe(unit): unit.multiply(that);
    case TimeKilosecond(unit): unit.multiply(that);
    case TimeHour(unit): unit.multiply(that);
    case TimeDay(unit): unit.multiply(that);
    case TimeWeek(unit): unit.multiply(that);
    case TimeMegasecond(unit): unit.multiply(that);
    case TimeFortnight(unit): unit.multiply(that);
    case TimeSynodicMonth(unit): unit.multiply(that);
    case TimeTropicalMonth(unit): unit.multiply(that);
    case TimeJulianYear(unit): unit.multiply(that);
    case TimeGigasecond(unit): unit.multiply(that);
    case TimeTerasecond(unit): unit.multiply(that);
  }

  @:op( A/B) public function divide(that : Decimal) : Time return switch this {
    case TimePlankTimeUnit(unit): unit.divide(that);
    case TimeJiffyPhysics(unit): unit.divide(that);
    case TimeSvedberg(unit): unit.divide(that);
    case TimePicosecond(unit): unit.divide(that);
    case TimeNanosecond(unit): unit.divide(that);
    case TimeShake(unit): unit.divide(that);
    case TimeTick(unit): unit.divide(that);
    case TimeMicrosecond(unit): unit.divide(that);
    case TimeFourth(unit): unit.divide(that);
    case TimeMillisecond(unit): unit.divide(that);
    case TimeThird(unit): unit.divide(that);
    case TimeSecond(unit): unit.divide(that);
    case TimeMinute(unit): unit.divide(that);
    case TimeKe(unit): unit.divide(that);
    case TimeKilosecond(unit): unit.divide(that);
    case TimeHour(unit): unit.divide(that);
    case TimeDay(unit): unit.divide(that);
    case TimeWeek(unit): unit.divide(that);
    case TimeMegasecond(unit): unit.divide(that);
    case TimeFortnight(unit): unit.divide(that);
    case TimeSynodicMonth(unit): unit.divide(that);
    case TimeTropicalMonth(unit): unit.divide(that);
    case TimeJulianYear(unit): unit.divide(that);
    case TimeGigasecond(unit): unit.divide(that);
    case TimeTerasecond(unit): unit.divide(that);
  }

  @:op( A%B) public function modulo(that : Decimal) : Time return switch this {
    case TimePlankTimeUnit(unit): unit.modulo(that);
    case TimeJiffyPhysics(unit): unit.modulo(that);
    case TimeSvedberg(unit): unit.modulo(that);
    case TimePicosecond(unit): unit.modulo(that);
    case TimeNanosecond(unit): unit.modulo(that);
    case TimeShake(unit): unit.modulo(that);
    case TimeTick(unit): unit.modulo(that);
    case TimeMicrosecond(unit): unit.modulo(that);
    case TimeFourth(unit): unit.modulo(that);
    case TimeMillisecond(unit): unit.modulo(that);
    case TimeThird(unit): unit.modulo(that);
    case TimeSecond(unit): unit.modulo(that);
    case TimeMinute(unit): unit.modulo(that);
    case TimeKe(unit): unit.modulo(that);
    case TimeKilosecond(unit): unit.modulo(that);
    case TimeHour(unit): unit.modulo(that);
    case TimeDay(unit): unit.modulo(that);
    case TimeWeek(unit): unit.modulo(that);
    case TimeMegasecond(unit): unit.modulo(that);
    case TimeFortnight(unit): unit.modulo(that);
    case TimeSynodicMonth(unit): unit.modulo(that);
    case TimeTropicalMonth(unit): unit.modulo(that);
    case TimeJulianYear(unit): unit.modulo(that);
    case TimeGigasecond(unit): unit.modulo(that);
    case TimeTerasecond(unit): unit.modulo(that);
  }

  public function min(that : Time) : Time return switch this {
    case TimePlankTimeUnit(unit): unit.min(that.toPlankTimeUnit());
    case TimeJiffyPhysics(unit): unit.min(that.toJiffyPhysics());
    case TimeSvedberg(unit): unit.min(that.toSvedberg());
    case TimePicosecond(unit): unit.min(that.toPicosecond());
    case TimeNanosecond(unit): unit.min(that.toNanosecond());
    case TimeShake(unit): unit.min(that.toShake());
    case TimeTick(unit): unit.min(that.toTick());
    case TimeMicrosecond(unit): unit.min(that.toMicrosecond());
    case TimeFourth(unit): unit.min(that.toFourth());
    case TimeMillisecond(unit): unit.min(that.toMillisecond());
    case TimeThird(unit): unit.min(that.toThird());
    case TimeSecond(unit): unit.min(that.toSecond());
    case TimeMinute(unit): unit.min(that.toMinute());
    case TimeKe(unit): unit.min(that.toKe());
    case TimeKilosecond(unit): unit.min(that.toKilosecond());
    case TimeHour(unit): unit.min(that.toHour());
    case TimeDay(unit): unit.min(that.toDay());
    case TimeWeek(unit): unit.min(that.toWeek());
    case TimeMegasecond(unit): unit.min(that.toMegasecond());
    case TimeFortnight(unit): unit.min(that.toFortnight());
    case TimeSynodicMonth(unit): unit.min(that.toSynodicMonth());
    case TimeTropicalMonth(unit): unit.min(that.toTropicalMonth());
    case TimeJulianYear(unit): unit.min(that.toJulianYear());
    case TimeGigasecond(unit): unit.min(that.toGigasecond());
    case TimeTerasecond(unit): unit.min(that.toTerasecond());
  }

  public function max(that : Time) : Time return switch this {
    case TimePlankTimeUnit(unit): unit.max(that.toPlankTimeUnit());
    case TimeJiffyPhysics(unit): unit.max(that.toJiffyPhysics());
    case TimeSvedberg(unit): unit.max(that.toSvedberg());
    case TimePicosecond(unit): unit.max(that.toPicosecond());
    case TimeNanosecond(unit): unit.max(that.toNanosecond());
    case TimeShake(unit): unit.max(that.toShake());
    case TimeTick(unit): unit.max(that.toTick());
    case TimeMicrosecond(unit): unit.max(that.toMicrosecond());
    case TimeFourth(unit): unit.max(that.toFourth());
    case TimeMillisecond(unit): unit.max(that.toMillisecond());
    case TimeThird(unit): unit.max(that.toThird());
    case TimeSecond(unit): unit.max(that.toSecond());
    case TimeMinute(unit): unit.max(that.toMinute());
    case TimeKe(unit): unit.max(that.toKe());
    case TimeKilosecond(unit): unit.max(that.toKilosecond());
    case TimeHour(unit): unit.max(that.toHour());
    case TimeDay(unit): unit.max(that.toDay());
    case TimeWeek(unit): unit.max(that.toWeek());
    case TimeMegasecond(unit): unit.max(that.toMegasecond());
    case TimeFortnight(unit): unit.max(that.toFortnight());
    case TimeSynodicMonth(unit): unit.max(that.toSynodicMonth());
    case TimeTropicalMonth(unit): unit.max(that.toTropicalMonth());
    case TimeJulianYear(unit): unit.max(that.toJulianYear());
    case TimeGigasecond(unit): unit.max(that.toGigasecond());
    case TimeTerasecond(unit): unit.max(that.toTerasecond());
  }

  public function equalsTo(that : Time) : Bool return switch this {
    case TimePlankTimeUnit(unit): unit.equalsTo(that.toPlankTimeUnit());
    case TimeJiffyPhysics(unit): unit.equalsTo(that.toJiffyPhysics());
    case TimeSvedberg(unit): unit.equalsTo(that.toSvedberg());
    case TimePicosecond(unit): unit.equalsTo(that.toPicosecond());
    case TimeNanosecond(unit): unit.equalsTo(that.toNanosecond());
    case TimeShake(unit): unit.equalsTo(that.toShake());
    case TimeTick(unit): unit.equalsTo(that.toTick());
    case TimeMicrosecond(unit): unit.equalsTo(that.toMicrosecond());
    case TimeFourth(unit): unit.equalsTo(that.toFourth());
    case TimeMillisecond(unit): unit.equalsTo(that.toMillisecond());
    case TimeThird(unit): unit.equalsTo(that.toThird());
    case TimeSecond(unit): unit.equalsTo(that.toSecond());
    case TimeMinute(unit): unit.equalsTo(that.toMinute());
    case TimeKe(unit): unit.equalsTo(that.toKe());
    case TimeKilosecond(unit): unit.equalsTo(that.toKilosecond());
    case TimeHour(unit): unit.equalsTo(that.toHour());
    case TimeDay(unit): unit.equalsTo(that.toDay());
    case TimeWeek(unit): unit.equalsTo(that.toWeek());
    case TimeMegasecond(unit): unit.equalsTo(that.toMegasecond());
    case TimeFortnight(unit): unit.equalsTo(that.toFortnight());
    case TimeSynodicMonth(unit): unit.equalsTo(that.toSynodicMonth());
    case TimeTropicalMonth(unit): unit.equalsTo(that.toTropicalMonth());
    case TimeJulianYear(unit): unit.equalsTo(that.toJulianYear());
    case TimeGigasecond(unit): unit.equalsTo(that.toGigasecond());
    case TimeTerasecond(unit): unit.equalsTo(that.toTerasecond());
  }
  @:op(A==B)
  public static function equals(self : Time, that : Time) : Bool
    return self.equalsTo(that);

  public function nearEqualsTo(that : Time) : Bool return switch this {
    case TimePlankTimeUnit(unit): unit.nearEqualsTo(that.toPlankTimeUnit());
    case TimeJiffyPhysics(unit): unit.nearEqualsTo(that.toJiffyPhysics());
    case TimeSvedberg(unit): unit.nearEqualsTo(that.toSvedberg());
    case TimePicosecond(unit): unit.nearEqualsTo(that.toPicosecond());
    case TimeNanosecond(unit): unit.nearEqualsTo(that.toNanosecond());
    case TimeShake(unit): unit.nearEqualsTo(that.toShake());
    case TimeTick(unit): unit.nearEqualsTo(that.toTick());
    case TimeMicrosecond(unit): unit.nearEqualsTo(that.toMicrosecond());
    case TimeFourth(unit): unit.nearEqualsTo(that.toFourth());
    case TimeMillisecond(unit): unit.nearEqualsTo(that.toMillisecond());
    case TimeThird(unit): unit.nearEqualsTo(that.toThird());
    case TimeSecond(unit): unit.nearEqualsTo(that.toSecond());
    case TimeMinute(unit): unit.nearEqualsTo(that.toMinute());
    case TimeKe(unit): unit.nearEqualsTo(that.toKe());
    case TimeKilosecond(unit): unit.nearEqualsTo(that.toKilosecond());
    case TimeHour(unit): unit.nearEqualsTo(that.toHour());
    case TimeDay(unit): unit.nearEqualsTo(that.toDay());
    case TimeWeek(unit): unit.nearEqualsTo(that.toWeek());
    case TimeMegasecond(unit): unit.nearEqualsTo(that.toMegasecond());
    case TimeFortnight(unit): unit.nearEqualsTo(that.toFortnight());
    case TimeSynodicMonth(unit): unit.nearEqualsTo(that.toSynodicMonth());
    case TimeTropicalMonth(unit): unit.nearEqualsTo(that.toTropicalMonth());
    case TimeJulianYear(unit): unit.nearEqualsTo(that.toJulianYear());
    case TimeGigasecond(unit): unit.nearEqualsTo(that.toGigasecond());
    case TimeTerasecond(unit): unit.nearEqualsTo(that.toTerasecond());
  }
  public static function nearEquals(self : Time, that : Time) : Bool
    return self.nearEqualsTo(that);

  public function lessThan(that : Time) : Bool return switch this {
    case TimePlankTimeUnit(unit): unit.lessThan(that.toPlankTimeUnit());
    case TimeJiffyPhysics(unit): unit.lessThan(that.toJiffyPhysics());
    case TimeSvedberg(unit): unit.lessThan(that.toSvedberg());
    case TimePicosecond(unit): unit.lessThan(that.toPicosecond());
    case TimeNanosecond(unit): unit.lessThan(that.toNanosecond());
    case TimeShake(unit): unit.lessThan(that.toShake());
    case TimeTick(unit): unit.lessThan(that.toTick());
    case TimeMicrosecond(unit): unit.lessThan(that.toMicrosecond());
    case TimeFourth(unit): unit.lessThan(that.toFourth());
    case TimeMillisecond(unit): unit.lessThan(that.toMillisecond());
    case TimeThird(unit): unit.lessThan(that.toThird());
    case TimeSecond(unit): unit.lessThan(that.toSecond());
    case TimeMinute(unit): unit.lessThan(that.toMinute());
    case TimeKe(unit): unit.lessThan(that.toKe());
    case TimeKilosecond(unit): unit.lessThan(that.toKilosecond());
    case TimeHour(unit): unit.lessThan(that.toHour());
    case TimeDay(unit): unit.lessThan(that.toDay());
    case TimeWeek(unit): unit.lessThan(that.toWeek());
    case TimeMegasecond(unit): unit.lessThan(that.toMegasecond());
    case TimeFortnight(unit): unit.lessThan(that.toFortnight());
    case TimeSynodicMonth(unit): unit.lessThan(that.toSynodicMonth());
    case TimeTropicalMonth(unit): unit.lessThan(that.toTropicalMonth());
    case TimeJulianYear(unit): unit.lessThan(that.toJulianYear());
    case TimeGigasecond(unit): unit.lessThan(that.toGigasecond());
    case TimeTerasecond(unit): unit.lessThan(that.toTerasecond());
  }
  @:op( A<B)
  public static function less(self : Time, that : Time) : Bool
    return self.lessThan(that);

  public function lessEqualsTo(that : Time) : Bool return switch this {
    case TimePlankTimeUnit(unit): unit.lessEqualsTo(that.toPlankTimeUnit());
    case TimeJiffyPhysics(unit): unit.lessEqualsTo(that.toJiffyPhysics());
    case TimeSvedberg(unit): unit.lessEqualsTo(that.toSvedberg());
    case TimePicosecond(unit): unit.lessEqualsTo(that.toPicosecond());
    case TimeNanosecond(unit): unit.lessEqualsTo(that.toNanosecond());
    case TimeShake(unit): unit.lessEqualsTo(that.toShake());
    case TimeTick(unit): unit.lessEqualsTo(that.toTick());
    case TimeMicrosecond(unit): unit.lessEqualsTo(that.toMicrosecond());
    case TimeFourth(unit): unit.lessEqualsTo(that.toFourth());
    case TimeMillisecond(unit): unit.lessEqualsTo(that.toMillisecond());
    case TimeThird(unit): unit.lessEqualsTo(that.toThird());
    case TimeSecond(unit): unit.lessEqualsTo(that.toSecond());
    case TimeMinute(unit): unit.lessEqualsTo(that.toMinute());
    case TimeKe(unit): unit.lessEqualsTo(that.toKe());
    case TimeKilosecond(unit): unit.lessEqualsTo(that.toKilosecond());
    case TimeHour(unit): unit.lessEqualsTo(that.toHour());
    case TimeDay(unit): unit.lessEqualsTo(that.toDay());
    case TimeWeek(unit): unit.lessEqualsTo(that.toWeek());
    case TimeMegasecond(unit): unit.lessEqualsTo(that.toMegasecond());
    case TimeFortnight(unit): unit.lessEqualsTo(that.toFortnight());
    case TimeSynodicMonth(unit): unit.lessEqualsTo(that.toSynodicMonth());
    case TimeTropicalMonth(unit): unit.lessEqualsTo(that.toTropicalMonth());
    case TimeJulianYear(unit): unit.lessEqualsTo(that.toJulianYear());
    case TimeGigasecond(unit): unit.lessEqualsTo(that.toGigasecond());
    case TimeTerasecond(unit): unit.lessEqualsTo(that.toTerasecond());
  }
  @:op( A<B)
  public static function lessEquals(self : Time, that : Time) : Bool
    return self.lessEqualsTo(that);

  public function greaterThan(that : Time) : Bool return switch this {
    case TimePlankTimeUnit(unit): unit.greaterThan(that.toPlankTimeUnit());
    case TimeJiffyPhysics(unit): unit.greaterThan(that.toJiffyPhysics());
    case TimeSvedberg(unit): unit.greaterThan(that.toSvedberg());
    case TimePicosecond(unit): unit.greaterThan(that.toPicosecond());
    case TimeNanosecond(unit): unit.greaterThan(that.toNanosecond());
    case TimeShake(unit): unit.greaterThan(that.toShake());
    case TimeTick(unit): unit.greaterThan(that.toTick());
    case TimeMicrosecond(unit): unit.greaterThan(that.toMicrosecond());
    case TimeFourth(unit): unit.greaterThan(that.toFourth());
    case TimeMillisecond(unit): unit.greaterThan(that.toMillisecond());
    case TimeThird(unit): unit.greaterThan(that.toThird());
    case TimeSecond(unit): unit.greaterThan(that.toSecond());
    case TimeMinute(unit): unit.greaterThan(that.toMinute());
    case TimeKe(unit): unit.greaterThan(that.toKe());
    case TimeKilosecond(unit): unit.greaterThan(that.toKilosecond());
    case TimeHour(unit): unit.greaterThan(that.toHour());
    case TimeDay(unit): unit.greaterThan(that.toDay());
    case TimeWeek(unit): unit.greaterThan(that.toWeek());
    case TimeMegasecond(unit): unit.greaterThan(that.toMegasecond());
    case TimeFortnight(unit): unit.greaterThan(that.toFortnight());
    case TimeSynodicMonth(unit): unit.greaterThan(that.toSynodicMonth());
    case TimeTropicalMonth(unit): unit.greaterThan(that.toTropicalMonth());
    case TimeJulianYear(unit): unit.greaterThan(that.toJulianYear());
    case TimeGigasecond(unit): unit.greaterThan(that.toGigasecond());
    case TimeTerasecond(unit): unit.greaterThan(that.toTerasecond());
  }
  @:op( A>B)
  public static function greater(self : Time, that : Time) : Bool
    return self.greaterThan(that);

  public function greaterEqualsTo(that : Time) : Bool return switch this {
    case TimePlankTimeUnit(unit): unit.greaterEqualsTo(that.toPlankTimeUnit());
    case TimeJiffyPhysics(unit): unit.greaterEqualsTo(that.toJiffyPhysics());
    case TimeSvedberg(unit): unit.greaterEqualsTo(that.toSvedberg());
    case TimePicosecond(unit): unit.greaterEqualsTo(that.toPicosecond());
    case TimeNanosecond(unit): unit.greaterEqualsTo(that.toNanosecond());
    case TimeShake(unit): unit.greaterEqualsTo(that.toShake());
    case TimeTick(unit): unit.greaterEqualsTo(that.toTick());
    case TimeMicrosecond(unit): unit.greaterEqualsTo(that.toMicrosecond());
    case TimeFourth(unit): unit.greaterEqualsTo(that.toFourth());
    case TimeMillisecond(unit): unit.greaterEqualsTo(that.toMillisecond());
    case TimeThird(unit): unit.greaterEqualsTo(that.toThird());
    case TimeSecond(unit): unit.greaterEqualsTo(that.toSecond());
    case TimeMinute(unit): unit.greaterEqualsTo(that.toMinute());
    case TimeKe(unit): unit.greaterEqualsTo(that.toKe());
    case TimeKilosecond(unit): unit.greaterEqualsTo(that.toKilosecond());
    case TimeHour(unit): unit.greaterEqualsTo(that.toHour());
    case TimeDay(unit): unit.greaterEqualsTo(that.toDay());
    case TimeWeek(unit): unit.greaterEqualsTo(that.toWeek());
    case TimeMegasecond(unit): unit.greaterEqualsTo(that.toMegasecond());
    case TimeFortnight(unit): unit.greaterEqualsTo(that.toFortnight());
    case TimeSynodicMonth(unit): unit.greaterEqualsTo(that.toSynodicMonth());
    case TimeTropicalMonth(unit): unit.greaterEqualsTo(that.toTropicalMonth());
    case TimeJulianYear(unit): unit.greaterEqualsTo(that.toJulianYear());
    case TimeGigasecond(unit): unit.greaterEqualsTo(that.toGigasecond());
    case TimeTerasecond(unit): unit.greaterEqualsTo(that.toTerasecond());
  }
  @:op( A<B)
  public static function greatersEquals(self : Time, that : Time) : Bool
    return self.greaterEqualsTo(that);


  @:to public function toPlankTimeUnit() : PlankTimeUnit return switch this {
    case TimePlankTimeUnit(unit): unit.toPlankTimeUnit();
    case TimeJiffyPhysics(unit): unit.toJiffyPhysics();
    case TimeSvedberg(unit): unit.toSvedberg();
    case TimePicosecond(unit): unit.toPicosecond();
    case TimeNanosecond(unit): unit.toNanosecond();
    case TimeShake(unit): unit.toShake();
    case TimeTick(unit): unit.toTick();
    case TimeMicrosecond(unit): unit.toMicrosecond();
    case TimeFourth(unit): unit.toFourth();
    case TimeMillisecond(unit): unit.toMillisecond();
    case TimeThird(unit): unit.toThird();
    case TimeSecond(unit): unit.toSecond();
    case TimeMinute(unit): unit.toMinute();
    case TimeKe(unit): unit.toKe();
    case TimeKilosecond(unit): unit.toKilosecond();
    case TimeHour(unit): unit.toHour();
    case TimeDay(unit): unit.toDay();
    case TimeWeek(unit): unit.toWeek();
    case TimeMegasecond(unit): unit.toMegasecond();
    case TimeFortnight(unit): unit.toFortnight();
    case TimeSynodicMonth(unit): unit.toSynodicMonth();
    case TimeTropicalMonth(unit): unit.toTropicalMonth();
    case TimeJulianYear(unit): unit.toJulianYear();
    case TimeGigasecond(unit): unit.toGigasecond();
    case TimeTerasecond(unit): unit.toTerasecond();
  }

  @:to public function toJiffyPhysics() : JiffyPhysics return switch this {
    case TimePlankTimeUnit(unit): unit.toPlankTimeUnit();
    case TimeJiffyPhysics(unit): unit.toJiffyPhysics();
    case TimeSvedberg(unit): unit.toSvedberg();
    case TimePicosecond(unit): unit.toPicosecond();
    case TimeNanosecond(unit): unit.toNanosecond();
    case TimeShake(unit): unit.toShake();
    case TimeTick(unit): unit.toTick();
    case TimeMicrosecond(unit): unit.toMicrosecond();
    case TimeFourth(unit): unit.toFourth();
    case TimeMillisecond(unit): unit.toMillisecond();
    case TimeThird(unit): unit.toThird();
    case TimeSecond(unit): unit.toSecond();
    case TimeMinute(unit): unit.toMinute();
    case TimeKe(unit): unit.toKe();
    case TimeKilosecond(unit): unit.toKilosecond();
    case TimeHour(unit): unit.toHour();
    case TimeDay(unit): unit.toDay();
    case TimeWeek(unit): unit.toWeek();
    case TimeMegasecond(unit): unit.toMegasecond();
    case TimeFortnight(unit): unit.toFortnight();
    case TimeSynodicMonth(unit): unit.toSynodicMonth();
    case TimeTropicalMonth(unit): unit.toTropicalMonth();
    case TimeJulianYear(unit): unit.toJulianYear();
    case TimeGigasecond(unit): unit.toGigasecond();
    case TimeTerasecond(unit): unit.toTerasecond();
  }

  @:to public function toSvedberg() : Svedberg return switch this {
    case TimePlankTimeUnit(unit): unit.toPlankTimeUnit();
    case TimeJiffyPhysics(unit): unit.toJiffyPhysics();
    case TimeSvedberg(unit): unit.toSvedberg();
    case TimePicosecond(unit): unit.toPicosecond();
    case TimeNanosecond(unit): unit.toNanosecond();
    case TimeShake(unit): unit.toShake();
    case TimeTick(unit): unit.toTick();
    case TimeMicrosecond(unit): unit.toMicrosecond();
    case TimeFourth(unit): unit.toFourth();
    case TimeMillisecond(unit): unit.toMillisecond();
    case TimeThird(unit): unit.toThird();
    case TimeSecond(unit): unit.toSecond();
    case TimeMinute(unit): unit.toMinute();
    case TimeKe(unit): unit.toKe();
    case TimeKilosecond(unit): unit.toKilosecond();
    case TimeHour(unit): unit.toHour();
    case TimeDay(unit): unit.toDay();
    case TimeWeek(unit): unit.toWeek();
    case TimeMegasecond(unit): unit.toMegasecond();
    case TimeFortnight(unit): unit.toFortnight();
    case TimeSynodicMonth(unit): unit.toSynodicMonth();
    case TimeTropicalMonth(unit): unit.toTropicalMonth();
    case TimeJulianYear(unit): unit.toJulianYear();
    case TimeGigasecond(unit): unit.toGigasecond();
    case TimeTerasecond(unit): unit.toTerasecond();
  }

  @:to public function toPicosecond() : Picosecond return switch this {
    case TimePlankTimeUnit(unit): unit.toPlankTimeUnit();
    case TimeJiffyPhysics(unit): unit.toJiffyPhysics();
    case TimeSvedberg(unit): unit.toSvedberg();
    case TimePicosecond(unit): unit.toPicosecond();
    case TimeNanosecond(unit): unit.toNanosecond();
    case TimeShake(unit): unit.toShake();
    case TimeTick(unit): unit.toTick();
    case TimeMicrosecond(unit): unit.toMicrosecond();
    case TimeFourth(unit): unit.toFourth();
    case TimeMillisecond(unit): unit.toMillisecond();
    case TimeThird(unit): unit.toThird();
    case TimeSecond(unit): unit.toSecond();
    case TimeMinute(unit): unit.toMinute();
    case TimeKe(unit): unit.toKe();
    case TimeKilosecond(unit): unit.toKilosecond();
    case TimeHour(unit): unit.toHour();
    case TimeDay(unit): unit.toDay();
    case TimeWeek(unit): unit.toWeek();
    case TimeMegasecond(unit): unit.toMegasecond();
    case TimeFortnight(unit): unit.toFortnight();
    case TimeSynodicMonth(unit): unit.toSynodicMonth();
    case TimeTropicalMonth(unit): unit.toTropicalMonth();
    case TimeJulianYear(unit): unit.toJulianYear();
    case TimeGigasecond(unit): unit.toGigasecond();
    case TimeTerasecond(unit): unit.toTerasecond();
  }

  @:to public function toNanosecond() : Nanosecond return switch this {
    case TimePlankTimeUnit(unit): unit.toPlankTimeUnit();
    case TimeJiffyPhysics(unit): unit.toJiffyPhysics();
    case TimeSvedberg(unit): unit.toSvedberg();
    case TimePicosecond(unit): unit.toPicosecond();
    case TimeNanosecond(unit): unit.toNanosecond();
    case TimeShake(unit): unit.toShake();
    case TimeTick(unit): unit.toTick();
    case TimeMicrosecond(unit): unit.toMicrosecond();
    case TimeFourth(unit): unit.toFourth();
    case TimeMillisecond(unit): unit.toMillisecond();
    case TimeThird(unit): unit.toThird();
    case TimeSecond(unit): unit.toSecond();
    case TimeMinute(unit): unit.toMinute();
    case TimeKe(unit): unit.toKe();
    case TimeKilosecond(unit): unit.toKilosecond();
    case TimeHour(unit): unit.toHour();
    case TimeDay(unit): unit.toDay();
    case TimeWeek(unit): unit.toWeek();
    case TimeMegasecond(unit): unit.toMegasecond();
    case TimeFortnight(unit): unit.toFortnight();
    case TimeSynodicMonth(unit): unit.toSynodicMonth();
    case TimeTropicalMonth(unit): unit.toTropicalMonth();
    case TimeJulianYear(unit): unit.toJulianYear();
    case TimeGigasecond(unit): unit.toGigasecond();
    case TimeTerasecond(unit): unit.toTerasecond();
  }

  @:to public function toShake() : Shake return switch this {
    case TimePlankTimeUnit(unit): unit.toPlankTimeUnit();
    case TimeJiffyPhysics(unit): unit.toJiffyPhysics();
    case TimeSvedberg(unit): unit.toSvedberg();
    case TimePicosecond(unit): unit.toPicosecond();
    case TimeNanosecond(unit): unit.toNanosecond();
    case TimeShake(unit): unit.toShake();
    case TimeTick(unit): unit.toTick();
    case TimeMicrosecond(unit): unit.toMicrosecond();
    case TimeFourth(unit): unit.toFourth();
    case TimeMillisecond(unit): unit.toMillisecond();
    case TimeThird(unit): unit.toThird();
    case TimeSecond(unit): unit.toSecond();
    case TimeMinute(unit): unit.toMinute();
    case TimeKe(unit): unit.toKe();
    case TimeKilosecond(unit): unit.toKilosecond();
    case TimeHour(unit): unit.toHour();
    case TimeDay(unit): unit.toDay();
    case TimeWeek(unit): unit.toWeek();
    case TimeMegasecond(unit): unit.toMegasecond();
    case TimeFortnight(unit): unit.toFortnight();
    case TimeSynodicMonth(unit): unit.toSynodicMonth();
    case TimeTropicalMonth(unit): unit.toTropicalMonth();
    case TimeJulianYear(unit): unit.toJulianYear();
    case TimeGigasecond(unit): unit.toGigasecond();
    case TimeTerasecond(unit): unit.toTerasecond();
  }

  @:to public function toTick() : Tick return switch this {
    case TimePlankTimeUnit(unit): unit.toPlankTimeUnit();
    case TimeJiffyPhysics(unit): unit.toJiffyPhysics();
    case TimeSvedberg(unit): unit.toSvedberg();
    case TimePicosecond(unit): unit.toPicosecond();
    case TimeNanosecond(unit): unit.toNanosecond();
    case TimeShake(unit): unit.toShake();
    case TimeTick(unit): unit.toTick();
    case TimeMicrosecond(unit): unit.toMicrosecond();
    case TimeFourth(unit): unit.toFourth();
    case TimeMillisecond(unit): unit.toMillisecond();
    case TimeThird(unit): unit.toThird();
    case TimeSecond(unit): unit.toSecond();
    case TimeMinute(unit): unit.toMinute();
    case TimeKe(unit): unit.toKe();
    case TimeKilosecond(unit): unit.toKilosecond();
    case TimeHour(unit): unit.toHour();
    case TimeDay(unit): unit.toDay();
    case TimeWeek(unit): unit.toWeek();
    case TimeMegasecond(unit): unit.toMegasecond();
    case TimeFortnight(unit): unit.toFortnight();
    case TimeSynodicMonth(unit): unit.toSynodicMonth();
    case TimeTropicalMonth(unit): unit.toTropicalMonth();
    case TimeJulianYear(unit): unit.toJulianYear();
    case TimeGigasecond(unit): unit.toGigasecond();
    case TimeTerasecond(unit): unit.toTerasecond();
  }

  @:to public function toMicrosecond() : Microsecond return switch this {
    case TimePlankTimeUnit(unit): unit.toPlankTimeUnit();
    case TimeJiffyPhysics(unit): unit.toJiffyPhysics();
    case TimeSvedberg(unit): unit.toSvedberg();
    case TimePicosecond(unit): unit.toPicosecond();
    case TimeNanosecond(unit): unit.toNanosecond();
    case TimeShake(unit): unit.toShake();
    case TimeTick(unit): unit.toTick();
    case TimeMicrosecond(unit): unit.toMicrosecond();
    case TimeFourth(unit): unit.toFourth();
    case TimeMillisecond(unit): unit.toMillisecond();
    case TimeThird(unit): unit.toThird();
    case TimeSecond(unit): unit.toSecond();
    case TimeMinute(unit): unit.toMinute();
    case TimeKe(unit): unit.toKe();
    case TimeKilosecond(unit): unit.toKilosecond();
    case TimeHour(unit): unit.toHour();
    case TimeDay(unit): unit.toDay();
    case TimeWeek(unit): unit.toWeek();
    case TimeMegasecond(unit): unit.toMegasecond();
    case TimeFortnight(unit): unit.toFortnight();
    case TimeSynodicMonth(unit): unit.toSynodicMonth();
    case TimeTropicalMonth(unit): unit.toTropicalMonth();
    case TimeJulianYear(unit): unit.toJulianYear();
    case TimeGigasecond(unit): unit.toGigasecond();
    case TimeTerasecond(unit): unit.toTerasecond();
  }

  @:to public function toFourth() : Fourth return switch this {
    case TimePlankTimeUnit(unit): unit.toPlankTimeUnit();
    case TimeJiffyPhysics(unit): unit.toJiffyPhysics();
    case TimeSvedberg(unit): unit.toSvedberg();
    case TimePicosecond(unit): unit.toPicosecond();
    case TimeNanosecond(unit): unit.toNanosecond();
    case TimeShake(unit): unit.toShake();
    case TimeTick(unit): unit.toTick();
    case TimeMicrosecond(unit): unit.toMicrosecond();
    case TimeFourth(unit): unit.toFourth();
    case TimeMillisecond(unit): unit.toMillisecond();
    case TimeThird(unit): unit.toThird();
    case TimeSecond(unit): unit.toSecond();
    case TimeMinute(unit): unit.toMinute();
    case TimeKe(unit): unit.toKe();
    case TimeKilosecond(unit): unit.toKilosecond();
    case TimeHour(unit): unit.toHour();
    case TimeDay(unit): unit.toDay();
    case TimeWeek(unit): unit.toWeek();
    case TimeMegasecond(unit): unit.toMegasecond();
    case TimeFortnight(unit): unit.toFortnight();
    case TimeSynodicMonth(unit): unit.toSynodicMonth();
    case TimeTropicalMonth(unit): unit.toTropicalMonth();
    case TimeJulianYear(unit): unit.toJulianYear();
    case TimeGigasecond(unit): unit.toGigasecond();
    case TimeTerasecond(unit): unit.toTerasecond();
  }

  @:to public function toMillisecond() : Millisecond return switch this {
    case TimePlankTimeUnit(unit): unit.toPlankTimeUnit();
    case TimeJiffyPhysics(unit): unit.toJiffyPhysics();
    case TimeSvedberg(unit): unit.toSvedberg();
    case TimePicosecond(unit): unit.toPicosecond();
    case TimeNanosecond(unit): unit.toNanosecond();
    case TimeShake(unit): unit.toShake();
    case TimeTick(unit): unit.toTick();
    case TimeMicrosecond(unit): unit.toMicrosecond();
    case TimeFourth(unit): unit.toFourth();
    case TimeMillisecond(unit): unit.toMillisecond();
    case TimeThird(unit): unit.toThird();
    case TimeSecond(unit): unit.toSecond();
    case TimeMinute(unit): unit.toMinute();
    case TimeKe(unit): unit.toKe();
    case TimeKilosecond(unit): unit.toKilosecond();
    case TimeHour(unit): unit.toHour();
    case TimeDay(unit): unit.toDay();
    case TimeWeek(unit): unit.toWeek();
    case TimeMegasecond(unit): unit.toMegasecond();
    case TimeFortnight(unit): unit.toFortnight();
    case TimeSynodicMonth(unit): unit.toSynodicMonth();
    case TimeTropicalMonth(unit): unit.toTropicalMonth();
    case TimeJulianYear(unit): unit.toJulianYear();
    case TimeGigasecond(unit): unit.toGigasecond();
    case TimeTerasecond(unit): unit.toTerasecond();
  }

  @:to public function toThird() : Third return switch this {
    case TimePlankTimeUnit(unit): unit.toPlankTimeUnit();
    case TimeJiffyPhysics(unit): unit.toJiffyPhysics();
    case TimeSvedberg(unit): unit.toSvedberg();
    case TimePicosecond(unit): unit.toPicosecond();
    case TimeNanosecond(unit): unit.toNanosecond();
    case TimeShake(unit): unit.toShake();
    case TimeTick(unit): unit.toTick();
    case TimeMicrosecond(unit): unit.toMicrosecond();
    case TimeFourth(unit): unit.toFourth();
    case TimeMillisecond(unit): unit.toMillisecond();
    case TimeThird(unit): unit.toThird();
    case TimeSecond(unit): unit.toSecond();
    case TimeMinute(unit): unit.toMinute();
    case TimeKe(unit): unit.toKe();
    case TimeKilosecond(unit): unit.toKilosecond();
    case TimeHour(unit): unit.toHour();
    case TimeDay(unit): unit.toDay();
    case TimeWeek(unit): unit.toWeek();
    case TimeMegasecond(unit): unit.toMegasecond();
    case TimeFortnight(unit): unit.toFortnight();
    case TimeSynodicMonth(unit): unit.toSynodicMonth();
    case TimeTropicalMonth(unit): unit.toTropicalMonth();
    case TimeJulianYear(unit): unit.toJulianYear();
    case TimeGigasecond(unit): unit.toGigasecond();
    case TimeTerasecond(unit): unit.toTerasecond();
  }

  @:to public function toSecond() : Second return switch this {
    case TimePlankTimeUnit(unit): unit.toPlankTimeUnit();
    case TimeJiffyPhysics(unit): unit.toJiffyPhysics();
    case TimeSvedberg(unit): unit.toSvedberg();
    case TimePicosecond(unit): unit.toPicosecond();
    case TimeNanosecond(unit): unit.toNanosecond();
    case TimeShake(unit): unit.toShake();
    case TimeTick(unit): unit.toTick();
    case TimeMicrosecond(unit): unit.toMicrosecond();
    case TimeFourth(unit): unit.toFourth();
    case TimeMillisecond(unit): unit.toMillisecond();
    case TimeThird(unit): unit.toThird();
    case TimeSecond(unit): unit.toSecond();
    case TimeMinute(unit): unit.toMinute();
    case TimeKe(unit): unit.toKe();
    case TimeKilosecond(unit): unit.toKilosecond();
    case TimeHour(unit): unit.toHour();
    case TimeDay(unit): unit.toDay();
    case TimeWeek(unit): unit.toWeek();
    case TimeMegasecond(unit): unit.toMegasecond();
    case TimeFortnight(unit): unit.toFortnight();
    case TimeSynodicMonth(unit): unit.toSynodicMonth();
    case TimeTropicalMonth(unit): unit.toTropicalMonth();
    case TimeJulianYear(unit): unit.toJulianYear();
    case TimeGigasecond(unit): unit.toGigasecond();
    case TimeTerasecond(unit): unit.toTerasecond();
  }

  @:to public function toMinute() : Minute return switch this {
    case TimePlankTimeUnit(unit): unit.toPlankTimeUnit();
    case TimeJiffyPhysics(unit): unit.toJiffyPhysics();
    case TimeSvedberg(unit): unit.toSvedberg();
    case TimePicosecond(unit): unit.toPicosecond();
    case TimeNanosecond(unit): unit.toNanosecond();
    case TimeShake(unit): unit.toShake();
    case TimeTick(unit): unit.toTick();
    case TimeMicrosecond(unit): unit.toMicrosecond();
    case TimeFourth(unit): unit.toFourth();
    case TimeMillisecond(unit): unit.toMillisecond();
    case TimeThird(unit): unit.toThird();
    case TimeSecond(unit): unit.toSecond();
    case TimeMinute(unit): unit.toMinute();
    case TimeKe(unit): unit.toKe();
    case TimeKilosecond(unit): unit.toKilosecond();
    case TimeHour(unit): unit.toHour();
    case TimeDay(unit): unit.toDay();
    case TimeWeek(unit): unit.toWeek();
    case TimeMegasecond(unit): unit.toMegasecond();
    case TimeFortnight(unit): unit.toFortnight();
    case TimeSynodicMonth(unit): unit.toSynodicMonth();
    case TimeTropicalMonth(unit): unit.toTropicalMonth();
    case TimeJulianYear(unit): unit.toJulianYear();
    case TimeGigasecond(unit): unit.toGigasecond();
    case TimeTerasecond(unit): unit.toTerasecond();
  }

  @:to public function toKe() : Ke return switch this {
    case TimePlankTimeUnit(unit): unit.toPlankTimeUnit();
    case TimeJiffyPhysics(unit): unit.toJiffyPhysics();
    case TimeSvedberg(unit): unit.toSvedberg();
    case TimePicosecond(unit): unit.toPicosecond();
    case TimeNanosecond(unit): unit.toNanosecond();
    case TimeShake(unit): unit.toShake();
    case TimeTick(unit): unit.toTick();
    case TimeMicrosecond(unit): unit.toMicrosecond();
    case TimeFourth(unit): unit.toFourth();
    case TimeMillisecond(unit): unit.toMillisecond();
    case TimeThird(unit): unit.toThird();
    case TimeSecond(unit): unit.toSecond();
    case TimeMinute(unit): unit.toMinute();
    case TimeKe(unit): unit.toKe();
    case TimeKilosecond(unit): unit.toKilosecond();
    case TimeHour(unit): unit.toHour();
    case TimeDay(unit): unit.toDay();
    case TimeWeek(unit): unit.toWeek();
    case TimeMegasecond(unit): unit.toMegasecond();
    case TimeFortnight(unit): unit.toFortnight();
    case TimeSynodicMonth(unit): unit.toSynodicMonth();
    case TimeTropicalMonth(unit): unit.toTropicalMonth();
    case TimeJulianYear(unit): unit.toJulianYear();
    case TimeGigasecond(unit): unit.toGigasecond();
    case TimeTerasecond(unit): unit.toTerasecond();
  }

  @:to public function toKilosecond() : Kilosecond return switch this {
    case TimePlankTimeUnit(unit): unit.toPlankTimeUnit();
    case TimeJiffyPhysics(unit): unit.toJiffyPhysics();
    case TimeSvedberg(unit): unit.toSvedberg();
    case TimePicosecond(unit): unit.toPicosecond();
    case TimeNanosecond(unit): unit.toNanosecond();
    case TimeShake(unit): unit.toShake();
    case TimeTick(unit): unit.toTick();
    case TimeMicrosecond(unit): unit.toMicrosecond();
    case TimeFourth(unit): unit.toFourth();
    case TimeMillisecond(unit): unit.toMillisecond();
    case TimeThird(unit): unit.toThird();
    case TimeSecond(unit): unit.toSecond();
    case TimeMinute(unit): unit.toMinute();
    case TimeKe(unit): unit.toKe();
    case TimeKilosecond(unit): unit.toKilosecond();
    case TimeHour(unit): unit.toHour();
    case TimeDay(unit): unit.toDay();
    case TimeWeek(unit): unit.toWeek();
    case TimeMegasecond(unit): unit.toMegasecond();
    case TimeFortnight(unit): unit.toFortnight();
    case TimeSynodicMonth(unit): unit.toSynodicMonth();
    case TimeTropicalMonth(unit): unit.toTropicalMonth();
    case TimeJulianYear(unit): unit.toJulianYear();
    case TimeGigasecond(unit): unit.toGigasecond();
    case TimeTerasecond(unit): unit.toTerasecond();
  }

  @:to public function toHour() : Hour return switch this {
    case TimePlankTimeUnit(unit): unit.toPlankTimeUnit();
    case TimeJiffyPhysics(unit): unit.toJiffyPhysics();
    case TimeSvedberg(unit): unit.toSvedberg();
    case TimePicosecond(unit): unit.toPicosecond();
    case TimeNanosecond(unit): unit.toNanosecond();
    case TimeShake(unit): unit.toShake();
    case TimeTick(unit): unit.toTick();
    case TimeMicrosecond(unit): unit.toMicrosecond();
    case TimeFourth(unit): unit.toFourth();
    case TimeMillisecond(unit): unit.toMillisecond();
    case TimeThird(unit): unit.toThird();
    case TimeSecond(unit): unit.toSecond();
    case TimeMinute(unit): unit.toMinute();
    case TimeKe(unit): unit.toKe();
    case TimeKilosecond(unit): unit.toKilosecond();
    case TimeHour(unit): unit.toHour();
    case TimeDay(unit): unit.toDay();
    case TimeWeek(unit): unit.toWeek();
    case TimeMegasecond(unit): unit.toMegasecond();
    case TimeFortnight(unit): unit.toFortnight();
    case TimeSynodicMonth(unit): unit.toSynodicMonth();
    case TimeTropicalMonth(unit): unit.toTropicalMonth();
    case TimeJulianYear(unit): unit.toJulianYear();
    case TimeGigasecond(unit): unit.toGigasecond();
    case TimeTerasecond(unit): unit.toTerasecond();
  }

  @:to public function toDay() : Day return switch this {
    case TimePlankTimeUnit(unit): unit.toPlankTimeUnit();
    case TimeJiffyPhysics(unit): unit.toJiffyPhysics();
    case TimeSvedberg(unit): unit.toSvedberg();
    case TimePicosecond(unit): unit.toPicosecond();
    case TimeNanosecond(unit): unit.toNanosecond();
    case TimeShake(unit): unit.toShake();
    case TimeTick(unit): unit.toTick();
    case TimeMicrosecond(unit): unit.toMicrosecond();
    case TimeFourth(unit): unit.toFourth();
    case TimeMillisecond(unit): unit.toMillisecond();
    case TimeThird(unit): unit.toThird();
    case TimeSecond(unit): unit.toSecond();
    case TimeMinute(unit): unit.toMinute();
    case TimeKe(unit): unit.toKe();
    case TimeKilosecond(unit): unit.toKilosecond();
    case TimeHour(unit): unit.toHour();
    case TimeDay(unit): unit.toDay();
    case TimeWeek(unit): unit.toWeek();
    case TimeMegasecond(unit): unit.toMegasecond();
    case TimeFortnight(unit): unit.toFortnight();
    case TimeSynodicMonth(unit): unit.toSynodicMonth();
    case TimeTropicalMonth(unit): unit.toTropicalMonth();
    case TimeJulianYear(unit): unit.toJulianYear();
    case TimeGigasecond(unit): unit.toGigasecond();
    case TimeTerasecond(unit): unit.toTerasecond();
  }

  @:to public function toWeek() : Week return switch this {
    case TimePlankTimeUnit(unit): unit.toPlankTimeUnit();
    case TimeJiffyPhysics(unit): unit.toJiffyPhysics();
    case TimeSvedberg(unit): unit.toSvedberg();
    case TimePicosecond(unit): unit.toPicosecond();
    case TimeNanosecond(unit): unit.toNanosecond();
    case TimeShake(unit): unit.toShake();
    case TimeTick(unit): unit.toTick();
    case TimeMicrosecond(unit): unit.toMicrosecond();
    case TimeFourth(unit): unit.toFourth();
    case TimeMillisecond(unit): unit.toMillisecond();
    case TimeThird(unit): unit.toThird();
    case TimeSecond(unit): unit.toSecond();
    case TimeMinute(unit): unit.toMinute();
    case TimeKe(unit): unit.toKe();
    case TimeKilosecond(unit): unit.toKilosecond();
    case TimeHour(unit): unit.toHour();
    case TimeDay(unit): unit.toDay();
    case TimeWeek(unit): unit.toWeek();
    case TimeMegasecond(unit): unit.toMegasecond();
    case TimeFortnight(unit): unit.toFortnight();
    case TimeSynodicMonth(unit): unit.toSynodicMonth();
    case TimeTropicalMonth(unit): unit.toTropicalMonth();
    case TimeJulianYear(unit): unit.toJulianYear();
    case TimeGigasecond(unit): unit.toGigasecond();
    case TimeTerasecond(unit): unit.toTerasecond();
  }

  @:to public function toMegasecond() : Megasecond return switch this {
    case TimePlankTimeUnit(unit): unit.toPlankTimeUnit();
    case TimeJiffyPhysics(unit): unit.toJiffyPhysics();
    case TimeSvedberg(unit): unit.toSvedberg();
    case TimePicosecond(unit): unit.toPicosecond();
    case TimeNanosecond(unit): unit.toNanosecond();
    case TimeShake(unit): unit.toShake();
    case TimeTick(unit): unit.toTick();
    case TimeMicrosecond(unit): unit.toMicrosecond();
    case TimeFourth(unit): unit.toFourth();
    case TimeMillisecond(unit): unit.toMillisecond();
    case TimeThird(unit): unit.toThird();
    case TimeSecond(unit): unit.toSecond();
    case TimeMinute(unit): unit.toMinute();
    case TimeKe(unit): unit.toKe();
    case TimeKilosecond(unit): unit.toKilosecond();
    case TimeHour(unit): unit.toHour();
    case TimeDay(unit): unit.toDay();
    case TimeWeek(unit): unit.toWeek();
    case TimeMegasecond(unit): unit.toMegasecond();
    case TimeFortnight(unit): unit.toFortnight();
    case TimeSynodicMonth(unit): unit.toSynodicMonth();
    case TimeTropicalMonth(unit): unit.toTropicalMonth();
    case TimeJulianYear(unit): unit.toJulianYear();
    case TimeGigasecond(unit): unit.toGigasecond();
    case TimeTerasecond(unit): unit.toTerasecond();
  }

  @:to public function toFortnight() : Fortnight return switch this {
    case TimePlankTimeUnit(unit): unit.toPlankTimeUnit();
    case TimeJiffyPhysics(unit): unit.toJiffyPhysics();
    case TimeSvedberg(unit): unit.toSvedberg();
    case TimePicosecond(unit): unit.toPicosecond();
    case TimeNanosecond(unit): unit.toNanosecond();
    case TimeShake(unit): unit.toShake();
    case TimeTick(unit): unit.toTick();
    case TimeMicrosecond(unit): unit.toMicrosecond();
    case TimeFourth(unit): unit.toFourth();
    case TimeMillisecond(unit): unit.toMillisecond();
    case TimeThird(unit): unit.toThird();
    case TimeSecond(unit): unit.toSecond();
    case TimeMinute(unit): unit.toMinute();
    case TimeKe(unit): unit.toKe();
    case TimeKilosecond(unit): unit.toKilosecond();
    case TimeHour(unit): unit.toHour();
    case TimeDay(unit): unit.toDay();
    case TimeWeek(unit): unit.toWeek();
    case TimeMegasecond(unit): unit.toMegasecond();
    case TimeFortnight(unit): unit.toFortnight();
    case TimeSynodicMonth(unit): unit.toSynodicMonth();
    case TimeTropicalMonth(unit): unit.toTropicalMonth();
    case TimeJulianYear(unit): unit.toJulianYear();
    case TimeGigasecond(unit): unit.toGigasecond();
    case TimeTerasecond(unit): unit.toTerasecond();
  }

  @:to public function toSynodicMonth() : SynodicMonth return switch this {
    case TimePlankTimeUnit(unit): unit.toPlankTimeUnit();
    case TimeJiffyPhysics(unit): unit.toJiffyPhysics();
    case TimeSvedberg(unit): unit.toSvedberg();
    case TimePicosecond(unit): unit.toPicosecond();
    case TimeNanosecond(unit): unit.toNanosecond();
    case TimeShake(unit): unit.toShake();
    case TimeTick(unit): unit.toTick();
    case TimeMicrosecond(unit): unit.toMicrosecond();
    case TimeFourth(unit): unit.toFourth();
    case TimeMillisecond(unit): unit.toMillisecond();
    case TimeThird(unit): unit.toThird();
    case TimeSecond(unit): unit.toSecond();
    case TimeMinute(unit): unit.toMinute();
    case TimeKe(unit): unit.toKe();
    case TimeKilosecond(unit): unit.toKilosecond();
    case TimeHour(unit): unit.toHour();
    case TimeDay(unit): unit.toDay();
    case TimeWeek(unit): unit.toWeek();
    case TimeMegasecond(unit): unit.toMegasecond();
    case TimeFortnight(unit): unit.toFortnight();
    case TimeSynodicMonth(unit): unit.toSynodicMonth();
    case TimeTropicalMonth(unit): unit.toTropicalMonth();
    case TimeJulianYear(unit): unit.toJulianYear();
    case TimeGigasecond(unit): unit.toGigasecond();
    case TimeTerasecond(unit): unit.toTerasecond();
  }

  @:to public function toTropicalMonth() : TropicalMonth return switch this {
    case TimePlankTimeUnit(unit): unit.toPlankTimeUnit();
    case TimeJiffyPhysics(unit): unit.toJiffyPhysics();
    case TimeSvedberg(unit): unit.toSvedberg();
    case TimePicosecond(unit): unit.toPicosecond();
    case TimeNanosecond(unit): unit.toNanosecond();
    case TimeShake(unit): unit.toShake();
    case TimeTick(unit): unit.toTick();
    case TimeMicrosecond(unit): unit.toMicrosecond();
    case TimeFourth(unit): unit.toFourth();
    case TimeMillisecond(unit): unit.toMillisecond();
    case TimeThird(unit): unit.toThird();
    case TimeSecond(unit): unit.toSecond();
    case TimeMinute(unit): unit.toMinute();
    case TimeKe(unit): unit.toKe();
    case TimeKilosecond(unit): unit.toKilosecond();
    case TimeHour(unit): unit.toHour();
    case TimeDay(unit): unit.toDay();
    case TimeWeek(unit): unit.toWeek();
    case TimeMegasecond(unit): unit.toMegasecond();
    case TimeFortnight(unit): unit.toFortnight();
    case TimeSynodicMonth(unit): unit.toSynodicMonth();
    case TimeTropicalMonth(unit): unit.toTropicalMonth();
    case TimeJulianYear(unit): unit.toJulianYear();
    case TimeGigasecond(unit): unit.toGigasecond();
    case TimeTerasecond(unit): unit.toTerasecond();
  }

  @:to public function toJulianYear() : JulianYear return switch this {
    case TimePlankTimeUnit(unit): unit.toPlankTimeUnit();
    case TimeJiffyPhysics(unit): unit.toJiffyPhysics();
    case TimeSvedberg(unit): unit.toSvedberg();
    case TimePicosecond(unit): unit.toPicosecond();
    case TimeNanosecond(unit): unit.toNanosecond();
    case TimeShake(unit): unit.toShake();
    case TimeTick(unit): unit.toTick();
    case TimeMicrosecond(unit): unit.toMicrosecond();
    case TimeFourth(unit): unit.toFourth();
    case TimeMillisecond(unit): unit.toMillisecond();
    case TimeThird(unit): unit.toThird();
    case TimeSecond(unit): unit.toSecond();
    case TimeMinute(unit): unit.toMinute();
    case TimeKe(unit): unit.toKe();
    case TimeKilosecond(unit): unit.toKilosecond();
    case TimeHour(unit): unit.toHour();
    case TimeDay(unit): unit.toDay();
    case TimeWeek(unit): unit.toWeek();
    case TimeMegasecond(unit): unit.toMegasecond();
    case TimeFortnight(unit): unit.toFortnight();
    case TimeSynodicMonth(unit): unit.toSynodicMonth();
    case TimeTropicalMonth(unit): unit.toTropicalMonth();
    case TimeJulianYear(unit): unit.toJulianYear();
    case TimeGigasecond(unit): unit.toGigasecond();
    case TimeTerasecond(unit): unit.toTerasecond();
  }

  @:to public function toGigasecond() : Gigasecond return switch this {
    case TimePlankTimeUnit(unit): unit.toPlankTimeUnit();
    case TimeJiffyPhysics(unit): unit.toJiffyPhysics();
    case TimeSvedberg(unit): unit.toSvedberg();
    case TimePicosecond(unit): unit.toPicosecond();
    case TimeNanosecond(unit): unit.toNanosecond();
    case TimeShake(unit): unit.toShake();
    case TimeTick(unit): unit.toTick();
    case TimeMicrosecond(unit): unit.toMicrosecond();
    case TimeFourth(unit): unit.toFourth();
    case TimeMillisecond(unit): unit.toMillisecond();
    case TimeThird(unit): unit.toThird();
    case TimeSecond(unit): unit.toSecond();
    case TimeMinute(unit): unit.toMinute();
    case TimeKe(unit): unit.toKe();
    case TimeKilosecond(unit): unit.toKilosecond();
    case TimeHour(unit): unit.toHour();
    case TimeDay(unit): unit.toDay();
    case TimeWeek(unit): unit.toWeek();
    case TimeMegasecond(unit): unit.toMegasecond();
    case TimeFortnight(unit): unit.toFortnight();
    case TimeSynodicMonth(unit): unit.toSynodicMonth();
    case TimeTropicalMonth(unit): unit.toTropicalMonth();
    case TimeJulianYear(unit): unit.toJulianYear();
    case TimeGigasecond(unit): unit.toGigasecond();
    case TimeTerasecond(unit): unit.toTerasecond();
  }

  @:to public function toTerasecond() : Terasecond return switch this {
    case TimePlankTimeUnit(unit): unit.toPlankTimeUnit();
    case TimeJiffyPhysics(unit): unit.toJiffyPhysics();
    case TimeSvedberg(unit): unit.toSvedberg();
    case TimePicosecond(unit): unit.toPicosecond();
    case TimeNanosecond(unit): unit.toNanosecond();
    case TimeShake(unit): unit.toShake();
    case TimeTick(unit): unit.toTick();
    case TimeMicrosecond(unit): unit.toMicrosecond();
    case TimeFourth(unit): unit.toFourth();
    case TimeMillisecond(unit): unit.toMillisecond();
    case TimeThird(unit): unit.toThird();
    case TimeSecond(unit): unit.toSecond();
    case TimeMinute(unit): unit.toMinute();
    case TimeKe(unit): unit.toKe();
    case TimeKilosecond(unit): unit.toKilosecond();
    case TimeHour(unit): unit.toHour();
    case TimeDay(unit): unit.toDay();
    case TimeWeek(unit): unit.toWeek();
    case TimeMegasecond(unit): unit.toMegasecond();
    case TimeFortnight(unit): unit.toFortnight();
    case TimeSynodicMonth(unit): unit.toSynodicMonth();
    case TimeTropicalMonth(unit): unit.toTropicalMonth();
    case TimeJulianYear(unit): unit.toJulianYear();
    case TimeGigasecond(unit): unit.toGigasecond();
    case TimeTerasecond(unit): unit.toTerasecond();
  }

  function get_value() : Decimal
    return getInfo().value;

  function get_symbol() : String
    return getInfo().symbol;

  public function toString() {
    var info = getInfo();
    return info.value.toString() + info.symbol;
  }

  @:from static public function fromTime(time : thx.Time) : Terasecond
    return Tick.fromDecimal(thx.Decimal.fromInt64(time.ticks));

  @:to public function toTime() : thx.Time
    return new thx.Time(toTick().toDecimal().toInt64());
}

enum TimeImpl {
  TimePlankTimeUnit(unit : PlankTimeUnit);
  TimeJiffyPhysics(unit : JiffyPhysics);
  TimeSvedberg(unit : Svedberg);
  TimePicosecond(unit : Picosecond);
  TimeNanosecond(unit : Nanosecond);
  TimeShake(unit : Shake);
  TimeTick(unit : Tick);
  TimeMicrosecond(unit : Microsecond);
  TimeFourth(unit : Fourth);
  TimeMillisecond(unit : Millisecond);
  TimeThird(unit : Third);
  TimeSecond(unit : Second);
  TimeMinute(unit : Minute);
  TimeKe(unit : Ke);
  TimeKilosecond(unit : Kilosecond);
  TimeHour(unit : Hour);
  TimeDay(unit : Day);
  TimeWeek(unit : Week);
  TimeMegasecond(unit : Megasecond);
  TimeFortnight(unit : Fortnight);
  TimeSynodicMonth(unit : SynodicMonth);
  TimeTropicalMonth(unit : TropicalMonth);
  TimeJulianYear(unit : JulianYear);
  TimeGigasecond(unit : Gigasecond);
  TimeTerasecond(unit : Terasecond);
}
