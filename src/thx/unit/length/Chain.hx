package thx.unit.length;

abstract Chain(Float) {
  function new(value : Float)
    this = value;
  @:op(  -A) inline function negate() : Chain
    return -this;
  @:op( A+B) inline function add(other : Chain) : Chain
    return this + other.toFloat();
  @:op( A-B) inline function subtract(other : Chain) : Chain
    return this - other.toFloat();
  @:op( A*B) inline function multiply(other : Float) : Chain
    return this * other;
  @:op( A/B) inline function divide(other : Float) : Chain
    return this / other;
  @:op( A%B) inline function modulo(other : Float) : Chain
    return this % other;
  @:op(A==B) inline function equal(other : Chain) : Bool
    return this == other;
  @:op(A!=B) inline function notEqual(other : Chain) : Bool
    return this != other;
  @:op( A<B) inline function less(other : Chain) : Bool
    return this < other.toFloat();
  @:op(A<=B) inline function lessEqual(other : Chain) : Bool
    return this <= other.toFloat();
  @:op( A>B) inline function more(other : Chain) : Bool
    return this > other.toFloat();
  @:op(A>=B) inline function moreEqual(other : Chain) : Bool
    return this >= other.toFloat();

  inline function toFloat() : Float
    return this;

  @:to inline function toKilometre() : Kilometre
    return this * 0.0201168;
  @:to inline function toMetre() : Metre
    return this * 20.1168;
  @:to inline function toCentimetre() : Centimetre
    return this * 2011.68;
  @:to inline function toMillimetre() : Millimetre
    return this * 20116.8;
  @:to inline function toMicrometre() : Micrometre
    return this * 20116800;
  @:to inline function toNanometre() : Nanometre
    return this * 20116800000;
  @:to inline function toThou() : Thou
    return this * 792000;
  @:to inline function toInch() : Inch
    return this * 792;
  @:to inline function toFoot() : Foot
    return this * 66;
  @:to inline function toYard() : Yard
    return this * 22;
  @:to inline function toFurlong() : Furlong
    return this * 0.1;
  @:to inline function toMile() : Mile
    return this * 0.0125;
  @:to inline function toLeague() : League
    return this * 0.00416666666666667;

  @:to inline function toString() : String
    return this + symbol;

  public static inline var symbol : String = "ch";
}