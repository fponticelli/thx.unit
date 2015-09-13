package thx.unit.time;

using thx.Floats;
import thx.Decimal;

abstract JiffyPhysics(Decimal) {
  @:from inline static public function fromDecimal(value : Decimal) : JiffyPhysics
    return new JiffyPhysics(value);

  @:from inline static public function fromInt(value : Int) : JiffyPhysics
    return fromDecimal(Decimal.fromInt(value));

  @:from inline static public function fromFloat(value : Float) : JiffyPhysics
    return fromDecimal(Decimal.fromFloat(value));

  inline function new(value : Decimal)
    this = value;

  inline public function abs() : JiffyPhysics
    return this.abs();

  inline public function min(that : JiffyPhysics) : JiffyPhysics
    return this.min(that.toDecimal());

  inline public function max(that : JiffyPhysics) : JiffyPhysics
    return this.max(that.toDecimal());

  @:op( -A ) inline public function negate() : JiffyPhysics
    return -this;
  @:op( A+B) inline public function add(that : JiffyPhysics) : JiffyPhysics
    return this.add(that.toDecimal());
  @:op( A-B) inline public function subtract(that : JiffyPhysics) : JiffyPhysics
    return this.subtract(that.toDecimal());
  @:op( A*B) inline public function multiply(that : Decimal) : JiffyPhysics
    return this.multiply(that);
  @:op( A/B) inline public function divide(that : Decimal) : JiffyPhysics
    return this.divide(that);
  @:op( A%B) inline public function modulo(that : Decimal) : JiffyPhysics
    return this.modulo(that);
  @:op(A==B) inline public function equal(that : JiffyPhysics) : Bool
    return this.equals(that.toDecimal());
  public function nearEquals(that : JiffyPhysics) : Bool
    return Floats.nearEquals(this.toFloat(), that.toFloat());
  @:op(A!=B) inline public function notEqual(that : JiffyPhysics) : Bool
    return !this.equals(that.toDecimal());
  @:op( A<B) inline public function less(that : JiffyPhysics) : Bool
    return this.less(that.toDecimal());
  @:op(A<=B) inline public function lessEqual(that : JiffyPhysics) : Bool
    return this.lessEqual(that.toDecimal());
  @:deprecated("use greater instead or simply >")
  inline public function more(that : JiffyPhysics) : Bool
    return greater(that);
  @:op( A>B) inline public function greater(that : JiffyPhysics) : Bool
    return this.greater(that.toDecimal());
  @:deprecated("use greaterEqual instead or simply >=")
  inline public function moreEqual(that : JiffyPhysics) : Bool
    return greaterEqual(that);
  @:op(A>=B) inline public function greaterEqual(that : JiffyPhysics) : Bool
    return this.greaterEqual(that.toDecimal());

  inline public function toDecimal() : Decimal
    return this;

  inline public function toFloat() : Float
    return this.toFloat();


  @:to inline public function toPlankTimeUnit() : PlankTimeUnit
    return this * 5.56586270871985e+19;
  @:to inline public function toSvedberg() : Svedberg
    return this * 3e-12;
  @:to inline public function toPicosecond() : Picosecond
    return this * 3e-13;
  @:to inline public function toNanosecond() : Nanosecond
    return this * 3e-16;
  @:to inline public function toShake() : Shake
    return this * 3e-17;
  @:to inline public function toMicrosecond() : Microsecond
    return this * 3e-19;
  @:to inline public function toFourth() : Fourth
    return this * 1.07999999999136e-20;
  @:to inline public function toMillisecond() : Millisecond
    return this * 3e-21;
  @:to inline public function toThird() : Third
    return this * 1.79999999999964e-22;
  @:to inline public function toSecond() : Second
    return this * 3e-24;
  @:to inline public function toMinute() : Minute
    return this * 5e-26;
  @:to inline public function toKe() : Ke
    return this * 3.47222222222222e-27;
  @:to inline public function toKilosecond() : Kilosecond
    return this * 3e-27;
  @:to inline public function toHour() : Hour
    return this * 8.33333333333333e-28;
  @:to inline public function toDay() : Day
    return this * 3.47222222222222e-29;
  @:to inline public function toWeek() : Week
    return this * 4.96031746031746e-30;
  @:to inline public function toMegasecond() : Megasecond
    return this * 3e-30;
  @:to inline public function toFortnight() : Fortnight
    return this * 2.48015873015873e-30;
  @:to inline public function toSynodicMonth() : SynodicMonth
    return this * 1.17580523187048e-30;
  @:to inline public function toTropicalMonth() : TropicalMonth
    return this * 1.2708716780736e-30;
  @:to inline public function toJulianYear() : JulianYear
    return this * 9.50642634420868e-32;
  @:to inline public function toGigasecond() : Gigasecond
    return this * 3e-33;
  @:to inline public function toTerasecond() : Terasecond
    return this * 3e-36;

  @:to inline public function toString() : String
    return this.toString() + symbol;

  public static inline var symbol : String = "jiffy";
}
