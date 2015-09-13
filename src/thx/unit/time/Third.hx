package thx.unit.time;

using thx.Floats;
import thx.Decimal;

abstract Third(Decimal) {
  @:from inline static public function fromDecimal(value : Decimal) : Third
    return new Third(value);

  @:from inline static public function fromInt(value : Int) : Third
    return fromDecimal(Decimal.fromInt(value));

  @:from inline static public function fromFloat(value : Float) : Third
    return fromDecimal(Decimal.fromFloat(value));

  inline function new(value : Decimal)
    this = value;

  inline public function abs() : Third
    return this.abs();

  inline public function min(that : Third) : Third
    return this.min(that.toDecimal());

  inline public function max(that : Third) : Third
    return this.max(that.toDecimal());

  @:op( -A ) inline public function negate() : Third
    return -this;
  @:op( A+B) inline public function add(that : Third) : Third
    return this.add(that.toDecimal());
  @:op( A-B) inline public function subtract(that : Third) : Third
    return this.subtract(that.toDecimal());
  @:op( A*B) inline public function multiply(that : Decimal) : Third
    return this.multiply(that);
  @:op( A/B) inline public function divide(that : Decimal) : Third
    return this.divide(that);
  @:op( A%B) inline public function modulo(that : Decimal) : Third
    return this.modulo(that);
  @:op(A==B) inline public function equal(that : Third) : Bool
    return this.equals(that.toDecimal());
  public function nearEquals(that : Third) : Bool
    return Floats.nearEquals(this.toFloat(), that.toFloat());
  @:op(A!=B) inline public function notEqual(that : Third) : Bool
    return !this.equals(that.toDecimal());
  @:op( A<B) inline public function less(that : Third) : Bool
    return this.less(that.toDecimal());
  @:op(A<=B) inline public function lessEqual(that : Third) : Bool
    return this.lessEqual(that.toDecimal());
  @:deprecated("use greater instead or simply >")
  inline public function more(that : Third) : Bool
    return greater(that);
  @:op( A>B) inline public function greater(that : Third) : Bool
    return this.greater(that.toDecimal());
  @:deprecated("use greaterEqual instead or simply >=")
  inline public function moreEqual(that : Third) : Bool
    return greaterEqual(that);
  @:op(A>=B) inline public function greaterEqual(that : Third) : Bool
    return this.greaterEqual(that.toDecimal());

  inline public function toDecimal() : Decimal
    return this;

  inline public function toFloat() : Float
    return this.toFloat();


  @:to inline public function toPlankTimeUnit() : PlankTimeUnit
    return this * 3.09214594928943e+41;
  @:to inline public function toJiffyPhysics() : JiffyPhysics
    return this * 5.55555555555667e+21;
  @:to inline public function toSvedberg() : Svedberg
    return this * 16666666666.67;
  @:to inline public function toPicosecond() : Picosecond
    return this * 1666666666.667;
  @:to inline public function toNanosecond() : Nanosecond
    return this * 1666666.666667;
  @:to inline public function toShake() : Shake
    return this * 166666.6666667;
  @:to inline public function toMicrosecond() : Microsecond
    return this * 1666.666666667;
  @:to inline public function toFourth() : Fourth
    return this * 59.999999999532;
  @:to inline public function toMillisecond() : Millisecond
    return this * 16.66666666667;
  @:to inline public function toSecond() : Second
    return this * 0.01666666666667;
  @:to inline public function toMinute() : Minute
    return this * 0.000277777777777833;
  @:to inline public function toKe() : Ke
    return this * 1.9290123456794e-05;
  @:to inline public function toKilosecond() : Kilosecond
    return this * 1.666666666667e-05;
  @:to inline public function toHour() : Hour
    return this * 4.62962962963056e-06;
  @:to inline public function toDay() : Day
    return this * 1.9290123456794e-07;
  @:to inline public function toWeek() : Week
    return this * 2.75573192239914e-08;
  @:to inline public function toMegasecond() : Megasecond
    return this * 1.666666666667e-08;
  @:to inline public function toFortnight() : Fortnight
    return this * 1.37786596119957e-08;
  @:to inline public function toSynodicMonth() : SynodicMonth
    return this * 6.53225128817067e-09;
  @:to inline public function toTropicalMonth() : TropicalMonth
    return this * 7.06039821152144e-09;
  @:to inline public function toJulianYear() : JulianYear
    return this * 5.28134796900588e-10;
  @:to inline public function toGigasecond() : Gigasecond
    return this * 1.666666666667e-11;
  @:to inline public function toTerasecond() : Terasecond
    return this * 1.666666666667e-14;

  @:to inline public function toString() : String
    return this.toString() + symbol;

  public static inline var symbol : String = "third";
}
