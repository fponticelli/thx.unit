package thx.unit.time;

using thx.Floats;
import thx.Decimal;

abstract Picosecond(Decimal) {
  @:from inline static public function fromDecimal(value : Decimal) : Picosecond
    return new Picosecond(value);

  @:from inline static public function fromInt(value : Int) : Picosecond
    return fromDecimal(Decimal.fromInt(value));

  @:from inline static public function fromFloat(value : Float) : Picosecond
    return fromDecimal(Decimal.fromFloat(value));

  inline function new(value : Decimal)
    this = value;

  inline public function abs() : Picosecond
    return this.abs();

  inline public function min(that : Picosecond) : Picosecond
    return this.min(that.toDecimal());

  inline public function max(that : Picosecond) : Picosecond
    return this.max(that.toDecimal());

  @:op( -A ) inline public function negate() : Picosecond
    return -this;
  @:op( A+B) inline public function add(that : Picosecond) : Picosecond
    return this.add(that.toDecimal());
  @:op( A-B) inline public function subtract(that : Picosecond) : Picosecond
    return this.subtract(that.toDecimal());
  @:op( A*B) inline public function multiply(that : Decimal) : Picosecond
    return this.multiply(that);
  @:op( A/B) inline public function divide(that : Decimal) : Picosecond
    return this.divide(that);
  @:op( A%B) inline public function modulo(that : Decimal) : Picosecond
    return this.modulo(that);
  @:op(A==B) inline public function equal(that : Picosecond) : Bool
    return this.equals(that.toDecimal());
  public function nearEquals(that : Picosecond) : Bool
    return Floats.nearEquals(this.toFloat(), that.toFloat());
  @:op(A!=B) inline public function notEqual(that : Picosecond) : Bool
    return !this.equals(that.toDecimal());
  @:op( A<B) inline public function less(that : Picosecond) : Bool
    return this.less(that.toDecimal());
  @:op(A<=B) inline public function lessEqual(that : Picosecond) : Bool
    return this.lessEqual(that.toDecimal());
  @:deprecated("use greater instead or simply >")
  inline public function more(that : Picosecond) : Bool
    return greater(that);
  @:op( A>B) inline public function greater(that : Picosecond) : Bool
    return this.greater(that.toDecimal());
  @:deprecated("use greaterEqual instead or simply >=")
  inline public function moreEqual(that : Picosecond) : Bool
    return greaterEqual(that);
  @:op(A>=B) inline public function greaterEqual(that : Picosecond) : Bool
    return this.greaterEqual(that.toDecimal());

  inline public function toDecimal() : Decimal
    return this;

  inline public function toFloat() : Float
    return this.toFloat();


  @:to inline public function toPlankTimeUnit() : PlankTimeUnit
    return this * 1.85528756957328e+32;
  @:to inline public function toJiffyPhysics() : JiffyPhysics
    return this * 3333333333333.33;
  @:to inline public function toSvedberg() : Svedberg
    return this * 10;
  @:to inline public function toNanosecond() : Nanosecond
    return this * 0.001;
  @:to inline public function toShake() : Shake
    return this * 0.0001;
  @:to inline public function toMicrosecond() : Microsecond
    return this * 1e-06;
  @:to inline public function toFourth() : Fourth
    return this * 3.5999999999712e-08;
  @:to inline public function toMillisecond() : Millisecond
    return this * 1e-08;
  @:to inline public function toThird() : Third
    return this * 5.9999999999988e-10;
  @:to inline public function toSecond() : Second
    return this * 1e-11;
  @:to inline public function toMinute() : Minute
    return this * 1.66666666666667e-13;
  @:to inline public function toKe() : Ke
    return this * 1.15740740740741e-14;
  @:to inline public function toKilosecond() : Kilosecond
    return this * 1e-14;
  @:to inline public function toHour() : Hour
    return this * 2.77777777777778e-15;
  @:to inline public function toDay() : Day
    return this * 1.15740740740741e-16;
  @:to inline public function toWeek() : Week
    return this * 1.65343915343915e-17;
  @:to inline public function toMegasecond() : Megasecond
    return this * 1e-17;
  @:to inline public function toFortnight() : Fortnight
    return this * 8.26719576719577e-18;
  @:to inline public function toSynodicMonth() : SynodicMonth
    return this * 3.91935077290162e-18;
  @:to inline public function toTropicalMonth() : TropicalMonth
    return this * 4.23623892691201e-18;
  @:to inline public function toJulianYear() : JulianYear
    return this * 3.16880878140289e-19;
  @:to inline public function toGigasecond() : Gigasecond
    return this * 1e-20;
  @:to inline public function toTerasecond() : Terasecond
    return this * 1e-23;

  @:to inline public function toString() : String
    return this.toString() + symbol;

  public static inline var symbol : String = "ps";
}
