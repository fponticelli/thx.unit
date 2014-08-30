package thx.unit.length;

abstract Nanometre(Float) {
  function new(value : Float)
    this = value;
  @:op(  -A) inline function negate() : Nanometre
    return -this;
  @:op( A+B) inline function add(other : Nanometre) : Nanometre
    return this + other.toFloat();
  @:op( A-B) inline function subtract(other : Nanometre) : Nanometre
    return this - other.toFloat();
  @:op( A*B) inline function multiply(other : Float) : Nanometre
    return this * other;
  @:op( A/B) inline function divide(other : Float) : Nanometre
    return this / other;
  @:op( A%B) inline function modulo(other : Float) : Nanometre
    return this % other;
  @:op(A==B) inline function equal(other : Nanometre) : Bool
    return this == other;
  @:op(A!=B) inline function notEqual(other : Nanometre) : Bool
    return this != other;
  @:op( A<B) inline function less(other : Nanometre) : Bool
    return this < other.toFloat();
  @:op(A<=B) inline function lessEqual(other : Nanometre) : Bool
    return this <= other.toFloat();
  @:op( A>B) inline function more(other : Nanometre) : Bool
    return this > other.toFloat();
  @:op(A>=B) inline function moreEqual(other : Nanometre) : Bool
    return this >= other.toFloat();

  inline function toFloat() : Float
    return this;

  @:to inline function toKilometre() : Kilometre
    return this * 1e-12;
  @:to inline function toMetre() : Metre
    return this * 1e-09;
  @:to inline function toCentimetre() : Centimetre
    return this * 1e-07;
  @:to inline function toMillimetre() : Millimetre
    return this * 1e-06;
  @:to inline function toMicrometre() : Micrometre
    return this * 0.001;
  @:to inline function toThou() : Thou
    return this * 3.93700787401575e-05;
  @:to inline function toInch() : Inch
    return this * 3.93700787401575e-08;
  @:to inline function toFoot() : Foot
    return this * 3.28083989501312e-09;
  @:to inline function toYard() : Yard
    return this * 1.09361329833771e-09;
  @:to inline function toChain() : Chain
    return this * 4.97096953789867e-11;
  @:to inline function toFurlong() : Furlong
    return this * 4.97096953789867e-12;
  @:to inline function toMile() : Mile
    return this * 6.21371192237334e-13;
  @:to inline function toLeague() : League
    return this * 2.07123730745778e-13;

  @:to inline function toString() : String
    return this + symbol;

  public static inline var symbol : String = "nm";
}