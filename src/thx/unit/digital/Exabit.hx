package thx.unit.digital;

using thx.Floats;
import thx.Decimal;

abstract Exabit(Decimal) {
  @:from inline static public function fromDecimal(value : Decimal) : Exabit
    return new Exabit(value);

  @:from inline static public function fromInt(value : Int) : Exabit
    return fromDecimal(Decimal.fromInt(value));

  @:from inline static public function fromFloat(value : Float) : Exabit
    return fromDecimal(Decimal.fromFloat(value));

  inline function new(value : Decimal)
    this = value;

  inline public function abs() : Exabit
    return this.abs();

  inline public function min(that : Exabit) : Exabit
    return this.min(that.toDecimal());

  inline public function max(that : Exabit) : Exabit
    return this.max(that.toDecimal());

  @:op( -A ) inline public function negate() : Exabit
    return -this;
  @:op( A+B) inline public function add(that : Exabit) : Exabit
    return this.add(that.toDecimal());
  @:op( A-B) inline public function subtract(that : Exabit) : Exabit
    return this.subtract(that.toDecimal());
  @:op( A*B) inline public function multiply(that : Decimal) : Exabit
    return this.multiply(that);
  @:op( A/B) inline public function divide(that : Decimal) : Exabit
    return this.divide(that);
  @:op( A%B) inline public function modulo(that : Decimal) : Exabit
    return this.modulo(that);
  @:op(A==B) inline public function equal(that : Exabit) : Bool
    return this.equals(that.toDecimal());
  public function nearEquals(that : Exabit) : Bool
    return Floats.nearEquals(this.toFloat(), that.toFloat());
  @:op(A!=B) inline public function notEqual(that : Exabit) : Bool
    return !this.equals(that.toDecimal());
  @:op( A<B) inline public function less(that : Exabit) : Bool
    return this.less(that.toDecimal());
  @:op(A<=B) inline public function lessEqual(that : Exabit) : Bool
    return this.lessEqual(that.toDecimal());
  @:deprecated("use greater instead or simply >")
  inline public function more(that : Exabit) : Bool
    return greater(that);
  @:op( A>B) inline public function greater(that : Exabit) : Bool
    return this.greater(that.toDecimal());
  @:deprecated("use greaterEqual instead or simply >=")
  inline public function moreEqual(that : Exabit) : Bool
    return greaterEqual(that);
  @:op(A>=B) inline public function greaterEqual(that : Exabit) : Bool
    return this.greaterEqual(that.toDecimal());

  inline public function toDecimal() : Decimal
    return this;

  inline public function toFloat() : Float
    return this.toFloat();


  @:to inline public function toByte() : Byte
    return this * 1e+18;
  @:to inline public function toKilobyte() : Kilobyte
    return this * 976562500000000;
  @:to inline public function toMegabyte() : Megabyte
    return this * 953674316406.25;
  @:to inline public function toGigabyte() : Gigabyte
    return this * 931322574.615479;
  @:to inline public function toTerabyte() : Terabyte
    return this * 909494.701772928;
  @:to inline public function toPetabyte() : Petabyte
    return this * 888.178419700125;
  @:to inline public function toExabyte() : Exabyte
    return this * 0.867361737988401;
  @:to inline public function toZettabyte() : Zettabyte
    return this * 0.000847032947254301;
  @:to inline public function toYottabyte() : Yottabyte
    return this * 8.27180612553027e-07;
  @:to inline public function toKilobit() : Kilobit
    return this * 1e+15;
  @:to inline public function toMegabit() : Megabit
    return this * 1000000000000;
  @:to inline public function toGigabit() : Gigabit
    return this * 1000000000;
  @:to inline public function toTerabit() : Terabit
    return this * 1000000;
  @:to inline public function toPetabit() : Petabit
    return this * 1000;
  @:to inline public function toZettabit() : Zettabit
    return this * 0.001;
  @:to inline public function toYottabit() : Yottabit
    return this * 1e-06;

  @:to inline public function toString() : String
    return this.toString() + symbol;

  public static inline var symbol : String = "E";
}
