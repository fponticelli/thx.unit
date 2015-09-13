package thx.unit.time;

using thx.Floats;
import thx.Decimal;

abstract Megasecond(Decimal) {
  static var ofUnit : Decimal = 1000000;

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


  static var dividerPlankTimeUnit : Decimal = 5.39e-44;
  @:to inline public function toPlankTimeUnit() : PlankTimeUnit
    return (this * ofUnit) / dividerPlankTimeUnit;

  static var dividerJiffyPhysics : Decimal = 3e-24;
  @:to inline public function toJiffyPhysics() : JiffyPhysics
    return (this * ofUnit) / dividerJiffyPhysics;

  static var dividerSvedberg : Decimal = 1e-12;
  @:to inline public function toSvedberg() : Svedberg
    return (this * ofUnit) / dividerSvedberg;

  static var dividerPicosecond : Decimal = 1e-11;
  @:to inline public function toPicosecond() : Picosecond
    return (this * ofUnit) / dividerPicosecond;

  static var dividerNanosecond : Decimal = 1e-08;
  @:to inline public function toNanosecond() : Nanosecond
    return (this * ofUnit) / dividerNanosecond;

  static var dividerShake : Decimal = 1e-07;
  @:to inline public function toShake() : Shake
    return (this * ofUnit) / dividerShake;

  static var dividerMicrosecond : Decimal = 1e-05;
  @:to inline public function toMicrosecond() : Microsecond
    return (this * ofUnit) / dividerMicrosecond;

  static var dividerFourth : Decimal = 0.00027777777778;
  @:to inline public function toFourth() : Fourth
    return (this * ofUnit) / dividerFourth;

  static var dividerMillisecond : Decimal = 0.001;
  @:to inline public function toMillisecond() : Millisecond
    return (this * ofUnit) / dividerMillisecond;

  static var dividerThird : Decimal = 0.01666666666667;
  @:to inline public function toThird() : Third
    return (this * ofUnit) / dividerThird;

  static var dividerSecond : Decimal = 1;
  @:to inline public function toSecond() : Second
    return (this * ofUnit) / dividerSecond;

  static var dividerMinute : Decimal = 60;
  @:to inline public function toMinute() : Minute
    return (this * ofUnit) / dividerMinute;

  static var dividerKe : Decimal = 864;
  @:to inline public function toKe() : Ke
    return (this * ofUnit) / dividerKe;

  static var dividerKilosecond : Decimal = 1000;
  @:to inline public function toKilosecond() : Kilosecond
    return (this * ofUnit) / dividerKilosecond;

  static var dividerHour : Decimal = 3600;
  @:to inline public function toHour() : Hour
    return (this * ofUnit) / dividerHour;

  static var dividerDay : Decimal = 86400;
  @:to inline public function toDay() : Day
    return (this * ofUnit) / dividerDay;

  static var dividerWeek : Decimal = 604800;
  @:to inline public function toWeek() : Week
    return (this * ofUnit) / dividerWeek;

  static var dividerFortnight : Decimal = 1209600;
  @:to inline public function toFortnight() : Fortnight
    return (this * ofUnit) / dividerFortnight;

  static var dividerSynodicMonth : Decimal = 2551442.976;
  @:to inline public function toSynodicMonth() : SynodicMonth
    return (this * ofUnit) / dividerSynodicMonth;

  static var dividerTropicalMonth : Decimal = 2360584.512;
  @:to inline public function toTropicalMonth() : TropicalMonth
    return (this * ofUnit) / dividerTropicalMonth;

  static var dividerJulianYear : Decimal = 31557600;
  @:to inline public function toJulianYear() : JulianYear
    return (this * ofUnit) / dividerJulianYear;

  static var dividerGigasecond : Decimal = 1000000000;
  @:to inline public function toGigasecond() : Gigasecond
    return (this * ofUnit) / dividerGigasecond;

  static var dividerTerasecond : Decimal = 1000000000000;
  @:to inline public function toTerasecond() : Terasecond
    return (this * ofUnit) / dividerTerasecond;


  @:to inline public function toString() : String
    return this.toString() + symbol;

  public static inline var symbol : String = "Ms";
}
