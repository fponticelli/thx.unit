package thx.unit.current;

using thx.Floats;
import thx.Decimal;

abstract Ampere(Decimal) {
  static var ofUnit : Decimal = "1";

  @:from inline static public function fromDecimal(value : Decimal) : Ampere
    return new Ampere(value);

  @:from inline static public function fromInt(value : Int) : Ampere
    return fromDecimal(Decimal.fromInt(value));

  @:from inline static public function fromFloat(value : Float) : Ampere
    return fromDecimal(Decimal.fromFloat(value));

  inline function new(value : Decimal)
    this = value;

  inline public function abs() : Ampere
    return this.abs();

  inline public function min(that : Ampere) : Ampere
    return this.min(that.toDecimal());

  inline public function max(that : Ampere) : Ampere
    return this.max(that.toDecimal());

  @:op( -A ) inline public function negate() : Ampere
    return -this;
  @:op( A+B) inline public function add(that : Ampere) : Ampere
    return this.add(that.toDecimal());
  @:op( A-B) inline public function subtract(that : Ampere) : Ampere
    return this.subtract(that.toDecimal());
  @:op( A*B) inline public function multiply(that : Decimal) : Ampere
    return this.multiply(that);
  @:op( A/B) inline public function divide(that : Decimal) : Ampere
    return this.divide(that);
  @:op( A%B) inline public function modulo(that : Decimal) : Ampere
    return this.modulo(that);
  @:op(A==B) inline public function equal(that : Ampere) : Bool
    return this.equals(that.toDecimal());
  public function nearEquals(that : Ampere) : Bool
    return Floats.nearEquals(this.toFloat(), that.toFloat());
  @:op(A!=B) inline public function notEqual(that : Ampere) : Bool
    return !this.equals(that.toDecimal());
  @:op( A<B) inline public function less(that : Ampere) : Bool
    return this.less(that.toDecimal());
  @:op(A<=B) inline public function lessEqual(that : Ampere) : Bool
    return this.lessEqual(that.toDecimal());
  @:deprecated("use greater instead or simply >")
  inline public function more(that : Ampere) : Bool
    return greater(that);
  @:op( A>B) inline public function greater(that : Ampere) : Bool
    return this.greater(that.toDecimal());
  @:deprecated("use greaterEqual instead or simply >=")
  inline public function moreEqual(that : Ampere) : Bool
    return greaterEqual(that);
  @:op(A>=B) inline public function greaterEqual(that : Ampere) : Bool
    return this.greaterEqual(that.toDecimal());

  inline public function toDecimal() : Decimal
    return this;

  inline public function toFloat() : Float
    return this.toFloat();



  @:to inline public function toString() : String
    return this.toString() + symbol;

  public static inline var symbol : String = "A";
}
