package thx.unit.time;

using thx.Floats;
import thx.Decimal;

abstract Kilosecond(Decimal) {
  @:from inline static public function fromDecimal(value : Decimal) : Kilosecond
    return new Kilosecond(value);

  @:from inline static public function fromInt(value : Int) : Kilosecond
    return fromDecimal(Decimal.fromInt(value));

  @:from inline static public function fromFloat(value : Float) : Kilosecond
    return fromDecimal(Decimal.fromFloat(value));

  inline function new(value : Decimal)
    this = value;

  inline public function abs() : Kilosecond
    return this.abs();

  inline public function min(that : Kilosecond) : Kilosecond
    return this.min(that.toDecimal());

  inline public function max(that : Kilosecond) : Kilosecond
    return this.max(that.toDecimal());

  @:op( -A ) inline public function negate() : Kilosecond
    return -this;
  @:op( A+B) inline public function add(that : Kilosecond) : Kilosecond
    return this.add(that.toDecimal());
  @:op( A-B) inline public function subtract(that : Kilosecond) : Kilosecond
    return this.subtract(that.toDecimal());
  @:op( A*B) inline public function multiply(that : Decimal) : Kilosecond
    return this.multiply(that);
  @:op( A/B) inline public function divide(that : Decimal) : Kilosecond
    return this.divide(that);
  @:op( A%B) inline public function modulo(that : Decimal) : Kilosecond
    return this.modulo(that);
  @:op(A==B) inline public function equal(that : Kilosecond) : Bool
    return this.equals(that.toDecimal());
  public function nearEquals(that : Kilosecond) : Bool
    return Floats.nearEquals(this.toFloat(), that.toFloat());
  @:op(A!=B) inline public function notEqual(that : Kilosecond) : Bool
    return !this.equals(that.toDecimal());
  @:op( A<B) inline public function less(that : Kilosecond) : Bool
    return this.less(that.toDecimal());
  @:op(A<=B) inline public function lessEqual(that : Kilosecond) : Bool
    return this.lessEqual(that.toDecimal());
  @:deprecated("use greater instead or simply >")
  inline public function more(that : Kilosecond) : Bool
    return greater(that);
  @:op( A>B) inline public function greater(that : Kilosecond) : Bool
    return this.greater(that.toDecimal());
  @:deprecated("use greaterEqual instead or simply >=")
  inline public function moreEqual(that : Kilosecond) : Bool
    return greaterEqual(that);
  @:op(A>=B) inline public function greaterEqual(that : Kilosecond) : Bool
    return this.greaterEqual(that.toDecimal());

  inline public function toDecimal() : Decimal
    return this;

  inline public function toFloat() : Float
    return this.toFloat();


  @:to inline public function toPlankTimeUnit() : PlankTimeUnit
    return this * 1.85528756957328e+46;
  @:to inline public function toJiffyPhysics() : JiffyPhysics
    return this * 3.33333333333333e+26;
  @:to inline public function toSvedberg() : Svedberg
    return this * 1e+15;
  @:to inline public function toPicosecond() : Picosecond
    return this * 100000000000000;
  @:to inline public function toNanosecond() : Nanosecond
    return this * 100000000000;
  @:to inline public function toShake() : Shake
    return this * 10000000000;
  @:to inline public function toMicrosecond() : Microsecond
    return this * 100000000;
  @:to inline public function toFourth() : Fourth
    return this * 3599999.9999712;
  @:to inline public function toMillisecond() : Millisecond
    return this * 1000000;
  @:to inline public function toThird() : Third
    return this * 59999.999999988;
  @:to inline public function toSecond() : Second
    return this * 1000;
  @:to inline public function toMinute() : Minute
    return this * 16.6666666666667;
  @:to inline public function toKe() : Ke
    return this * 1.15740740740741;
  @:to inline public function toHour() : Hour
    return this * 0.277777777777778;
  @:to inline public function toDay() : Day
    return this * 0.0115740740740741;
  @:to inline public function toWeek() : Week
    return this * 0.00165343915343915;
  @:to inline public function toMegasecond() : Megasecond
    return this * 0.001;
  @:to inline public function toFortnight() : Fortnight
    return this * 0.000826719576719577;
  @:to inline public function toSynodicMonth() : SynodicMonth
    return this * 0.000391935077290162;
  @:to inline public function toTropicalMonth() : TropicalMonth
    return this * 0.000423623892691201;
  @:to inline public function toJulianYear() : JulianYear
    return this * 3.16880878140289e-05;
  @:to inline public function toGigasecond() : Gigasecond
    return this * 1e-06;
  @:to inline public function toTerasecond() : Terasecond
    return this * 1e-09;

  @:to inline public function toString() : String
    return this.toString() + symbol;

  public static inline var symbol : String = "ks";
}
