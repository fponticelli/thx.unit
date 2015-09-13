package thx.unit.time;

using thx.Floats;
import thx.Decimal;

abstract Hour(Decimal) {
  @:from inline static public function fromDecimal(value : Decimal) : Hour
    return new Hour(value);

  @:from inline static public function fromInt(value : Int) : Hour
    return fromDecimal(Decimal.fromInt(value));

  @:from inline static public function fromFloat(value : Float) : Hour
    return fromDecimal(Decimal.fromFloat(value));

  inline function new(value : Decimal)
    this = value;

  inline public function abs() : Hour
    return this.abs();

  inline public function min(that : Hour) : Hour
    return this.min(that.toDecimal());

  inline public function max(that : Hour) : Hour
    return this.max(that.toDecimal());

  @:op( -A ) inline public function negate() : Hour
    return -this;
  @:op( A+B) inline public function add(that : Hour) : Hour
    return this.add(that.toDecimal());
  @:op( A-B) inline public function subtract(that : Hour) : Hour
    return this.subtract(that.toDecimal());
  @:op( A*B) inline public function multiply(that : Decimal) : Hour
    return this.multiply(that);
  @:op( A/B) inline public function divide(that : Decimal) : Hour
    return this.divide(that);
  @:op( A%B) inline public function modulo(that : Decimal) : Hour
    return this.modulo(that);
  @:op(A==B) inline public function equal(that : Hour) : Bool
    return this.equals(that.toDecimal());
  public function nearEquals(that : Hour) : Bool
    return Floats.nearEquals(this.toFloat(), that.toFloat());
  @:op(A!=B) inline public function notEqual(that : Hour) : Bool
    return !this.equals(that.toDecimal());
  @:op( A<B) inline public function less(that : Hour) : Bool
    return this.less(that.toDecimal());
  @:op(A<=B) inline public function lessEqual(that : Hour) : Bool
    return this.lessEqual(that.toDecimal());
  @:deprecated("use greater instead or simply >")
  inline public function more(that : Hour) : Bool
    return greater(that);
  @:op( A>B) inline public function greater(that : Hour) : Bool
    return this.greater(that.toDecimal());
  @:deprecated("use greaterEqual instead or simply >=")
  inline public function moreEqual(that : Hour) : Bool
    return greaterEqual(that);
  @:op(A>=B) inline public function greaterEqual(that : Hour) : Bool
    return this.greaterEqual(that.toDecimal());

  inline public function toDecimal() : Decimal
    return this;

  inline public function toFloat() : Float
    return this.toFloat();


  @:to inline public function toPlankTimeUnit() : PlankTimeUnit
    return this * 6.67903525046382e+46;
  @:to inline public function toJiffyPhysics() : JiffyPhysics
    return this * 1.2e+27;
  @:to inline public function toSvedberg() : Svedberg
    return this * 3.6e+15;
  @:to inline public function toPicosecond() : Picosecond
    return this * 360000000000000;
  @:to inline public function toNanosecond() : Nanosecond
    return this * 360000000000;
  @:to inline public function toShake() : Shake
    return this * 36000000000;
  @:to inline public function toMicrosecond() : Microsecond
    return this * 360000000;
  @:to inline public function toFourth() : Fourth
    return this * 12959999.9998963;
  @:to inline public function toMillisecond() : Millisecond
    return this * 3600000;
  @:to inline public function toThird() : Third
    return this * 215999.999999957;
  @:to inline public function toSecond() : Second
    return this * 3600;
  @:to inline public function toMinute() : Minute
    return this * 60;
  @:to inline public function toKe() : Ke
    return this * 4.16666666666667;
  @:to inline public function toKilosecond() : Kilosecond
    return this * 3.6;
  @:to inline public function toDay() : Day
    return this * 0.0416666666666667;
  @:to inline public function toWeek() : Week
    return this * 0.00595238095238095;
  @:to inline public function toMegasecond() : Megasecond
    return this * 0.0036;
  @:to inline public function toFortnight() : Fortnight
    return this * 0.00297619047619048;
  @:to inline public function toSynodicMonth() : SynodicMonth
    return this * 0.00141096627824458;
  @:to inline public function toTropicalMonth() : TropicalMonth
    return this * 0.00152504601368832;
  @:to inline public function toJulianYear() : JulianYear
    return this * 0.000114077116130504;
  @:to inline public function toGigasecond() : Gigasecond
    return this * 3.6e-06;
  @:to inline public function toTerasecond() : Terasecond
    return this * 3.6e-09;

  @:to inline public function toString() : String
    return this.toString() + symbol;

  public static inline var symbol : String = "h";
}
