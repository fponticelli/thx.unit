package thx.unit.digital;

using thx.Floats;
import thx.Decimal;

abstract Petabit(Decimal) {
  @:from inline static public function fromDecimal(value : Decimal) : Petabit
    return new Petabit(value);

  @:from inline static public function fromInt(value : Int) : Petabit
    return fromDecimal(Decimal.fromInt(value));

  @:from inline static public function fromFloat(value : Float) : Petabit
    return fromDecimal(Decimal.fromFloat(value));

  inline function new(value : Decimal)
    this = value;

  inline public function abs() : Petabit
    return this.abs();

  inline public function min(that : Petabit) : Petabit
    return this.min(that.toDecimal());

  inline public function max(that : Petabit) : Petabit
    return this.max(that.toDecimal());

  @:op( -A ) inline public function negate() : Petabit
    return -this;
  @:op( A+B) inline public function add(that : Petabit) : Petabit
    return this.add(that.toDecimal());
  @:op( A-B) inline public function subtract(that : Petabit) : Petabit
    return this.subtract(that.toDecimal());
  @:op( A*B) inline public function multiply(that : Decimal) : Petabit
    return this.multiply(that);
  @:op( A/B) inline public function divide(that : Decimal) : Petabit
    return this.divide(that);
  @:op( A%B) inline public function modulo(that : Decimal) : Petabit
    return this.modulo(that);
  @:op(A==B) inline public function equal(that : Petabit) : Bool
    return this.equals(that.toDecimal());
  public function nearEquals(that : Petabit) : Bool
    return Floats.nearEquals(this.toFloat(), that.toFloat());
  @:op(A!=B) inline public function notEqual(that : Petabit) : Bool
    return !this.equals(that.toDecimal());
  @:op( A<B) inline public function less(that : Petabit) : Bool
    return this.less(that.toDecimal());
  @:op(A<=B) inline public function lessEqual(that : Petabit) : Bool
    return this.lessEqual(that.toDecimal());
  @:deprecated("use greater instead or simply >")
  inline public function more(that : Petabit) : Bool
    return greater(that);
  @:op( A>B) inline public function greater(that : Petabit) : Bool
    return this.greater(that.toDecimal());
  @:deprecated("use greaterEqual instead or simply >=")
  inline public function moreEqual(that : Petabit) : Bool
    return greaterEqual(that);
  @:op(A>=B) inline public function greaterEqual(that : Petabit) : Bool
    return this.greaterEqual(that.toDecimal());

  inline public function toDecimal() : Decimal
    return this;

  inline public function toFloat() : Float
    return this.toFloat();


  @:to inline public function toByte() : Byte
    return this * 1e+15;
  @:to inline public function toKilobyte() : Kilobyte
    return this * 976562500000;
  @:to inline public function toMegabyte() : Megabyte
    return this * 953674316.40625;
  @:to inline public function toGigabyte() : Gigabyte
    return this * 931322.574615479;
  @:to inline public function toTerabyte() : Terabyte
    return this * 909.494701772928;
  @:to inline public function toPetabyte() : Petabyte
    return this * 0.888178419700125;
  @:to inline public function toExabyte() : Exabyte
    return this * 0.000867361737988401;
  @:to inline public function toZettabyte() : Zettabyte
    return this * 8.47032947254301e-07;
  @:to inline public function toYottabyte() : Yottabyte
    return this * 8.27180612553027e-10;
  @:to inline public function toKilobit() : Kilobit
    return this * 1000000000000;
  @:to inline public function toMegabit() : Megabit
    return this * 1000000000;
  @:to inline public function toGigabit() : Gigabit
    return this * 1000000;
  @:to inline public function toTerabit() : Terabit
    return this * 1000;
  @:to inline public function toExabit() : Exabit
    return this * 0.001;
  @:to inline public function toZettabit() : Zettabit
    return this * 1e-06;
  @:to inline public function toYottabit() : Yottabit
    return this * 1e-09;

  @:to inline public function toString() : String
    return this.toString() + symbol;

  public static inline var symbol : String = "P";
}
