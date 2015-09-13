package thx.unit.time;

using thx.Floats;
import thx.Decimal;

abstract Fortnight(Decimal) {
  @:from inline static public function fromDecimal(value : Decimal) : Fortnight
    return new Fortnight(value);

  @:from inline static public function fromInt(value : Int) : Fortnight
    return fromDecimal(Decimal.fromInt(value));

  @:from inline static public function fromFloat(value : Float) : Fortnight
    return fromDecimal(Decimal.fromFloat(value));

  inline function new(value : Decimal)
    this = value;

  inline public function abs() : Fortnight
    return this.abs();

  inline public function min(that : Fortnight) : Fortnight
    return this.min(that.toDecimal());

  inline public function max(that : Fortnight) : Fortnight
    return this.max(that.toDecimal());

  @:op( -A ) inline public function negate() : Fortnight
    return -this;
  @:op( A+B) inline public function add(that : Fortnight) : Fortnight
    return this.add(that.toDecimal());
  @:op( A-B) inline public function subtract(that : Fortnight) : Fortnight
    return this.subtract(that.toDecimal());
  @:op( A*B) inline public function multiply(that : Decimal) : Fortnight
    return this.multiply(that);
  @:op( A/B) inline public function divide(that : Decimal) : Fortnight
    return this.divide(that);
  @:op( A%B) inline public function modulo(that : Decimal) : Fortnight
    return this.modulo(that);
  @:op(A==B) inline public function equal(that : Fortnight) : Bool
    return this.equals(that.toDecimal());
  public function nearEquals(that : Fortnight) : Bool
    return Floats.nearEquals(this.toFloat(), that.toFloat());
  @:op(A!=B) inline public function notEqual(that : Fortnight) : Bool
    return !this.equals(that.toDecimal());
  @:op( A<B) inline public function less(that : Fortnight) : Bool
    return this.less(that.toDecimal());
  @:op(A<=B) inline public function lessEqual(that : Fortnight) : Bool
    return this.lessEqual(that.toDecimal());
  @:deprecated("use greater instead or simply >")
  inline public function more(that : Fortnight) : Bool
    return greater(that);
  @:op( A>B) inline public function greater(that : Fortnight) : Bool
    return this.greater(that.toDecimal());
  @:deprecated("use greaterEqual instead or simply >=")
  inline public function moreEqual(that : Fortnight) : Bool
    return greaterEqual(that);
  @:op(A>=B) inline public function greaterEqual(that : Fortnight) : Bool
    return this.greaterEqual(that.toDecimal());

  inline public function toDecimal() : Decimal
    return this;

  inline public function toFloat() : Float
    return this.toFloat();


  @:to inline public function toPlankTimeUnit() : PlankTimeUnit
    return this * 2.24415584415584e+49;
  @:to inline public function toJiffyPhysics() : JiffyPhysics
    return this * 4.032e+29;
  @:to inline public function toSvedberg() : Svedberg
    return this * 1.2096e+18;
  @:to inline public function toPicosecond() : Picosecond
    return this * 1.2096e+17;
  @:to inline public function toNanosecond() : Nanosecond
    return this * 120960000000000;
  @:to inline public function toShake() : Shake
    return this * 12096000000000;
  @:to inline public function toMicrosecond() : Microsecond
    return this * 120960000000;
  @:to inline public function toFourth() : Fourth
    return this * 4354559999.96516;
  @:to inline public function toMillisecond() : Millisecond
    return this * 1209600000;
  @:to inline public function toThird() : Third
    return this * 72575999.9999855;
  @:to inline public function toSecond() : Second
    return this * 1209600;
  @:to inline public function toMinute() : Minute
    return this * 20160;
  @:to inline public function toKe() : Ke
    return this * 1400;
  @:to inline public function toKilosecond() : Kilosecond
    return this * 1209.6;
  @:to inline public function toHour() : Hour
    return this * 336;
  @:to inline public function toDay() : Day
    return this * 14;
  @:to inline public function toWeek() : Week
    return this * 2;
  @:to inline public function toMegasecond() : Megasecond
    return this * 1.2096;
  @:to inline public function toSynodicMonth() : SynodicMonth
    return this * 0.47408466949018;
  @:to inline public function toTropicalMonth() : TropicalMonth
    return this * 0.512415460599277;
  @:to inline public function toJulianYear() : JulianYear
    return this * 0.0383299110198494;
  @:to inline public function toGigasecond() : Gigasecond
    return this * 0.0012096;
  @:to inline public function toTerasecond() : Terasecond
    return this * 1.2096e-06;

  @:to inline public function toString() : String
    return this.toString() + symbol;

  public static inline var symbol : String = "fortnight";
}
