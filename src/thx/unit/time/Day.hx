package thx.unit.time;

using thx.Floats;
import thx.Decimal;

abstract Day(Decimal) {
  @:from inline static public function fromDecimal(value : Decimal) : Day
    return new Day(value);

  @:from inline static public function fromInt(value : Int) : Day
    return fromDecimal(Decimal.fromInt(value));

  @:from inline static public function fromFloat(value : Float) : Day
    return fromDecimal(Decimal.fromFloat(value));

  inline function new(value : Decimal)
    this = value;

  inline public function abs() : Day
    return this.abs();

  inline public function min(that : Day) : Day
    return this.min(that.toDecimal());

  inline public function max(that : Day) : Day
    return this.max(that.toDecimal());

  @:op( -A ) inline public function negate() : Day
    return -this;
  @:op( A+B) inline public function add(that : Day) : Day
    return this.add(that.toDecimal());
  @:op( A-B) inline public function subtract(that : Day) : Day
    return this.subtract(that.toDecimal());
  @:op( A*B) inline public function multiply(that : Decimal) : Day
    return this.multiply(that);
  @:op( A/B) inline public function divide(that : Decimal) : Day
    return this.divide(that);
  @:op( A%B) inline public function modulo(that : Decimal) : Day
    return this.modulo(that);
  @:op(A==B) inline public function equal(that : Day) : Bool
    return this.equals(that.toDecimal());
  public function nearEquals(that : Day) : Bool
    return Floats.nearEquals(this.toFloat(), that.toFloat());
  @:op(A!=B) inline public function notEqual(that : Day) : Bool
    return !this.equals(that.toDecimal());
  @:op( A<B) inline public function less(that : Day) : Bool
    return this.less(that.toDecimal());
  @:op(A<=B) inline public function lessEqual(that : Day) : Bool
    return this.lessEqual(that.toDecimal());
  @:deprecated("use greater instead or simply >")
  inline public function more(that : Day) : Bool
    return greater(that);
  @:op( A>B) inline public function greater(that : Day) : Bool
    return this.greater(that.toDecimal());
  @:deprecated("use greaterEqual instead or simply >=")
  inline public function moreEqual(that : Day) : Bool
    return greaterEqual(that);
  @:op(A>=B) inline public function greaterEqual(that : Day) : Bool
    return this.greaterEqual(that.toDecimal());

  inline public function toDecimal() : Decimal
    return this;

  inline public function toFloat() : Float
    return this.toFloat();


  @:to inline public function toPlankTimeUnit() : PlankTimeUnit
    return this * 1.60296846011132e+48;
  @:to inline public function toJiffyPhysics() : JiffyPhysics
    return this * 2.88e+28;
  @:to inline public function toSvedberg() : Svedberg
    return this * 8.64e+16;
  @:to inline public function toPicosecond() : Picosecond
    return this * 8.64e+15;
  @:to inline public function toNanosecond() : Nanosecond
    return this * 8640000000000;
  @:to inline public function toShake() : Shake
    return this * 864000000000;
  @:to inline public function toMicrosecond() : Microsecond
    return this * 8640000000;
  @:to inline public function toFourth() : Fourth
    return this * 311039999.997512;
  @:to inline public function toMillisecond() : Millisecond
    return this * 86400000;
  @:to inline public function toThird() : Third
    return this * 5183999.99999896;
  @:to inline public function toSecond() : Second
    return this * 86400;
  @:to inline public function toMinute() : Minute
    return this * 1440;
  @:to inline public function toKe() : Ke
    return this * 100;
  @:to inline public function toKilosecond() : Kilosecond
    return this * 86.4;
  @:to inline public function toHour() : Hour
    return this * 24;
  @:to inline public function toWeek() : Week
    return this * 0.142857142857143;
  @:to inline public function toMegasecond() : Megasecond
    return this * 0.0864;
  @:to inline public function toFortnight() : Fortnight
    return this * 0.0714285714285714;
  @:to inline public function toSynodicMonth() : SynodicMonth
    return this * 0.03386319067787;
  @:to inline public function toTropicalMonth() : TropicalMonth
    return this * 0.0366011043285198;
  @:to inline public function toJulianYear() : JulianYear
    return this * 0.0027378507871321;
  @:to inline public function toGigasecond() : Gigasecond
    return this * 8.64e-05;
  @:to inline public function toTerasecond() : Terasecond
    return this * 8.64e-08;

  @:to inline public function toString() : String
    return this.toString() + symbol;

  public static inline var symbol : String = "day";
}
