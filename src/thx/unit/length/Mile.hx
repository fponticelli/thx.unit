package thx.unit.length;

abstract Mile(Float) {
  function new(value : Float)
    this = value;
  @:op(  -A) inline function negate() : Mile
    return -this;
  @:op( A+B) inline function add(other : Mile) : Mile
    return this + other.toFloat();
  @:op( A-B) inline function subtract(other : Mile) : Mile
    return this - other.toFloat();
  @:op( A*B) inline function multiply(other : Float) : Mile
    return this * other;
  @:op( A/B) inline function divide(other : Float) : Mile
    return this / other;
  @:op( A%B) inline function modulo(other : Float) : Mile
    return this % other;
  @:op(A==B) inline function equal(other : Mile) : Bool
    return this == other;
  @:op(A!=B) inline function notEqual(other : Mile) : Bool
    return this != other;
  @:op( A<B) inline function less(other : Mile) : Bool
    return this < other.toFloat();
  @:op(A<=B) inline function lessEqual(other : Mile) : Bool
    return this <= other.toFloat();
  @:op( A>B) inline function more(other : Mile) : Bool
    return this > other.toFloat();
  @:op(A>=B) inline function moreEqual(other : Mile) : Bool
    return this >= other.toFloat();

  inline function toFloat() : Float
    return this;

  @:to inline function toKilometre() : Kilometre
    return this * 1.609344;
  @:to inline function toMetre() : Metre
    return this * 1609.344;
  @:to inline function toCentimetre() : Centimetre
    return this * 160934.4;
  @:to inline function toMillimetre() : Millimetre
    return this * 1609344;
  @:to inline function toMicrometre() : Micrometre
    return this * 1609344000;
  @:to inline function toNanometre() : Nanometre
    return this * 1609344000000;
  @:to inline function toThou() : Thou
    return this * 63360000;
  @:to inline function toInch() : Inch
    return this * 63360;
  @:to inline function toFoot() : Foot
    return this * 5280;
  @:to inline function toYard() : Yard
    return this * 1760;
  @:to inline function toChain() : Chain
    return this * 80;
  @:to inline function toFurlong() : Furlong
    return this * 8;
  @:to inline function toLeague() : League
    return this * 0.333333333333333;

  @:to inline function toString() : String
    return this + symbol;

  public static inline var symbol : String = "mi";
}