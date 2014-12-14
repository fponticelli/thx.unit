package thx.unit.time;

import thx.core.Floats;

// TODO parse string

abstract Second(Float) {
  @:from inline static public function floatToSecond(value : Float) : Second
    return new Second(value);

  function new(value : Float)
    this = value;

  inline public function abs() : Second
    return Math.abs(this);

  inline public function min(other : Second) : Second
    return Math.min(this, other.toFloat());

  inline public function max(other : Second) : Second
    return Math.max(this, other.toFloat());

  @:op( -A ) inline public function negate() : Second
    return -this;
  @:op( A+B) inline public function add(other : Second) : Second
    return this + other.toFloat();
  @:op( A-B) inline public function subtract(other : Second) : Second
    return this - other.toFloat();
  @:op( A*B) inline public function multiply(other : Float) : Second
    return this * other;
  @:op( A/B) inline public function divide(other : Float) : Second
    return this / other;
  @:op( A%B) inline public function modulo(other : Float) : Second
    return this % other;
  @:op(A==B) inline public function equal(other : Second) : Bool
    return this == other;
  public function nearEquals(other : Second) : Bool
    return Floats.nearEquals(this, other.toFloat());
  @:op(A!=B) inline public function notEqual(other : Second) : Bool
    return this != other;
  @:op( A<B) inline public function less(other : Second) : Bool
    return this < other.toFloat();
  @:op(A<=B) inline public function lessEqual(other : Second) : Bool
    return this <= other.toFloat();
  @:op( A>B) inline public function more(other : Second) : Bool
    return this > other.toFloat();
  @:op(A>=B) inline public function moreEqual(other : Second) : Bool
    return this >= other.toFloat();

  @:to inline public function toFloat() : Float
    return this;

  @:to inline public function toPlankTimeUnit() : PlankTimeUnit
    return this * 1.85528756957328e+43;
  @:to inline public function toJiffyPhysics() : JiffyPhysics
    return this * 3.33333333333333e+23;
  @:to inline public function toSvedberg() : Svedberg
    return this * 1000000000000;
  @:to inline public function toPicosecond() : Picosecond
    return this * 100000000000;
  @:to inline public function toNanosecond() : Nanosecond
    return this * 100000000;
  @:to inline public function toShake() : Shake
    return this * 10000000;
  @:to inline public function toMicrosecond() : Microsecond
    return this * 100000;
  @:to inline public function toFourth() : Fourth
    return this * 3599.9999999712;
  @:to inline public function toMillisecond() : Millisecond
    return this * 1000;
  @:to inline public function toThird() : Third
    return this * 59.999999999988;
  @:to inline public function toMinute() : Minute
    return this * 0.0166666666666667;
  @:to inline public function toKe() : Ke
    return this * 0.00115740740740741;
  @:to inline public function toKilosecond() : Kilosecond
    return this * 0.001;
  @:to inline public function toHour() : Hour
    return this * 0.000277777777777778;
  @:to inline public function toDay() : Day
    return this * 1.15740740740741e-05;
  @:to inline public function toWeek() : Week
    return this * 1.65343915343915e-06;
  @:to inline public function toMegasecond() : Megasecond
    return this * 1e-06;
  @:to inline public function toFortnight() : Fortnight
    return this * 8.26719576719577e-07;
  @:to inline public function toSynodicMonth() : SynodicMonth
    return this * 3.91935077290162e-07;
  @:to inline public function toTropicalMonth() : TropicalMonth
    return this * 4.23623892691201e-07;
  @:to inline public function toJulianYear() : JulianYear
    return this * 3.16880878140289e-08;
  @:to inline public function toGigasecond() : Gigasecond
    return this * 1e-09;
  @:to inline public function toTerasecond() : Terasecond
    return this * 1e-12;

  @:to inline public function toString() : String
    return this + symbol;

  public static inline var symbol : String = "s";
}