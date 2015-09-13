package thx.unit.digital;

using thx.Floats;
import thx.Decimal;

abstract Terabyte(Decimal) {
  @:from inline static public function fromDecimal(value : Decimal) : Terabyte
    return new Terabyte(value);

  @:from inline static public function fromInt(value : Int) : Terabyte
    return fromDecimal(Decimal.fromInt(value));

  @:from inline static public function fromFloat(value : Float) : Terabyte
    return fromDecimal(Decimal.fromFloat(value));

  inline function new(value : Decimal)
    this = value;

  inline public function abs() : Terabyte
    return this.abs();

  inline public function min(that : Terabyte) : Terabyte
    return this.min(that.toDecimal());

  inline public function max(that : Terabyte) : Terabyte
    return this.max(that.toDecimal());

  @:op( -A ) inline public function negate() : Terabyte
    return -this;
  @:op( A+B) inline public function add(that : Terabyte) : Terabyte
    return this.add(that.toDecimal());
  @:op( A-B) inline public function subtract(that : Terabyte) : Terabyte
    return this.subtract(that.toDecimal());
  @:op( A*B) inline public function multiply(that : Decimal) : Terabyte
    return this.multiply(that);
  @:op( A/B) inline public function divide(that : Decimal) : Terabyte
    return this.divide(that);
  @:op( A%B) inline public function modulo(that : Decimal) : Terabyte
    return this.modulo(that);
  @:op(A==B) inline public function equal(that : Terabyte) : Bool
    return this.equals(that.toDecimal());
  public function nearEquals(that : Terabyte) : Bool
    return Floats.nearEquals(this.toFloat(), that.toFloat());
  @:op(A!=B) inline public function notEqual(that : Terabyte) : Bool
    return !this.equals(that.toDecimal());
  @:op( A<B) inline public function less(that : Terabyte) : Bool
    return this.less(that.toDecimal());
  @:op(A<=B) inline public function lessEqual(that : Terabyte) : Bool
    return this.lessEqual(that.toDecimal());
  @:deprecated("use greater instead or simply >")
  inline public function more(that : Terabyte) : Bool
    return greater(that);
  @:op( A>B) inline public function greater(that : Terabyte) : Bool
    return this.greater(that.toDecimal());
  @:deprecated("use greaterEqual instead or simply >=")
  inline public function moreEqual(that : Terabyte) : Bool
    return greaterEqual(that);
  @:op(A>=B) inline public function greaterEqual(that : Terabyte) : Bool
    return this.greaterEqual(that.toDecimal());

  inline public function toDecimal() : Decimal
    return this;

  inline public function toFloat() : Float
    return this.toFloat();


  @:to inline public function toByte() : Byte
    return this * 1099511627776;
  @:to inline public function toKilobyte() : Kilobyte
    return this * 1073741824;
  @:to inline public function toMegabyte() : Megabyte
    return this * 1048576;
  @:to inline public function toGigabyte() : Gigabyte
    return this * 1024;
  @:to inline public function toPetabyte() : Petabyte
    return this * 0.0009765625;
  @:to inline public function toExabyte() : Exabyte
    return this * 9.53674316406247e-07;
  @:to inline public function toZettabyte() : Zettabyte
    return this * 9.3132257461548e-10;
  @:to inline public function toYottabyte() : Yottabyte
    return this * 9.09494701772928e-13;
  @:to inline public function toKilobit() : Kilobit
    return this * 1099511627.776;
  @:to inline public function toMegabit() : Megabit
    return this * 1099511.627776;
  @:to inline public function toGigabit() : Gigabit
    return this * 1099.511627776;
  @:to inline public function toTerabit() : Terabit
    return this * 1.099511627776;
  @:to inline public function toPetabit() : Petabit
    return this * 0.001099511627776;
  @:to inline public function toExabit() : Exabit
    return this * 1.099511627776e-06;
  @:to inline public function toZettabit() : Zettabit
    return this * 1.099511627776e-09;
  @:to inline public function toYottabit() : Yottabit
    return this * 1.099511627776e-12;

  @:to inline public function toString() : String
    return this.toString() + symbol;

  public static inline var symbol : String = "Ti";
}
