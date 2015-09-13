package thx.unit.time;

using thx.Floats;
import thx.Decimal;

abstract PlankTimeUnit(Decimal) {
  @:from inline static public function fromDecimal(value : Decimal) : PlankTimeUnit
    return new PlankTimeUnit(value);

  @:from inline static public function fromInt(value : Int) : PlankTimeUnit
    return fromDecimal(Decimal.fromInt(value));

  @:from inline static public function fromFloat(value : Float) : PlankTimeUnit
    return fromDecimal(Decimal.fromFloat(value));

  inline function new(value : Decimal)
    this = value;

  inline public function abs() : PlankTimeUnit
    return this.abs();

  inline public function min(that : PlankTimeUnit) : PlankTimeUnit
    return this.min(that.toDecimal());

  inline public function max(that : PlankTimeUnit) : PlankTimeUnit
    return this.max(that.toDecimal());

  @:op( -A ) inline public function negate() : PlankTimeUnit
    return -this;
  @:op( A+B) inline public function add(that : PlankTimeUnit) : PlankTimeUnit
    return this.add(that.toDecimal());
  @:op( A-B) inline public function subtract(that : PlankTimeUnit) : PlankTimeUnit
    return this.subtract(that.toDecimal());
  @:op( A*B) inline public function multiply(that : Decimal) : PlankTimeUnit
    return this.multiply(that);
  @:op( A/B) inline public function divide(that : Decimal) : PlankTimeUnit
    return this.divide(that);
  @:op( A%B) inline public function modulo(that : Decimal) : PlankTimeUnit
    return this.modulo(that);
  @:op(A==B) inline public function equal(that : PlankTimeUnit) : Bool
    return this.equals(that.toDecimal());
  public function nearEquals(that : PlankTimeUnit) : Bool
    return Floats.nearEquals(this.toFloat(), that.toFloat());
  @:op(A!=B) inline public function notEqual(that : PlankTimeUnit) : Bool
    return !this.equals(that.toDecimal());
  @:op( A<B) inline public function less(that : PlankTimeUnit) : Bool
    return this.less(that.toDecimal());
  @:op(A<=B) inline public function lessEqual(that : PlankTimeUnit) : Bool
    return this.lessEqual(that.toDecimal());
  @:deprecated("use greater instead or simply >")
  inline public function more(that : PlankTimeUnit) : Bool
    return greater(that);
  @:op( A>B) inline public function greater(that : PlankTimeUnit) : Bool
    return this.greater(that.toDecimal());
  @:deprecated("use greaterEqual instead or simply >=")
  inline public function moreEqual(that : PlankTimeUnit) : Bool
    return greaterEqual(that);
  @:op(A>=B) inline public function greaterEqual(that : PlankTimeUnit) : Bool
    return this.greaterEqual(that.toDecimal());

  inline public function toDecimal() : Decimal
    return this;

  inline public function toFloat() : Float
    return this.toFloat();


  @:to inline public function toJiffyPhysics() : JiffyPhysics
    return this * 1.79666666666667e-20;
  @:to inline public function toSvedberg() : Svedberg
    return this * 5.39e-32;
  @:to inline public function toPicosecond() : Picosecond
    return this * 5.39e-33;
  @:to inline public function toNanosecond() : Nanosecond
    return this * 5.39e-36;
  @:to inline public function toShake() : Shake
    return this * 5.39e-37;
  @:to inline public function toMicrosecond() : Microsecond
    return this * 5.39e-39;
  @:to inline public function toFourth() : Fourth
    return this * 1.94039999998448e-40;
  @:to inline public function toMillisecond() : Millisecond
    return this * 5.39e-41;
  @:to inline public function toThird() : Third
    return this * 3.23399999999935e-42;
  @:to inline public function toSecond() : Second
    return this * 5.39e-44;
  @:to inline public function toMinute() : Minute
    return this * 8.98333333333333e-46;
  @:to inline public function toKe() : Ke
    return this * 6.23842592592593e-47;
  @:to inline public function toKilosecond() : Kilosecond
    return this * 5.39e-47;
  @:to inline public function toHour() : Hour
    return this * 1.49722222222222e-47;
  @:to inline public function toDay() : Day
    return this * 6.23842592592593e-49;
  @:to inline public function toWeek() : Week
    return this * 8.91203703703704e-50;
  @:to inline public function toMegasecond() : Megasecond
    return this * 5.39e-50;
  @:to inline public function toFortnight() : Fortnight
    return this * 4.45601851851852e-50;
  @:to inline public function toSynodicMonth() : SynodicMonth
    return this * 2.11253006659397e-50;
  @:to inline public function toTropicalMonth() : TropicalMonth
    return this * 2.28333278160557e-50;
  @:to inline public function toJulianYear() : JulianYear
    return this * 1.70798793317616e-51;
  @:to inline public function toGigasecond() : Gigasecond
    return this * 5.39e-53;
  @:to inline public function toTerasecond() : Terasecond
    return this * 5.39e-56;

  @:to inline public function toString() : String
    return this.toString() + symbol;

  public static inline var symbol : String = "tP";
}
