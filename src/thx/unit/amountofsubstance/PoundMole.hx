package thx.unit.amountofsubstance;

// TODO parse string

abstract PoundMole(Float) {
  @:from inline static public function floatToPoundMole(value : Float) : PoundMole
    return new PoundMole(value);

  function new(value : Float)
    this = value;
  @:op( -A ) inline public function negate() : PoundMole
    return -this;
  @:op( A+B) inline public function add(other : PoundMole) : PoundMole
    return this + other.toFloat();
  @:op( A-B) inline public function subtract(other : PoundMole) : PoundMole
    return this - other.toFloat();
  @:op( A*B) inline public function multiply(other : Float) : PoundMole
    return this * other;
  @:op( A/B) inline public function divide(other : Float) : PoundMole
    return this / other;
  @:op( A%B) inline public function modulo(other : Float) : PoundMole
    return this % other;
  @:op(A==B) inline public function equal(other : PoundMole) : Bool
    return this == other;
  @:op(A!=B) inline public function notEqual(other : PoundMole) : Bool
    return this != other;
  @:op( A<B) inline public function less(other : PoundMole) : Bool
    return this < other.toFloat();
  @:op(A<=B) inline public function lessEqual(other : PoundMole) : Bool
    return this <= other.toFloat();
  @:op( A>B) inline public function more(other : PoundMole) : Bool
    return this > other.toFloat();
  @:op(A>=B) inline public function moreEqual(other : PoundMole) : Bool
    return this >= other.toFloat();

  inline public function toFloat() : Float
    return this;

  @:to inline public function toMole() : Mole
    return this * 453.59237;

  @:to inline public function toString() : String
    return this + symbol;

  public static inline var symbol : String = "pound-mol";
}