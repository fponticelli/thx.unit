package thx.unit.luminousintensity;

using thx.Floats;
import thx.Decimal;

abstract Candlepower(Decimal) {
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
  @:op(A==B) inline public function equal(that : Candlepower) : Bool
    return this.equals(that.toDecimal());
  public function nearEquals(that : Candlepower) : Bool
    return Floats.nearEquals(this.toFloat(), that.toFloat());
  @:op(A!=B) inline public function notEqual(that : Candlepower) : Bool
    return !this.equals(that.toDecimal());
  @:op( A<B) inline public function less(that : Candlepower) : Bool
    return this.less(that.toDecimal());
  @:op(A<=B) inline public function lessEqual(that : Candlepower) : Bool
    return this.lessEqual(that.toDecimal());
  @:deprecated("use greater instead or simply >")
  inline public function more(that : Candlepower) : Bool
    return greater(that);
  @:op( A>B) inline public function greater(that : Candlepower) : Bool
    return this.greater(that.toDecimal());
  @:deprecated("use greaterEqual instead or simply >=")
  inline public function moreEqual(that : Candlepower) : Bool
    return greaterEqual(that);
  @:op(A>=B) inline public function greaterEqual(that : Candlepower) : Bool
    return this.greaterEqual(that.toDecimal());

  inline public function toDecimal() : Decimal
    return this;

  inline public function toFloat() : Float
    return this.toFloat();


  @:to inline public function toCandela() : Candela
    return this * 0.981;

  @:to inline public function toString() : String
    return this.toString() + symbol;

  public static inline var symbol : String = "cp";
}
