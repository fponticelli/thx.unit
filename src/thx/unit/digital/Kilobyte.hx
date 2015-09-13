package thx.unit.digital;

using thx.Floats;
import thx.BigInt;

abstract Kilobyte(BigInt) {
  static var ofUnit : BigInt = "1024";

  @:from inline static public function fromBigInt(value : BigInt) : Kilobyte
    return new Kilobyte(value);

  @:from inline static public function fromInt(value : Int) : Kilobyte
    return fromBigInt(BigInt.fromInt(value));

  @:from inline static public function fromFloat(value : Float) : Kilobyte
    return fromBigInt(BigInt.fromFloat(value));

  inline function new(value : BigInt)
    this = value;

  inline public function abs() : Kilobyte
    return this.abs();

  inline public function min(that : Kilobyte) : Kilobyte
    return this.min(that.toBigInt());

  inline public function max(that : Kilobyte) : Kilobyte
    return this.max(that.toBigInt());

  @:op( -A ) inline public function negate() : Kilobyte
    return -this;
  @:op( A+B) inline public function add(that : Kilobyte) : Kilobyte
    return this.add(that.toBigInt());
  @:op( A-B) inline public function subtract(that : Kilobyte) : Kilobyte
    return this.subtract(that.toBigInt());
  @:op( A*B) inline public function multiply(that : BigInt) : Kilobyte
    return this.multiply(that);
  @:op( A/B) inline public function divide(that : BigInt) : Kilobyte
    return this.divide(that);
  @:op( A%B) inline public function modulo(that : BigInt) : Kilobyte
    return this.modulo(that);
  @:op(A==B) inline public function equal(that : Kilobyte) : Bool
    return this.equals(that.toBigInt());
  public function nearEquals(that : Kilobyte) : Bool
    return Floats.nearEquals(this.toFloat(), that.toFloat());
  @:op(A!=B) inline public function notEqual(that : Kilobyte) : Bool
    return !this.equals(that.toBigInt());
  @:op( A<B) inline public function less(that : Kilobyte) : Bool
    return this.less(that.toBigInt());
  @:op(A<=B) inline public function lessEqual(that : Kilobyte) : Bool
    return this.lessEqual(that.toBigInt());
  @:deprecated("use greater instead or simply >")
  inline public function more(that : Kilobyte) : Bool
    return greater(that);
  @:op( A>B) inline public function greater(that : Kilobyte) : Bool
    return this.greater(that.toBigInt());
  @:deprecated("use greaterEqual instead or simply >=")
  inline public function moreEqual(that : Kilobyte) : Bool
    return greaterEqual(that);
  @:op(A>=B) inline public function greaterEqual(that : Kilobyte) : Bool
    return this.greaterEqual(that.toBigInt());

  inline public function toBigInt() : BigInt
    return this;

  inline public function toFloat() : Float
    return this.toFloat();


  static var dividerByte : BigInt = "1";
  @:to inline public function toByte() : Byte
    return (this * ofUnit) / dividerByte;

  static var dividerMegabyte : BigInt = "1048576";
  @:to inline public function toMegabyte() : Megabyte
    return (this * ofUnit) / dividerMegabyte;

  static var dividerGigabyte : BigInt = "1073741824";
  @:to inline public function toGigabyte() : Gigabyte
    return (this * ofUnit) / dividerGigabyte;

  static var dividerTerabyte : BigInt = "1099511627776";
  @:to inline public function toTerabyte() : Terabyte
    return (this * ofUnit) / dividerTerabyte;

  static var dividerPetabyte : BigInt = "1125899906842624";
  @:to inline public function toPetabyte() : Petabyte
    return (this * ofUnit) / dividerPetabyte;

  static var dividerExabyte : BigInt = "1152921504606846976";
  @:to inline public function toExabyte() : Exabyte
    return (this * ofUnit) / dividerExabyte;

  static var dividerZettabyte : BigInt = "1180591620717411303424";
  @:to inline public function toZettabyte() : Zettabyte
    return (this * ofUnit) / dividerZettabyte;

  static var dividerYottabyte : BigInt = "1208925819614629174706176";
  @:to inline public function toYottabyte() : Yottabyte
    return (this * ofUnit) / dividerYottabyte;

  static var dividerKilobit : BigInt = "1000";
  @:to inline public function toKilobit() : Kilobit
    return (this * ofUnit) / dividerKilobit;

  static var dividerMegabit : BigInt = "1000000";
  @:to inline public function toMegabit() : Megabit
    return (this * ofUnit) / dividerMegabit;

  static var dividerGigabit : BigInt = "1000000000";
  @:to inline public function toGigabit() : Gigabit
    return (this * ofUnit) / dividerGigabit;

  static var dividerTerabit : BigInt = "1000000000000";
  @:to inline public function toTerabit() : Terabit
    return (this * ofUnit) / dividerTerabit;

  static var dividerPetabit : BigInt = "1000000000000000";
  @:to inline public function toPetabit() : Petabit
    return (this * ofUnit) / dividerPetabit;

  static var dividerExabit : BigInt = "1E18";
  @:to inline public function toExabit() : Exabit
    return (this * ofUnit) / dividerExabit;

  static var dividerZettabit : BigInt = "1E21";
  @:to inline public function toZettabit() : Zettabit
    return (this * ofUnit) / dividerZettabit;

  static var dividerYottabit : BigInt = "1E24";
  @:to inline public function toYottabit() : Yottabit
    return (this * ofUnit) / dividerYottabit;


  @:to inline public function toString() : String
    return this.toString() + symbol;

  public static inline var symbol : String = "Ki";
}
