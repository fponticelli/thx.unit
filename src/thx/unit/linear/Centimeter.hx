package thx.unit.linear;

abstract Centimeter(Float) {
  function new(value : Float)
    this = value;
  @:op(  -A) inline function negate() : Centimeter
    return -this;
  @:op( A+B) inline function add(other : Centimeter) : Centimeter
    return this + other.toFloat();
  @:op( A-B) inline function subtract(other : Centimeter) : Centimeter
    return this - other.toFloat();
  @:op( A*B) inline function multiply(other : Float) : Centimeter
    return this * other;
  @:op( A/B) inline function divide(other : Float) : Centimeter
    return this / other;
  @:op( A%B) inline function modulo(other : Float) : Centimeter
    return this % other;
  @:op(A==B) inline function equal(other : Centimeter) : Bool
    return this == other;
  @:op(A!=B) inline function notEqual(other : Centimeter) : Bool
    return this != other;
  @:op( A<B) inline function less(other : Centimeter) : Bool
    return this < other.toFloat();
  @:op(A<=B) inline function lessEqual(other : Centimeter) : Bool
    return this <= other.toFloat();
  @:op( A>B) inline function more(other : Centimeter) : Bool
    return this > other.toFloat();
  @:op(A>=B) inline function moreEqual(other : Centimeter) : Bool
    return this >= other.toFloat();

  inline function toFloat() : Float
    return this;

  @:to inline function toMetre() : Metre
    return this * 0.01;
  @:to inline function toKilometre() : Kilometre
    return this * 1e-05;
  @:to inline function toMillimiter() : Millimiter
    return this * 10;

  @:to inline function toString() : String
    return this + symbol;

  public static inline var symbol : String = "cm";
}