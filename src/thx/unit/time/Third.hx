package thx.unit.time;

import thx.core.Floats;

// TODO parse string

abstract Third(Float) {
  @:from inline static public function floatToThird(value : Float) : Third
    return new Third(value);

  function new(value : Float)
    this = value;
  @:op( -A ) inline public function negate() : Third
    return -this;
  @:op( A+B) inline public function add(other : Third) : Third
    return this + other.toFloat();
  @:op( A-B) inline public function subtract(other : Third) : Third
    return this - other.toFloat();
  @:op( A*B) inline public function multiply(other : Float) : Third
    return this * other;
  @:op( A/B) inline public function divide(other : Float) : Third
    return this / other;
  @:op( A%B) inline public function modulo(other : Float) : Third
    return this % other;
  @:op(A==B) inline public function equal(other : Third) : Bool
    return this == other;
  public function nearEquals(other : Third) : Bool
    return Floats.nearEquals(this, other.toFloat());
  @:op(A!=B) inline public function notEqual(other : Third) : Bool
    return this != other;
  @:op( A<B) inline public function less(other : Third) : Bool
    return this < other.toFloat();
  @:op(A<=B) inline public function lessEqual(other : Third) : Bool
    return this <= other.toFloat();
  @:op( A>B) inline public function more(other : Third) : Bool
    return this > other.toFloat();
  @:op(A>=B) inline public function moreEqual(other : Third) : Bool
    return this >= other.toFloat();

  @:to inline public function toFloat() : Float
    return this;

  @:to inline public function toPlankTimeUnit() : PlankTimeUnit
    return this * 3.09214594928943e+41;
  @:to inline public function toJiffyPhysics() : JiffyPhysics
    return this * 5.55555555555667e+21;
  @:to inline public function toSvedberg() : Svedberg
    return this * 16666666666.67;
  @:to inline public function toPicosecond() : Picosecond
    return this * 1666666666.667;
  @:to inline public function toNanosecond() : Nanosecond
    return this * 1666666.666667;
  @:to inline public function toShake() : Shake
    return this * 166666.6666667;
  @:to inline public function toMicrosecond() : Microsecond
    return this * 1666.666666667;
  @:to inline public function toFourth() : Fourth
    return this * 59.999999999532;
  @:to inline public function toMillisecond() : Millisecond
    return this * 16.66666666667;
  @:to inline public function toSecond() : Second
    return this * 0.01666666666667;
  @:to inline public function toMinute() : Minute
    return this * 0.000277777777777833;
  @:to inline public function toKe() : Ke
    return this * 1.9290123456794e-05;
  @:to inline public function toKilosecond() : Kilosecond
    return this * 1.666666666667e-05;
  @:to inline public function toHour() : Hour
    return this * 4.62962962963056e-06;
  @:to inline public function toDay() : Day
    return this * 1.9290123456794e-07;
  @:to inline public function toWeek() : Week
    return this * 2.75573192239914e-08;
  @:to inline public function toMegasecond() : Megasecond
    return this * 1.666666666667e-08;
  @:to inline public function toFortnight() : Fortnight
    return this * 1.37786596119957e-08;
  @:to inline public function toSynodicMonth() : SynodicMonth
    return this * 6.53225128817067e-09;
  @:to inline public function toTropicalMonth() : TropicalMonth
    return this * 7.06039821152144e-09;
  @:to inline public function toJulianYear() : JulianYear
    return this * 5.28134796900588e-10;
  @:to inline public function toGigasecond() : Gigasecond
    return this * 1.666666666667e-11;
  @:to inline public function toTerasecond() : Terasecond
    return this * 1.666666666667e-14;

  @:to inline public function toString() : String
    return this + symbol;

  public static inline var symbol : String = "third";
}