package thx.unit.time;

using thx.Floats;
import thx.Decimal;

abstract Week(Decimal) {
  @:from inline static public function fromDecimal(value : Decimal) : Week
    return new Week(value);

  @:from inline static public function fromInt(value : Int) : Week
    return fromDecimal(Decimal.fromInt(value));

  @:from inline static public function fromFloat(value : Float) : Week
    return fromDecimal(Decimal.fromFloat(value));

  inline function new(value : Decimal)
    this = value;

  inline public function abs() : Week
    return this.abs();

  inline public function min(that : Week) : Week
    return this.min(that.toDecimal());

  inline public function max(that : Week) : Week
    return this.max(that.toDecimal());

  @:op( -A ) inline public function negate() : Week
    return -this;
  @:op( A+B) inline public function add(that : Week) : Week
    return this.add(that.toDecimal());
  @:op( A-B) inline public function subtract(that : Week) : Week
    return this.subtract(that.toDecimal());
  @:op( A*B) inline public function multiply(that : Decimal) : Week
    return this.multiply(that);
  @:op( A/B) inline public function divide(that : Decimal) : Week
    return this.divide(that);
  @:op( A%B) inline public function modulo(that : Decimal) : Week
    return this.modulo(that);
  @:op(A==B) inline public function equal(that : Week) : Bool
    return this.equals(that.toDecimal());
  public function nearEquals(that : Week) : Bool
    return Floats.nearEquals(this.toFloat(), that.toFloat());
  @:op(A!=B) inline public function notEqual(that : Week) : Bool
    return !this.equals(that.toDecimal());
  @:op( A<B) inline public function less(that : Week) : Bool
    return this.less(that.toDecimal());
  @:op(A<=B) inline public function lessEqual(that : Week) : Bool
    return this.lessEqual(that.toDecimal());
  @:deprecated("use greater instead or simply >")
  inline public function more(that : Week) : Bool
    return greater(that);
  @:op( A>B) inline public function greater(that : Week) : Bool
    return this.greater(that.toDecimal());
  @:deprecated("use greaterEqual instead or simply >=")
  inline public function moreEqual(that : Week) : Bool
    return greaterEqual(that);
  @:op(A>=B) inline public function greaterEqual(that : Week) : Bool
    return this.greaterEqual(that.toDecimal());

  inline public function toDecimal() : Decimal
    return this;

  inline public function toFloat() : Float
    return this.toFloat();


  @:to inline public function toPlankTimeUnit() : PlankTimeUnit
    return this * 1.12207792207792e+49;
  @:to inline public function toJiffyPhysics() : JiffyPhysics
    return this * 2.016e+29;
  @:to inline public function toSvedberg() : Svedberg
    return this * 6.048e+17;
  @:to inline public function toPicosecond() : Picosecond
    return this * 6.048e+16;
  @:to inline public function toNanosecond() : Nanosecond
    return this * 60480000000000;
  @:to inline public function toShake() : Shake
    return this * 6048000000000;
  @:to inline public function toMicrosecond() : Microsecond
    return this * 60480000000;
  @:to inline public function toFourth() : Fourth
    return this * 2177279999.98258;
  @:to inline public function toMillisecond() : Millisecond
    return this * 604800000;
  @:to inline public function toThird() : Third
    return this * 36287999.9999927;
  @:to inline public function toSecond() : Second
    return this * 604800;
  @:to inline public function toMinute() : Minute
    return this * 10080;
  @:to inline public function toKe() : Ke
    return this * 700;
  @:to inline public function toKilosecond() : Kilosecond
    return this * 604.8;
  @:to inline public function toHour() : Hour
    return this * 168;
  @:to inline public function toDay() : Day
    return this * 7;
  @:to inline public function toMegasecond() : Megasecond
    return this * 0.6048;
  @:to inline public function toFortnight() : Fortnight
    return this * 0.5;
  @:to inline public function toSynodicMonth() : SynodicMonth
    return this * 0.23704233474509;
  @:to inline public function toTropicalMonth() : TropicalMonth
    return this * 0.256207730299639;
  @:to inline public function toJulianYear() : JulianYear
    return this * 0.0191649555099247;
  @:to inline public function toGigasecond() : Gigasecond
    return this * 0.0006048;
  @:to inline public function toTerasecond() : Terasecond
    return this * 6.048e-07;

  @:to inline public function toString() : String
    return this.toString() + symbol;

  public static inline var symbol : String = "week";
}
