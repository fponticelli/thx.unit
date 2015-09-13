package thx.unit.digital;

using thx.Floats;
import thx.Decimal;

abstract Kilobyte(Decimal) {
  @:from inline static public function fromDecimal(value : Decimal) : Kilobyte
    return new Kilobyte(value);

  @:from inline static public function fromInt(value : Int) : Kilobyte
    return fromDecimal(Decimal.fromInt(value));

  @:from inline static public function fromFloat(value : Float) : Kilobyte
    return fromDecimal(Decimal.fromFloat(value));

  inline function new(value : Decimal)
    this = value;

  inline public function abs() : Kilobyte
    return this.abs();

  inline public function min(that : Kilobyte) : Kilobyte
    return this.min(that.toDecimal());

  inline public function max(that : Kilobyte) : Kilobyte
    return this.max(that.toDecimal());

  @:op( -A ) inline public function negate() : Kilobyte
    return -this;
  @:op( A+B) inline public function add(that : Kilobyte) : Kilobyte
    return this.add(that.toDecimal());
  @:op( A-B) inline public function subtract(that : Kilobyte) : Kilobyte
    return this.subtract(that.toDecimal());
  @:op( A*B) inline public function multiply(that : Decimal) : Kilobyte
    return this.multiply(that);
  @:op( A/B) inline public function divide(that : Decimal) : Kilobyte
    return this.divide(that);
  @:op( A%B) inline public function modulo(that : Decimal) : Kilobyte
    return this.modulo(that);
  @:op(A==B) inline public function equal(that : Kilobyte) : Bool
    return this.equals(that.toDecimal());
  public function nearEquals(that : Kilobyte) : Bool
    return Floats.nearEquals(this.toFloat(), that.toFloat());
  @:op(A!=B) inline public function notEqual(that : Kilobyte) : Bool
    return !this.equals(that.toDecimal());
  @:op( A<B) inline public function less(that : Kilobyte) : Bool
    return this.less(that.toDecimal());
  @:op(A<=B) inline public function lessEqual(that : Kilobyte) : Bool
    return this.lessEqual(that.toDecimal());
  @:deprecated("use greater instead or simply >")
  inline public function more(that : Kilobyte) : Bool
    return greater(that);
  @:op( A>B) inline public function greater(that : Kilobyte) : Bool
    return this.greater(that.toDecimal());
  @:deprecated("use greaterEqual instead or simply >=")
  inline public function moreEqual(that : Kilobyte) : Bool
    return greaterEqual(that);
  @:op(A>=B) inline public function greaterEqual(that : Kilobyte) : Bool
    return this.greaterEqual(that.toDecimal());

  inline public function toDecimal() : Decimal
    return this;

  inline public function toFloat() : Float
    return this.toFloat();


  @:to inline public function toByte() : Byte
    return this * 1024;
  @:to inline public function toMegabyte() : Megabyte
    return this * 0.0009765625;
  @:to inline public function toGigabyte() : Gigabyte
    return this * 9.5367431640625e-07;
  @:to inline public function toTerabyte() : Terabyte
    return this * 9.31322574615479e-10;
  @:to inline public function toPetabyte() : Petabyte
    return this * 9.09494701772928e-13;
  @:to inline public function toExabyte() : Exabyte
    return this * 8.88178419700123e-16;
  @:to inline public function toZettabyte() : Zettabyte
    return this * 8.67361737988405e-19;
  @:to inline public function toYottabyte() : Yottabyte
    return this * 8.470329472543e-22;
  @:to inline public function toKilobit() : Kilobit
    return this * 1.024;
  @:to inline public function toMegabit() : Megabit
    return this * 0.001024;
  @:to inline public function toGigabit() : Gigabit
    return this * 1.024e-06;
  @:to inline public function toTerabit() : Terabit
    return this * 1.024e-09;
  @:to inline public function toPetabit() : Petabit
    return this * 1.024e-12;
  @:to inline public function toExabit() : Exabit
    return this * 1.024e-15;
  @:to inline public function toZettabit() : Zettabit
    return this * 1.024e-18;
  @:to inline public function toYottabit() : Yottabit
    return this * 1.024e-21;

  @:to inline public function toString() : String
    return this.toString() + symbol;

  public static inline var symbol : String = "Ki";
}
