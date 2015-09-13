package thx.unit.time;

using thx.Floats;
import thx.Decimal;

abstract Millisecond(Decimal) {
  @:from inline static public function fromDecimal(value : Decimal) : Millisecond
    return new Millisecond(value);

  @:from inline static public function fromInt(value : Int) : Millisecond
    return fromDecimal(Decimal.fromInt(value));

  @:from inline static public function fromFloat(value : Float) : Millisecond
    return fromDecimal(Decimal.fromFloat(value));

  inline function new(value : Decimal)
    this = value;

  inline public function abs() : Millisecond
    return this.abs();

  inline public function min(that : Millisecond) : Millisecond
    return this.min(that.toDecimal());

  inline public function max(that : Millisecond) : Millisecond
    return this.max(that.toDecimal());

  @:op( -A ) inline public function negate() : Millisecond
    return -this;
  @:op( A+B) inline public function add(that : Millisecond) : Millisecond
    return this.add(that.toDecimal());
  @:op( A-B) inline public function subtract(that : Millisecond) : Millisecond
    return this.subtract(that.toDecimal());
  @:op( A*B) inline public function multiply(that : Decimal) : Millisecond
    return this.multiply(that);
  @:op( A/B) inline public function divide(that : Decimal) : Millisecond
    return this.divide(that);
  @:op( A%B) inline public function modulo(that : Decimal) : Millisecond
    return this.modulo(that);
  @:op(A==B) inline public function equal(that : Millisecond) : Bool
    return this.equals(that.toDecimal());
  public function nearEquals(that : Millisecond) : Bool
    return Floats.nearEquals(this.toFloat(), that.toFloat());
  @:op(A!=B) inline public function notEqual(that : Millisecond) : Bool
    return !this.equals(that.toDecimal());
  @:op( A<B) inline public function less(that : Millisecond) : Bool
    return this.less(that.toDecimal());
  @:op(A<=B) inline public function lessEqual(that : Millisecond) : Bool
    return this.lessEqual(that.toDecimal());
  @:deprecated("use greater instead or simply >")
  inline public function more(that : Millisecond) : Bool
    return greater(that);
  @:op( A>B) inline public function greater(that : Millisecond) : Bool
    return this.greater(that.toDecimal());
  @:deprecated("use greaterEqual instead or simply >=")
  inline public function moreEqual(that : Millisecond) : Bool
    return greaterEqual(that);
  @:op(A>=B) inline public function greaterEqual(that : Millisecond) : Bool
    return this.greaterEqual(that.toDecimal());

  inline public function toDecimal() : Decimal
    return this;

  inline public function toFloat() : Float
    return this.toFloat();


  @:to inline public function toPlankTimeUnit() : PlankTimeUnit
    return this * 1.85528756957328e+40;
  @:to inline public function toJiffyPhysics() : JiffyPhysics
    return this * 3.33333333333333e+20;
  @:to inline public function toSvedberg() : Svedberg
    return this * 1000000000;
  @:to inline public function toPicosecond() : Picosecond
    return this * 100000000;
  @:to inline public function toNanosecond() : Nanosecond
    return this * 100000;
  @:to inline public function toShake() : Shake
    return this * 10000;
  @:to inline public function toMicrosecond() : Microsecond
    return this * 100;
  @:to inline public function toFourth() : Fourth
    return this * 3.5999999999712;
  @:to inline public function toThird() : Third
    return this * 0.059999999999988;
  @:to inline public function toSecond() : Second
    return this * 0.001;
  @:to inline public function toMinute() : Minute
    return this * 1.66666666666667e-05;
  @:to inline public function toKe() : Ke
    return this * 1.15740740740741e-06;
  @:to inline public function toKilosecond() : Kilosecond
    return this * 1e-06;
  @:to inline public function toHour() : Hour
    return this * 2.77777777777778e-07;
  @:to inline public function toDay() : Day
    return this * 1.15740740740741e-08;
  @:to inline public function toWeek() : Week
    return this * 1.65343915343915e-09;
  @:to inline public function toMegasecond() : Megasecond
    return this * 1e-09;
  @:to inline public function toFortnight() : Fortnight
    return this * 8.26719576719577e-10;
  @:to inline public function toSynodicMonth() : SynodicMonth
    return this * 3.91935077290162e-10;
  @:to inline public function toTropicalMonth() : TropicalMonth
    return this * 4.23623892691201e-10;
  @:to inline public function toJulianYear() : JulianYear
    return this * 3.16880878140289e-11;
  @:to inline public function toGigasecond() : Gigasecond
    return this * 1e-12;
  @:to inline public function toTerasecond() : Terasecond
    return this * 1e-15;

  @:to inline public function toString() : String
    return this.toString() + symbol;

  public static inline var symbol : String = "ms";
}
