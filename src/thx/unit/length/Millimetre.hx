package thx.unit.length;

abstract Millimetre(Float) {
  function new(value : Float)
    this = value;
  @:op(  -A) inline function negate() : Millimetre
    return -this;
  @:op( A+B) inline function add(other : Millimetre) : Millimetre
    return this + other.toFloat();
  @:op( A-B) inline function subtract(other : Millimetre) : Millimetre
    return this - other.toFloat();
  @:op( A*B) inline function multiply(other : Float) : Millimetre
    return this * other;
  @:op( A/B) inline function divide(other : Float) : Millimetre
    return this / other;
  @:op( A%B) inline function modulo(other : Float) : Millimetre
    return this % other;
  @:op(A==B) inline function equal(other : Millimetre) : Bool
    return this == other;
  @:op(A!=B) inline function notEqual(other : Millimetre) : Bool
    return this != other;
  @:op( A<B) inline function less(other : Millimetre) : Bool
    return this < other.toFloat();
  @:op(A<=B) inline function lessEqual(other : Millimetre) : Bool
    return this <= other.toFloat();
  @:op( A>B) inline function more(other : Millimetre) : Bool
    return this > other.toFloat();
  @:op(A>=B) inline function moreEqual(other : Millimetre) : Bool
    return this >= other.toFloat();

  inline function toFloat() : Float
    return this;

  @:to inline function toKilometre() : Kilometre
    return this * 1e-06;
  @:to inline function toMetre() : Metre
    return this * 0.001;
  @:to inline function toCentimetre() : Centimetre
    return this * 0.1;
  @:to inline function toMicrometre() : Micrometre
    return this * 1000;
  @:to inline function toNanometre() : Nanometre
    return this * 1000000;
  @:to inline function toThou() : Thou
    return this * 39.3700787401575;
  @:to inline function toInch() : Inch
    return this * 0.0393700787401575;
  @:to inline function toFoot() : Foot
    return this * 0.00328083989501312;
  @:to inline function toYard() : Yard
    return this * 0.00109361329833771;
  @:to inline function toChain() : Chain
    return this * 4.97096953789867e-05;
  @:to inline function toFurlong() : Furlong
    return this * 4.97096953789867e-06;
  @:to inline function toMile() : Mile
    return this * 6.21371192237334e-07;
  @:to inline function toLeague() : League
    return this * 2.07123730745778e-07;

  @:to inline function toString() : String
    return this + symbol;

  public static inline var symbol : String = "mm";
}