package thx.unit.linear;

abstract Metre(Float) {
  function new(value : Float)
    this = value;
  @:op(  -A) inline function negate() : Metre
    return -this;
  @:op( A+B) inline function add(other : Metre) : Metre
    return this + other.toFloat();
  @:op( A-B) inline function subtract(other : Metre) : Metre
    return this - other.toFloat();
  @:op( A*B) inline function multiply(other : Float) : Metre
    return this * other;
  @:op( A/B) inline function divide(other : Float) : Metre
    return this / other;
  @:op( A%B) inline function modulo(other : Float) : Metre
    return this % other;
  @:op(A==B) inline function equal(other : Metre) : Bool
    return this == other;
  @:op(A!=B) inline function notEqual(other : Metre) : Bool
    return this != other;
  @:op( A<B) inline function less(other : Metre) : Bool
    return this < other.toFloat();
  @:op(A<=B) inline function lessEqual(other : Metre) : Bool
    return this <= other.toFloat();
  @:op( A>B) inline function more(other : Metre) : Bool
    return this > other.toFloat();
  @:op(A>=B) inline function moreEqual(other : Metre) : Bool
    return this >= other.toFloat();

  inline function toFloat() : Float
    return this;

  @:to inline function toKilometre() : Kilometre
    return this * 0.001;
  @:to inline function toMillimiter() : Millimiter
    return this * 1000;
  @:to inline function toCentimeter() : Centimeter
    return this * 100;

  @:to inline function toString() : String
    return this + symbol;

  public static inline var symbol : String = "m";
}