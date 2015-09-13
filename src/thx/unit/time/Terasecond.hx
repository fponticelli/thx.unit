package thx.unit.time;

using thx.Floats;
import thx.Decimal;

abstract Terasecond(Decimal) {
  @:from inline static public function fromDecimal(value : Decimal) : Terasecond
    return new Terasecond(value);

  @:from inline static public function fromInt(value : Int) : Terasecond
    return fromDecimal(Decimal.fromInt(value));

  @:from inline static public function fromFloat(value : Float) : Terasecond
    return fromDecimal(Decimal.fromFloat(value));

  inline function new(value : Decimal)
    this = value;

  inline public function abs() : Terasecond
    return this.abs();

  inline public function min(that : Terasecond) : Terasecond
    return this.min(that.toDecimal());

  inline public function max(that : Terasecond) : Terasecond
    return this.max(that.toDecimal());

  @:op( -A ) inline public function negate() : Terasecond
    return -this;
  @:op( A+B) inline public function add(that : Terasecond) : Terasecond
    return this.add(that.toDecimal());
  @:op( A-B) inline public function subtract(that : Terasecond) : Terasecond
    return this.subtract(that.toDecimal());
  @:op( A*B) inline public function multiply(that : Decimal) : Terasecond
    return this.multiply(that);
  @:op( A/B) inline public function divide(that : Decimal) : Terasecond
    return this.divide(that);
  @:op( A%B) inline public function modulo(that : Decimal) : Terasecond
    return this.modulo(that);
  @:op(A==B) inline public function equal(that : Terasecond) : Bool
    return this.equals(that.toDecimal());
  public function nearEquals(that : Terasecond) : Bool
    return Floats.nearEquals(this.toFloat(), that.toFloat());
  @:op(A!=B) inline public function notEqual(that : Terasecond) : Bool
    return !this.equals(that.toDecimal());
  @:op( A<B) inline public function less(that : Terasecond) : Bool
    return this.less(that.toDecimal());
  @:op(A<=B) inline public function lessEqual(that : Terasecond) : Bool
    return this.lessEqual(that.toDecimal());
  @:deprecated("use greater instead or simply >")
  inline public function more(that : Terasecond) : Bool
    return greater(that);
  @:op( A>B) inline public function greater(that : Terasecond) : Bool
    return this.greater(that.toDecimal());
  @:deprecated("use greaterEqual instead or simply >=")
  inline public function moreEqual(that : Terasecond) : Bool
    return greaterEqual(that);
  @:op(A>=B) inline public function greaterEqual(that : Terasecond) : Bool
    return this.greaterEqual(that.toDecimal());

  inline public function toDecimal() : Decimal
    return this;

  inline public function toFloat() : Float
    return this.toFloat();


  @:to inline public function toPlankTimeUnit() : PlankTimeUnit
    return this * 1.85528756957328e+55;
  @:to inline public function toJiffyPhysics() : JiffyPhysics
    return this * 3.33333333333333e+35;
  @:to inline public function toSvedberg() : Svedberg
    return this * 1e+24;
  @:to inline public function toPicosecond() : Picosecond
    return this * 1e+23;
  @:to inline public function toNanosecond() : Nanosecond
    return this * 1e+20;
  @:to inline public function toShake() : Shake
    return this * 1e+19;
  @:to inline public function toMicrosecond() : Microsecond
    return this * 1e+17;
  @:to inline public function toFourth() : Fourth
    return this * 3.5999999999712e+15;
  @:to inline public function toMillisecond() : Millisecond
    return this * 1e+15;
  @:to inline public function toThird() : Third
    return this * 59999999999988;
  @:to inline public function toSecond() : Second
    return this * 1000000000000;
  @:to inline public function toMinute() : Minute
    return this * 16666666666.6667;
  @:to inline public function toKe() : Ke
    return this * 1157407407.40741;
  @:to inline public function toKilosecond() : Kilosecond
    return this * 1000000000;
  @:to inline public function toHour() : Hour
    return this * 277777777.777778;
  @:to inline public function toDay() : Day
    return this * 11574074.0740741;
  @:to inline public function toWeek() : Week
    return this * 1653439.15343915;
  @:to inline public function toMegasecond() : Megasecond
    return this * 1000000;
  @:to inline public function toFortnight() : Fortnight
    return this * 826719.576719577;
  @:to inline public function toSynodicMonth() : SynodicMonth
    return this * 391935.077290162;
  @:to inline public function toTropicalMonth() : TropicalMonth
    return this * 423623.892691201;
  @:to inline public function toJulianYear() : JulianYear
    return this * 31688.0878140289;
  @:to inline public function toGigasecond() : Gigasecond
    return this * 1000;

  @:to inline public function toString() : String
    return this.toString() + symbol;

  public static inline var symbol : String = "Ts";
}
