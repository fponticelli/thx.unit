package thx.unit.digital;

using thx.Floats;
import thx.Decimal;

abstract Yottabit(Decimal) {
  @:from inline static public function fromDecimal(value : Decimal) : Yottabit
    return new Yottabit(value);

  @:from inline static public function fromInt(value : Int) : Yottabit
    return fromDecimal(Decimal.fromInt(value));

  @:from inline static public function fromFloat(value : Float) : Yottabit
    return fromDecimal(Decimal.fromFloat(value));

  inline function new(value : Decimal)
    this = value;

  inline public function abs() : Yottabit
    return this.abs();

  inline public function min(that : Yottabit) : Yottabit
    return this.min(that.toDecimal());

  inline public function max(that : Yottabit) : Yottabit
    return this.max(that.toDecimal());

  @:op( -A ) inline public function negate() : Yottabit
    return -this;
  @:op( A+B) inline public function add(that : Yottabit) : Yottabit
    return this.add(that.toDecimal());
  @:op( A-B) inline public function subtract(that : Yottabit) : Yottabit
    return this.subtract(that.toDecimal());
  @:op( A*B) inline public function multiply(that : Decimal) : Yottabit
    return this.multiply(that);
  @:op( A/B) inline public function divide(that : Decimal) : Yottabit
    return this.divide(that);
  @:op( A%B) inline public function modulo(that : Decimal) : Yottabit
    return this.modulo(that);
  @:op(A==B) inline public function equal(that : Yottabit) : Bool
    return this.equals(that.toDecimal());
  public function nearEquals(that : Yottabit) : Bool
    return Floats.nearEquals(this.toFloat(), that.toFloat());
  @:op(A!=B) inline public function notEqual(that : Yottabit) : Bool
    return !this.equals(that.toDecimal());
  @:op( A<B) inline public function less(that : Yottabit) : Bool
    return this.less(that.toDecimal());
  @:op(A<=B) inline public function lessEqual(that : Yottabit) : Bool
    return this.lessEqual(that.toDecimal());
  @:deprecated("use greater instead or simply >")
  inline public function more(that : Yottabit) : Bool
    return greater(that);
  @:op( A>B) inline public function greater(that : Yottabit) : Bool
    return this.greater(that.toDecimal());
  @:deprecated("use greaterEqual instead or simply >=")
  inline public function moreEqual(that : Yottabit) : Bool
    return greaterEqual(that);
  @:op(A>=B) inline public function greaterEqual(that : Yottabit) : Bool
    return this.greaterEqual(that.toDecimal());

  inline public function toDecimal() : Decimal
    return this;

  inline public function toFloat() : Float
    return this.toFloat();


  @:to inline public function toByte() : Byte
    return this * 1e+24;
  @:to inline public function toKilobyte() : Kilobyte
    return this * 9.765625e+20;
  @:to inline public function toMegabyte() : Megabyte
    return this * 9.5367431640625e+17;
  @:to inline public function toGigabyte() : Gigabyte
    return this * 931322574615478;
  @:to inline public function toTerabyte() : Terabyte
    return this * 909494701772.928;
  @:to inline public function toPetabyte() : Petabyte
    return this * 888178419.700125;
  @:to inline public function toExabyte() : Exabyte
    return this * 867361.737988401;
  @:to inline public function toZettabyte() : Zettabyte
    return this * 847.032947254301;
  @:to inline public function toYottabyte() : Yottabyte
    return this * 0.827180612553027;
  @:to inline public function toKilobit() : Kilobit
    return this * 1e+21;
  @:to inline public function toMegabit() : Megabit
    return this * 1e+18;
  @:to inline public function toGigabit() : Gigabit
    return this * 1e+15;
  @:to inline public function toTerabit() : Terabit
    return this * 1000000000000;
  @:to inline public function toPetabit() : Petabit
    return this * 1000000000;
  @:to inline public function toExabit() : Exabit
    return this * 1000000;
  @:to inline public function toZettabit() : Zettabit
    return this * 1000;

  @:to inline public function toString() : String
    return this.toString() + symbol;

  public static inline var symbol : String = "Y";
}
