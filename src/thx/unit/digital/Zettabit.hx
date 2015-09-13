package thx.unit.digital;

using thx.Floats;
import thx.Decimal;

abstract Zettabit(Decimal) {
  static var ofUnit : Decimal = 1e+21;

  @:from inline static public function fromDecimal(value : Decimal) : Zettabit
    return new Zettabit(value);

  @:from inline static public function fromInt(value : Int) : Zettabit
    return fromDecimal(Decimal.fromInt(value));

  @:from inline static public function fromFloat(value : Float) : Zettabit
    return fromDecimal(Decimal.fromFloat(value));

  inline function new(value : Decimal)
    this = value;

  inline public function abs() : Zettabit
    return this.abs();

  inline public function min(that : Zettabit) : Zettabit
    return this.min(that.toDecimal());

  inline public function max(that : Zettabit) : Zettabit
    return this.max(that.toDecimal());

  @:op( -A ) inline public function negate() : Zettabit
    return -this;
  @:op( A+B) inline public function add(that : Zettabit) : Zettabit
    return this.add(that.toDecimal());
  @:op( A-B) inline public function subtract(that : Zettabit) : Zettabit
    return this.subtract(that.toDecimal());
  @:op( A*B) inline public function multiply(that : Decimal) : Zettabit
    return this.multiply(that);
  @:op( A/B) inline public function divide(that : Decimal) : Zettabit
    return this.divide(that);
  @:op( A%B) inline public function modulo(that : Decimal) : Zettabit
    return this.modulo(that);
  @:op(A==B) inline public function equal(that : Zettabit) : Bool
    return this.equals(that.toDecimal());
  public function nearEquals(that : Zettabit) : Bool
    return Floats.nearEquals(this.toFloat(), that.toFloat());
  @:op(A!=B) inline public function notEqual(that : Zettabit) : Bool
    return !this.equals(that.toDecimal());
  @:op( A<B) inline public function less(that : Zettabit) : Bool
    return this.less(that.toDecimal());
  @:op(A<=B) inline public function lessEqual(that : Zettabit) : Bool
    return this.lessEqual(that.toDecimal());
  @:deprecated("use greater instead or simply >")
  inline public function more(that : Zettabit) : Bool
    return greater(that);
  @:op( A>B) inline public function greater(that : Zettabit) : Bool
    return this.greater(that.toDecimal());
  @:deprecated("use greaterEqual instead or simply >=")
  inline public function moreEqual(that : Zettabit) : Bool
    return greaterEqual(that);
  @:op(A>=B) inline public function greaterEqual(that : Zettabit) : Bool
    return this.greaterEqual(that.toDecimal());

  inline public function toDecimal() : Decimal
    return this;

  inline public function toFloat() : Float
    return this.toFloat();


  static var dividerByte : Decimal = 1;
  @:to inline public function toByte() : Byte
    return (this * ofUnit) / dividerByte;

  static var dividerKilobyte : Decimal = 1024;
  @:to inline public function toKilobyte() : Kilobyte
    return (this * ofUnit) / dividerKilobyte;

  static var dividerMegabyte : Decimal = 1048576;
  @:to inline public function toMegabyte() : Megabyte
    return (this * ofUnit) / dividerMegabyte;

  static var dividerGigabyte : Decimal = 1073741824;
  @:to inline public function toGigabyte() : Gigabyte
    return (this * ofUnit) / dividerGigabyte;

  static var dividerTerabyte : Decimal = 1099511627776;
  @:to inline public function toTerabyte() : Terabyte
    return (this * ofUnit) / dividerTerabyte;

  static var dividerPetabyte : Decimal = 1.12589990684262e+15;
  @:to inline public function toPetabyte() : Petabyte
    return (this * ofUnit) / dividerPetabyte;

  static var dividerExabyte : Decimal = 1.15292150460685e+18;
  @:to inline public function toExabyte() : Exabyte
    return (this * ofUnit) / dividerExabyte;

  static var dividerZettabyte : Decimal = 1.18059162071741e+21;
  @:to inline public function toZettabyte() : Zettabyte
    return (this * ofUnit) / dividerZettabyte;

  static var dividerYottabyte : Decimal = 1.20892581961463e+24;
  @:to inline public function toYottabyte() : Yottabyte
    return (this * ofUnit) / dividerYottabyte;

  static var dividerKilobit : Decimal = 1000;
  @:to inline public function toKilobit() : Kilobit
    return (this * ofUnit) / dividerKilobit;

  static var dividerMegabit : Decimal = 1000000;
  @:to inline public function toMegabit() : Megabit
    return (this * ofUnit) / dividerMegabit;

  static var dividerGigabit : Decimal = 1000000000;
  @:to inline public function toGigabit() : Gigabit
    return (this * ofUnit) / dividerGigabit;

  static var dividerTerabit : Decimal = 1000000000000;
  @:to inline public function toTerabit() : Terabit
    return (this * ofUnit) / dividerTerabit;

  static var dividerPetabit : Decimal = 1e+15;
  @:to inline public function toPetabit() : Petabit
    return (this * ofUnit) / dividerPetabit;

  static var dividerExabit : Decimal = 1e+18;
  @:to inline public function toExabit() : Exabit
    return (this * ofUnit) / dividerExabit;

  static var dividerYottabit : Decimal = 1e+24;
  @:to inline public function toYottabit() : Yottabit
    return (this * ofUnit) / dividerYottabit;


  @:to inline public function toString() : String
    return this.toString() + symbol;

  public static inline var symbol : String = "Z";
}
