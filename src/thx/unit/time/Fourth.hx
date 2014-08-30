package thx.unit.time;

import thx.core.Floats;

// TODO parse string

abstract Fourth(Float) {
  @:from inline static public function floatToFourth(value : Float) : Fourth
    return new Fourth(value);

  function new(value : Float)
    this = value;
  @:op( -A ) inline public function negate() : Fourth
    return -this;
  @:op( A+B) inline public function add(other : Fourth) : Fourth
    return this + other.toFloat();
  @:op( A-B) inline public function subtract(other : Fourth) : Fourth
    return this - other.toFloat();
  @:op( A*B) inline public function multiply(other : Float) : Fourth
    return this * other;
  @:op( A/B) inline public function divide(other : Float) : Fourth
    return this / other;
  @:op( A%B) inline public function modulo(other : Float) : Fourth
    return this % other;
  @:op(A==B) inline public function equal(other : Fourth) : Bool
    return this == other;
  public function nearEqual(other : Fourth) : Bool
    return Floats.nearEqual(this, other.toFloat());
  @:op(A!=B) inline public function notEqual(other : Fourth) : Bool
    return this != other;
  @:op( A<B) inline public function less(other : Fourth) : Bool
    return this < other.toFloat();
  @:op(A<=B) inline public function lessEqual(other : Fourth) : Bool
    return this <= other.toFloat();
  @:op( A>B) inline public function more(other : Fourth) : Bool
    return this > other.toFloat();
  @:op(A>=B) inline public function moreEqual(other : Fourth) : Bool
    return this >= other.toFloat();

  @:to inline public function toFloat() : Float
    return this;

  @:to inline public function toPlankTimeUnit() : PlankTimeUnit
    return this * 5.15357658218924e+39;
  @:to inline public function toJiffyPhysics() : JiffyPhysics
    return this * 9.25925925933333e+19;
  @:to inline public function toSvedberg() : Svedberg
    return this * 277777777.78;
  @:to inline public function toPicosecond() : Picosecond
    return this * 27777777.778;
  @:to inline public function toNanosecond() : Nanosecond
    return this * 27777.777778;
  @:to inline public function toShake() : Shake
    return this * 2777.7777778;
  @:to inline public function toMicrosecond() : Microsecond
    return this * 27.777777778;
  @:to inline public function toMillisecond() : Millisecond
    return this * 0.27777777778;
  @:to inline public function toThird() : Third
    return this * 0.0166666666667967;
  @:to inline public function toSecond() : Second
    return this * 0.00027777777778;
  @:to inline public function toMinute() : Minute
    return this * 4.62962962966667e-06;
  @:to inline public function toKe() : Ke
    return this * 3.21502057615741e-07;
  @:to inline public function toKilosecond() : Kilosecond
    return this * 2.7777777778e-07;
  @:to inline public function toHour() : Hour
    return this * 7.71604938277778e-08;
  @:to inline public function toDay() : Day
    return this * 3.21502057615741e-09;
  @:to inline public function toWeek() : Week
    return this * 4.59288653736773e-10;
  @:to inline public function toMegasecond() : Megasecond
    return this * 2.7777777778e-10;
  @:to inline public function toFortnight() : Fortnight
    return this * 2.29644326868386e-10;
  @:to inline public function toSynodicMonth() : SynodicMonth
    return this * 1.08870854803694e-10;
  @:to inline public function toTropicalMonth() : TropicalMonth
    return this * 1.17673303526275e-10;
  @:to inline public function toJulianYear() : JulianYear
    return this * 8.80224661507846e-12;
  @:to inline public function toGigasecond() : Gigasecond
    return this * 2.7777777778e-13;
  @:to inline public function toTerasecond() : Terasecond
    return this * 2.7777777778e-16;

  @:to inline public function toString() : String
    return this + symbol;

  public static inline var symbol : String = "fourth";
}