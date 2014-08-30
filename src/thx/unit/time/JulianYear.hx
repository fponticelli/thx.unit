package thx.unit.time;

// TODO parse string

abstract JulianYear(Float) {
  @:from inline static public function floatToJulianYear(value : Float) : JulianYear
    return new JulianYear(value);

  function new(value : Float)
    this = value;
  @:op( -A ) inline public function negate() : JulianYear
    return -this;
  @:op( A+B) inline public function add(other : JulianYear) : JulianYear
    return this + other.toFloat();
  @:op( A-B) inline public function subtract(other : JulianYear) : JulianYear
    return this - other.toFloat();
  @:op( A*B) inline public function multiply(other : Float) : JulianYear
    return this * other;
  @:op( A/B) inline public function divide(other : Float) : JulianYear
    return this / other;
  @:op( A%B) inline public function modulo(other : Float) : JulianYear
    return this % other;
  @:op(A==B) inline public function equal(other : JulianYear) : Bool
    return this == other;
  @:op(A!=B) inline public function notEqual(other : JulianYear) : Bool
    return this != other;
  @:op( A<B) inline public function less(other : JulianYear) : Bool
    return this < other.toFloat();
  @:op(A<=B) inline public function lessEqual(other : JulianYear) : Bool
    return this <= other.toFloat();
  @:op( A>B) inline public function more(other : JulianYear) : Bool
    return this > other.toFloat();
  @:op(A>=B) inline public function moreEqual(other : JulianYear) : Bool
    return this >= other.toFloat();

  inline public function toFloat() : Float
    return this;

  @:to inline public function toPlankTimeUnit() : PlankTimeUnit
    return this * 5.85484230055659e+50;
  @:to inline public function toJiffyPhysics() : JiffyPhysics
    return this * 1.05192e+31;
  @:to inline public function toSvedberg() : Svedberg
    return this * 3.15576e+19;
  @:to inline public function toPicosecond() : Picosecond
    return this * 3.15576e+18;
  @:to inline public function toNanosecond() : Nanosecond
    return this * 3.15576e+15;
  @:to inline public function toShake() : Shake
    return this * 315576000000000;
  @:to inline public function toMicrosecond() : Microsecond
    return this * 3155760000000;
  @:to inline public function toFourth() : Fourth
    return this * 113607359999.091;
  @:to inline public function toMillisecond() : Millisecond
    return this * 31557600000;
  @:to inline public function toThird() : Third
    return this * 1893455999.99962;
  @:to inline public function toSecond() : Second
    return this * 31557600;
  @:to inline public function toMinute() : Minute
    return this * 525960;
  @:to inline public function toKe() : Ke
    return this * 36525;
  @:to inline public function toKilosecond() : Kilosecond
    return this * 31557.6;
  @:to inline public function toHour() : Hour
    return this * 8766;
  @:to inline public function toDay() : Day
    return this * 365.25;
  @:to inline public function toWeek() : Week
    return this * 52.1785714285714;
  @:to inline public function toMegasecond() : Megasecond
    return this * 31.5576;
  @:to inline public function toFortnight() : Fortnight
    return this * 26.0892857142857;
  @:to inline public function toSynodicMonth() : SynodicMonth
    return this * 12.368530395092;
  @:to inline public function toTropicalMonth() : TropicalMonth
    return this * 13.3685533559919;
  @:to inline public function toGigasecond() : Gigasecond
    return this * 0.0315576;
  @:to inline public function toTerasecond() : Terasecond
    return this * 3.15576e-05;

  @:to inline public function toString() : String
    return this + symbol;

  public static inline var symbol : String = "julian year";
}