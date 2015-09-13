package thx.unit.amountofsubstance;

using thx.Floats;
import thx.Decimal;

abstract Mole(Decimal) {
  static var ofUnit : Decimal = "1";

  @:from inline static public function fromDecimal(value : Decimal) : Mole
    return new Mole(value);

  @:from inline static public function fromInt(value : Int) : Mole
    return fromDecimal(Decimal.fromInt(value));

  @:from inline static public function fromFloat(value : Float) : Mole
    return fromDecimal(Decimal.fromFloat(value));

  inline function new(value : Decimal)
    this = value;

  inline public function abs() : Mole
    return this.abs();

  inline public function min(that : Mole) : Mole
    return this.min(that.toDecimal());

  inline public function max(that : Mole) : Mole
    return this.max(that.toDecimal());

  @:op( -A ) inline public function negate() : Mole
    return -this;
  @:op( A+B) inline public function add(that : Mole) : Mole
    return this.add(that.toDecimal());
  @:op( A-B) inline public function subtract(that : Mole) : Mole
    return this.subtract(that.toDecimal());
  @:op( A*B) inline public function multiply(that : Decimal) : Mole
    return this.multiply(that);
  @:op( A/B) inline public function divide(that : Decimal) : Mole
    return this.divide(that);
  @:op( A%B) inline public function modulo(that : Decimal) : Mole
    return this.modulo(that);
  @:op(A==B) inline public function equal(that : Mole) : Bool
    return this.equals(that.toDecimal());
  public function nearEquals(that : Mole) : Bool
    return Floats.nearEquals(this.toFloat(), that.toFloat());
  @:op(A!=B) inline public function notEqual(that : Mole) : Bool
    return !this.equals(that.toDecimal());
  @:op( A<B) inline public function less(that : Mole) : Bool
    return this.less(that.toDecimal());
  @:op(A<=B) inline public function lessEqual(that : Mole) : Bool
    return this.lessEqual(that.toDecimal());
  @:deprecated("use greater instead or simply >")
  inline public function more(that : Mole) : Bool
    return greater(that);
  @:op( A>B) inline public function greater(that : Mole) : Bool
    return this.greater(that.toDecimal());
  @:deprecated("use greaterEqual instead or simply >=")
  inline public function moreEqual(that : Mole) : Bool
    return greaterEqual(that);
  @:op(A>=B) inline public function greaterEqual(that : Mole) : Bool
    return this.greaterEqual(that.toDecimal());

  inline public function toDecimal() : Decimal
    return this;

  inline public function toFloat() : Float
    return this.toFloat();


  static var dividerPoundMole : Decimal = "453.59237";
  @:to inline public function toPoundMole() : PoundMole
    return (this * ofUnit) / dividerPoundMole;


  @:to inline public function toString() : String
    return this.toString() + symbol;

  public static inline var symbol : String = "mol";
}
