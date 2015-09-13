package thx.unit.time;

using thx.Floats;
import thx.Decimal;

abstract Fourth(Decimal) {
  @:from inline static public function fromDecimal(value : Decimal) : Fourth
    return new Fourth(value);

  @:from inline static public function fromInt(value : Int) : Fourth
    return fromDecimal(Decimal.fromInt(value));

  @:from inline static public function fromFloat(value : Float) : Fourth
    return fromDecimal(Decimal.fromFloat(value));

  inline function new(value : Decimal)
    this = value;

  inline public function abs() : Fourth
    return this.abs();

  inline public function min(that : Fourth) : Fourth
    return this.min(that.toDecimal());

  inline public function max(that : Fourth) : Fourth
    return this.max(that.toDecimal());

  @:op( -A ) inline public function negate() : Fourth
    return -this;
  @:op( A+B) inline public function add(that : Fourth) : Fourth
    return this.add(that.toDecimal());
  @:op( A-B) inline public function subtract(that : Fourth) : Fourth
    return this.subtract(that.toDecimal());
  @:op( A*B) inline public function multiply(that : Decimal) : Fourth
    return this.multiply(that);
  @:op( A/B) inline public function divide(that : Decimal) : Fourth
    return this.divide(that);
  @:op( A%B) inline public function modulo(that : Decimal) : Fourth
    return this.modulo(that);
  @:op(A==B) inline public function equal(that : Fourth) : Bool
    return this.equals(that.toDecimal());
  public function nearEquals(that : Fourth) : Bool
    return Floats.nearEquals(this.toFloat(), that.toFloat());
  @:op(A!=B) inline public function notEqual(that : Fourth) : Bool
    return !this.equals(that.toDecimal());
  @:op( A<B) inline public function less(that : Fourth) : Bool
    return this.less(that.toDecimal());
  @:op(A<=B) inline public function lessEqual(that : Fourth) : Bool
    return this.lessEqual(that.toDecimal());
  @:deprecated("use greater instead or simply >")
  inline public function more(that : Fourth) : Bool
    return greater(that);
  @:op( A>B) inline public function greater(that : Fourth) : Bool
    return this.greater(that.toDecimal());
  @:deprecated("use greaterEqual instead or simply >=")
  inline public function moreEqual(that : Fourth) : Bool
    return greaterEqual(that);
  @:op(A>=B) inline public function greaterEqual(that : Fourth) : Bool
    return this.greaterEqual(that.toDecimal());

  inline public function toDecimal() : Decimal
    return this;

  inline public function toFloat() : Float
    return this.toFloat();


  @:to inline public function toPlankTimeUnit() : PlankTimeUnit
    return this * 5.15357658218924e+39;
  @:to inline public function toJiffyPhysics() : JiffyPhysics
    return this * 9.25925925933333e+19;
  @:to inline public function toSvedberg() : Svedberg
    return this * 277777777.78;
  @:to inline public function toPicosecond() : Picosecond
    return this * 27777777.778;
  @:to inline public function toNanosecond() : Nanosecond
    return this * 27777.777778;
  @:to inline public function toShake() : Shake
    return this * 2777.7777778;
  @:to inline public function toMicrosecond() : Microsecond
    return this * 27.777777778;
  @:to inline public function toMillisecond() : Millisecond
    return this * 0.27777777778;
  @:to inline public function toThird() : Third
    return this * 0.0166666666667967;
  @:to inline public function toSecond() : Second
    return this * 0.00027777777778;
  @:to inline public function toMinute() : Minute
    return this * 4.62962962966667e-06;
  @:to inline public function toKe() : Ke
    return this * 3.21502057615741e-07;
  @:to inline public function toKilosecond() : Kilosecond
    return this * 2.7777777778e-07;
  @:to inline public function toHour() : Hour
    return this * 7.71604938277778e-08;
  @:to inline public function toDay() : Day
    return this * 3.21502057615741e-09;
  @:to inline public function toWeek() : Week
    return this * 4.59288653736773e-10;
  @:to inline public function toMegasecond() : Megasecond
    return this * 2.7777777778e-10;
  @:to inline public function toFortnight() : Fortnight
    return this * 2.29644326868386e-10;
  @:to inline public function toSynodicMonth() : SynodicMonth
    return this * 1.08870854803694e-10;
  @:to inline public function toTropicalMonth() : TropicalMonth
    return this * 1.17673303526275e-10;
  @:to inline public function toJulianYear() : JulianYear
    return this * 8.80224661507846e-12;
  @:to inline public function toGigasecond() : Gigasecond
    return this * 2.7777777778e-13;
  @:to inline public function toTerasecond() : Terasecond
    return this * 2.7777777778e-16;

  @:to inline public function toString() : String
    return this.toString() + symbol;

  public static inline var symbol : String = "fourth";
}
