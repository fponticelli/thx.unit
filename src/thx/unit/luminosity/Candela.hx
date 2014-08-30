package thx.unit.luminosity;

abstract Candela(Float) {
  @:from inline static public function floatToCandela(value : Float) : Candela
    return new Candela(value);

  function new(value : Float)
    this = value;
  @:op(  -A) inline public function negate() : Candela
    return -this;
  @:op( A+B) inline public function add(other : Candela) : Candela
    return this + other.toFloat();
  @:op( A-B) inline public function subtract(other : Candela) : Candela
    return this - other.toFloat();
  @:op( A*B) inline public function multiply(other : Float) : Candela
    return this * other;
  @:op( A/B) inline public function divide(other : Float) : Candela
    return this / other;
  @:op( A%B) inline public function modulo(other : Float) : Candela
    return this % other;
  @:op(A==B) inline public function equal(other : Candela) : Bool
    return this == other;
  @:op(A!=B) inline public function notEqual(other : Candela) : Bool
    return this != other;
  @:op( A<B) inline public function less(other : Candela) : Bool
    return this < other.toFloat();
  @:op(A<=B) inline public function lessEqual(other : Candela) : Bool
    return this <= other.toFloat();
  @:op( A>B) inline public function more(other : Candela) : Bool
    return this > other.toFloat();
  @:op(A>=B) inline public function moreEqual(other : Candela) : Bool
    return this >= other.toFloat();

  inline public function toFloat() : Float
    return this;


  @:to inline public function toString() : String
    return this + symbol;

  public static inline var symbol : String = "cd";
}