package thx.unit.time;

import thx.Floats;

// TODO parse string

abstract TropicalMonth(Float) {
  @:from inline static public function floatToTropicalMonth(value : Float) : TropicalMonth
    return new TropicalMonth(value);

  function new(value : Float)
    this = value;

  inline public function abs() : TropicalMonth
    return Math.abs(this);

  inline public function min(other : TropicalMonth) : TropicalMonth
    return Math.min(this, other.toFloat());

  inline public function max(other : TropicalMonth) : TropicalMonth
    return Math.max(this, other.toFloat());

  @:op( -A ) inline public function negate() : TropicalMonth
    return -this;
  @:op( A+B) inline public function add(other : TropicalMonth) : TropicalMonth
    return this + other.toFloat();
  @:op( A-B) inline public function subtract(other : TropicalMonth) : TropicalMonth
    return this - other.toFloat();
  @:op( A*B) inline public function multiply(other : Float) : TropicalMonth
    return this * other;
  @:op( A/B) inline public function divide(other : Float) : TropicalMonth
    return this / other;
  @:op( A%B) inline public function modulo(other : Float) : TropicalMonth
    return this % other;
  @:op(A==B) inline public function equal(other : TropicalMonth) : Bool
    return this == other;
  public function nearEquals(other : TropicalMonth) : Bool
    return Floats.nearEquals(this, other.toFloat());
  @:op(A!=B) inline public function notEqual(other : TropicalMonth) : Bool
    return this != other;
  @:op( A<B) inline public function less(other : TropicalMonth) : Bool
    return this < other.toFloat();
  @:op(A<=B) inline public function lessEqual(other : TropicalMonth) : Bool
    return this <= other.toFloat();
  @:op( A>B) inline public function more(other : TropicalMonth) : Bool
    return this > other.toFloat();
  @:op(A>=B) inline public function moreEqual(other : TropicalMonth) : Bool
    return this >= other.toFloat();

  @:to inline public function toFloat() : Float
    return this;

  @:to inline public function toPlankTimeUnit() : PlankTimeUnit
    return this * 4.37956310204082e+49;
  @:to inline public function toJiffyPhysics() : JiffyPhysics
    return this * 7.86861504e+29;
  @:to inline public function toSvedberg() : Svedberg
    return this * 2.360584512e+18;
  @:to inline public function toPicosecond() : Picosecond
    return this * 2.360584512e+17;
  @:to inline public function toNanosecond() : Nanosecond
    return this * 236058451200000;
  @:to inline public function toShake() : Shake
    return this * 23605845120000;
  @:to inline public function toMicrosecond() : Microsecond
    return this * 236058451200;
  @:to inline public function toFourth() : Fourth
    return this * 8498104243.13202;
  @:to inline public function toMillisecond() : Millisecond
    return this * 2360584512;
  @:to inline public function toThird() : Third
    return this * 141635070.719972;
  @:to inline public function toSecond() : Second
    return this * 2360584.512;
  @:to inline public function toMinute() : Minute
    return this * 39343.0752;
  @:to inline public function toKe() : Ke
    return this * 2732.158;
  @:to inline public function toKilosecond() : Kilosecond
    return this * 2360.584512;
  @:to inline public function toHour() : Hour
    return this * 655.71792;
  @:to inline public function toDay() : Day
    return this * 27.32158;
  @:to inline public function toWeek() : Week
    return this * 3.90308285714286;
  @:to inline public function toMegasecond() : Megasecond
    return this * 2.360584512;
  @:to inline public function toFortnight() : Fortnight
    return this * 1.95154142857143;
  @:to inline public function toSynodicMonth() : SynodicMonth
    return this * 0.925195873160679;
  @:to inline public function toJulianYear() : JulianYear
    return this * 0.0748024093086927;
  @:to inline public function toGigasecond() : Gigasecond
    return this * 0.002360584512;
  @:to inline public function toTerasecond() : Terasecond
    return this * 2.360584512e-06;

  @:to inline public function toString() : String
    return this + symbol;

  public static inline var symbol : String = "tropical month";
}