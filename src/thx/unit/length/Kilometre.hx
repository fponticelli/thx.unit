package thx.unit.length;

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
  @:to inline function toCentimetre() : Centimetre
    return this * 100000;
  @:to inline function toMillimetre() : Millimetre
    return this * 1000000;
  @:to inline function toMicrometre() : Micrometre
    return this * 1000000000;
  @:to inline function toNanometre() : Nanometre
    return this * 1000000000000;
  @:to inline function toThou() : Thou
    return this * 39370078.7401575;
  @:to inline function toInch() : Inch
    return this * 39370.0787401575;
  @:to inline function toFoot() : Foot
    return this * 3280.83989501312;
  @:to inline function toYard() : Yard
    return this * 1093.61329833771;
  @:to inline function toChain() : Chain
    return this * 49.7096953789867;
  @:to inline function toFurlong() : Furlong
    return this * 4.97096953789867;
  @:to inline function toMile() : Mile
    return this * 0.621371192237334;
  @:to inline function toLeague() : League
    return this * 0.207123730745778;

  @:to inline function toString() : String
    return this + symbol;

  public static inline var symbol : String = "km";
}