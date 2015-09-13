package thx.unit.time;

using thx.Floats;
import thx.Decimal;

abstract SynodicMonth(Decimal) {
  @:from inline static public function fromDecimal(value : Decimal) : SynodicMonth
    return new SynodicMonth(value);

  @:from inline static public function fromInt(value : Int) : SynodicMonth
    return fromDecimal(Decimal.fromInt(value));

  @:from inline static public function fromFloat(value : Float) : SynodicMonth
    return fromDecimal(Decimal.fromFloat(value));

  inline function new(value : Decimal)
    this = value;

  inline public function abs() : SynodicMonth
    return this.abs();

  inline public function min(that : SynodicMonth) : SynodicMonth
    return this.min(that.toDecimal());

  inline public function max(that : SynodicMonth) : SynodicMonth
    return this.max(that.toDecimal());

  @:op( -A ) inline public function negate() : SynodicMonth
    return -this;
  @:op( A+B) inline public function add(that : SynodicMonth) : SynodicMonth
    return this.add(that.toDecimal());
  @:op( A-B) inline public function subtract(that : SynodicMonth) : SynodicMonth
    return this.subtract(that.toDecimal());
  @:op( A*B) inline public function multiply(that : Decimal) : SynodicMonth
    return this.multiply(that);
  @:op( A/B) inline public function divide(that : Decimal) : SynodicMonth
    return this.divide(that);
  @:op( A%B) inline public function modulo(that : Decimal) : SynodicMonth
    return this.modulo(that);
  @:op(A==B) inline public function equal(that : SynodicMonth) : Bool
    return this.equals(that.toDecimal());
  public function nearEquals(that : SynodicMonth) : Bool
    return Floats.nearEquals(this.toFloat(), that.toFloat());
  @:op(A!=B) inline public function notEqual(that : SynodicMonth) : Bool
    return !this.equals(that.toDecimal());
  @:op( A<B) inline public function less(that : SynodicMonth) : Bool
    return this.less(that.toDecimal());
  @:op(A<=B) inline public function lessEqual(that : SynodicMonth) : Bool
    return this.lessEqual(that.toDecimal());
  @:deprecated("use greater instead or simply >")
  inline public function more(that : SynodicMonth) : Bool
    return greater(that);
  @:op( A>B) inline public function greater(that : SynodicMonth) : Bool
    return this.greater(that.toDecimal());
  @:deprecated("use greaterEqual instead or simply >=")
  inline public function moreEqual(that : SynodicMonth) : Bool
    return greaterEqual(that);
  @:op(A>=B) inline public function greaterEqual(that : SynodicMonth) : Bool
    return this.greaterEqual(that.toDecimal());

  inline public function toDecimal() : Decimal
    return this;

  inline public function toFloat() : Float
    return this.toFloat();


  @:to inline public function toPlankTimeUnit() : PlankTimeUnit
    return this * 4.73366043784787e+49;
  @:to inline public function toJiffyPhysics() : JiffyPhysics
    return this * 8.50480992e+29;
  @:to inline public function toSvedberg() : Svedberg
    return this * 2.551442976e+18;
  @:to inline public function toPicosecond() : Picosecond
    return this * 2.551442976e+17;
  @:to inline public function toNanosecond() : Nanosecond
    return this * 255144297600000;
  @:to inline public function toShake() : Shake
    return this * 25514429760000;
  @:to inline public function toMicrosecond() : Microsecond
    return this * 255144297600;
  @:to inline public function toFourth() : Fourth
    return this * 9185194713.52652;
  @:to inline public function toMillisecond() : Millisecond
    return this * 2551442976;
  @:to inline public function toThird() : Third
    return this * 153086578.559969;
  @:to inline public function toSecond() : Second
    return this * 2551442.976;
  @:to inline public function toMinute() : Minute
    return this * 42524.0496;
  @:to inline public function toKe() : Ke
    return this * 2953.059;
  @:to inline public function toKilosecond() : Kilosecond
    return this * 2551.442976;
  @:to inline public function toHour() : Hour
    return this * 708.73416;
  @:to inline public function toDay() : Day
    return this * 29.53059;
  @:to inline public function toWeek() : Week
    return this * 4.21865571428571;
  @:to inline public function toMegasecond() : Megasecond
    return this * 2.551442976;
  @:to inline public function toFortnight() : Fortnight
    return this * 2.10932785714286;
  @:to inline public function toTropicalMonth() : TropicalMonth
    return this * 1.08085220547274;
  @:to inline public function toJulianYear() : JulianYear
    return this * 0.0808503490759754;
  @:to inline public function toGigasecond() : Gigasecond
    return this * 0.002551442976;
  @:to inline public function toTerasecond() : Terasecond
    return this * 2.551442976e-06;

  @:to inline public function toString() : String
    return this.toString() + symbol;

  public static inline var symbol : String = "synodic month";
}
