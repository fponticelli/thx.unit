package thx.unit.time;

import thx.core.Floats;

// TODO parse string

abstract Ke(Float) {
  @:from inline static public function floatToKe(value : Float) : Ke
    return new Ke(value);

  function new(value : Float)
    this = value;
  @:op( -A ) inline public function negate() : Ke
    return -this;
  @:op( A+B) inline public function add(other : Ke) : Ke
    return this + other.toFloat();
  @:op( A-B) inline public function subtract(other : Ke) : Ke
    return this - other.toFloat();
  @:op( A*B) inline public function multiply(other : Float) : Ke
    return this * other;
  @:op( A/B) inline public function divide(other : Float) : Ke
    return this / other;
  @:op( A%B) inline public function modulo(other : Float) : Ke
    return this % other;
  @:op(A==B) inline public function equal(other : Ke) : Bool
    return this == other;
  public function nearEqual(other : Ke) : Bool
    return Floats.nearEqual(this, other.toFloat());
  @:op(A!=B) inline public function notEqual(other : Ke) : Bool
    return this != other;
  @:op( A<B) inline public function less(other : Ke) : Bool
    return this < other.toFloat();
  @:op(A<=B) inline public function lessEqual(other : Ke) : Bool
    return this <= other.toFloat();
  @:op( A>B) inline public function more(other : Ke) : Bool
    return this > other.toFloat();
  @:op(A>=B) inline public function moreEqual(other : Ke) : Bool
    return this >= other.toFloat();

  inline public function toFloat() : Float
    return this;

  @:to inline public function toPlankTimeUnit() : PlankTimeUnit
    return this * 1.60296846011132e+46;
  @:to inline public function toJiffyPhysics() : JiffyPhysics
    return this * 2.88e+26;
  @:to inline public function toSvedberg() : Svedberg
    return this * 864000000000000;
  @:to inline public function toPicosecond() : Picosecond
    return this * 86400000000000;
  @:to inline public function toNanosecond() : Nanosecond
    return this * 86400000000;
  @:to inline public function toShake() : Shake
    return this * 8640000000;
  @:to inline public function toMicrosecond() : Microsecond
    return this * 86400000;
  @:to inline public function toFourth() : Fourth
    return this * 3110399.99997512;
  @:to inline public function toMillisecond() : Millisecond
    return this * 864000;
  @:to inline public function toThird() : Third
    return this * 51839.9999999896;
  @:to inline public function toSecond() : Second
    return this * 864;
  @:to inline public function toMinute() : Minute
    return this * 14.4;
  @:to inline public function toKilosecond() : Kilosecond
    return this * 0.864;
  @:to inline public function toHour() : Hour
    return this * 0.24;
  @:to inline public function toDay() : Day
    return this * 0.01;
  @:to inline public function toWeek() : Week
    return this * 0.00142857142857143;
  @:to inline public function toMegasecond() : Megasecond
    return this * 0.000864;
  @:to inline public function toFortnight() : Fortnight
    return this * 0.000714285714285714;
  @:to inline public function toSynodicMonth() : SynodicMonth
    return this * 0.0003386319067787;
  @:to inline public function toTropicalMonth() : TropicalMonth
    return this * 0.000366011043285198;
  @:to inline public function toJulianYear() : JulianYear
    return this * 2.7378507871321e-05;
  @:to inline public function toGigasecond() : Gigasecond
    return this * 8.64e-07;
  @:to inline public function toTerasecond() : Terasecond
    return this * 8.64e-10;

  @:to inline public function toString() : String
    return this + symbol;

  public static inline var symbol : String = "ke";
}