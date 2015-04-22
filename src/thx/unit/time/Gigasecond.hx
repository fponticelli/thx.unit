package thx.unit.time;

import thx.Floats;

// TODO parse string

abstract Gigasecond(Float) {
  @:from inline static public function floatToGigasecond(value : Float) : Gigasecond
    return new Gigasecond(value);

  function new(value : Float)
    this = value;

  inline public function abs() : Gigasecond
    return Math.abs(this);

  inline public function min(other : Gigasecond) : Gigasecond
    return Math.min(this, other.toFloat());

  inline public function max(other : Gigasecond) : Gigasecond
    return Math.max(this, other.toFloat());

  @:op( -A ) inline public function negate() : Gigasecond
    return -this;
  @:op( A+B) inline public function add(other : Gigasecond) : Gigasecond
    return this + other.toFloat();
  @:op( A-B) inline public function subtract(other : Gigasecond) : Gigasecond
    return this - other.toFloat();
  @:op( A*B) inline public function multiply(other : Float) : Gigasecond
    return this * other;
  @:op( A/B) inline public function divide(other : Float) : Gigasecond
    return this / other;
  @:op( A%B) inline public function modulo(other : Float) : Gigasecond
    return this % other;
  @:op(A==B) inline public function equal(other : Gigasecond) : Bool
    return this == other;
  public function nearEquals(other : Gigasecond) : Bool
    return Floats.nearEquals(this, other.toFloat());
  @:op(A!=B) inline public function notEqual(other : Gigasecond) : Bool
    return this != other;
  @:op( A<B) inline public function less(other : Gigasecond) : Bool
    return this < other.toFloat();
  @:op(A<=B) inline public function lessEqual(other : Gigasecond) : Bool
    return this <= other.toFloat();
  @:op( A>B) inline public function more(other : Gigasecond) : Bool
    return this > other.toFloat();
  @:op(A>=B) inline public function moreEqual(other : Gigasecond) : Bool
    return this >= other.toFloat();

  @:to inline public function toFloat() : Float
    return this;

  @:to inline public function toPlankTimeUnit() : PlankTimeUnit
    return this * 1.85528756957328e+52;
  @:to inline public function toJiffyPhysics() : JiffyPhysics
    return this * 3.33333333333333e+32;
  @:to inline public function toSvedberg() : Svedberg
    return this * 1e+21;
  @:to inline public function toPicosecond() : Picosecond
    return this * 1e+20;
  @:to inline public function toNanosecond() : Nanosecond
    return this * 1e+17;
  @:to inline public function toShake() : Shake
    return this * 1e+16;
  @:to inline public function toMicrosecond() : Microsecond
    return this * 100000000000000;
  @:to inline public function toFourth() : Fourth
    return this * 3599999999971.2;
  @:to inline public function toMillisecond() : Millisecond
    return this * 1000000000000;
  @:to inline public function toThird() : Third
    return this * 59999999999.988;
  @:to inline public function toSecond() : Second
    return this * 1000000000;
  @:to inline public function toMinute() : Minute
    return this * 16666666.6666667;
  @:to inline public function toKe() : Ke
    return this * 1157407.40740741;
  @:to inline public function toKilosecond() : Kilosecond
    return this * 1000000;
  @:to inline public function toHour() : Hour
    return this * 277777.777777778;
  @:to inline public function toDay() : Day
    return this * 11574.0740740741;
  @:to inline public function toWeek() : Week
    return this * 1653.43915343915;
  @:to inline public function toMegasecond() : Megasecond
    return this * 1000;
  @:to inline public function toFortnight() : Fortnight
    return this * 826.719576719577;
  @:to inline public function toSynodicMonth() : SynodicMonth
    return this * 391.935077290162;
  @:to inline public function toTropicalMonth() : TropicalMonth
    return this * 423.623892691201;
  @:to inline public function toJulianYear() : JulianYear
    return this * 31.688087814029;
  @:to inline public function toTerasecond() : Terasecond
    return this * 0.001;

  @:to inline public function toString() : String
    return this + symbol;

  public static inline var symbol : String = "Gs";
}