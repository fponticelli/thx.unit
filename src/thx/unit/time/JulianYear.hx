package thx.unit.time;

using thx.Floats;
import thx.Decimal;

abstract JulianYear(Decimal) {
  @:from inline static public function fromDecimal(value : Decimal) : JulianYear
    return new JulianYear(value);

  @:from inline static public function fromInt(value : Int) : JulianYear
    return fromDecimal(Decimal.fromInt(value));

  @:from inline static public function fromFloat(value : Float) : JulianYear
    return fromDecimal(Decimal.fromFloat(value));

  inline function new(value : Decimal)
    this = value;

  inline public function abs() : JulianYear
    return this.abs();

  inline public function min(that : JulianYear) : JulianYear
    return this.min(that.toDecimal());

  inline public function max(that : JulianYear) : JulianYear
    return this.max(that.toDecimal());

  @:op( -A ) inline public function negate() : JulianYear
    return -this;
  @:op( A+B) inline public function add(that : JulianYear) : JulianYear
    return this.add(that.toDecimal());
  @:op( A-B) inline public function subtract(that : JulianYear) : JulianYear
    return this.subtract(that.toDecimal());
  @:op( A*B) inline public function multiply(that : Decimal) : JulianYear
    return this.multiply(that);
  @:op( A/B) inline public function divide(that : Decimal) : JulianYear
    return this.divide(that);
  @:op( A%B) inline public function modulo(that : Decimal) : JulianYear
    return this.modulo(that);
  @:op(A==B) inline public function equal(that : JulianYear) : Bool
    return this.equals(that.toDecimal());
  public function nearEquals(that : JulianYear) : Bool
    return Floats.nearEquals(this.toFloat(), that.toFloat());
  @:op(A!=B) inline public function notEqual(that : JulianYear) : Bool
    return !this.equals(that.toDecimal());
  @:op( A<B) inline public function less(that : JulianYear) : Bool
    return this.less(that.toDecimal());
  @:op(A<=B) inline public function lessEqual(that : JulianYear) : Bool
    return this.lessEqual(that.toDecimal());
  @:deprecated("use greater instead or simply >")
  inline public function more(that : JulianYear) : Bool
    return greater(that);
  @:op( A>B) inline public function greater(that : JulianYear) : Bool
    return this.greater(that.toDecimal());
  @:deprecated("use greaterEqual instead or simply >=")
  inline public function moreEqual(that : JulianYear) : Bool
    return greaterEqual(that);
  @:op(A>=B) inline public function greaterEqual(that : JulianYear) : Bool
    return this.greaterEqual(that.toDecimal());

  inline public function toDecimal() : Decimal
    return this;

  inline public function toFloat() : Float
    return this.toFloat();


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
    return this.toString() + symbol;

  public static inline var symbol : String = "julian year";
}
