package thx.unit.linear;

abstract Kilometre(Float) {
  function new(value : Float)
    this = value;
  @:op(  -A) inline function negate() : Kilometre
    return -this;
  @:op( A+B) inline function add(other : Kilometre) : Kilometre
    return this + other.toFloat();
  @:op( A-B) inline function subtract(other : Kilometre) : Kilometre
    return this - other.toFloat();
  @:op( A*B) inline function multiply(other : Float) : Kilometre
    return this * other;
  @:op( A/B) inline function divide(other : Float) : Kilometre
    return this / other;
  @:op( A%B) inline function modulo(other : Float) : Kilometre
    return this % other;
  @:op(A==B) inline function equal(other : Kilometre) : Bool
    return this == other;
  @:op(A!=B) inline function notEqual(other : Kilometre) : Bool
    return this != other;
  @:op( A<B) inline function less(other : Kilometre) : Bool
    return this < other.toFloat();
  @:op(A<=B) inline function lessEqual(other : Kilometre) : Bool
    return this <= other.toFloat();
  @:op( A>B) inline function more(other : Kilometre) : Bool
    return this > other.toFloat();
  @:op(A>=B) inline function moreEqual(other : Kilometre) : Bool
    return this >= other.toFloat();

  inline function toFloat() : Float
    return this;

  @:to inline function toMetre() : Metre
    return this * 1000;
  @:to inline function toMillimiter() : Millimiter
    return this * 1000000;
  @:to inline function toCentimeter() : Centimeter
    return this * 100000;

  @:to inline function toString() : String
    return this + symbol;

  public static inline var symbol : String = "km";
}