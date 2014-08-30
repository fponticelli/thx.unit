package thx.unit.time;

abstract Second(Float) {
  @:from inline static public function floatToSecond(value : Float) : Second
    return new Second(value);

  function new(value : Float)
    this = value;
  @:op(  -A) inline public function negate() : Second
    return -this;
  @:op( A+B) inline public function add(other : Second) : Second
    return this + other.toFloat();
  @:op( A-B) inline public function subtract(other : Second) : Second
    return this - other.toFloat();
  @:op( A*B) inline public function multiply(other : Float) : Second
    return this * other;
  @:op( A/B) inline public function divide(other : Float) : Second
    return this / other;
  @:op( A%B) inline public function modulo(other : Float) : Second
    return this % other;
  @:op(A==B) inline public function equal(other : Second) : Bool
    return this == other;
  @:op(A!=B) inline public function notEqual(other : Second) : Bool
    return this != other;
  @:op( A<B) inline public function less(other : Second) : Bool
    return this < other.toFloat();
  @:op(A<=B) inline public function lessEqual(other : Second) : Bool
    return this <= other.toFloat();
  @:op( A>B) inline public function more(other : Second) : Bool
    return this > other.toFloat();
  @:op(A>=B) inline public function moreEqual(other : Second) : Bool
    return this >= other.toFloat();

  inline public function toFloat() : Float
    return this;


  @:to inline public function toString() : String
    return this + symbol;

  public static inline var symbol : String = "s";
}