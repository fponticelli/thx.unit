package thx.unit.time;

using thx.Floats;
import thx.Decimal;

abstract Megasecond(Decimal) {
  @:from inline static public function fromDecimal(value : Decimal) : Megasecond
    return new Megasecond(value);

  @:from inline static public function fromInt(value : Int) : Megasecond
    return fromDecimal(Decimal.fromInt(value));

  @:from inline static public function fromFloat(value : Float) : Megasecond
    return fromDecimal(Decimal.fromFloat(value));

  inline function new(value : Decimal)
    this = value;

  inline public function abs() : Megasecond
    return this.abs();

  inline public function min(that : Megasecond) : Megasecond
    return this.min(that.toDecimal());

  inline public function max(that : Megasecond) : Megasecond
    return this.max(that.toDecimal());

  @:op( -A ) inline public function negate() : Megasecond
    return -this;
  @:op( A+B) inline public function add(that : Megasecond) : Megasecond
    return this.add(that.toDecimal());
  @:op( A-B) inline public function subtract(that : Megasecond) : Megasecond
    return this.subtract(that.toDecimal());
  @:op( A*B) inline public function multiply(that : Decimal) : Megasecond
    return this.multiply(that);
  @:op( A/B) inline public function divide(that : Decimal) : Megasecond
    return this.divide(that);
  @:op( A%B) inline public function modulo(that : Decimal) : Megasecond
    return this.modulo(that);
  @:op(A==B) inline public function equal(that : Megasecond) : Bool
    return this.equals(that.toDecimal());
  public function nearEquals(that : Megasecond) : Bool
    return Floats.nearEquals(this.toFloat(), that.toFloat());
  @:op(A!=B) inline public function notEqual(that : Megasecond) : Bool
    return !this.equals(that.toDecimal());
  @:op( A<B) inline public function less(that : Megasecond) : Bool
    return this.less(that.toDecimal());
  @:op(A<=B) inline public function lessEqual(that : Megasecond) : Bool
    return this.lessEqual(that.toDecimal());
  @:deprecated("use greater instead or simply >")
  inline public function more(that : Megasecond) : Bool
    return greater(that);
  @:op( A>B) inline public function greater(that : Megasecond) : Bool
    return this.greater(that.toDecimal());
  @:deprecated("use greaterEqual instead or simply >=")
  inline public function moreEqual(that : Megasecond) : Bool
    return greaterEqual(that);
  @:op(A>=B) inline public function greaterEqual(that : Megasecond) : Bool
    return this.greaterEqual(that.toDecimal());

  inline public function toDecimal() : Decimal
    return this;

  inline public function toFloat() : Float
    return this.toFloat();


  @:to inline public function toPlankTimeUnit() : PlankTimeUnit
    return this * 1.85528756957328e+49;
  @:to inline public function toJiffyPhysics() : JiffyPhysics
    return this * 3.33333333333333e+29;
  @:to inline public function toSvedberg() : Svedberg
    return this * 1e+18;
  @:to inline public function toPicosecond() : Picosecond
    return this * 1e+17;
  @:to inline public function toNanosecond() : Nanosecond
    return this * 100000000000000;
  @:to inline public function toShake() : Shake
    return this * 10000000000000;
  @:to inline public function toMicrosecond() : Microsecond
    return this * 100000000000;
  @:to inline public function toFourth() : Fourth
    return this * 3599999999.9712;
  @:to inline public function toMillisecond() : Millisecond
    return this * 1000000000;
  @:to inline public function toThird() : Third
    return this * 59999999.999988;
  @:to inline public function toSecond() : Second
    return this * 1000000;
  @:to inline public function toMinute() : Minute
    return this * 16666.6666666667;
  @:to inline public function toKe() : Ke
    return this * 1157.40740740741;
  @:to inline public function toKilosecond() : Kilosecond
    return this * 1000;
  @:to inline public function toHour() : Hour
    return this * 277.777777777778;
  @:to inline public function toDay() : Day
    return this * 11.5740740740741;
  @:to inline public function toWeek() : Week
    return this * 1.65343915343915;
  @:to inline public function toFortnight() : Fortnight
    return this * 0.826719576719577;
  @:to inline public function toSynodicMonth() : SynodicMonth
    return this * 0.391935077290162;
  @:to inline public function toTropicalMonth() : TropicalMonth
    return this * 0.423623892691201;
  @:to inline public function toJulianYear() : JulianYear
    return this * 0.031688087814029;
  @:to inline public function toGigasecond() : Gigasecond
    return this * 0.001;
  @:to inline public function toTerasecond() : Terasecond
    return this * 1e-06;

  @:to inline public function toString() : String
    return this.toString() + symbol;

  public static inline var symbol : String = "Ms";
}
