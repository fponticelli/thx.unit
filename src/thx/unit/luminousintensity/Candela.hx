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
  @:op(A==B) inline public function equal(that : Candela) : Bool
    return this.equals(that.toDecimal());
  public function nearEquals(that : Candela) : Bool
    return Floats.nearEquals(this.toFloat(), that.toFloat());
  @:op(A!=B) inline public function notEqual(that : Candela) : Bool
    return !this.equals(that.toDecimal());
  @:op( A<B) inline public function less(that : Candela) : Bool
    return this.less(that.toDecimal());
  @:op(A<=B) inline public function lessEqual(that : Candela) : Bool
    return this.lessEqual(that.toDecimal());
  @:deprecated("use greater instead or simply >")
  inline public function more(that : Candela) : Bool
    return greater(that);
  @:op( A>B) inline public function greater(that : Candela) : Bool
    return this.greater(that.toDecimal());
  @:deprecated("use greaterEqual instead or simply >=")
  inline public function moreEqual(that : Candela) : Bool
    return greaterEqual(that);
  @:op(A>=B) inline public function greaterEqual(that : Candela) : Bool
    return this.greaterEqual(that.toDecimal());

  inline public function toDecimal() : Decimal
    return this;

  inline public function toFloat() : Float
    return this.toFloat();


  static var dividerCandlepower : Decimal = "0.981";
  @:to inline public function toCandlepower() : Candlepower
    return (this * ofUnit) / dividerCandlepower;


  @:to inline public function toString() : String
    return this.toString() + symbol;

  public static inline var symbol : String = "cd";
}
