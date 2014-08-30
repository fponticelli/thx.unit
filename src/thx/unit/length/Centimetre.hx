package thx.unit.length;

abstract Centimetre(Float) {
  function new(value : Float)
    this = value;
  @:op(  -A) inline function negate() : Centimetre
    return -this;
  @:op( A+B) inline function add(other : Centimetre) : Centimetre
    return this + other.toFloat();
  @:op( A-B) inline function subtract(other : Centimetre) : Centimetre
    return this - other.toFloat();
  @:op( A*B) inline function multiply(other : Float) : Centimetre
    return this * other;
  @:op( A/B) inline function divide(other : Float) : Centimetre
    return this / other;
  @:op( A%B) inline function modulo(other : Float) : Centimetre
    return this % other;
  @:op(A==B) inline function equal(other : Centimetre) : Bool
    return this == other;
  @:op(A!=B) inline function notEqual(other : Centimetre) : Bool
    return this != other;
  @:op( A<B) inline function less(other : Centimetre) : Bool
    return this < other.toFloat();
  @:op(A<=B) inline function lessEqual(other : Centimetre) : Bool
    return this <= other.toFloat();
  @:op( A>B) inline function more(other : Centimetre) : Bool
    return this > other.toFloat();
  @:op(A>=B) inline function moreEqual(other : Centimetre) : Bool
    return this >= other.toFloat();

  inline function toFloat() : Float
    return this;

  @:to inline function toKilometre() : Kilometre
    return this * 1e-05;
  @:to inline function toMetre() : Metre
    return this * 0.01;
  @:to inline function toMillimetre() : Millimetre
    return this * 10;
  @:to inline function toMicrometre() : Micrometre
    return this * 10000;
  @:to inline function toNanometre() : Nanometre
    return this * 10000000;
  @:to inline function toThou() : Thou
    return this * 393.700787401575;
  @:to inline function toInch() : Inch
    return this * 0.393700787401575;
  @:to inline function toFoot() : Foot
    return this * 0.0328083989501312;
  @:to inline function toYard() : Yard
    return this * 0.0109361329833771;
  @:to inline function toChain() : Chain
    return this * 0.000497096953789867;
  @:to inline function toFurlong() : Furlong
    return this * 4.97096953789867e-05;
  @:to inline function toMile() : Mile
    return this * 6.21371192237334e-06;
  @:to inline function toLeague() : League
    return this * 2.07123730745778e-06;

  @:to inline function toString() : String
    return this + symbol;

  public static inline var symbol : String = "cm";
}