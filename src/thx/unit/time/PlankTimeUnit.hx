package thx.unit.time;

import thx.Floats;

// TODO parse string

abstract PlankTimeUnit(Float) {
  @:from inline static public function floatToPlankTimeUnit(value : Float) : PlankTimeUnit
    return new PlankTimeUnit(value);

  function new(value : Float)
    this = value;

  inline public function abs() : PlankTimeUnit
    return Math.abs(this);

  inline public function min(other : PlankTimeUnit) : PlankTimeUnit
    return Math.min(this, other.toFloat());

  inline public function max(other : PlankTimeUnit) : PlankTimeUnit
    return Math.max(this, other.toFloat());

  @:op( -A ) inline public function negate() : PlankTimeUnit
    return -this;
  @:op( A+B) inline public function add(other : PlankTimeUnit) : PlankTimeUnit
    return this + other.toFloat();
  @:op( A-B) inline public function subtract(other : PlankTimeUnit) : PlankTimeUnit
    return this - other.toFloat();
  @:op( A*B) inline public function multiply(other : Float) : PlankTimeUnit
    return this * other;
  @:op( A/B) inline public function divide(other : Float) : PlankTimeUnit
    return this / other;
  @:op( A%B) inline public function modulo(other : Float) : PlankTimeUnit
    return this % other;
  @:op(A==B) inline public function equal(other : PlankTimeUnit) : Bool
    return this == other;
  public function nearEquals(other : PlankTimeUnit) : Bool
    return Floats.nearEquals(this, other.toFloat());
  @:op(A!=B) inline public function notEqual(other : PlankTimeUnit) : Bool
    return this != other;
  @:op( A<B) inline public function less(other : PlankTimeUnit) : Bool
    return this < other.toFloat();
  @:op(A<=B) inline public function lessEqual(other : PlankTimeUnit) : Bool
    return this <= other.toFloat();
  @:op( A>B) inline public function more(other : PlankTimeUnit) : Bool
    return this > other.toFloat();
  @:op(A>=B) inline public function moreEqual(other : PlankTimeUnit) : Bool
    return this >= other.toFloat();

  @:to inline public function toFloat() : Float
    return this;

  @:to inline public function toJiffyPhysics() : JiffyPhysics
    return this * 1.79666666666667e-20;
  @:to inline public function toSvedberg() : Svedberg
    return this * 5.39e-32;
  @:to inline public function toPicosecond() : Picosecond
    return this * 5.39e-33;
  @:to inline public function toNanosecond() : Nanosecond
    return this * 5.39e-36;
  @:to inline public function toShake() : Shake
    return this * 5.39e-37;
  @:to inline public function toMicrosecond() : Microsecond
    return this * 5.39e-39;
  @:to inline public function toFourth() : Fourth
    return this * 1.94039999998448e-40;
  @:to inline public function toMillisecond() : Millisecond
    return this * 5.39e-41;
  @:to inline public function toThird() : Third
    return this * 3.23399999999935e-42;
  @:to inline public function toSecond() : Second
    return this * 5.39e-44;
  @:to inline public function toMinute() : Minute
    return this * 8.98333333333333e-46;
  @:to inline public function toKe() : Ke
    return this * 6.23842592592593e-47;
  @:to inline public function toKilosecond() : Kilosecond
    return this * 5.39e-47;
  @:to inline public function toHour() : Hour
    return this * 1.49722222222222e-47;
  @:to inline public function toDay() : Day
    return this * 6.23842592592593e-49;
  @:to inline public function toWeek() : Week
    return this * 8.91203703703704e-50;
  @:to inline public function toMegasecond() : Megasecond
    return this * 5.39e-50;
  @:to inline public function toFortnight() : Fortnight
    return this * 4.45601851851852e-50;
  @:to inline public function toSynodicMonth() : SynodicMonth
    return this * 2.11253006659397e-50;
  @:to inline public function toTropicalMonth() : TropicalMonth
    return this * 2.28333278160557e-50;
  @:to inline public function toJulianYear() : JulianYear
    return this * 1.70798793317616e-51;
  @:to inline public function toGigasecond() : Gigasecond
    return this * 5.39e-53;
  @:to inline public function toTerasecond() : Terasecond
    return this * 5.39e-56;

  @:to inline public function toString() : String
    return this + symbol;

  public static inline var symbol : String = "tP";
}