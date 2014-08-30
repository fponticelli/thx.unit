package thx.unit.area;

abstract SquareMetre(Float) {
  @:from inline static public function floatToSquareMetre(value : Float) : SquareMetre
    return new SquareMetre(value);

  function new(value : Float)
    this = value;
  @:op(  -A) inline public function negate() : SquareMetre
    return -this;
  @:op( A+B) inline public function add(other : SquareMetre) : SquareMetre
    return this + other.toFloat();
  @:op( A-B) inline public function subtract(other : SquareMetre) : SquareMetre
    return this - other.toFloat();
  @:op( A*B) inline public function multiply(other : Float) : SquareMetre
    return this * other;
  @:op( A/B) inline public function divide(other : Float) : SquareMetre
    return this / other;
  @:op( A%B) inline public function modulo(other : Float) : SquareMetre
    return this % other;
  @:op(A==B) inline public function equal(other : SquareMetre) : Bool
    return this == other;
  @:op(A!=B) inline public function notEqual(other : SquareMetre) : Bool
    return this != other;
  @:op( A<B) inline public function less(other : SquareMetre) : Bool
    return this < other.toFloat();
  @:op(A<=B) inline public function lessEqual(other : SquareMetre) : Bool
    return this <= other.toFloat();
  @:op( A>B) inline public function more(other : SquareMetre) : Bool
    return this > other.toFloat();
  @:op(A>=B) inline public function moreEqual(other : SquareMetre) : Bool
    return this >= other.toFloat();

  inline public function toFloat() : Float
    return this;


  @:to inline public function toString() : String
    return this + symbol;

  public static inline var symbol : String = "kg";
}