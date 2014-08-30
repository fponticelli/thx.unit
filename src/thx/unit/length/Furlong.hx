package thx.unit.length;

abstract Furlong(Float) {
  function new(value : Float)
    this = value;
  @:op(  -A) inline function negate() : Furlong
    return -this;
  @:op( A+B) inline function add(other : Furlong) : Furlong
    return this + other.toFloat();
  @:op( A-B) inline function subtract(other : Furlong) : Furlong
    return this - other.toFloat();
  @:op( A*B) inline function multiply(other : Float) : Furlong
    return this * other;
  @:op( A/B) inline function divide(other : Float) : Furlong
    return this / other;
  @:op( A%B) inline function modulo(other : Float) : Furlong
    return this % other;
  @:op(A==B) inline function equal(other : Furlong) : Bool
    return this == other;
  @:op(A!=B) inline function notEqual(other : Furlong) : Bool
    return this != other;
  @:op( A<B) inline function less(other : Furlong) : Bool
    return this < other.toFloat();
  @:op(A<=B) inline function lessEqual(other : Furlong) : Bool
    return this <= other.toFloat();
  @:op( A>B) inline function more(other : Furlong) : Bool
    return this > other.toFloat();
  @:op(A>=B) inline function moreEqual(other : Furlong) : Bool
    return this >= other.toFloat();

  inline function toFloat() : Float
    return this;

  @:to inline function toKilometre() : Kilometre
    return this * 0.201168;
  @:to inline function toMetre() : Metre
    return this * 201.168;
  @:to inline function toCentimetre() : Centimetre
    return this * 20116.8;
  @:to inline function toMillimetre() : Millimetre
    return this * 201168;
  @:to inline function toMicrometre() : Micrometre
    return this * 201168000;
  @:to inline function toNanometre() : Nanometre
    return this * 201168000000;
  @:to inline function toThou() : Thou
    return this * 7920000;
  @:to inline function toInch() : Inch
    return this * 7920;
  @:to inline function toFoot() : Foot
    return this * 660;
  @:to inline function toYard() : Yard
    return this * 220;
  @:to inline function toChain() : Chain
    return this * 10;
  @:to inline function toMile() : Mile
    return this * 0.125;
  @:to inline function toLeague() : League
    return this * 0.0416666666666667;

  @:to inline function toString() : String
    return this + symbol;

  public static inline var symbol : String = "fur";
}