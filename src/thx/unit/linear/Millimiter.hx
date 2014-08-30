package thx.unit.linear;

abstract Millimiter(Float) {
  function new(value : Float)
    this = value;
  @:op(  -A) inline function negate() : Millimiter
    return -this;
  @:op( A+B) inline function add(other : Millimiter) : Millimiter
    return this + other.toFloat();
  @:op( A-B) inline function subtract(other : Millimiter) : Millimiter
    return this - other.toFloat();
  @:op( A*B) inline function multiply(other : Float) : Millimiter
    return this * other;
  @:op( A/B) inline function divide(other : Float) : Millimiter
    return this / other;
  @:op( A%B) inline function modulo(other : Float) : Millimiter
    return this % other;
  @:op(A==B) inline function equal(other : Millimiter) : Bool
    return this == other;
  @:op(A!=B) inline function notEqual(other : Millimiter) : Bool
    return this != other;
  @:op( A<B) inline function less(other : Millimiter) : Bool
    return this < other.toFloat();
  @:op(A<=B) inline function lessEqual(other : Millimiter) : Bool
    return this <= other.toFloat();
  @:op( A>B) inline function more(other : Millimiter) : Bool
    return this > other.toFloat();
  @:op(A>=B) inline function moreEqual(other : Millimiter) : Bool
    return this >= other.toFloat();

  inline function toFloat() : Float
    return this;

  @:to inline function toMetre() : Metre
    return this * 0.001;
  @:to inline function toKilometre() : Kilometre
    return this * 1e-06;
  @:to inline function toCentimeter() : Centimeter
    return this * 0.1;

  @:to inline function toString() : String
    return this + symbol;

  public static inline var symbol : String = "mm";
}