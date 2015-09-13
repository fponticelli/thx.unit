package thx.unit.digital;

using thx.Floats;
import thx.Decimal;

abstract Gigabyte(Decimal) {
  @:from inline static public function fromDecimal(value : Decimal) : Gigabyte
    return new Gigabyte(value);

  @:from inline static public function fromInt(value : Int) : Gigabyte
    return fromDecimal(Decimal.fromInt(value));

  @:from inline static public function fromFloat(value : Float) : Gigabyte
    return fromDecimal(Decimal.fromFloat(value));

  inline function new(value : Decimal)
    this = value;

  inline public function abs() : Gigabyte
    return this.abs();

  inline public function min(that : Gigabyte) : Gigabyte
    return this.min(that.toDecimal());

  inline public function max(that : Gigabyte) : Gigabyte
    return this.max(that.toDecimal());

  @:op( -A ) inline public function negate() : Gigabyte
    return -this;
  @:op( A+B) inline public function add(that : Gigabyte) : Gigabyte
    return this.add(that.toDecimal());
  @:op( A-B) inline public function subtract(that : Gigabyte) : Gigabyte
    return this.subtract(that.toDecimal());
  @:op( A*B) inline public function multiply(that : Decimal) : Gigabyte
    return this.multiply(that);
  @:op( A/B) inline public function divide(that : Decimal) : Gigabyte
    return this.divide(that);
  @:op( A%B) inline public function modulo(that : Decimal) : Gigabyte
    return this.modulo(that);
  @:op(A==B) inline public function equal(that : Gigabyte) : Bool
    return this.equals(that.toDecimal());
  public function nearEquals(that : Gigabyte) : Bool
    return Floats.nearEquals(this.toFloat(), that.toFloat());
  @:op(A!=B) inline public function notEqual(that : Gigabyte) : Bool
    return !this.equals(that.toDecimal());
  @:op( A<B) inline public function less(that : Gigabyte) : Bool
    return this.less(that.toDecimal());
  @:op(A<=B) inline public function lessEqual(that : Gigabyte) : Bool
    return this.lessEqual(that.toDecimal());
  @:deprecated("use greater instead or simply >")
  inline public function more(that : Gigabyte) : Bool
    return greater(that);
  @:op( A>B) inline public function greater(that : Gigabyte) : Bool
    return this.greater(that.toDecimal());
  @:deprecated("use greaterEqual instead or simply >=")
  inline public function moreEqual(that : Gigabyte) : Bool
    return greaterEqual(that);
  @:op(A>=B) inline public function greaterEqual(that : Gigabyte) : Bool
    return this.greaterEqual(that.toDecimal());

  inline public function toDecimal() : Decimal
    return this;

  inline public function toFloat() : Float
    return this.toFloat();


  @:to inline public function toByte() : Byte
    return this * 1073741824;
  @:to inline public function toKilobyte() : Kilobyte
    return this * 1048576;
  @:to inline public function toMegabyte() : Megabyte
    return this * 1024;
  @:to inline public function toTerabyte() : Terabyte
    return this * 0.0009765625;
  @:to inline public function toPetabyte() : Petabyte
    return this * 9.5367431640625e-07;
  @:to inline public function toExabyte() : Exabyte
    return this * 9.31322574615476e-10;
  @:to inline public function toZettabyte() : Zettabyte
    return this * 9.09494701772929e-13;
  @:to inline public function toYottabyte() : Yottabyte
    return this * 8.88178419700125e-16;
  @:to inline public function toKilobit() : Kilobit
    return this * 1073741.824;
  @:to inline public function toMegabit() : Megabit
    return this * 1073.741824;
  @:to inline public function toGigabit() : Gigabit
    return this * 1.073741824;
  @:to inline public function toTerabit() : Terabit
    return this * 0.001073741824;
  @:to inline public function toPetabit() : Petabit
    return this * 1.073741824e-06;
  @:to inline public function toExabit() : Exabit
    return this * 1.073741824e-09;
  @:to inline public function toZettabit() : Zettabit
    return this * 1.073741824e-12;
  @:to inline public function toYottabit() : Yottabit
    return this * 1.073741824e-15;

  @:to inline public function toString() : String
    return this.toString() + symbol;

  public static inline var symbol : String = "Gi";
}
