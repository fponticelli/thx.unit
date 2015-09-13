package thx.unit.digital;

using thx.Floats;
import thx.Decimal;

abstract Exabyte(Decimal) {
  @:from inline static public function fromDecimal(value : Decimal) : Exabyte
    return new Exabyte(value);

  @:from inline static public function fromInt(value : Int) : Exabyte
    return fromDecimal(Decimal.fromInt(value));

  @:from inline static public function fromFloat(value : Float) : Exabyte
    return fromDecimal(Decimal.fromFloat(value));

  inline function new(value : Decimal)
    this = value;

  inline public function abs() : Exabyte
    return this.abs();

  inline public function min(that : Exabyte) : Exabyte
    return this.min(that.toDecimal());

  inline public function max(that : Exabyte) : Exabyte
    return this.max(that.toDecimal());

  @:op( -A ) inline public function negate() : Exabyte
    return -this;
  @:op( A+B) inline public function add(that : Exabyte) : Exabyte
    return this.add(that.toDecimal());
  @:op( A-B) inline public function subtract(that : Exabyte) : Exabyte
    return this.subtract(that.toDecimal());
  @:op( A*B) inline public function multiply(that : Decimal) : Exabyte
    return this.multiply(that);
  @:op( A/B) inline public function divide(that : Decimal) : Exabyte
    return this.divide(that);
  @:op( A%B) inline public function modulo(that : Decimal) : Exabyte
    return this.modulo(that);
  @:op(A==B) inline public function equal(that : Exabyte) : Bool
    return this.equals(that.toDecimal());
  public function nearEquals(that : Exabyte) : Bool
    return Floats.nearEquals(this.toFloat(), that.toFloat());
  @:op(A!=B) inline public function notEqual(that : Exabyte) : Bool
    return !this.equals(that.toDecimal());
  @:op( A<B) inline public function less(that : Exabyte) : Bool
    return this.less(that.toDecimal());
  @:op(A<=B) inline public function lessEqual(that : Exabyte) : Bool
    return this.lessEqual(that.toDecimal());
  @:deprecated("use greater instead or simply >")
  inline public function more(that : Exabyte) : Bool
    return greater(that);
  @:op( A>B) inline public function greater(that : Exabyte) : Bool
    return this.greater(that.toDecimal());
  @:deprecated("use greaterEqual instead or simply >=")
  inline public function moreEqual(that : Exabyte) : Bool
    return greaterEqual(that);
  @:op(A>=B) inline public function greaterEqual(that : Exabyte) : Bool
    return this.greaterEqual(that.toDecimal());

  inline public function toDecimal() : Decimal
    return this;

  inline public function toFloat() : Float
    return this.toFloat();


  @:to inline public function toByte() : Byte
    return this * 1.15292150460685e+18;
  @:to inline public function toKilobyte() : Kilobyte
    return this * 1.12589990684263e+15;
  @:to inline public function toMegabyte() : Megabyte
    return this * 1099511627776;
  @:to inline public function toGigabyte() : Gigabyte
    return this * 1073741824;
  @:to inline public function toTerabyte() : Terabyte
    return this * 1048576;
  @:to inline public function toPetabyte() : Petabyte
    return this * 1024;
  @:to inline public function toZettabyte() : Zettabyte
    return this * 0.000976562500000004;
  @:to inline public function toYottabyte() : Yottabyte
    return this * 9.53674316406252e-07;
  @:to inline public function toKilobit() : Kilobit
    return this * 1.15292150460685e+15;
  @:to inline public function toMegabit() : Megabit
    return this * 1152921504606.85;
  @:to inline public function toGigabit() : Gigabit
    return this * 1152921504.60685;
  @:to inline public function toTerabit() : Terabit
    return this * 1152921.50460685;
  @:to inline public function toPetabit() : Petabit
    return this * 1152.92150460685;
  @:to inline public function toExabit() : Exabit
    return this * 1.15292150460685;
  @:to inline public function toZettabit() : Zettabit
    return this * 0.00115292150460685;
  @:to inline public function toYottabit() : Yottabit
    return this * 1.15292150460685e-06;

  @:to inline public function toString() : String
    return this.toString() + symbol;

  public static inline var symbol : String = "Ei";
}
