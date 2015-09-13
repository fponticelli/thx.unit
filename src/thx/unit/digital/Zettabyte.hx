package thx.unit.digital;

using thx.Floats;
import thx.Decimal;

abstract Zettabyte(Decimal) {
  @:from inline static public function fromDecimal(value : Decimal) : Zettabyte
    return new Zettabyte(value);

  @:from inline static public function fromInt(value : Int) : Zettabyte
    return fromDecimal(Decimal.fromInt(value));

  @:from inline static public function fromFloat(value : Float) : Zettabyte
    return fromDecimal(Decimal.fromFloat(value));

  inline function new(value : Decimal)
    this = value;

  inline public function abs() : Zettabyte
    return this.abs();

  inline public function min(that : Zettabyte) : Zettabyte
    return this.min(that.toDecimal());

  inline public function max(that : Zettabyte) : Zettabyte
    return this.max(that.toDecimal());

  @:op( -A ) inline public function negate() : Zettabyte
    return -this;
  @:op( A+B) inline public function add(that : Zettabyte) : Zettabyte
    return this.add(that.toDecimal());
  @:op( A-B) inline public function subtract(that : Zettabyte) : Zettabyte
    return this.subtract(that.toDecimal());
  @:op( A*B) inline public function multiply(that : Decimal) : Zettabyte
    return this.multiply(that);
  @:op( A/B) inline public function divide(that : Decimal) : Zettabyte
    return this.divide(that);
  @:op( A%B) inline public function modulo(that : Decimal) : Zettabyte
    return this.modulo(that);
  @:op(A==B) inline public function equal(that : Zettabyte) : Bool
    return this.equals(that.toDecimal());
  public function nearEquals(that : Zettabyte) : Bool
    return Floats.nearEquals(this.toFloat(), that.toFloat());
  @:op(A!=B) inline public function notEqual(that : Zettabyte) : Bool
    return !this.equals(that.toDecimal());
  @:op( A<B) inline public function less(that : Zettabyte) : Bool
    return this.less(that.toDecimal());
  @:op(A<=B) inline public function lessEqual(that : Zettabyte) : Bool
    return this.lessEqual(that.toDecimal());
  @:deprecated("use greater instead or simply >")
  inline public function more(that : Zettabyte) : Bool
    return greater(that);
  @:op( A>B) inline public function greater(that : Zettabyte) : Bool
    return this.greater(that.toDecimal());
  @:deprecated("use greaterEqual instead or simply >=")
  inline public function moreEqual(that : Zettabyte) : Bool
    return greaterEqual(that);
  @:op(A>=B) inline public function greaterEqual(that : Zettabyte) : Bool
    return this.greaterEqual(that.toDecimal());

  inline public function toDecimal() : Decimal
    return this;

  inline public function toFloat() : Float
    return this.toFloat();


  @:to inline public function toByte() : Byte
    return this * 1.18059162071741e+21;
  @:to inline public function toKilobyte() : Kilobyte
    return this * 1.15292150460685e+18;
  @:to inline public function toMegabyte() : Megabyte
    return this * 1.12589990684262e+15;
  @:to inline public function toGigabyte() : Gigabyte
    return this * 1099511627776;
  @:to inline public function toTerabyte() : Terabyte
    return this * 1073741824;
  @:to inline public function toPetabyte() : Petabyte
    return this * 1048576;
  @:to inline public function toExabyte() : Exabyte
    return this * 1024;
  @:to inline public function toYottabyte() : Yottabyte
    return this * 0.000976562499999998;
  @:to inline public function toKilobit() : Kilobit
    return this * 1.18059162071741e+18;
  @:to inline public function toMegabit() : Megabit
    return this * 1.18059162071741e+15;
  @:to inline public function toGigabit() : Gigabit
    return this * 1180591620717.41;
  @:to inline public function toTerabit() : Terabit
    return this * 1180591620.71741;
  @:to inline public function toPetabit() : Petabit
    return this * 1180591.62071741;
  @:to inline public function toExabit() : Exabit
    return this * 1180.59162071741;
  @:to inline public function toZettabit() : Zettabit
    return this * 1.18059162071741;
  @:to inline public function toYottabit() : Yottabit
    return this * 0.00118059162071741;

  @:to inline public function toString() : String
    return this.toString() + symbol;

  public static inline var symbol : String = "Zi";
}
