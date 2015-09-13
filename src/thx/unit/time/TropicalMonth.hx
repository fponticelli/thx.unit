package thx.unit.time;

using thx.Floats;
import thx.Decimal;

abstract TropicalMonth(Decimal) {
  @:from inline static public function fromDecimal(value : Decimal) : TropicalMonth
    return new TropicalMonth(value);

  @:from inline static public function fromInt(value : Int) : TropicalMonth
    return fromDecimal(Decimal.fromInt(value));

  @:from inline static public function fromFloat(value : Float) : TropicalMonth
    return fromDecimal(Decimal.fromFloat(value));

  inline function new(value : Decimal)
    this = value;

  inline public function abs() : TropicalMonth
    return this.abs();

  inline public function min(that : TropicalMonth) : TropicalMonth
    return this.min(that.toDecimal());

  inline public function max(that : TropicalMonth) : TropicalMonth
    return this.max(that.toDecimal());

  @:op( -A ) inline public function negate() : TropicalMonth
    return -this;
  @:op( A+B) inline public function add(that : TropicalMonth) : TropicalMonth
    return this.add(that.toDecimal());
  @:op( A-B) inline public function subtract(that : TropicalMonth) : TropicalMonth
    return this.subtract(that.toDecimal());
  @:op( A*B) inline public function multiply(that : Decimal) : TropicalMonth
    return this.multiply(that);
  @:op( A/B) inline public function divide(that : Decimal) : TropicalMonth
    return this.divide(that);
  @:op( A%B) inline public function modulo(that : Decimal) : TropicalMonth
    return this.modulo(that);
  @:op(A==B) inline public function equal(that : TropicalMonth) : Bool
    return this.equals(that.toDecimal());
  public function nearEquals(that : TropicalMonth) : Bool
    return Floats.nearEquals(this.toFloat(), that.toFloat());
  @:op(A!=B) inline public function notEqual(that : TropicalMonth) : Bool
    return !this.equals(that.toDecimal());
  @:op( A<B) inline public function less(that : TropicalMonth) : Bool
    return this.less(that.toDecimal());
  @:op(A<=B) inline public function lessEqual(that : TropicalMonth) : Bool
    return this.lessEqual(that.toDecimal());
  @:deprecated("use greater instead or simply >")
  inline public function more(that : TropicalMonth) : Bool
    return greater(that);
  @:op( A>B) inline public function greater(that : TropicalMonth) : Bool
    return this.greater(that.toDecimal());
  @:deprecated("use greaterEqual instead or simply >=")
  inline public function moreEqual(that : TropicalMonth) : Bool
    return greaterEqual(that);
  @:op(A>=B) inline public function greaterEqual(that : TropicalMonth) : Bool
    return this.greaterEqual(that.toDecimal());

  inline public function toDecimal() : Decimal
    return this;

  inline public function toFloat() : Float
    return this.toFloat();


  @:to inline public function toPlankTimeUnit() : PlankTimeUnit
    return this * 4.37956310204082e+49;
  @:to inline public function toJiffyPhysics() : JiffyPhysics
    return this * 7.86861504e+29;
  @:to inline public function toSvedberg() : Svedberg
    return this * 2.360584512e+18;
  @:to inline public function toPicosecond() : Picosecond
    return this * 2.360584512e+17;
  @:to inline public function toNanosecond() : Nanosecond
    return this * 236058451200000;
  @:to inline public function toShake() : Shake
    return this * 23605845120000;
  @:to inline public function toMicrosecond() : Microsecond
    return this * 236058451200;
  @:to inline public function toFourth() : Fourth
    return this * 8498104243.13202;
  @:to inline public function toMillisecond() : Millisecond
    return this * 2360584512;
  @:to inline public function toThird() : Third
    return this * 141635070.719972;
  @:to inline public function toSecond() : Second
    return this * 2360584.512;
  @:to inline public function toMinute() : Minute
    return this * 39343.0752;
  @:to inline public function toKe() : Ke
    return this * 2732.158;
  @:to inline public function toKilosecond() : Kilosecond
    return this * 2360.584512;
  @:to inline public function toHour() : Hour
    return this * 655.71792;
  @:to inline public function toDay() : Day
    return this * 27.32158;
  @:to inline public function toWeek() : Week
    return this * 3.90308285714286;
  @:to inline public function toMegasecond() : Megasecond
    return this * 2.360584512;
  @:to inline public function toFortnight() : Fortnight
    return this * 1.95154142857143;
  @:to inline public function toSynodicMonth() : SynodicMonth
    return this * 0.925195873160679;
  @:to inline public function toJulianYear() : JulianYear
    return this * 0.0748024093086927;
  @:to inline public function toGigasecond() : Gigasecond
    return this * 0.002360584512;
  @:to inline public function toTerasecond() : Terasecond
    return this * 2.360584512e-06;

  @:to inline public function toString() : String
    return this.toString() + symbol;

  public static inline var symbol : String = "tropical month";
}
