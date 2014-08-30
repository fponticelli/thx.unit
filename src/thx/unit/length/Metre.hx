package thx.unit.length;

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
  @:to inline function toCentimetre() : Centimetre
    return this * 100;
  @:to inline function toMillimetre() : Millimetre
    return this * 1000;
  @:to inline function toMicrometre() : Micrometre
    return this * 1000000;
  @:to inline function toNanometre() : Nanometre
    return this * 1000000000;
  @:to inline function toThou() : Thou
    return this * 39370.0787401575;
  @:to inline function toInch() : Inch
    return this * 39.3700787401575;
  @:to inline function toFoot() : Foot
    return this * 3.28083989501312;
  @:to inline function toYard() : Yard
    return this * 1.09361329833771;
  @:to inline function toChain() : Chain
    return this * 0.0497096953789867;
  @:to inline function toFurlong() : Furlong
    return this * 0.00497096953789867;
  @:to inline function toMile() : Mile
    return this * 0.000621371192237334;
  @:to inline function toLeague() : League
    return this * 0.000207123730745778;

  @:to inline function toString() : String
    return this + symbol;

  public static inline var symbol : String = "m";
}