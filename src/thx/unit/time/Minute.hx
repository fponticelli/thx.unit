package thx.unit.time;

import thx.core.Floats;

// TODO parse string

abstract Minute(Float) {
  @:from inline static public function floatToMinute(value : Float) : Minute
    return new Minute(value);

  function new(value : Float)
    this = value;
  @:op( -A ) inline public function negate() : Minute
    return -this;
  @:op( A+B) inline public function add(other : Minute) : Minute
    return this + other.toFloat();
  @:op( A-B) inline public function subtract(other : Minute) : Minute
    return this - other.toFloat();
  @:op( A*B) inline public function multiply(other : Float) : Minute
    return this * other;
  @:op( A/B) inline public function divide(other : Float) : Minute
    return this / other;
  @:op( A%B) inline public function modulo(other : Float) : Minute
    return this % other;
  @:op(A==B) inline public function equal(other : Minute) : Bool
    return this == other;
  public function nearEquals(other : Minute) : Bool
    return Floats.nearEquals(this, other.toFloat());
  @:op(A!=B) inline public function notEqual(other : Minute) : Bool
    return this != other;
  @:op( A<B) inline public function less(other : Minute) : Bool
    return this < other.toFloat();
  @:op(A<=B) inline public function lessEqual(other : Minute) : Bool
    return this <= other.toFloat();
  @:op( A>B) inline public function more(other : Minute) : Bool
    return this > other.toFloat();
  @:op(A>=B) inline public function moreEqual(other : Minute) : Bool
    return this >= other.toFloat();

  @:to inline public function toFloat() : Float
    return this;

  @:to inline public function toPlankTimeUnit() : PlankTimeUnit
    return this * 1.11317254174397e+45;
  @:to inline public function toJiffyPhysics() : JiffyPhysics
    return this * 2e+25;
  @:to inline public function toSvedberg() : Svedberg
    return this * 60000000000000;
  @:to inline public function toPicosecond() : Picosecond
    return this * 6000000000000;
  @:to inline public function toNanosecond() : Nanosecond
    return this * 6000000000;
  @:to inline public function toShake() : Shake
    return this * 600000000;
  @:to inline public function toMicrosecond() : Microsecond
    return this * 6000000;
  @:to inline public function toFourth() : Fourth
    return this * 215999.999998272;
  @:to inline public function toMillisecond() : Millisecond
    return this * 60000;
  @:to inline public function toThird() : Third
    return this * 3599.99999999928;
  @:to inline public function toSecond() : Second
    return this * 60;
  @:to inline public function toKe() : Ke
    return this * 0.0694444444444444;
  @:to inline public function toKilosecond() : Kilosecond
    return this * 0.06;
  @:to inline public function toHour() : Hour
    return this * 0.0166666666666667;
  @:to inline public function toDay() : Day
    return this * 0.000694444444444444;
  @:to inline public function toWeek() : Week
    return this * 9.92063492063492e-05;
  @:to inline public function toMegasecond() : Megasecond
    return this * 6e-05;
  @:to inline public function toFortnight() : Fortnight
    return this * 4.96031746031746e-05;
  @:to inline public function toSynodicMonth() : SynodicMonth
    return this * 2.35161046374097e-05;
  @:to inline public function toTropicalMonth() : TropicalMonth
    return this * 2.54174335614721e-05;
  @:to inline public function toJulianYear() : JulianYear
    return this * 1.90128526884174e-06;
  @:to inline public function toGigasecond() : Gigasecond
    return this * 6e-08;
  @:to inline public function toTerasecond() : Terasecond
    return this * 6e-11;

  @:to inline public function toString() : String
    return this + symbol;

  public static inline var symbol : String = "min";
}