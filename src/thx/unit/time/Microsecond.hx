package thx.unit.time;

import thx.core.Floats;

// TODO parse string

abstract Microsecond(Float) {
  @:from inline static public function floatToMicrosecond(value : Float) : Microsecond
    return new Microsecond(value);

  function new(value : Float)
    this = value;

  inline public function abs() : Microsecond
    return Math.abs(this);

  inline public function min(other : Microsecond) : Microsecond
    return Math.min(this, other.toFloat());

  inline public function max(other : Microsecond) : Microsecond
    return Math.max(this, other.toFloat());

  @:op( -A ) inline public function negate() : Microsecond
    return -this;
  @:op( A+B) inline public function add(other : Microsecond) : Microsecond
    return this + other.toFloat();
  @:op( A-B) inline public function subtract(other : Microsecond) : Microsecond
    return this - other.toFloat();
  @:op( A*B) inline public function multiply(other : Float) : Microsecond
    return this * other;
  @:op( A/B) inline public function divide(other : Float) : Microsecond
    return this / other;
  @:op( A%B) inline public function modulo(other : Float) : Microsecond
    return this % other;
  @:op(A==B) inline public function equal(other : Microsecond) : Bool
    return this == other;
  public function nearEquals(other : Microsecond) : Bool
    return Floats.nearEquals(this, other.toFloat());
  @:op(A!=B) inline public function notEqual(other : Microsecond) : Bool
    return this != other;
  @:op( A<B) inline public function less(other : Microsecond) : Bool
    return this < other.toFloat();
  @:op(A<=B) inline public function lessEqual(other : Microsecond) : Bool
    return this <= other.toFloat();
  @:op( A>B) inline public function more(other : Microsecond) : Bool
    return this > other.toFloat();
  @:op(A>=B) inline public function moreEqual(other : Microsecond) : Bool
    return this >= other.toFloat();

  @:to inline public function toFloat() : Float
    return this;

  @:to inline public function toPlankTimeUnit() : PlankTimeUnit
    return this * 1.85528756957328e+38;
  @:to inline public function toJiffyPhysics() : JiffyPhysics
    return this * 3.33333333333333e+18;
  @:to inline public function toSvedberg() : Svedberg
    return this * 10000000;
  @:to inline public function toPicosecond() : Picosecond
    return this * 1000000;
  @:to inline public function toNanosecond() : Nanosecond
    return this * 1000;
  @:to inline public function toShake() : Shake
    return this * 100;
  @:to inline public function toFourth() : Fourth
    return this * 0.035999999999712;
  @:to inline public function toMillisecond() : Millisecond
    return this * 0.01;
  @:to inline public function toThird() : Third
    return this * 0.00059999999999988;
  @:to inline public function toSecond() : Second
    return this * 1e-05;
  @:to inline public function toMinute() : Minute
    return this * 1.66666666666667e-07;
  @:to inline public function toKe() : Ke
    return this * 1.15740740740741e-08;
  @:to inline public function toKilosecond() : Kilosecond
    return this * 1e-08;
  @:to inline public function toHour() : Hour
    return this * 2.77777777777778e-09;
  @:to inline public function toDay() : Day
    return this * 1.15740740740741e-10;
  @:to inline public function toWeek() : Week
    return this * 1.65343915343915e-11;
  @:to inline public function toMegasecond() : Megasecond
    return this * 1e-11;
  @:to inline public function toFortnight() : Fortnight
    return this * 8.26719576719577e-12;
  @:to inline public function toSynodicMonth() : SynodicMonth
    return this * 3.91935077290162e-12;
  @:to inline public function toTropicalMonth() : TropicalMonth
    return this * 4.23623892691201e-12;
  @:to inline public function toJulianYear() : JulianYear
    return this * 3.1688087814029e-13;
  @:to inline public function toGigasecond() : Gigasecond
    return this * 1e-14;
  @:to inline public function toTerasecond() : Terasecond
    return this * 1e-17;

  @:to inline public function toString() : String
    return this + symbol;

  public static inline var symbol : String = "μs";
}