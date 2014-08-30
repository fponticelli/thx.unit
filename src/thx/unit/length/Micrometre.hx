package thx.unit.length;

abstract Micrometre(Float) {
  function new(value : Float)
    this = value;
  @:op(  -A) inline function negate() : Micrometre
    return -this;
  @:op( A+B) inline function add(other : Micrometre) : Micrometre
    return this + other.toFloat();
  @:op( A-B) inline function subtract(other : Micrometre) : Micrometre
    return this - other.toFloat();
  @:op( A*B) inline function multiply(other : Float) : Micrometre
    return this * other;
  @:op( A/B) inline function divide(other : Float) : Micrometre
    return this / other;
  @:op( A%B) inline function modulo(other : Float) : Micrometre
    return this % other;
  @:op(A==B) inline function equal(other : Micrometre) : Bool
    return this == other;
  @:op(A!=B) inline function notEqual(other : Micrometre) : Bool
    return this != other;
  @:op( A<B) inline function less(other : Micrometre) : Bool
    return this < other.toFloat();
  @:op(A<=B) inline function lessEqual(other : Micrometre) : Bool
    return this <= other.toFloat();
  @:op( A>B) inline function more(other : Micrometre) : Bool
    return this > other.toFloat();
  @:op(A>=B) inline function moreEqual(other : Micrometre) : Bool
    return this >= other.toFloat();

  inline function toFloat() : Float
    return this;

  @:to inline function toKilometre() : Kilometre
    return this * 1e-09;
  @:to inline function toMetre() : Metre
    return this * 1e-06;
  @:to inline function toCentimetre() : Centimetre
    return this * 0.0001;
  @:to inline function toMillimetre() : Millimetre
    return this * 0.001;
  @:to inline function toNanometre() : Nanometre
    return this * 1000;
  @:to inline function toThou() : Thou
    return this * 0.0393700787401575;
  @:to inline function toInch() : Inch
    return this * 3.93700787401575e-05;
  @:to inline function toFoot() : Foot
    return this * 3.28083989501312e-06;
  @:to inline function toYard() : Yard
    return this * 1.09361329833771e-06;
  @:to inline function toChain() : Chain
    return this * 4.97096953789867e-08;
  @:to inline function toFurlong() : Furlong
    return this * 4.97096953789867e-09;
  @:to inline function toMile() : Mile
    return this * 6.21371192237334e-10;
  @:to inline function toLeague() : League
    return this * 2.07123730745778e-10;

  @:to inline function toString() : String
    return this + symbol;

  public static inline var symbol : String = "µm";
}