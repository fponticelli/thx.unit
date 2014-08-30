package thx.unit.time;

import thx.core.Floats;

// TODO parse string

abstract Svedberg(Float) {
  @:from inline static public function floatToSvedberg(value : Float) : Svedberg
    return new Svedberg(value);

  function new(value : Float)
    this = value;
  @:op( -A ) inline public function negate() : Svedberg
    return -this;
  @:op( A+B) inline public function add(other : Svedberg) : Svedberg
    return this + other.toFloat();
  @:op( A-B) inline public function subtract(other : Svedberg) : Svedberg
    return this - other.toFloat();
  @:op( A*B) inline public function multiply(other : Float) : Svedberg
    return this * other;
  @:op( A/B) inline public function divide(other : Float) : Svedberg
    return this / other;
  @:op( A%B) inline public function modulo(other : Float) : Svedberg
    return this % other;
  @:op(A==B) inline public function equal(other : Svedberg) : Bool
    return this == other;
  public function nearEqual(other : Svedberg) : Bool
    return Floats.nearEqual(this, other.toFloat());
  @:op(A!=B) inline public function notEqual(other : Svedberg) : Bool
    return this != other;
  @:op( A<B) inline public function less(other : Svedberg) : Bool
    return this < other.toFloat();
  @:op(A<=B) inline public function lessEqual(other : Svedberg) : Bool
    return this <= other.toFloat();
  @:op( A>B) inline public function more(other : Svedberg) : Bool
    return this > other.toFloat();
  @:op(A>=B) inline public function moreEqual(other : Svedberg) : Bool
    return this >= other.toFloat();

  @:to inline public function toFloat() : Float
    return this;

  @:to inline public function toPlankTimeUnit() : PlankTimeUnit
    return this * 1.85528756957328e+31;
  @:to inline public function toJiffyPhysics() : JiffyPhysics
    return this * 333333333333.333;
  @:to inline public function toPicosecond() : Picosecond
    return this * 0.1;
  @:to inline public function toNanosecond() : Nanosecond
    return this * 0.0001;
  @:to inline public function toShake() : Shake
    return this * 1e-05;
  @:to inline public function toMicrosecond() : Microsecond
    return this * 1e-07;
  @:to inline public function toFourth() : Fourth
    return this * 3.5999999999712e-09;
  @:to inline public function toMillisecond() : Millisecond
    return this * 1e-09;
  @:to inline public function toThird() : Third
    return this * 5.9999999999988e-11;
  @:to inline public function toSecond() : Second
    return this * 1e-12;
  @:to inline public function toMinute() : Minute
    return this * 1.66666666666667e-14;
  @:to inline public function toKe() : Ke
    return this * 1.15740740740741e-15;
  @:to inline public function toKilosecond() : Kilosecond
    return this * 1e-15;
  @:to inline public function toHour() : Hour
    return this * 2.77777777777778e-16;
  @:to inline public function toDay() : Day
    return this * 1.15740740740741e-17;
  @:to inline public function toWeek() : Week
    return this * 1.65343915343915e-18;
  @:to inline public function toMegasecond() : Megasecond
    return this * 1e-18;
  @:to inline public function toFortnight() : Fortnight
    return this * 8.26719576719577e-19;
  @:to inline public function toSynodicMonth() : SynodicMonth
    return this * 3.91935077290162e-19;
  @:to inline public function toTropicalMonth() : TropicalMonth
    return this * 4.23623892691201e-19;
  @:to inline public function toJulianYear() : JulianYear
    return this * 3.1688087814029e-20;
  @:to inline public function toGigasecond() : Gigasecond
    return this * 1e-21;
  @:to inline public function toTerasecond() : Terasecond
    return this * 1e-24;

  @:to inline public function toString() : String
    return this + symbol;

  public static inline var symbol : String = "S";
}