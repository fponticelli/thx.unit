package thx.unit.length;

abstract Foot(Float) {
  function new(value : Float)
    this = value;
  @:op(  -A) inline function negate() : Foot
    return -this;
  @:op( A+B) inline function add(other : Foot) : Foot
    return this + other.toFloat();
  @:op( A-B) inline function subtract(other : Foot) : Foot
    return this - other.toFloat();
  @:op( A*B) inline function multiply(other : Float) : Foot
    return this * other;
  @:op( A/B) inline function divide(other : Float) : Foot
    return this / other;
  @:op( A%B) inline function modulo(other : Float) : Foot
    return this % other;
  @:op(A==B) inline function equal(other : Foot) : Bool
    return this == other;
  @:op(A!=B) inline function notEqual(other : Foot) : Bool
    return this != other;
  @:op( A<B) inline function less(other : Foot) : Bool
    return this < other.toFloat();
  @:op(A<=B) inline function lessEqual(other : Foot) : Bool
    return this <= other.toFloat();
  @:op( A>B) inline function more(other : Foot) : Bool
    return this > other.toFloat();
  @:op(A>=B) inline function moreEqual(other : Foot) : Bool
    return this >= other.toFloat();

  inline function toFloat() : Float
    return this;

  @:to inline function toKilometre() : Kilometre
    return this * 0.0003048;
  @:to inline function toMetre() : Metre
    return this * 0.3048;
  @:to inline function toCentimetre() : Centimetre
    return this * 30.48;
  @:to inline function toMillimetre() : Millimetre
    return this * 304.8;
  @:to inline function toMicrometre() : Micrometre
    return this * 304800;
  @:to inline function toNanometre() : Nanometre
    return this * 304800000;
  @:to inline function toThou() : Thou
    return this * 12000;
  @:to inline function toInch() : Inch
    return this * 12;
  @:to inline function toYard() : Yard
    return this * 0.333333333333333;
  @:to inline function toChain() : Chain
    return this * 0.0151515151515152;
  @:to inline function toFurlong() : Furlong
    return this * 0.00151515151515152;
  @:to inline function toMile() : Mile
    return this * 0.000189393939393939;
  @:to inline function toLeague() : League
    return this * 6.31313131313131e-05;

  @:to inline function toString() : String
    return this + symbol;

  public static inline var symbol : String = "ft";
}