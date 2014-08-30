package thx.unit.length;

abstract ${type}(Float) {
  function new(value : Float)
    this = value;
  @:op(  -A) inline function negate() : $type
    return -this;
  @:op( A+B) inline function add(other : $type) : $type
    return this + other.toFloat();
  @:op( A-B) inline function subtract(other : $type) : $type
    return this - other.toFloat();
  @:op( A*B) inline function multiply(other : Float) : $type
    return this * other;
  @:op( A/B) inline function divide(other : Float) : $type
    return this / other;
  @:op( A%B) inline function modulo(other : Float) : $type
    return this % other;
  @:op(A==B) inline function equal(other : $type) : Bool
    return this == other;
  @:op(A!=B) inline function notEqual(other : $type) : Bool
    return this != other;
  @:op( A<B) inline function less(other : $type) : Bool
    return this < other.toFloat();
  @:op(A<=B) inline function lessEqual(other : $type) : Bool
    return this <= other.toFloat();
  @:op( A>B) inline function more(other : $type) : Bool
    return this > other.toFloat();
  @:op(A>=B) inline function moreEqual(other : $type) : Bool
    return this >= other.toFloat();

  inline function toFloat() : Float
    return this;
$for(value in values) {
  @:to inline function to${value.type}() : $value.type
    return this * ${toMetre / value.toMetre};}

  @:to inline function toString() : String
    return this + symbol;

  public static inline var symbol : String = "$symbol";
}