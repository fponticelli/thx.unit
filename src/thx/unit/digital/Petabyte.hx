package thx.unit.digital;

using thx.Floats;
import thx.Decimal;

abstract Petabyte(Decimal) {
  @:from inline static public function fromDecimal(value : Decimal) : Petabyte
    return new Petabyte(value);

  @:from inline static public function fromInt(value : Int) : Petabyte
    return fromDecimal(Decimal.fromInt(value));

  @:from inline static public function fromFloat(value : Float) : Petabyte
    return fromDecimal(Decimal.fromFloat(value));

  inline function new(value : Decimal)
    this = value;

  inline public function abs() : Petabyte
    return this.abs();

  inline public function min(that : Petabyte) : Petabyte
    return this.min(that.toDecimal());

  inline public function max(that : Petabyte) : Petabyte
    return this.max(that.toDecimal());

  @:op( -A ) inline public function negate() : Petabyte
    return -this;
  @:op( A+B) inline public function add(that : Petabyte) : Petabyte
    return this.add(that.toDecimal());
  @:op( A-B) inline public function subtract(that : Petabyte) : Petabyte
    return this.subtract(that.toDecimal());
  @:op( A*B) inline public function multiply(that : Decimal) : Petabyte
    return this.multiply(that);
  @:op( A/B) inline public function divide(that : Decimal) : Petabyte
    return this.divide(that);
  @:op( A%B) inline public function modulo(that : Decimal) : Petabyte
    return this.modulo(that);
  @:op(A==B) inline public function equal(that : Petabyte) : Bool
    return this.equals(that.toDecimal());
  public function nearEquals(that : Petabyte) : Bool
    return Floats.nearEquals(this.toFloat(), that.toFloat());
  @:op(A!=B) inline public function notEqual(that : Petabyte) : Bool
    return !this.equals(that.toDecimal());
  @:op( A<B) inline public function less(that : Petabyte) : Bool
    return this.less(that.toDecimal());
  @:op(A<=B) inline public function lessEqual(that : Petabyte) : Bool
    return this.lessEqual(that.toDecimal());
  @:deprecated("use greater instead or simply >")
  inline public function more(that : Petabyte) : Bool
    return greater(that);
  @:op( A>B) inline public function greater(that : Petabyte) : Bool
    return this.greater(that.toDecimal());
  @:deprecated("use greaterEqual instead or simply >=")
  inline public function moreEqual(that : Petabyte) : Bool
    return greaterEqual(that);
  @:op(A>=B) inline public function greaterEqual(that : Petabyte) : Bool
    return this.greaterEqual(that.toDecimal());

  inline public function toDecimal() : Decimal
    return this;

  inline public function toFloat() : Float
    return this.toFloat();


  @:to inline public function toByte() : Byte
    return this * 1.12589990684262e+15;
  @:to inline public function toKilobyte() : Kilobyte
    return this * 1099511627776;
  @:to inline public function toMegabyte() : Megabyte
    return this * 1073741824;
  @:to inline public function toGigabyte() : Gigabyte
    return this * 1048576;
  @:to inline public function toTerabyte() : Terabyte
    return this * 1024;
  @:to inline public function toExabyte() : Exabyte
    return this * 0.000976562499999997;
  @:to inline public function toZettabyte() : Zettabyte
    return this * 9.53674316406251e-07;
  @:to inline public function toYottabyte() : Yottabyte
    return this * 9.31322574615478e-10;
  @:to inline public function toKilobit() : Kilobit
    return this * 1125899906842.62;
  @:to inline public function toMegabit() : Megabit
    return this * 1125899906.84262;
  @:to inline public function toGigabit() : Gigabit
    return this * 1125899.90684262;
  @:to inline public function toTerabit() : Terabit
    return this * 1125.89990684262;
  @:to inline public function toPetabit() : Petabit
    return this * 1.12589990684262;
  @:to inline public function toExabit() : Exabit
    return this * 0.00112589990684262;
  @:to inline public function toZettabit() : Zettabit
    return this * 1.12589990684262e-06;
  @:to inline public function toYottabit() : Yottabit
    return this * 1.12589990684262e-09;

  @:to inline public function toString() : String
    return this.toString() + symbol;

  public static inline var symbol : String = "Pi";
}
