package thx.unit.time;

import thx.core.Floats;

// TODO parse string

abstract Fortnight(Float) {
  @:from inline static public function floatToFortnight(value : Float) : Fortnight
    return new Fortnight(value);

  function new(value : Float)
    this = value;
  @:op( -A ) inline public function negate() : Fortnight
    return -this;
  @:op( A+B) inline public function add(other : Fortnight) : Fortnight
    return this + other.toFloat();
  @:op( A-B) inline public function subtract(other : Fortnight) : Fortnight
    return this - other.toFloat();
  @:op( A*B) inline public function multiply(other : Float) : Fortnight
    return this * other;
  @:op( A/B) inline public function divide(other : Float) : Fortnight
    return this / other;
  @:op( A%B) inline public function modulo(other : Float) : Fortnight
    return this % other;
  @:op(A==B) inline public function equal(other : Fortnight) : Bool
    return this == other;
  public function nearEqual(other : Fortnight) : Bool
    return Floats.nearEqual(this, other.toFloat());
  @:op(A!=B) inline public function notEqual(other : Fortnight) : Bool
    return this != other;
  @:op( A<B) inline public function less(other : Fortnight) : Bool
    return this < other.toFloat();
  @:op(A<=B) inline public function lessEqual(other : Fortnight) : Bool
    return this <= other.toFloat();
  @:op( A>B) inline public function more(other : Fortnight) : Bool
    return this > other.toFloat();
  @:op(A>=B) inline public function moreEqual(other : Fortnight) : Bool
    return this >= other.toFloat();

  @:to inline public function toFloat() : Float
    return this;

  @:to inline public function toPlankTimeUnit() : PlankTimeUnit
    return this * 2.24415584415584e+49;
  @:to inline public function toJiffyPhysics() : JiffyPhysics
    return this * 4.032e+29;
  @:to inline public function toSvedberg() : Svedberg
    return this * 1.2096e+18;
  @:to inline public function toPicosecond() : Picosecond
    return this * 1.2096e+17;
  @:to inline public function toNanosecond() : Nanosecond
    return this * 120960000000000;
  @:to inline public function toShake() : Shake
    return this * 12096000000000;
  @:to inline public function toMicrosecond() : Microsecond
    return this * 120960000000;
  @:to inline public function toFourth() : Fourth
    return this * 4354559999.96516;
  @:to inline public function toMillisecond() : Millisecond
    return this * 1209600000;
  @:to inline public function toThird() : Third
    return this * 72575999.9999855;
  @:to inline public function toSecond() : Second
    return this * 1209600;
  @:to inline public function toMinute() : Minute
    return this * 20160;
  @:to inline public function toKe() : Ke
    return this * 1400;
  @:to inline public function toKilosecond() : Kilosecond
    return this * 1209.6;
  @:to inline public function toHour() : Hour
    return this * 336;
  @:to inline public function toDay() : Day
    return this * 14;
  @:to inline public function toWeek() : Week
    return this * 2;
  @:to inline public function toMegasecond() : Megasecond
    return this * 1.2096;
  @:to inline public function toSynodicMonth() : SynodicMonth
    return this * 0.47408466949018;
  @:to inline public function toTropicalMonth() : TropicalMonth
    return this * 0.512415460599277;
  @:to inline public function toJulianYear() : JulianYear
    return this * 0.0383299110198494;
  @:to inline public function toGigasecond() : Gigasecond
    return this * 0.0012096;
  @:to inline public function toTerasecond() : Terasecond
    return this * 1.2096e-06;

  @:to inline public function toString() : String
    return this + symbol;

  public static inline var symbol : String = "fortnight";
}