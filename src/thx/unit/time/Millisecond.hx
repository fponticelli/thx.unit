package thx.unit.time;

import thx.core.Floats;

// TODO parse string

abstract Millisecond(Float) {
  @:from inline static public function floatToMillisecond(value : Float) : Millisecond
    return new Millisecond(value);

  function new(value : Float)
    this = value;
  @:op( -A ) inline public function negate() : Millisecond
    return -this;
  @:op( A+B) inline public function add(other : Millisecond) : Millisecond
    return this + other.toFloat();
  @:op( A-B) inline public function subtract(other : Millisecond) : Millisecond
    return this - other.toFloat();
  @:op( A*B) inline public function multiply(other : Float) : Millisecond
    return this * other;
  @:op( A/B) inline public function divide(other : Float) : Millisecond
    return this / other;
  @:op( A%B) inline public function modulo(other : Float) : Millisecond
    return this % other;
  @:op(A==B) inline public function equal(other : Millisecond) : Bool
    return this == other;
  public function nearEqual(other : Millisecond) : Bool
    return Floats.nearEqual(this, other.toFloat());
  @:op(A!=B) inline public function notEqual(other : Millisecond) : Bool
    return this != other;
  @:op( A<B) inline public function less(other : Millisecond) : Bool
    return this < other.toFloat();
  @:op(A<=B) inline public function lessEqual(other : Millisecond) : Bool
    return this <= other.toFloat();
  @:op( A>B) inline public function more(other : Millisecond) : Bool
    return this > other.toFloat();
  @:op(A>=B) inline public function moreEqual(other : Millisecond) : Bool
    return this >= other.toFloat();

  inline public function toFloat() : Float
    return this;

  @:to inline public function toPlankTimeUnit() : PlankTimeUnit
    return this * 1.85528756957328e+40;
  @:to inline public function toJiffyPhysics() : JiffyPhysics
    return this * 3.33333333333333e+20;
  @:to inline public function toSvedberg() : Svedberg
    return this * 1000000000;
  @:to inline public function toPicosecond() : Picosecond
    return this * 100000000;
  @:to inline public function toNanosecond() : Nanosecond
    return this * 100000;
  @:to inline public function toShake() : Shake
    return this * 10000;
  @:to inline public function toMicrosecond() : Microsecond
    return this * 100;
  @:to inline public function toFourth() : Fourth
    return this * 3.5999999999712;
  @:to inline public function toThird() : Third
    return this * 0.059999999999988;
  @:to inline public function toSecond() : Second
    return this * 0.001;
  @:to inline public function toMinute() : Minute
    return this * 1.66666666666667e-05;
  @:to inline public function toKe() : Ke
    return this * 1.15740740740741e-06;
  @:to inline public function toKilosecond() : Kilosecond
    return this * 1e-06;
  @:to inline public function toHour() : Hour
    return this * 2.77777777777778e-07;
  @:to inline public function toDay() : Day
    return this * 1.15740740740741e-08;
  @:to inline public function toWeek() : Week
    return this * 1.65343915343915e-09;
  @:to inline public function toMegasecond() : Megasecond
    return this * 1e-09;
  @:to inline public function toFortnight() : Fortnight
    return this * 8.26719576719577e-10;
  @:to inline public function toSynodicMonth() : SynodicMonth
    return this * 3.91935077290162e-10;
  @:to inline public function toTropicalMonth() : TropicalMonth
    return this * 4.23623892691201e-10;
  @:to inline public function toJulianYear() : JulianYear
    return this * 3.16880878140289e-11;
  @:to inline public function toGigasecond() : Gigasecond
    return this * 1e-12;
  @:to inline public function toTerasecond() : Terasecond
    return this * 1e-15;

  @:to inline public function toString() : String
    return this + symbol;

  public static inline var symbol : String = "ms";
}