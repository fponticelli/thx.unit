package thx.unit.time;

using thx.Floats;
import thx.Decimal;

abstract Second(Decimal) {
  @:from inline static public function fromDecimal(value : Decimal) : Second
    return new Second(value);

  @:from inline static public function fromInt(value : Int) : Second
    return fromDecimal(Decimal.fromInt(value));

  @:from inline static public function fromFloat(value : Float) : Second
    return fromDecimal(Decimal.fromFloat(value));

  inline function new(value : Decimal)
    this = value;

  inline public function abs() : Second
    return this.abs();

  inline public function min(that : Second) : Second
    return this.min(that.toDecimal());

  inline public function max(that : Second) : Second
    return this.max(that.toDecimal());

  @:op( -A ) inline public function negate() : Second
    return -this;
  @:op( A+B) inline public function add(that : Second) : Second
    return this.add(that.toDecimal());
  @:op( A-B) inline public function subtract(that : Second) : Second
    return this.subtract(that.toDecimal());
  @:op( A*B) inline public function multiply(that : Decimal) : Second
    return this.multiply(that);
  @:op( A/B) inline public function divide(that : Decimal) : Second
    return this.divide(that);
  @:op( A%B) inline public function modulo(that : Decimal) : Second
    return this.modulo(that);
  @:op(A==B) inline public function equal(that : Second) : Bool
    return this.equals(that.toDecimal());
  public function nearEquals(that : Second) : Bool
    return Floats.nearEquals(this.toFloat(), that.toFloat());
  @:op(A!=B) inline public function notEqual(that : Second) : Bool
    return !this.equals(that.toDecimal());
  @:op( A<B) inline public function less(that : Second) : Bool
    return this.less(that.toDecimal());
  @:op(A<=B) inline public function lessEqual(that : Second) : Bool
    return this.lessEqual(that.toDecimal());
  @:deprecated("use greater instead or simply >")
  inline public function more(that : Second) : Bool
    return greater(that);
  @:op( A>B) inline public function greater(that : Second) : Bool
    return this.greater(that.toDecimal());
  @:deprecated("use greaterEqual instead or simply >=")
  inline public function moreEqual(that : Second) : Bool
    return greaterEqual(that);
  @:op(A>=B) inline public function greaterEqual(that : Second) : Bool
    return this.greaterEqual(that.toDecimal());

  inline public function toDecimal() : Decimal
    return this;

  inline public function toFloat() : Float
    return this.toFloat();


  @:to inline public function toPlankTimeUnit() : PlankTimeUnit
    return this * 1.85528756957328e+43;
  @:to inline public function toJiffyPhysics() : JiffyPhysics
    return this * 3.33333333333333e+23;
  @:to inline public function toSvedberg() : Svedberg
    return this * 1000000000000;
  @:to inline public function toPicosecond() : Picosecond
    return this * 100000000000;
  @:to inline public function toNanosecond() : Nanosecond
    return this * 100000000;
  @:to inline public function toShake() : Shake
    return this * 10000000;
  @:to inline public function toMicrosecond() : Microsecond
    return this * 100000;
  @:to inline public function toFourth() : Fourth
    return this * 3599.9999999712;
  @:to inline public function toMillisecond() : Millisecond
    return this * 1000;
  @:to inline public function toThird() : Third
    return this * 59.999999999988;
  @:to inline public function toMinute() : Minute
    return this * 0.0166666666666667;
  @:to inline public function toKe() : Ke
    return this * 0.00115740740740741;
  @:to inline public function toKilosecond() : Kilosecond
    return this * 0.001;
  @:to inline public function toHour() : Hour
    return this * 0.000277777777777778;
  @:to inline public function toDay() : Day
    return this * 1.15740740740741e-05;
  @:to inline public function toWeek() : Week
    return this * 1.65343915343915e-06;
  @:to inline public function toMegasecond() : Megasecond
    return this * 1e-06;
  @:to inline public function toFortnight() : Fortnight
    return this * 8.26719576719577e-07;
  @:to inline public function toSynodicMonth() : SynodicMonth
    return this * 3.91935077290162e-07;
  @:to inline public function toTropicalMonth() : TropicalMonth
    return this * 4.23623892691201e-07;
  @:to inline public function toJulianYear() : JulianYear
    return this * 3.16880878140289e-08;
  @:to inline public function toGigasecond() : Gigasecond
    return this * 1e-09;
  @:to inline public function toTerasecond() : Terasecond
    return this * 1e-12;

  @:to inline public function toString() : String
    return this.toString() + symbol;

  public static inline var symbol : String = "s";
}
