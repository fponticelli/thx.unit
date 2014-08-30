package thx.unit.time;

import thx.core.Floats;

// TODO parse string

abstract Shake(Float) {
  @:from inline static public function floatToShake(value : Float) : Shake
    return new Shake(value);

  function new(value : Float)
    this = value;
  @:op( -A ) inline public function negate() : Shake
    return -this;
  @:op( A+B) inline public function add(other : Shake) : Shake
    return this + other.toFloat();
  @:op( A-B) inline public function subtract(other : Shake) : Shake
    return this - other.toFloat();
  @:op( A*B) inline public function multiply(other : Float) : Shake
    return this * other;
  @:op( A/B) inline public function divide(other : Float) : Shake
    return this / other;
  @:op( A%B) inline public function modulo(other : Float) : Shake
    return this % other;
  @:op(A==B) inline public function equal(other : Shake) : Bool
    return this == other;
  public function nearEqual(other : Shake) : Bool
    return Floats.nearEqual(this, other.toFloat());
  @:op(A!=B) inline public function notEqual(other : Shake) : Bool
    return this != other;
  @:op( A<B) inline public function less(other : Shake) : Bool
    return this < other.toFloat();
  @:op(A<=B) inline public function lessEqual(other : Shake) : Bool
    return this <= other.toFloat();
  @:op( A>B) inline public function more(other : Shake) : Bool
    return this > other.toFloat();
  @:op(A>=B) inline public function moreEqual(other : Shake) : Bool
    return this >= other.toFloat();

  @:to inline public function toFloat() : Float
    return this;

  @:to inline public function toPlankTimeUnit() : PlankTimeUnit
    return this * 1.85528756957328e+36;
  @:to inline public function toJiffyPhysics() : JiffyPhysics
    return this * 3.33333333333333e+16;
  @:to inline public function toSvedberg() : Svedberg
    return this * 100000;
  @:to inline public function toPicosecond() : Picosecond
    return this * 10000;
  @:to inline public function toNanosecond() : Nanosecond
    return this * 10;
  @:to inline public function toMicrosecond() : Microsecond
    return this * 0.01;
  @:to inline public function toFourth() : Fourth
    return this * 0.00035999999999712;
  @:to inline public function toMillisecond() : Millisecond
    return this * 0.0001;
  @:to inline public function toThird() : Third
    return this * 5.9999999999988e-06;
  @:to inline public function toSecond() : Second
    return this * 1e-07;
  @:to inline public function toMinute() : Minute
    return this * 1.66666666666667e-09;
  @:to inline public function toKe() : Ke
    return this * 1.15740740740741e-10;
  @:to inline public function toKilosecond() : Kilosecond
    return this * 1e-10;
  @:to inline public function toHour() : Hour
    return this * 2.77777777777778e-11;
  @:to inline public function toDay() : Day
    return this * 1.15740740740741e-12;
  @:to inline public function toWeek() : Week
    return this * 1.65343915343915e-13;
  @:to inline public function toMegasecond() : Megasecond
    return this * 1e-13;
  @:to inline public function toFortnight() : Fortnight
    return this * 8.26719576719577e-14;
  @:to inline public function toSynodicMonth() : SynodicMonth
    return this * 3.91935077290162e-14;
  @:to inline public function toTropicalMonth() : TropicalMonth
    return this * 4.23623892691201e-14;
  @:to inline public function toJulianYear() : JulianYear
    return this * 3.16880878140289e-15;
  @:to inline public function toGigasecond() : Gigasecond
    return this * 1e-16;
  @:to inline public function toTerasecond() : Terasecond
    return this * 1e-19;

  @:to inline public function toString() : String
    return this + symbol;

  public static inline var symbol : String = "shake";
}