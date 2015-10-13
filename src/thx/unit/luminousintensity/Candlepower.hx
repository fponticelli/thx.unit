package thx.unit.luminousintensity;

using thx.Floats;
import thx.Decimal;

abstract Candlepower(Decimal) {
  static var ofUnit : Decimal = "0.981";

  @:from inline static public function fromDecimal(value : Decimal) : Candlepower
    return new Candlepower(value);

  @:from inline static public function fromInt(value : Int) : Candlepower
    return fromDecimal(Decimal.fromInt(value));

  @:from inline static public function fromFloat(value : Float) : Candlepower
    return fromDecimal(Decimal.fromFloat(value));

  inline function new(value : Decimal)
    this = value;

  inline public function abs() : Candlepower
    return this.abs();

  inline public function min(that : Candlepower) : Candlepower
    return this.min(that.toDecimal());

  inline public function max(that : Candlepower) : Candlepower
    return this.max(that.toDecimal());

  @:op( -A ) inline public function negate() : Candlepower
    return -this;
  @:op( A+B) inline public function add(that : Candlepower) : Candlepower
    return this.add(that.toDecimal());
  @:op( A-B) inline public function subtract(that : Candlepower) : Candlepower
    return this.subtract(that.toDecimal());
  @:op( A*B) inline public function multiply(that : Decimal) : Candlepower
    return this.multiply(that);
  @:op( A/B) inline public function divide(that : Decimal) : Candlepower
    return this.divide(that);
  @:op( A%B) inline public function modulo(that : Decimal) : Candlepower
    return this.modulo(that);

  inline public function equalsTo(that : Candlepower) : Bool
    return this.equalsTo(that.toDecimal());
  @:op(A==B)
  inline static public function equals(self : Candlepower, that : Candlepower) : Bool
    return self.equalsTo(that.toDecimal());

  public function nearEqualsTo(that : Candlepower) : Bool
    return Floats.nearEquals(this.toFloat(), that.toFloat());
  public static function nearEquals(self : Candlepower, that : Candlepower) : Bool
    return Floats.nearEquals(self.toFloat(), that.toFloat());

  inline public function notEqualsTo(that : Candlepower) : Bool
    return !this.equalsTo(that.toDecimal());
  @:op(A!=B)
  inline static public function notEquals(self : Candlepower, that : Candlepower) : Bool
    return !self.equalsTo(that.toDecimal());

  inline public function lessThan(that : Candlepower) : Bool
    return this.lessThan(that.toDecimal());
  @:op( A<B)
  inline static public function less(self : Candlepower, that : Candlepower) : Bool
    return self.lessThan(that.toDecimal());

  inline public function lessEqualsTo(that : Candlepower) : Bool
    return this.lessEqualsTo(that.toDecimal());
  @:op(A<=B)
  inline static public function lessEquals(self : Candlepower, that : Candlepower) : Bool
    return self.lessEqualsTo(that.toDecimal());

  inline public function greaterThan(that : Candlepower) : Bool
    return this.greaterThan(that.toDecimal());
  @:op( A>B)
  inline static public function greater(self : Candlepower, that : Candlepower) : Bool
    return self.greaterThan(that.toDecimal());

  inline public function greaterEqualsTo(that : Candlepower) : Bool
    return this.greaterEqualsTo(that.toDecimal());
  @:op(A>=B)
  inline public function greaterEquals(that : Candlepower) : Bool
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

  public static inline var symbol : String = "cp";
}
