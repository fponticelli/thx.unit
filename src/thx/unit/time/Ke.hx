package thx.unit.time;

using thx.Floats;
import thx.Decimal;

abstract Ke(Decimal) {
  @:from inline static public function fromDecimal(value : Decimal) : Ke
    return new Ke(value);

  @:from inline static public function fromInt(value : Int) : Ke
    return fromDecimal(Decimal.fromInt(value));

  @:from inline static public function fromFloat(value : Float) : Ke
    return fromDecimal(Decimal.fromFloat(value));

  inline function new(value : Decimal)
    this = value;

  inline public function abs() : Ke
    return this.abs();

  inline public function min(that : Ke) : Ke
    return this.min(that.toDecimal());

  inline public function max(that : Ke) : Ke
    return this.max(that.toDecimal());

  @:op( -A ) inline public function negate() : Ke
    return -this;
  @:op( A+B) inline public function add(that : Ke) : Ke
    return this.add(that.toDecimal());
  @:op( A-B) inline public function subtract(that : Ke) : Ke
    return this.subtract(that.toDecimal());
  @:op( A*B) inline public function multiply(that : Decimal) : Ke
    return this.multiply(that);
  @:op( A/B) inline public function divide(that : Decimal) : Ke
    return this.divide(that);
  @:op( A%B) inline public function modulo(that : Decimal) : Ke
    return this.modulo(that);
  @:op(A==B) inline public function equal(that : Ke) : Bool
    return this.equals(that.toDecimal());
  public function nearEquals(that : Ke) : Bool
    return Floats.nearEquals(this.toFloat(), that.toFloat());
  @:op(A!=B) inline public function notEqual(that : Ke) : Bool
    return !this.equals(that.toDecimal());
  @:op( A<B) inline public function less(that : Ke) : Bool
    return this.less(that.toDecimal());
  @:op(A<=B) inline public function lessEqual(that : Ke) : Bool
    return this.lessEqual(that.toDecimal());
  @:deprecated("use greater instead or simply >")
  inline public function more(that : Ke) : Bool
    return greater(that);
  @:op( A>B) inline public function greater(that : Ke) : Bool
    return this.greater(that.toDecimal());
  @:deprecated("use greaterEqual instead or simply >=")
  inline public function moreEqual(that : Ke) : Bool
    return greaterEqual(that);
  @:op(A>=B) inline public function greaterEqual(that : Ke) : Bool
    return this.greaterEqual(that.toDecimal());

  inline public function toDecimal() : Decimal
    return this;

  inline public function toFloat() : Float
    return this.toFloat();


  @:to inline public function toPlankTimeUnit() : PlankTimeUnit
    return this * 1.60296846011132e+46;
  @:to inline public function toJiffyPhysics() : JiffyPhysics
    return this * 2.88e+26;
  @:to inline public function toSvedberg() : Svedberg
    return this * 864000000000000;
  @:to inline public function toPicosecond() : Picosecond
    return this * 86400000000000;
  @:to inline public function toNanosecond() : Nanosecond
    return this * 86400000000;
  @:to inline public function toShake() : Shake
    return this * 8640000000;
  @:to inline public function toMicrosecond() : Microsecond
    return this * 86400000;
  @:to inline public function toFourth() : Fourth
    return this * 3110399.99997512;
  @:to inline public function toMillisecond() : Millisecond
    return this * 864000;
  @:to inline public function toThird() : Third
    return this * 51839.9999999896;
  @:to inline public function toSecond() : Second
    return this * 864;
  @:to inline public function toMinute() : Minute
    return this * 14.4;
  @:to inline public function toKilosecond() : Kilosecond
    return this * 0.864;
  @:to inline public function toHour() : Hour
    return this * 0.24;
  @:to inline public function toDay() : Day
    return this * 0.01;
  @:to inline public function toWeek() : Week
    return this * 0.00142857142857143;
  @:to inline public function toMegasecond() : Megasecond
    return this * 0.000864;
  @:to inline public function toFortnight() : Fortnight
    return this * 0.000714285714285714;
  @:to inline public function toSynodicMonth() : SynodicMonth
    return this * 0.0003386319067787;
  @:to inline public function toTropicalMonth() : TropicalMonth
    return this * 0.000366011043285198;
  @:to inline public function toJulianYear() : JulianYear
    return this * 2.7378507871321e-05;
  @:to inline public function toGigasecond() : Gigasecond
    return this * 8.64e-07;
  @:to inline public function toTerasecond() : Terasecond
    return this * 8.64e-10;

  @:to inline public function toString() : String
    return this.toString() + symbol;

  public static inline var symbol : String = "ke";
}
