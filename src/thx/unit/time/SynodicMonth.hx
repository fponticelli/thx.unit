package thx.unit.time;

import thx.core.Floats;

// TODO parse string

abstract SynodicMonth(Float) {
  @:from inline static public function floatToSynodicMonth(value : Float) : SynodicMonth
    return new SynodicMonth(value);

  function new(value : Float)
    this = value;
  @:op( -A ) inline public function negate() : SynodicMonth
    return -this;
  @:op( A+B) inline public function add(other : SynodicMonth) : SynodicMonth
    return this + other.toFloat();
  @:op( A-B) inline public function subtract(other : SynodicMonth) : SynodicMonth
    return this - other.toFloat();
  @:op( A*B) inline public function multiply(other : Float) : SynodicMonth
    return this * other;
  @:op( A/B) inline public function divide(other : Float) : SynodicMonth
    return this / other;
  @:op( A%B) inline public function modulo(other : Float) : SynodicMonth
    return this % other;
  @:op(A==B) inline public function equal(other : SynodicMonth) : Bool
    return this == other;
  public function nearEquals(other : SynodicMonth) : Bool
    return Floats.nearEquals(this, other.toFloat());
  @:op(A!=B) inline public function notEqual(other : SynodicMonth) : Bool
    return this != other;
  @:op( A<B) inline public function less(other : SynodicMonth) : Bool
    return this < other.toFloat();
  @:op(A<=B) inline public function lessEqual(other : SynodicMonth) : Bool
    return this <= other.toFloat();
  @:op( A>B) inline public function more(other : SynodicMonth) : Bool
    return this > other.toFloat();
  @:op(A>=B) inline public function moreEqual(other : SynodicMonth) : Bool
    return this >= other.toFloat();

  @:to inline public function toFloat() : Float
    return this;

  @:to inline public function toPlankTimeUnit() : PlankTimeUnit
    return this * 4.73366043784787e+49;
  @:to inline public function toJiffyPhysics() : JiffyPhysics
    return this * 8.50480992e+29;
  @:to inline public function toSvedberg() : Svedberg
    return this * 2.551442976e+18;
  @:to inline public function toPicosecond() : Picosecond
    return this * 2.551442976e+17;
  @:to inline public function toNanosecond() : Nanosecond
    return this * 255144297600000;
  @:to inline public function toShake() : Shake
    return this * 25514429760000;
  @:to inline public function toMicrosecond() : Microsecond
    return this * 255144297600;
  @:to inline public function toFourth() : Fourth
    return this * 9185194713.52652;
  @:to inline public function toMillisecond() : Millisecond
    return this * 2551442976;
  @:to inline public function toThird() : Third
    return this * 153086578.559969;
  @:to inline public function toSecond() : Second
    return this * 2551442.976;
  @:to inline public function toMinute() : Minute
    return this * 42524.0496;
  @:to inline public function toKe() : Ke
    return this * 2953.059;
  @:to inline public function toKilosecond() : Kilosecond
    return this * 2551.442976;
  @:to inline public function toHour() : Hour
    return this * 708.73416;
  @:to inline public function toDay() : Day
    return this * 29.53059;
  @:to inline public function toWeek() : Week
    return this * 4.21865571428571;
  @:to inline public function toMegasecond() : Megasecond
    return this * 2.551442976;
  @:to inline public function toFortnight() : Fortnight
    return this * 2.10932785714286;
  @:to inline public function toTropicalMonth() : TropicalMonth
    return this * 1.08085220547274;
  @:to inline public function toJulianYear() : JulianYear
    return this * 0.0808503490759754;
  @:to inline public function toGigasecond() : Gigasecond
    return this * 0.002551442976;
  @:to inline public function toTerasecond() : Terasecond
    return this * 2.551442976e-06;

  @:to inline public function toString() : String
    return this + symbol;

  public static inline var symbol : String = "synodic month";
}