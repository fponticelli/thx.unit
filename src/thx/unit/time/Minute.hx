package thx.unit.time;

using thx.Floats;
import thx.Decimal;

abstract Minute(Decimal) {
  @:from inline static public function fromDecimal(value : Decimal) : Minute
    return new Minute(value);

  @:from inline static public function fromInt(value : Int) : Minute
    return fromDecimal(Decimal.fromInt(value));

  @:from inline static public function fromFloat(value : Float) : Minute
    return fromDecimal(Decimal.fromFloat(value));

  inline function new(value : Decimal)
    this = value;

  inline public function abs() : Minute
    return this.abs();

  inline public function min(that : Minute) : Minute
    return this.min(that.toDecimal());

  inline public function max(that : Minute) : Minute
    return this.max(that.toDecimal());

  @:op( -A ) inline public function negate() : Minute
    return -this;
  @:op( A+B) inline public function add(that : Minute) : Minute
    return this.add(that.toDecimal());
  @:op( A-B) inline public function subtract(that : Minute) : Minute
    return this.subtract(that.toDecimal());
  @:op( A*B) inline public function multiply(that : Decimal) : Minute
    return this.multiply(that);
  @:op( A/B) inline public function divide(that : Decimal) : Minute
    return this.divide(that);
  @:op( A%B) inline public function modulo(that : Decimal) : Minute
    return this.modulo(that);
  @:op(A==B) inline public function equal(that : Minute) : Bool
    return this.equals(that.toDecimal());
  public function nearEquals(that : Minute) : Bool
    return Floats.nearEquals(this.toFloat(), that.toFloat());
  @:op(A!=B) inline public function notEqual(that : Minute) : Bool
    return !this.equals(that.toDecimal());
  @:op( A<B) inline public function less(that : Minute) : Bool
    return this.less(that.toDecimal());
  @:op(A<=B) inline public function lessEqual(that : Minute) : Bool
    return this.lessEqual(that.toDecimal());
  @:deprecated("use greater instead or simply >")
  inline public function more(that : Minute) : Bool
    return greater(that);
  @:op( A>B) inline public function greater(that : Minute) : Bool
    return this.greater(that.toDecimal());
  @:deprecated("use greaterEqual instead or simply >=")
  inline public function moreEqual(that : Minute) : Bool
    return greaterEqual(that);
  @:op(A>=B) inline public function greaterEqual(that : Minute) : Bool
    return this.greaterEqual(that.toDecimal());

  inline public function toDecimal() : Decimal
    return this;

  inline public function toFloat() : Float
    return this.toFloat();


  @:to inline public function toPlankTimeUnit() : PlankTimeUnit
    return this * 1.11317254174397e+45;
  @:to inline public function toJiffyPhysics() : JiffyPhysics
    return this * 2e+25;
  @:to inline public function toSvedberg() : Svedberg
    return this * 60000000000000;
  @:to inline public function toPicosecond() : Picosecond
    return this * 6000000000000;
  @:to inline public function toNanosecond() : Nanosecond
    return this * 6000000000;
  @:to inline public function toShake() : Shake
    return this * 600000000;
  @:to inline public function toMicrosecond() : Microsecond
    return this * 6000000;
  @:to inline public function toFourth() : Fourth
    return this * 215999.999998272;
  @:to inline public function toMillisecond() : Millisecond
    return this * 60000;
  @:to inline public function toThird() : Third
    return this * 3599.99999999928;
  @:to inline public function toSecond() : Second
    return this * 60;
  @:to inline public function toKe() : Ke
    return this * 0.0694444444444444;
  @:to inline public function toKilosecond() : Kilosecond
    return this * 0.06;
  @:to inline public function toHour() : Hour
    return this * 0.0166666666666667;
  @:to inline public function toDay() : Day
    return this * 0.000694444444444444;
  @:to inline public function toWeek() : Week
    return this * 9.92063492063492e-05;
  @:to inline public function toMegasecond() : Megasecond
    return this * 6e-05;
  @:to inline public function toFortnight() : Fortnight
    return this * 4.96031746031746e-05;
  @:to inline public function toSynodicMonth() : SynodicMonth
    return this * 2.35161046374097e-05;
  @:to inline public function toTropicalMonth() : TropicalMonth
    return this * 2.54174335614721e-05;
  @:to inline public function toJulianYear() : JulianYear
    return this * 1.90128526884174e-06;
  @:to inline public function toGigasecond() : Gigasecond
    return this * 6e-08;
  @:to inline public function toTerasecond() : Terasecond
    return this * 6e-11;

  @:to inline public function toString() : String
    return this.toString() + symbol;

  public static inline var symbol : String = "min";
}
