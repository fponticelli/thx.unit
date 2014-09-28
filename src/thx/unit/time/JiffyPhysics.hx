package thx.unit.time;

import thx.core.Floats;

// TODO parse string

abstract JiffyPhysics(Float) {
  @:from inline static public function floatToJiffyPhysics(value : Float) : JiffyPhysics
    return new JiffyPhysics(value);

  function new(value : Float)
    this = value;
  @:op( -A ) inline public function negate() : JiffyPhysics
    return -this;
  @:op( A+B) inline public function add(other : JiffyPhysics) : JiffyPhysics
    return this + other.toFloat();
  @:op( A-B) inline public function subtract(other : JiffyPhysics) : JiffyPhysics
    return this - other.toFloat();
  @:op( A*B) inline public function multiply(other : Float) : JiffyPhysics
    return this * other;
  @:op( A/B) inline public function divide(other : Float) : JiffyPhysics
    return this / other;
  @:op( A%B) inline public function modulo(other : Float) : JiffyPhysics
    return this % other;
  @:op(A==B) inline public function equal(other : JiffyPhysics) : Bool
    return this == other;
  public function nearEquals(other : JiffyPhysics) : Bool
    return Floats.nearEquals(this, other.toFloat());
  @:op(A!=B) inline public function notEqual(other : JiffyPhysics) : Bool
    return this != other;
  @:op( A<B) inline public function less(other : JiffyPhysics) : Bool
    return this < other.toFloat();
  @:op(A<=B) inline public function lessEqual(other : JiffyPhysics) : Bool
    return this <= other.toFloat();
  @:op( A>B) inline public function more(other : JiffyPhysics) : Bool
    return this > other.toFloat();
  @:op(A>=B) inline public function moreEqual(other : JiffyPhysics) : Bool
    return this >= other.toFloat();

  @:to inline public function toFloat() : Float
    return this;

  @:to inline public function toPlankTimeUnit() : PlankTimeUnit
    return this * 5.56586270871985e+19;
  @:to inline public function toSvedberg() : Svedberg
    return this * 3e-12;
  @:to inline public function toPicosecond() : Picosecond
    return this * 3e-13;
  @:to inline public function toNanosecond() : Nanosecond
    return this * 3e-16;
  @:to inline public function toShake() : Shake
    return this * 3e-17;
  @:to inline public function toMicrosecond() : Microsecond
    return this * 3e-19;
  @:to inline public function toFourth() : Fourth
    return this * 1.07999999999136e-20;
  @:to inline public function toMillisecond() : Millisecond
    return this * 3e-21;
  @:to inline public function toThird() : Third
    return this * 1.79999999999964e-22;
  @:to inline public function toSecond() : Second
    return this * 3e-24;
  @:to inline public function toMinute() : Minute
    return this * 5e-26;
  @:to inline public function toKe() : Ke
    return this * 3.47222222222222e-27;
  @:to inline public function toKilosecond() : Kilosecond
    return this * 3e-27;
  @:to inline public function toHour() : Hour
    return this * 8.33333333333333e-28;
  @:to inline public function toDay() : Day
    return this * 3.47222222222222e-29;
  @:to inline public function toWeek() : Week
    return this * 4.96031746031746e-30;
  @:to inline public function toMegasecond() : Megasecond
    return this * 3e-30;
  @:to inline public function toFortnight() : Fortnight
    return this * 2.48015873015873e-30;
  @:to inline public function toSynodicMonth() : SynodicMonth
    return this * 1.17580523187048e-30;
  @:to inline public function toTropicalMonth() : TropicalMonth
    return this * 1.2708716780736e-30;
  @:to inline public function toJulianYear() : JulianYear
    return this * 9.50642634420868e-32;
  @:to inline public function toGigasecond() : Gigasecond
    return this * 3e-33;
  @:to inline public function toTerasecond() : Terasecond
    return this * 3e-36;

  @:to inline public function toString() : String
    return this + symbol;

  public static inline var symbol : String = "jiffy";
}