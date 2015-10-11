package thx.unit.amountofsubstance;

using thx.Floats;
import thx.Decimal;

abstract PoundMole(Decimal) {
  static var ofUnit : Decimal = "453.59237";

  @:from inline static public function fromDecimal(value : Decimal) : PoundMole
    return new PoundMole(value);

  @:from inline static public function fromInt(value : Int) : PoundMole
    return fromDecimal(Decimal.fromInt(value));

  @:from inline static public function fromFloat(value : Float) : PoundMole
    return fromDecimal(Decimal.fromFloat(value));

  inline function new(value : Decimal)
    this = value;

  inline public function abs() : PoundMole
    return this.abs();

  inline public function min(that : PoundMole) : PoundMole
    return this.min(that.toDecimal());

  inline public function max(that : PoundMole) : PoundMole
    return this.max(that.toDecimal());

  @:op( -A ) inline public function negate() : PoundMole
    return -this;
  @:op( A+B) inline public function add(that : PoundMole) : PoundMole
    return this.add(that.toDecimal());
  @:op( A-B) inline public function subtract(that : PoundMole) : PoundMole
    return this.subtract(that.toDecimal());
  @:op( A*B) inline public function multiply(that : Decimal) : PoundMole
    return this.multiply(that);
  @:op( A/B) inline public function divide(that : Decimal) : PoundMole
    return this.divide(that);
  @:op( A%B) inline public function modulo(that : Decimal) : PoundMole
    return this.modulo(that);
  @:op(A==B) inline public function equals(that : PoundMole) : Bool
    return this.equalsTo(that.toDecimal());
  public function nearEquals(that : PoundMole) : Bool
    return Floats.nearEquals(this.toFloat(), that.toFloat());
  @:op(A!=B) inline public function notEquals(that : PoundMole) : Bool
    return !this.equalsTo(that.toDecimal());
  @:op( A<B) inline public function less(that : PoundMole) : Bool
    return this.lessThan(that.toDecimal());
  @:op(A<=B) inline public function lessEquals(that : PoundMole) : Bool
    return this.lessEqualsTo(that.toDecimal());
  @:op( A>B) inline public function greater(that : PoundMole) : Bool
    return this.greaterThan(that.toDecimal());
  @:op(A>=B) inline public function greaterEquals(that : PoundMole) : Bool
    return this.greaterEqualsTo(that.toDecimal());

  inline public function toDecimal() : Decimal
    return this;

  inline public function toFloat() : Float
    return this.toFloat();


  static var dividerMole : Decimal = "1";
  @:to inline public function toMole() : Mole
    return (this * ofUnit) / dividerMole;

  static var dividerPoundMole : Decimal = "453.59237";
  @:to inline public function toPoundMole() : PoundMole
    return (this * ofUnit) / dividerPoundMole;


  @:to inline public function toString() : String
    return this.toString() + symbol;

  public static inline var symbol : String = "pound-mol";
}
