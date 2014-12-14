package thx.unit.time;

import thx.core.Floats;

// TODO parse string

abstract Week(Float) {
  @:from inline static public function floatToWeek(value : Float) : Week
    return new Week(value);

  function new(value : Float)
    this = value;

  inline public function abs() : Week
    return Math.abs(this);

  inline public function min(other : Week) : Week
    return Math.min(this, other.toFloat());

  inline public function max(other : Week) : Week
    return Math.max(this, other.toFloat());

  @:op( -A ) inline public function negate() : Week
    return -this;
  @:op( A+B) inline public function add(other : Week) : Week
    return this + other.toFloat();
  @:op( A-B) inline public function subtract(other : Week) : Week
    return this - other.toFloat();
  @:op( A*B) inline public function multiply(other : Float) : Week
    return this * other;
  @:op( A/B) inline public function divide(other : Float) : Week
    return this / other;
  @:op( A%B) inline public function modulo(other : Float) : Week
    return this % other;
  @:op(A==B) inline public function equal(other : Week) : Bool
    return this == other;
  public function nearEquals(other : Week) : Bool
    return Floats.nearEquals(this, other.toFloat());
  @:op(A!=B) inline public function notEqual(other : Week) : Bool
    return this != other;
  @:op( A<B) inline public function less(other : Week) : Bool
    return this < other.toFloat();
  @:op(A<=B) inline public function lessEqual(other : Week) : Bool
    return this <= other.toFloat();
  @:op( A>B) inline public function more(other : Week) : Bool
    return this > other.toFloat();
  @:op(A>=B) inline public function moreEqual(other : Week) : Bool
    return this >= other.toFloat();

  @:to inline public function toFloat() : Float
    return this;

  @:to inline public function toPlankTimeUnit() : PlankTimeUnit
    return this * 1.12207792207792e+49;
  @:to inline public function toJiffyPhysics() : JiffyPhysics
    return this * 2.016e+29;
  @:to inline public function toSvedberg() : Svedberg
    return this * 6.048e+17;
  @:to inline public function toPicosecond() : Picosecond
    return this * 6.048e+16;
  @:to inline public function toNanosecond() : Nanosecond
    return this * 60480000000000;
  @:to inline public function toShake() : Shake
    return this * 6048000000000;
  @:to inline public function toMicrosecond() : Microsecond
    return this * 60480000000;
  @:to inline public function toFourth() : Fourth
    return this * 2177279999.98258;
  @:to inline public function toMillisecond() : Millisecond
    return this * 604800000;
  @:to inline public function toThird() : Third
    return this * 36287999.9999927;
  @:to inline public function toSecond() : Second
    return this * 604800;
  @:to inline public function toMinute() : Minute
    return this * 10080;
  @:to inline public function toKe() : Ke
    return this * 700;
  @:to inline public function toKilosecond() : Kilosecond
    return this * 604.8;
  @:to inline public function toHour() : Hour
    return this * 168;
  @:to inline public function toDay() : Day
    return this * 7;
  @:to inline public function toMegasecond() : Megasecond
    return this * 0.6048;
  @:to inline public function toFortnight() : Fortnight
    return this * 0.5;
  @:to inline public function toSynodicMonth() : SynodicMonth
    return this * 0.23704233474509;
  @:to inline public function toTropicalMonth() : TropicalMonth
    return this * 0.256207730299639;
  @:to inline public function toJulianYear() : JulianYear
    return this * 0.0191649555099247;
  @:to inline public function toGigasecond() : Gigasecond
    return this * 0.0006048;
  @:to inline public function toTerasecond() : Terasecond
    return this * 6.048e-07;

  @:to inline public function toString() : String
    return this + symbol;

  public static inline var symbol : String = "week";
}