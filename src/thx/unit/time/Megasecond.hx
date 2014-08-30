package thx.unit.time;

import thx.core.Floats;

// TODO parse string

abstract Megasecond(Float) {
  @:from inline static public function floatToMegasecond(value : Float) : Megasecond
    return new Megasecond(value);

  function new(value : Float)
    this = value;
  @:op( -A ) inline public function negate() : Megasecond
    return -this;
  @:op( A+B) inline public function add(other : Megasecond) : Megasecond
    return this + other.toFloat();
  @:op( A-B) inline public function subtract(other : Megasecond) : Megasecond
    return this - other.toFloat();
  @:op( A*B) inline public function multiply(other : Float) : Megasecond
    return this * other;
  @:op( A/B) inline public function divide(other : Float) : Megasecond
    return this / other;
  @:op( A%B) inline public function modulo(other : Float) : Megasecond
    return this % other;
  @:op(A==B) inline public function equal(other : Megasecond) : Bool
    return this == other;
  public function nearEqual(other : Megasecond) : Bool
    return Floats.nearEqual(this, other.toFloat());
  @:op(A!=B) inline public function notEqual(other : Megasecond) : Bool
    return this != other;
  @:op( A<B) inline public function less(other : Megasecond) : Bool
    return this < other.toFloat();
  @:op(A<=B) inline public function lessEqual(other : Megasecond) : Bool
    return this <= other.toFloat();
  @:op( A>B) inline public function more(other : Megasecond) : Bool
    return this > other.toFloat();
  @:op(A>=B) inline public function moreEqual(other : Megasecond) : Bool
    return this >= other.toFloat();

  inline public function toFloat() : Float
    return this;

  @:to inline public function toPlankTimeUnit() : PlankTimeUnit
    return this * 1.85528756957328e+49;
  @:to inline public function toJiffyPhysics() : JiffyPhysics
    return this * 3.33333333333333e+29;
  @:to inline public function toSvedberg() : Svedberg
    return this * 1e+18;
  @:to inline public function toPicosecond() : Picosecond
    return this * 1e+17;
  @:to inline public function toNanosecond() : Nanosecond
    return this * 100000000000000;
  @:to inline public function toShake() : Shake
    return this * 10000000000000;
  @:to inline public function toMicrosecond() : Microsecond
    return this * 100000000000;
  @:to inline public function toFourth() : Fourth
    return this * 3599999999.9712;
  @:to inline public function toMillisecond() : Millisecond
    return this * 1000000000;
  @:to inline public function toThird() : Third
    return this * 59999999.999988;
  @:to inline public function toSecond() : Second
    return this * 1000000;
  @:to inline public function toMinute() : Minute
    return this * 16666.6666666667;
  @:to inline public function toKe() : Ke
    return this * 1157.40740740741;
  @:to inline public function toKilosecond() : Kilosecond
    return this * 1000;
  @:to inline public function toHour() : Hour
    return this * 277.777777777778;
  @:to inline public function toDay() : Day
    return this * 11.5740740740741;
  @:to inline public function toWeek() : Week
    return this * 1.65343915343915;
  @:to inline public function toFortnight() : Fortnight
    return this * 0.826719576719577;
  @:to inline public function toSynodicMonth() : SynodicMonth
    return this * 0.391935077290162;
  @:to inline public function toTropicalMonth() : TropicalMonth
    return this * 0.423623892691201;
  @:to inline public function toJulianYear() : JulianYear
    return this * 0.031688087814029;
  @:to inline public function toGigasecond() : Gigasecond
    return this * 0.001;
  @:to inline public function toTerasecond() : Terasecond
    return this * 1e-06;

  @:to inline public function toString() : String
    return this + symbol;

  public static inline var symbol : String = "Ms";
}