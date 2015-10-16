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

  inline public function equalsTo(that : Ampere) : Bool
    return this.equalsTo(that.toDecimal());
  @:op(A==B)
  inline static public function equals(self : Ampere, that : Ampere) : Bool
    return self.equalsTo(that.toDecimal());

  public function nearEqualsTo(that : Ampere) : Bool
    return Floats.nearEquals(this.toFloat(), that.toFloat());
  public static function nearEquals(self : Ampere, that : Ampere) : Bool
    return Floats.nearEquals(self.toFloat(), that.toFloat());

  inline public function notEqualsTo(that : Ampere) : Bool
    return !this.equalsTo(that.toDecimal());
  @:op(A!=B)
  inline static public function notEquals(self : Ampere, that : Ampere) : Bool
    return !self.equalsTo(that.toDecimal());

  inline public function lessThan(that : Ampere) : Bool
    return this.lessThan(that.toDecimal());
  @:op( A<B)
  inline static public function less(self : Ampere, that : Ampere) : Bool
    return self.lessThan(that.toDecimal());

  inline public function lessEqualsTo(that : Ampere) : Bool
    return this.lessEqualsTo(that.toDecimal());
  @:op(A<=B)
  inline static public function lessEquals(self : Ampere, that : Ampere) : Bool
    return self.lessEqualsTo(that.toDecimal());

  inline public function greaterThan(that : Ampere) : Bool
    return this.greaterThan(that.toDecimal());
  @:op( A>B)
  inline static public function greater(self : Ampere, that : Ampere) : Bool
    return self.greaterThan(that.toDecimal());

  inline public function greaterEqualsTo(that : Ampere) : Bool
    return this.greaterEqualsTo(that.toDecimal());
  @:op(A>=B)
  inline public function greaterEquals(that : Ampere) : Bool
    return this.greaterEqualsTo(that.toDecimal());

  inline public function toDecimal() : Decimal
    return this;

  inline public function toFloat() : Float
    return this.toFloat();


  static var dividerAmpere : Decimal = "1";
  @:to inline public function toAmpere() : Ampere
      return this;
    
  @:to inline public function toString() : String
    return this.toString() + symbol;

  public static inline var symbol : String = "A";
}
