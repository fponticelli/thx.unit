package thx.unit.temperature;

abstract Kelvin(Float) {
  @:from inline static public function floatToKelvin(value : Float) : Kelvin
    return new Kelvin(value);

  function new(value : Float)
    this = value;
  @:op(  -A) inline public function negate() : Kelvin
    return -this;
  @:op( A+B) inline public function add(other : Kelvin) : Kelvin
    return this + other.toFloat();
  @:op( A-B) inline public function subtract(other : Kelvin) : Kelvin
    return this - other.toFloat();
  @:op( A*B) inline public function multiply(other : Float) : Kelvin
    return this * other;
  @:op( A/B) inline public function divide(other : Float) : Kelvin
    return this / other;
  @:op( A%B) inline public function modulo(other : Float) : Kelvin
    return this % other;
  @:op(A==B) inline public function equal(other : Kelvin) : Bool
    return this == other;
  @:op(A!=B) inline public function notEqual(other : Kelvin) : Bool
    return this != other;
  @:op( A<B) inline public function less(other : Kelvin) : Bool
    return this < other.toFloat();
  @:op(A<=B) inline public function lessEqual(other : Kelvin) : Bool
    return this <= other.toFloat();
  @:op( A>B) inline public function more(other : Kelvin) : Bool
    return this > other.toFloat();
  @:op(A>=B) inline public function moreEqual(other : Kelvin) : Bool
    return this >= other.toFloat();

  inline public function toFloat() : Float
    return this;


  @:to inline public function toString() : String
    return this + symbol;

  public static inline var symbol : String = "K";
}