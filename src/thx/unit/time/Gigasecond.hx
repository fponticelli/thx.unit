package thx.unit.time;

using thx.Floats;
import thx.Decimal;

abstract Gigasecond(Decimal) {
  @:from inline static public function fromDecimal(value : Decimal) : Gigasecond
    return new Gigasecond(value);

  @:from inline static public function fromInt(value : Int) : Gigasecond
    return fromDecimal(Decimal.fromInt(value));

  @:from inline static public function fromFloat(value : Float) : Gigasecond
    return fromDecimal(Decimal.fromFloat(value));

  inline function new(value : Decimal)
    this = value;

  inline public function abs() : Gigasecond
    return this.abs();

  inline public function min(that : Gigasecond) : Gigasecond
    return this.min(that.toDecimal());

  inline public function max(that : Gigasecond) : Gigasecond
    return this.max(that.toDecimal());

  @:op( -A ) inline public function negate() : Gigasecond
    return -this;
  @:op( A+B) inline public function add(that : Gigasecond) : Gigasecond
    return this.add(that.toDecimal());
  @:op( A-B) inline public function subtract(that : Gigasecond) : Gigasecond
    return this.subtract(that.toDecimal());
  @:op( A*B) inline public function multiply(that : Decimal) : Gigasecond
    return this.multiply(that);
  @:op( A/B) inline public function divide(that : Decimal) : Gigasecond
    return this.divide(that);
  @:op( A%B) inline public function modulo(that : Decimal) : Gigasecond
    return this.modulo(that);
  @:op(A==B) inline public function equal(that : Gigasecond) : Bool
    return this.equals(that.toDecimal());
  public function nearEquals(that : Gigasecond) : Bool
    return Floats.nearEquals(this.toFloat(), that.toFloat());
  @:op(A!=B) inline public function notEqual(that : Gigasecond) : Bool
    return !this.equals(that.toDecimal());
  @:op( A<B) inline public function less(that : Gigasecond) : Bool
    return this.less(that.toDecimal());
  @:op(A<=B) inline public function lessEqual(that : Gigasecond) : Bool
    return this.lessEqual(that.toDecimal());
  @:deprecated("use greater instead or simply >")
  inline public function more(that : Gigasecond) : Bool
    return greater(that);
  @:op( A>B) inline public function greater(that : Gigasecond) : Bool
    return this.greater(that.toDecimal());
  @:deprecated("use greaterEqual instead or simply >=")
  inline public function moreEqual(that : Gigasecond) : Bool
    return greaterEqual(that);
  @:op(A>=B) inline public function greaterEqual(that : Gigasecond) : Bool
    return this.greaterEqual(that.toDecimal());

  inline public function toDecimal() : Decimal
    return this;

  inline public function toFloat() : Float
    return this.toFloat();


  @:to inline public function toPlankTimeUnit() : PlankTimeUnit
    return this * 1.85528756957328e+52;
  @:to inline public function toJiffyPhysics() : JiffyPhysics
    return this * 3.33333333333333e+32;
  @:to inline public function toSvedberg() : Svedberg
    return this * 1e+21;
  @:to inline public function toPicosecond() : Picosecond
    return this * 1e+20;
  @:to inline public function toNanosecond() : Nanosecond
    return this * 1e+17;
  @:to inline public function toShake() : Shake
    return this * 1e+16;
  @:to inline public function toMicrosecond() : Microsecond
    return this * 100000000000000;
  @:to inline public function toFourth() : Fourth
    return this * 3599999999971.2;
  @:to inline public function toMillisecond() : Millisecond
    return this * 1000000000000;
  @:to inline public function toThird() : Third
    return this * 59999999999.988;
  @:to inline public function toSecond() : Second
    return this * 1000000000;
  @:to inline public function toMinute() : Minute
    return this * 16666666.6666667;
  @:to inline public function toKe() : Ke
    return this * 1157407.40740741;
  @:to inline public function toKilosecond() : Kilosecond
    return this * 1000000;
  @:to inline public function toHour() : Hour
    return this * 277777.777777778;
  @:to inline public function toDay() : Day
    return this * 11574.0740740741;
  @:to inline public function toWeek() : Week
    return this * 1653.43915343915;
  @:to inline public function toMegasecond() : Megasecond
    return this * 1000;
  @:to inline public function toFortnight() : Fortnight
    return this * 826.719576719577;
  @:to inline public function toSynodicMonth() : SynodicMonth
    return this * 391.935077290162;
  @:to inline public function toTropicalMonth() : TropicalMonth
    return this * 423.623892691201;
  @:to inline public function toJulianYear() : JulianYear
    return this * 31.688087814029;
  @:to inline public function toTerasecond() : Terasecond
    return this * 0.001;

  @:to inline public function toString() : String
    return this.toString() + symbol;

  public static inline var symbol : String = "Gs";
}
