package thx.unit.amountofsubstance;

using thx.Floats;
import thx.Decimal;

abstract PoundMole(Decimal) {
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
  @:op(A==B) inline public function equal(that : PoundMole) : Bool
    return this.equals(that.toDecimal());
  public function nearEquals(that : PoundMole) : Bool
    return Floats.nearEquals(this.toFloat(), that.toFloat());
  @:op(A!=B) inline public function notEqual(that : PoundMole) : Bool
    return !this.equals(that.toDecimal());
  @:op( A<B) inline public function less(that : PoundMole) : Bool
    return this.less(that.toDecimal());
  @:op(A<=B) inline public function lessEqual(that : PoundMole) : Bool
    return this.lessEqual(that.toDecimal());
  @:deprecated("use greater instead or simply >")
  inline public function more(that : PoundMole) : Bool
    return greater(that);
  @:op( A>B) inline public function greater(that : PoundMole) : Bool
    return this.greater(that.toDecimal());
  @:deprecated("use greaterEqual instead or simply >=")
  inline public function moreEqual(that : PoundMole) : Bool
    return greaterEqual(that);
  @:op(A>=B) inline public function greaterEqual(that : PoundMole) : Bool
    return this.greaterEqual(that.toDecimal());

  inline public function toDecimal() : Decimal
    return this;

  inline public function toFloat() : Float
    return this.toFloat();


  @:to inline public function toMole() : Mole
    return this * 453.59237;

  @:to inline public function toString() : String
    return this.toString() + symbol;

  public static inline var symbol : String = "pound-mol";
}
