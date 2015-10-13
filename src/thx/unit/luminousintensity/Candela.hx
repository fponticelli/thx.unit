package thx.unit.luminousintensity;

using thx.Floats;
import thx.Decimal;

abstract Candela(Decimal) {
  static var ofUnit : Decimal = "1";

  @:from inline static public function fromDecimal(value : Decimal) : Candela
    return new Candela(value);

  @:from inline static public function fromInt(value : Int) : Candela
    return fromDecimal(Decimal.fromInt(value));

  @:from inline static public function fromFloat(value : Float) : Candela
    return fromDecimal(Decimal.fromFloat(value));

  inline function new(value : Decimal)
    this = value;

  inline public function abs() : Candela
    return this.abs();

  inline public function min(that : Candela) : Candela
    return this.min(that.toDecimal());

  inline public function max(that : Candela) : Candela
    return this.max(that.toDecimal());

  @:op( -A ) inline public function negate() : Candela
    return -this;
  @:op( A+B) inline public function add(that : Candela) : Candela
    return this.add(that.toDecimal());
  @:op( A-B) inline public function subtract(that : Candela) : Candela
    return this.subtract(that.toDecimal());
  @:op( A*B) inline public function multiply(that : Decimal) : Candela
    return this.multiply(that);
  @:op( A/B) inline public function divide(that : Decimal) : Candela
    return this.divide(that);
  @:op( A%B) inline public function modulo(that : Decimal) : Candela
    return this.modulo(that);

  inline public function equalsTo(that : Candela) : Bool
    return this.equalsTo(that.toDecimal());
  @:op(A==B)
  inline static public function equals(self : Candela, that : Candela) : Bool
    return self.equalsTo(that.toDecimal());

  public function nearEqualsTo(that : Candela) : Bool
    return Floats.nearEquals(this.toFloat(), that.toFloat());
  public static function nearEquals(self : Candela, that : Candela) : Bool
    return Floats.nearEquals(self.toFloat(), that.toFloat());

  inline public function notEqualsTo(that : Candela) : Bool
    return !this.equalsTo(that.toDecimal());
  @:op(A!=B)
  inline static public function notEquals(self : Candela, that : Candela) : Bool
    return !self.equalsTo(that.toDecimal());

  inline public function lessThan(that : Candela) : Bool
    return this.lessThan(that.toDecimal());
  @:op( A<B)
  inline static public function less(self : Candela, that : Candela) : Bool
    return self.lessThan(that.toDecimal());

  inline public function lessEqualsTo(that : Candela) : Bool
    return this.lessEqualsTo(that.toDecimal());
  @:op(A<=B)
  inline static public function lessEquals(self : Candela, that : Candela) : Bool
    return self.lessEqualsTo(that.toDecimal());

  inline public function greaterThan(that : Candela) : Bool
    return this.greaterThan(that.toDecimal());
  @:op( A>B)
  inline static public function greater(self : Candela, that : Candela) : Bool
    return self.greaterThan(that.toDecimal());

  inline public function greaterEqualsTo(that : Candela) : Bool
    return this.greaterEqualsTo(that.toDecimal());
  @:op(A>=B)
  inline public function greaterEquals(that : Candela) : Bool
    return this.greaterEqualsTo(that.toDecimal());

  inline public function toDecimal() : Decimal
    return this;

  inline public function toFloat() : Float
    return this.toFloat();


  static var dividerCandela : Decimal = "1";
  @:to inline public function toCandela() : Candela
      return ((this * ofUnit) / dividerCandela).trim();
    
  static var dividerCandlepower : Decimal = "0.981";
  @:to inline public function toCandlepower() : Candlepower
      return ((this * ofUnit) / dividerCandlepower).trim();
    

  @:to inline public function toString() : String
    return this.toString() + symbol;

  public static inline var symbol : String = "cd";
}
