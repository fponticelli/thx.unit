package thx.unit.digital;

using thx.Floats;
import thx.Decimal;

abstract Yottabyte(Decimal) {
  @:from inline static public function fromDecimal(value : Decimal) : Yottabyte
    return new Yottabyte(value);

  @:from inline static public function fromInt(value : Int) : Yottabyte
    return fromDecimal(Decimal.fromInt(value));

  @:from inline static public function fromFloat(value : Float) : Yottabyte
    return fromDecimal(Decimal.fromFloat(value));

  inline function new(value : Decimal)
    this = value;

  inline public function abs() : Yottabyte
    return this.abs();

  inline public function min(that : Yottabyte) : Yottabyte
    return this.min(that.toDecimal());

  inline public function max(that : Yottabyte) : Yottabyte
    return this.max(that.toDecimal());

  @:op( -A ) inline public function negate() : Yottabyte
    return -this;
  @:op( A+B) inline public function add(that : Yottabyte) : Yottabyte
    return this.add(that.toDecimal());
  @:op( A-B) inline public function subtract(that : Yottabyte) : Yottabyte
    return this.subtract(that.toDecimal());
  @:op( A*B) inline public function multiply(that : Decimal) : Yottabyte
    return this.multiply(that);
  @:op( A/B) inline public function divide(that : Decimal) : Yottabyte
    return this.divide(that);
  @:op( A%B) inline public function modulo(that : Decimal) : Yottabyte
    return this.modulo(that);
  @:op(A==B) inline public function equal(that : Yottabyte) : Bool
    return this.equals(that.toDecimal());
  public function nearEquals(that : Yottabyte) : Bool
    return Floats.nearEquals(this.toFloat(), that.toFloat());
  @:op(A!=B) inline public function notEqual(that : Yottabyte) : Bool
    return !this.equals(that.toDecimal());
  @:op( A<B) inline public function less(that : Yottabyte) : Bool
    return this.less(that.toDecimal());
  @:op(A<=B) inline public function lessEqual(that : Yottabyte) : Bool
    return this.lessEqual(that.toDecimal());
  @:deprecated("use greater instead or simply >")
  inline public function more(that : Yottabyte) : Bool
    return greater(that);
  @:op( A>B) inline public function greater(that : Yottabyte) : Bool
    return this.greater(that.toDecimal());
  @:deprecated("use greaterEqual instead or simply >=")
  inline public function moreEqual(that : Yottabyte) : Bool
    return greaterEqual(that);
  @:op(A>=B) inline public function greaterEqual(that : Yottabyte) : Bool
    return this.greaterEqual(that.toDecimal());

  inline public function toDecimal() : Decimal
    return this;

  inline public function toFloat() : Float
    return this.toFloat();


  @:to inline public function toByte() : Byte
    return this * 1.20892581961463e+24;
  @:to inline public function toKilobyte() : Kilobyte
    return this * 1.18059162071741e+21;
  @:to inline public function toMegabyte() : Megabyte
    return this * 1.15292150460685e+18;
  @:to inline public function toGigabyte() : Gigabyte
    return this * 1.12589990684262e+15;
  @:to inline public function toTerabyte() : Terabyte
    return this * 1099511627776;
  @:to inline public function toPetabyte() : Petabyte
    return this * 1073741824;
  @:to inline public function toExabyte() : Exabyte
    return this * 1048576;
  @:to inline public function toZettabyte() : Zettabyte
    return this * 1024;
  @:to inline public function toKilobit() : Kilobit
    return this * 1.20892581961463e+21;
  @:to inline public function toMegabit() : Megabit
    return this * 1.20892581961463e+18;
  @:to inline public function toGigabit() : Gigabit
    return this * 1.20892581961463e+15;
  @:to inline public function toTerabit() : Terabit
    return this * 1208925819614.63;
  @:to inline public function toPetabit() : Petabit
    return this * 1208925819.61463;
  @:to inline public function toExabit() : Exabit
    return this * 1208925.81961463;
  @:to inline public function toZettabit() : Zettabit
    return this * 1208.92581961463;
  @:to inline public function toYottabit() : Yottabit
    return this * 1.20892581961463;

  @:to inline public function toString() : String
    return this.toString() + symbol;

  public static inline var symbol : String = "Yi";
}
