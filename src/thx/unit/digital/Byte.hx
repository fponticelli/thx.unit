package thx.unit.digital;

using thx.Floats;
import thx.Decimal;

abstract Byte(Decimal) {
  @:from inline static public function fromDecimal(value : Decimal) : Byte
    return new Byte(value);

  @:from inline static public function fromInt(value : Int) : Byte
    return fromDecimal(Decimal.fromInt(value));

  @:from inline static public function fromFloat(value : Float) : Byte
    return fromDecimal(Decimal.fromFloat(value));

  inline function new(value : Decimal)
    this = value;

  inline public function abs() : Byte
    return this.abs();

  inline public function min(that : Byte) : Byte
    return this.min(that.toDecimal());

  inline public function max(that : Byte) : Byte
    return this.max(that.toDecimal());

  @:op( -A ) inline public function negate() : Byte
    return -this;
  @:op( A+B) inline public function add(that : Byte) : Byte
    return this.add(that.toDecimal());
  @:op( A-B) inline public function subtract(that : Byte) : Byte
    return this.subtract(that.toDecimal());
  @:op( A*B) inline public function multiply(that : Decimal) : Byte
    return this.multiply(that);
  @:op( A/B) inline public function divide(that : Decimal) : Byte
    return this.divide(that);
  @:op( A%B) inline public function modulo(that : Decimal) : Byte
    return this.modulo(that);
  @:op(A==B) inline public function equal(that : Byte) : Bool
    return this.equals(that.toDecimal());
  public function nearEquals(that : Byte) : Bool
    return Floats.nearEquals(this.toFloat(), that.toFloat());
  @:op(A!=B) inline public function notEqual(that : Byte) : Bool
    return !this.equals(that.toDecimal());
  @:op( A<B) inline public function less(that : Byte) : Bool
    return this.less(that.toDecimal());
  @:op(A<=B) inline public function lessEqual(that : Byte) : Bool
    return this.lessEqual(that.toDecimal());
  @:deprecated("use greater instead or simply >")
  inline public function more(that : Byte) : Bool
    return greater(that);
  @:op( A>B) inline public function greater(that : Byte) : Bool
    return this.greater(that.toDecimal());
  @:deprecated("use greaterEqual instead or simply >=")
  inline public function moreEqual(that : Byte) : Bool
    return greaterEqual(that);
  @:op(A>=B) inline public function greaterEqual(that : Byte) : Bool
    return this.greaterEqual(that.toDecimal());

  inline public function toDecimal() : Decimal
    return this;

  inline public function toFloat() : Float
    return this.toFloat();


  @:to inline public function toKilobyte() : Kilobyte
    return this * 0.0009765625;
  @:to inline public function toMegabyte() : Megabyte
    return this * 9.5367431640625e-07;
  @:to inline public function toGigabyte() : Gigabyte
    return this * 9.31322574615479e-10;
  @:to inline public function toTerabyte() : Terabyte
    return this * 9.09494701772928e-13;
  @:to inline public function toPetabyte() : Petabyte
    return this * 8.88178419700125e-16;
  @:to inline public function toExabyte() : Exabyte
    return this * 8.67361737988401e-19;
  @:to inline public function toZettabyte() : Zettabyte
    return this * 8.47032947254301e-22;
  @:to inline public function toYottabyte() : Yottabyte
    return this * 8.27180612553027e-25;
  @:to inline public function toKilobit() : Kilobit
    return this * 0.001;
  @:to inline public function toMegabit() : Megabit
    return this * 1e-06;
  @:to inline public function toGigabit() : Gigabit
    return this * 1e-09;
  @:to inline public function toTerabit() : Terabit
    return this * 1e-12;
  @:to inline public function toPetabit() : Petabit
    return this * 1e-15;
  @:to inline public function toExabit() : Exabit
    return this * 1e-18;
  @:to inline public function toZettabit() : Zettabit
    return this * 1e-21;
  @:to inline public function toYottabit() : Yottabit
    return this * 1e-24;

  @:to inline public function toString() : String
    return this.toString() + symbol;

  public static inline var symbol : String = "B";
}
