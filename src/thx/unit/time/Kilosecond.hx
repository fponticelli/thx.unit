package thx.unit.time;

import thx.core.Floats;

// TODO parse string

abstract Kilosecond(Float) {
  @:from inline static public function floatToKilosecond(value : Float) : Kilosecond
    return new Kilosecond(value);

  function new(value : Float)
    this = value;
  @:op( -A ) inline public function negate() : Kilosecond
    return -this;
  @:op( A+B) inline public function add(other : Kilosecond) : Kilosecond
    return this + other.toFloat();
  @:op( A-B) inline public function subtract(other : Kilosecond) : Kilosecond
    return this - other.toFloat();
  @:op( A*B) inline public function multiply(other : Float) : Kilosecond
    return this * other;
  @:op( A/B) inline public function divide(other : Float) : Kilosecond
    return this / other;
  @:op( A%B) inline public function modulo(other : Float) : Kilosecond
    return this % other;
  @:op(A==B) inline public function equal(other : Kilosecond) : Bool
    return this == other;
  public function nearEqual(other : Kilosecond) : Bool
    return Floats.nearEqual(this, other.toFloat());
  @:op(A!=B) inline public function notEqual(other : Kilosecond) : Bool
    return this != other;
  @:op( A<B) inline public function less(other : Kilosecond) : Bool
    return this < other.toFloat();
  @:op(A<=B) inline public function lessEqual(other : Kilosecond) : Bool
    return this <= other.toFloat();
  @:op( A>B) inline public function more(other : Kilosecond) : Bool
    return this > other.toFloat();
  @:op(A>=B) inline public function moreEqual(other : Kilosecond) : Bool
    return this >= other.toFloat();

  @:to inline public function toFloat() : Float
    return this;

  @:to inline public function toPlankTimeUnit() : PlankTimeUnit
    return this * 1.85528756957328e+46;
  @:to inline public function toJiffyPhysics() : JiffyPhysics
    return this * 3.33333333333333e+26;
  @:to inline public function toSvedberg() : Svedberg
    return this * 1e+15;
  @:to inline public function toPicosecond() : Picosecond
    return this * 100000000000000;
  @:to inline public function toNanosecond() : Nanosecond
    return this * 100000000000;
  @:to inline public function toShake() : Shake
    return this * 10000000000;
  @:to inline public function toMicrosecond() : Microsecond
    return this * 100000000;
  @:to inline public function toFourth() : Fourth
    return this * 3599999.9999712;
  @:to inline public function toMillisecond() : Millisecond
    return this * 1000000;
  @:to inline public function toThird() : Third
    return this * 59999.999999988;
  @:to inline public function toSecond() : Second
    return this * 1000;
  @:to inline public function toMinute() : Minute
    return this * 16.6666666666667;
  @:to inline public function toKe() : Ke
    return this * 1.15740740740741;
  @:to inline public function toHour() : Hour
    return this * 0.277777777777778;
  @:to inline public function toDay() : Day
    return this * 0.0115740740740741;
  @:to inline public function toWeek() : Week
    return this * 0.00165343915343915;
  @:to inline public function toMegasecond() : Megasecond
    return this * 0.001;
  @:to inline public function toFortnight() : Fortnight
    return this * 0.000826719576719577;
  @:to inline public function toSynodicMonth() : SynodicMonth
    return this * 0.000391935077290162;
  @:to inline public function toTropicalMonth() : TropicalMonth
    return this * 0.000423623892691201;
  @:to inline public function toJulianYear() : JulianYear
    return this * 3.16880878140289e-05;
  @:to inline public function toGigasecond() : Gigasecond
    return this * 1e-06;
  @:to inline public function toTerasecond() : Terasecond
    return this * 1e-09;

  @:to inline public function toString() : String
    return this + symbol;

  public static inline var symbol : String = "ks";
}