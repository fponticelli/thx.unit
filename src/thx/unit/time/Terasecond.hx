package thx.unit.time;

import thx.core.Floats;

// TODO parse string

abstract Terasecond(Float) {
  @:from inline static public function floatToTerasecond(value : Float) : Terasecond
    return new Terasecond(value);

  function new(value : Float)
    this = value;
  @:op( -A ) inline public function negate() : Terasecond
    return -this;
  @:op( A+B) inline public function add(other : Terasecond) : Terasecond
    return this + other.toFloat();
  @:op( A-B) inline public function subtract(other : Terasecond) : Terasecond
    return this - other.toFloat();
  @:op( A*B) inline public function multiply(other : Float) : Terasecond
    return this * other;
  @:op( A/B) inline public function divide(other : Float) : Terasecond
    return this / other;
  @:op( A%B) inline public function modulo(other : Float) : Terasecond
    return this % other;
  @:op(A==B) inline public function equal(other : Terasecond) : Bool
    return this == other;
  public function nearEquals(other : Terasecond) : Bool
    return Floats.nearEquals(this, other.toFloat());
  @:op(A!=B) inline public function notEqual(other : Terasecond) : Bool
    return this != other;
  @:op( A<B) inline public function less(other : Terasecond) : Bool
    return this < other.toFloat();
  @:op(A<=B) inline public function lessEqual(other : Terasecond) : Bool
    return this <= other.toFloat();
  @:op( A>B) inline public function more(other : Terasecond) : Bool
    return this > other.toFloat();
  @:op(A>=B) inline public function moreEqual(other : Terasecond) : Bool
    return this >= other.toFloat();

  @:to inline public function toFloat() : Float
    return this;

  @:to inline public function toPlankTimeUnit() : PlankTimeUnit
    return this * 1.85528756957328e+55;
  @:to inline public function toJiffyPhysics() : JiffyPhysics
    return this * 3.33333333333333e+35;
  @:to inline public function toSvedberg() : Svedberg
    return this * 1e+24;
  @:to inline public function toPicosecond() : Picosecond
    return this * 1e+23;
  @:to inline public function toNanosecond() : Nanosecond
    return this * 1e+20;
  @:to inline public function toShake() : Shake
    return this * 1e+19;
  @:to inline public function toMicrosecond() : Microsecond
    return this * 1e+17;
  @:to inline public function toFourth() : Fourth
    return this * 3.5999999999712e+15;
  @:to inline public function toMillisecond() : Millisecond
    return this * 1e+15;
  @:to inline public function toThird() : Third
    return this * 59999999999988;
  @:to inline public function toSecond() : Second
    return this * 1000000000000;
  @:to inline public function toMinute() : Minute
    return this * 16666666666.6667;
  @:to inline public function toKe() : Ke
    return this * 1157407407.40741;
  @:to inline public function toKilosecond() : Kilosecond
    return this * 1000000000;
  @:to inline public function toHour() : Hour
    return this * 277777777.777778;
  @:to inline public function toDay() : Day
    return this * 11574074.0740741;
  @:to inline public function toWeek() : Week
    return this * 1653439.15343915;
  @:to inline public function toMegasecond() : Megasecond
    return this * 1000000;
  @:to inline public function toFortnight() : Fortnight
    return this * 826719.576719577;
  @:to inline public function toSynodicMonth() : SynodicMonth
    return this * 391935.077290162;
  @:to inline public function toTropicalMonth() : TropicalMonth
    return this * 423623.892691201;
  @:to inline public function toJulianYear() : JulianYear
    return this * 31688.0878140289;
  @:to inline public function toGigasecond() : Gigasecond
    return this * 1000;

  @:to inline public function toString() : String
    return this + symbol;

  public static inline var symbol : String = "Ts";
}