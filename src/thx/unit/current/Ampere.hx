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
  @:op(A==B) inline public function equals(that : Ampere) : Bool
    return this.equalsTo(that.toDecimal());
  public function nearEquals(that : Ampere) : Bool
    return Floats.nearEquals(this.toFloat(), that.toFloat());
  @:op(A!=B) inline public function notEquals(that : Ampere) : Bool
    return !this.equalsTo(that.toDecimal());
  @:op( A<B) inline public function less(that : Ampere) : Bool
    return this.lessThan(that.toDecimal());
  @:op(A<=B) inline public function lessEquals(that : Ampere) : Bool
    return this.lessEqualsTo(that.toDecimal());
  @:op( A>B) inline public function greater(that : Ampere) : Bool
    return this.greaterThan(that.toDecimal());
  @:op(A>=B) inline public function greaterEquals(that : Ampere) : Bool
    return this.greaterEqualsTo(that.toDecimal());

  inline public function toDecimal() : Decimal
    return this;

  inline public function toFloat() : Float
    return this.toFloat();


  static var dividerAmpere : Decimal = "1";
  @:to inline public function toAmpere() : Ampere
    return (this * ofUnit) / dividerAmpere;


  @:to inline public function toString() : String
    return this.toString() + symbol;

  public static inline var symbol : String = "A";
}
