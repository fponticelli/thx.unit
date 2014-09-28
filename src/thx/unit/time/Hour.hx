package thx.unit.time;

import thx.core.Floats;

// TODO parse string

abstract Hour(Float) {
  @:from inline static public function floatToHour(value : Float) : Hour
    return new Hour(value);

  function new(value : Float)
    this = value;
  @:op( -A ) inline public function negate() : Hour
    return -this;
  @:op( A+B) inline public function add(other : Hour) : Hour
    return this + other.toFloat();
  @:op( A-B) inline public function subtract(other : Hour) : Hour
    return this - other.toFloat();
  @:op( A*B) inline public function multiply(other : Float) : Hour
    return this * other;
  @:op( A/B) inline public function divide(other : Float) : Hour
    return this / other;
  @:op( A%B) inline public function modulo(other : Float) : Hour
    return this % other;
  @:op(A==B) inline public function equal(other : Hour) : Bool
    return this == other;
  public function nearEquals(other : Hour) : Bool
    return Floats.nearEquals(this, other.toFloat());
  @:op(A!=B) inline public function notEqual(other : Hour) : Bool
    return this != other;
  @:op( A<B) inline public function less(other : Hour) : Bool
    return this < other.toFloat();
  @:op(A<=B) inline public function lessEqual(other : Hour) : Bool
    return this <= other.toFloat();
  @:op( A>B) inline public function more(other : Hour) : Bool
    return this > other.toFloat();
  @:op(A>=B) inline public function moreEqual(other : Hour) : Bool
    return this >= other.toFloat();

  @:to inline public function toFloat() : Float
    return this;

  @:to inline public function toPlankTimeUnit() : PlankTimeUnit
    return this * 6.67903525046382e+46;
  @:to inline public function toJiffyPhysics() : JiffyPhysics
    return this * 1.2e+27;
  @:to inline public function toSvedberg() : Svedberg
    return this * 3.6e+15;
  @:to inline public function toPicosecond() : Picosecond
    return this * 360000000000000;
  @:to inline public function toNanosecond() : Nanosecond
    return this * 360000000000;
  @:to inline public function toShake() : Shake
    return this * 36000000000;
  @:to inline public function toMicrosecond() : Microsecond
    return this * 360000000;
  @:to inline public function toFourth() : Fourth
    return this * 12959999.9998963;
  @:to inline public function toMillisecond() : Millisecond
    return this * 3600000;
  @:to inline public function toThird() : Third
    return this * 215999.999999957;
  @:to inline public function toSecond() : Second
    return this * 3600;
  @:to inline public function toMinute() : Minute
    return this * 60;
  @:to inline public function toKe() : Ke
    return this * 4.16666666666667;
  @:to inline public function toKilosecond() : Kilosecond
    return this * 3.6;
  @:to inline public function toDay() : Day
    return this * 0.0416666666666667;
  @:to inline public function toWeek() : Week
    return this * 0.00595238095238095;
  @:to inline public function toMegasecond() : Megasecond
    return this * 0.0036;
  @:to inline public function toFortnight() : Fortnight
    return this * 0.00297619047619048;
  @:to inline public function toSynodicMonth() : SynodicMonth
    return this * 0.00141096627824458;
  @:to inline public function toTropicalMonth() : TropicalMonth
    return this * 0.00152504601368832;
  @:to inline public function toJulianYear() : JulianYear
    return this * 0.000114077116130504;
  @:to inline public function toGigasecond() : Gigasecond
    return this * 3.6e-06;
  @:to inline public function toTerasecond() : Terasecond
    return this * 3.6e-09;

  @:to inline public function toString() : String
    return this + symbol;

  public static inline var symbol : String = "h";
}