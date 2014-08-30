package thx.unit.length;

abstract Yard(Float) {
  function new(value : Float)
    this = value;
  @:op(  -A) inline function negate() : Yard
    return -this;
  @:op( A+B) inline function add(other : Yard) : Yard
    return this + other.toFloat();
  @:op( A-B) inline function subtract(other : Yard) : Yard
    return this - other.toFloat();
  @:op( A*B) inline function multiply(other : Float) : Yard
    return this * other;
  @:op( A/B) inline function divide(other : Float) : Yard
    return this / other;
  @:op( A%B) inline function modulo(other : Float) : Yard
    return this % other;
  @:op(A==B) inline function equal(other : Yard) : Bool
    return this == other;
  @:op(A!=B) inline function notEqual(other : Yard) : Bool
    return this != other;
  @:op( A<B) inline function less(other : Yard) : Bool
    return this < other.toFloat();
  @:op(A<=B) inline function lessEqual(other : Yard) : Bool
    return this <= other.toFloat();
  @:op( A>B) inline function more(other : Yard) : Bool
    return this > other.toFloat();
  @:op(A>=B) inline function moreEqual(other : Yard) : Bool
    return this >= other.toFloat();

  inline function toFloat() : Float
    return this;

  @:to inline function toKilometre() : Kilometre
    return this * 0.0009144;
  @:to inline function toMetre() : Metre
    return this * 0.9144;
  @:to inline function toCentimetre() : Centimetre
    return this * 91.44;
  @:to inline function toMillimetre() : Millimetre
    return this * 914.4;
  @:to inline function toMicrometre() : Micrometre
    return this * 914400;
  @:to inline function toNanometre() : Nanometre
    return this * 914400000;
  @:to inline function toThou() : Thou
    return this * 36000;
  @:to inline function toInch() : Inch
    return this * 36;
  @:to inline function toFoot() : Foot
    return this * 3;
  @:to inline function toChain() : Chain
    return this * 0.0454545454545454;
  @:to inline function toFurlong() : Furlong
    return this * 0.00454545454545455;
  @:to inline function toMile() : Mile
    return this * 0.000568181818181818;
  @:to inline function toLeague() : League
    return this * 0.000189393939393939;

  @:to inline function toString() : String
    return this + symbol;

  public static inline var symbol : String = "yd";
}