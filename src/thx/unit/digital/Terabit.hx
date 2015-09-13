package thx.unit.digital;

using thx.Floats;
import thx.Decimal;

abstract Terabit(Decimal) {
  @:from inline static public function fromDecimal(value : Decimal) : Terabit
    return new Terabit(value);

  @:from inline static public function fromInt(value : Int) : Terabit
    return fromDecimal(Decimal.fromInt(value));

  @:from inline static public function fromFloat(value : Float) : Terabit
    return fromDecimal(Decimal.fromFloat(value));

  inline function new(value : Decimal)
    this = value;

  inline public function abs() : Terabit
    return this.abs();

  inline public function min(that : Terabit) : Terabit
    return this.min(that.toDecimal());

  inline public function max(that : Terabit) : Terabit
    return this.max(that.toDecimal());

  @:op( -A ) inline public function negate() : Terabit
    return -this;
  @:op( A+B) inline public function add(that : Terabit) : Terabit
    return this.add(that.toDecimal());
  @:op( A-B) inline public function subtract(that : Terabit) : Terabit
    return this.subtract(that.toDecimal());
  @:op( A*B) inline public function multiply(that : Decimal) : Terabit
    return this.multiply(that);
  @:op( A/B) inline public function divide(that : Decimal) : Terabit
    return this.divide(that);
  @:op( A%B) inline public function modulo(that : Decimal) : Terabit
    return this.modulo(that);
  @:op(A==B) inline public function equal(that : Terabit) : Bool
    return this.equals(that.toDecimal());
  public function nearEquals(that : Terabit) : Bool
    return Floats.nearEquals(this.toFloat(), that.toFloat());
  @:op(A!=B) inline public function notEqual(that : Terabit) : Bool
    return !this.equals(that.toDecimal());
  @:op( A<B) inline public function less(that : Terabit) : Bool
    return this.less(that.toDecimal());
  @:op(A<=B) inline public function lessEqual(that : Terabit) : Bool
    return this.lessEqual(that.toDecimal());
  @:deprecated("use greater instead or simply >")
  inline public function more(that : Terabit) : Bool
    return greater(that);
  @:op( A>B) inline public function greater(that : Terabit) : Bool
    return this.greater(that.toDecimal());
  @:deprecated("use greaterEqual instead or simply >=")
  inline public function moreEqual(that : Terabit) : Bool
    return greaterEqual(that);
  @:op(A>=B) inline public function greaterEqual(that : Terabit) : Bool
    return this.greaterEqual(that.toDecimal());

  inline public function toDecimal() : Decimal
    return this;

  inline public function toFloat() : Float
    return this.toFloat();


  @:to inline public function toByte() : Byte
    return this * 1000000000000;
  @:to inline public function toKilobyte() : Kilobyte
    return this * 976562500;
  @:to inline public function toMegabyte() : Megabyte
    return this * 953674.31640625;
  @:to inline public function toGigabyte() : Gigabyte
    return this * 931.322574615479;
  @:to inline public function toTerabyte() : Terabyte
    return this * 0.909494701772928;
  @:to inline public function toPetabyte() : Petabyte
    return this * 0.000888178419700125;
  @:to inline public function toExabyte() : Exabyte
    return this * 8.67361737988401e-07;
  @:to inline public function toZettabyte() : Zettabyte
    return this * 8.47032947254301e-10;
  @:to inline public function toYottabyte() : Yottabyte
    return this * 8.27180612553027e-13;
  @:to inline public function toKilobit() : Kilobit
    return this * 1000000000;
  @:to inline public function toMegabit() : Megabit
    return this * 1000000;
  @:to inline public function toGigabit() : Gigabit
    return this * 1000;
  @:to inline public function toPetabit() : Petabit
    return this * 0.001;
  @:to inline public function toExabit() : Exabit
    return this * 1e-06;
  @:to inline public function toZettabit() : Zettabit
    return this * 1e-09;
  @:to inline public function toYottabit() : Yottabit
    return this * 1e-12;

  @:to inline public function toString() : String
    return this.toString() + symbol;

  public static inline var symbol : String = "T";
}
