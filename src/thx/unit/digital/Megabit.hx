package thx.unit.digital;

using thx.Floats;
import thx.Decimal;

abstract Megabit(Decimal) {
  @:from inline static public function fromDecimal(value : Decimal) : Megabit
    return new Megabit(value);

  @:from inline static public function fromInt(value : Int) : Megabit
    return fromDecimal(Decimal.fromInt(value));

  @:from inline static public function fromFloat(value : Float) : Megabit
    return fromDecimal(Decimal.fromFloat(value));

  inline function new(value : Decimal)
    this = value;

  inline public function abs() : Megabit
    return this.abs();

  inline public function min(that : Megabit) : Megabit
    return this.min(that.toDecimal());

  inline public function max(that : Megabit) : Megabit
    return this.max(that.toDecimal());

  @:op( -A ) inline public function negate() : Megabit
    return -this;
  @:op( A+B) inline public function add(that : Megabit) : Megabit
    return this.add(that.toDecimal());
  @:op( A-B) inline public function subtract(that : Megabit) : Megabit
    return this.subtract(that.toDecimal());
  @:op( A*B) inline public function multiply(that : Decimal) : Megabit
    return this.multiply(that);
  @:op( A/B) inline public function divide(that : Decimal) : Megabit
    return this.divide(that);
  @:op( A%B) inline public function modulo(that : Decimal) : Megabit
    return this.modulo(that);
  @:op(A==B) inline public function equal(that : Megabit) : Bool
    return this.equals(that.toDecimal());
  public function nearEquals(that : Megabit) : Bool
    return Floats.nearEquals(this.toFloat(), that.toFloat());
  @:op(A!=B) inline public function notEqual(that : Megabit) : Bool
    return !this.equals(that.toDecimal());
  @:op( A<B) inline public function less(that : Megabit) : Bool
    return this.less(that.toDecimal());
  @:op(A<=B) inline public function lessEqual(that : Megabit) : Bool
    return this.lessEqual(that.toDecimal());
  @:deprecated("use greater instead or simply >")
  inline public function more(that : Megabit) : Bool
    return greater(that);
  @:op( A>B) inline public function greater(that : Megabit) : Bool
    return this.greater(that.toDecimal());
  @:deprecated("use greaterEqual instead or simply >=")
  inline public function moreEqual(that : Megabit) : Bool
    return greaterEqual(that);
  @:op(A>=B) inline public function greaterEqual(that : Megabit) : Bool
    return this.greaterEqual(that.toDecimal());

  inline public function toDecimal() : Decimal
    return this;

  inline public function toFloat() : Float
    return this.toFloat();


  @:to inline public function toByte() : Byte
    return this * 1000000;
  @:to inline public function toKilobyte() : Kilobyte
    return this * 976.5625;
  @:to inline public function toMegabyte() : Megabyte
    return this * 0.95367431640625;
  @:to inline public function toGigabyte() : Gigabyte
    return this * 0.000931322574615479;
  @:to inline public function toTerabyte() : Terabyte
    return this * 9.09494701772928e-07;
  @:to inline public function toPetabyte() : Petabyte
    return this * 8.88178419700125e-10;
  @:to inline public function toExabyte() : Exabyte
    return this * 8.67361737988401e-13;
  @:to inline public function toZettabyte() : Zettabyte
    return this * 8.47032947254301e-16;
  @:to inline public function toYottabyte() : Yottabyte
    return this * 8.27180612553027e-19;
  @:to inline public function toKilobit() : Kilobit
    return this * 1000;
  @:to inline public function toGigabit() : Gigabit
    return this * 0.001;
  @:to inline public function toTerabit() : Terabit
    return this * 1e-06;
  @:to inline public function toPetabit() : Petabit
    return this * 1e-09;
  @:to inline public function toExabit() : Exabit
    return this * 1e-12;
  @:to inline public function toZettabit() : Zettabit
    return this * 1e-15;
  @:to inline public function toYottabit() : Yottabit
    return this * 1e-18;

  @:to inline public function toString() : String
    return this.toString() + symbol;

  public static inline var symbol : String = "M";
}
