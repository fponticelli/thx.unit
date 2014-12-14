package thx.unit.time;

import thx.core.Floats;

// TODO parse string

abstract Day(Float) {
  @:from inline static public function floatToDay(value : Float) : Day
    return new Day(value);

  function new(value : Float)
    this = value;

  inline public function abs() : Day
    return Math.abs(this);

  inline public function min(other : Day) : Day
    return Math.min(this, other.toFloat());

  inline public function max(other : Day) : Day
    return Math.max(this, other.toFloat());

  @:op( -A ) inline public function negate() : Day
    return -this;
  @:op( A+B) inline public function add(other : Day) : Day
    return this + other.toFloat();
  @:op( A-B) inline public function subtract(other : Day) : Day
    return this - other.toFloat();
  @:op( A*B) inline public function multiply(other : Float) : Day
    return this * other;
  @:op( A/B) inline public function divide(other : Float) : Day
    return this / other;
  @:op( A%B) inline public function modulo(other : Float) : Day
    return this % other;
  @:op(A==B) inline public function equal(other : Day) : Bool
    return this == other;
  public function nearEquals(other : Day) : Bool
    return Floats.nearEquals(this, other.toFloat());
  @:op(A!=B) inline public function notEqual(other : Day) : Bool
    return this != other;
  @:op( A<B) inline public function less(other : Day) : Bool
    return this < other.toFloat();
  @:op(A<=B) inline public function lessEqual(other : Day) : Bool
    return this <= other.toFloat();
  @:op( A>B) inline public function more(other : Day) : Bool
    return this > other.toFloat();
  @:op(A>=B) inline public function moreEqual(other : Day) : Bool
    return this >= other.toFloat();

  @:to inline public function toFloat() : Float
    return this;

  @:to inline public function toPlankTimeUnit() : PlankTimeUnit
    return this * 1.60296846011132e+48;
  @:to inline public function toJiffyPhysics() : JiffyPhysics
    return this * 2.88e+28;
  @:to inline public function toSvedberg() : Svedberg
    return this * 8.64e+16;
  @:to inline public function toPicosecond() : Picosecond
    return this * 8.64e+15;
  @:to inline public function toNanosecond() : Nanosecond
    return this * 8640000000000;
  @:to inline public function toShake() : Shake
    return this * 864000000000;
  @:to inline public function toMicrosecond() : Microsecond
    return this * 8640000000;
  @:to inline public function toFourth() : Fourth
    return this * 311039999.997512;
  @:to inline public function toMillisecond() : Millisecond
    return this * 86400000;
  @:to inline public function toThird() : Third
    return this * 5183999.99999896;
  @:to inline public function toSecond() : Second
    return this * 86400;
  @:to inline public function toMinute() : Minute
    return this * 1440;
  @:to inline public function toKe() : Ke
    return this * 100;
  @:to inline public function toKilosecond() : Kilosecond
    return this * 86.4;
  @:to inline public function toHour() : Hour
    return this * 24;
  @:to inline public function toWeek() : Week
    return this * 0.142857142857143;
  @:to inline public function toMegasecond() : Megasecond
    return this * 0.0864;
  @:to inline public function toFortnight() : Fortnight
    return this * 0.0714285714285714;
  @:to inline public function toSynodicMonth() : SynodicMonth
    return this * 0.03386319067787;
  @:to inline public function toTropicalMonth() : TropicalMonth
    return this * 0.0366011043285198;
  @:to inline public function toJulianYear() : JulianYear
    return this * 0.0027378507871321;
  @:to inline public function toGigasecond() : Gigasecond
    return this * 8.64e-05;
  @:to inline public function toTerasecond() : Terasecond
    return this * 8.64e-08;

  @:to inline public function toString() : String
    return this + symbol;

  public static inline var symbol : String = "day";
}