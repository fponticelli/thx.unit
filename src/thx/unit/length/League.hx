package thx.unit.length;

abstract League(Float) {
  function new(value : Float)
    this = value;
  @:op(  -A) inline function negate() : League
    return -this;
  @:op( A+B) inline function add(other : League) : League
    return this + other.toFloat();
  @:op( A-B) inline function subtract(other : League) : League
    return this - other.toFloat();
  @:op( A*B) inline function multiply(other : Float) : League
    return this * other;
  @:op( A/B) inline function divide(other : Float) : League
    return this / other;
  @:op( A%B) inline function modulo(other : Float) : League
    return this % other;
  @:op(A==B) inline function equal(other : League) : Bool
    return this == other;
  @:op(A!=B) inline function notEqual(other : League) : Bool
    return this != other;
  @:op( A<B) inline function less(other : League) : Bool
    return this < other.toFloat();
  @:op(A<=B) inline function lessEqual(other : League) : Bool
    return this <= other.toFloat();
  @:op( A>B) inline function more(other : League) : Bool
    return this > other.toFloat();
  @:op(A>=B) inline function moreEqual(other : League) : Bool
    return this >= other.toFloat();

  inline function toFloat() : Float
    return this;

  @:to inline function toKilometre() : Kilometre
    return this * 4.828032;
  @:to inline function toMetre() : Metre
    return this * 4828.032;
  @:to inline function toCentimetre() : Centimetre
    return this * 482803.2;
  @:to inline function toMillimetre() : Millimetre
    return this * 4828032;
  @:to inline function toMicrometre() : Micrometre
    return this * 4828032000;
  @:to inline function toNanometre() : Nanometre
    return this * 4828032000000;
  @:to inline function toThou() : Thou
    return this * 190080000;
  @:to inline function toInch() : Inch
    return this * 190080;
  @:to inline function toFoot() : Foot
    return this * 15840;
  @:to inline function toYard() : Yard
    return this * 5280;
  @:to inline function toChain() : Chain
    return this * 240;
  @:to inline function toFurlong() : Furlong
    return this * 24;
  @:to inline function toMile() : Mile
    return this * 3;

  @:to inline function toString() : String
    return this + symbol;

  public static inline var symbol : String = "lea";
}