package thx.unit.current;

abstract Ampere(Float) {
  @:from inline static public function floatToAmpere(value : Float) : Ampere
    return new Ampere(value);

  function new(value : Float)
    this = value;
  @:op(  -A) inline public function negate() : Ampere
    return -this;
  @:op( A+B) inline public function add(other : Ampere) : Ampere
    return this + other.toFloat();
  @:op( A-B) inline public function subtract(other : Ampere) : Ampere
    return this - other.toFloat();
  @:op( A*B) inline public function multiply(other : Float) : Ampere
    return this * other;
  @:op( A/B) inline public function divide(other : Float) : Ampere
    return this / other;
  @:op( A%B) inline public function modulo(other : Float) : Ampere
    return this % other;
  @:op(A==B) inline public function equal(other : Ampere) : Bool
    return this == other;
  @:op(A!=B) inline public function notEqual(other : Ampere) : Bool
    return this != other;
  @:op( A<B) inline public function less(other : Ampere) : Bool
    return this < other.toFloat();
  @:op(A<=B) inline public function lessEqual(other : Ampere) : Bool
    return this <= other.toFloat();
  @:op( A>B) inline public function more(other : Ampere) : Bool
    return this > other.toFloat();
  @:op(A>=B) inline public function moreEqual(other : Ampere) : Bool
    return this >= other.toFloat();

  inline public function toFloat() : Float
    return this;


  @:to inline public function toString() : String
    return this + symbol;

  public static inline var symbol : String = "A";
}