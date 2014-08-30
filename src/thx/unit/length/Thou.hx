package thx.unit.length;

abstract Thou(Float) {
  function new(value : Float)
    this = value;
  @:op(  -A) inline function negate() : Thou
    return -this;
  @:op( A+B) inline function add(other : Thou) : Thou
    return this + other.toFloat();
  @:op( A-B) inline function subtract(other : Thou) : Thou
    return this - other.toFloat();
  @:op( A*B) inline function multiply(other : Float) : Thou
    return this * other;
  @:op( A/B) inline function divide(other : Float) : Thou
    return this / other;
  @:op( A%B) inline function modulo(other : Float) : Thou
    return this % other;
  @:op(A==B) inline function equal(other : Thou) : Bool
    return this == other;
  @:op(A!=B) inline function notEqual(other : Thou) : Bool
    return this != other;
  @:op( A<B) inline function less(other : Thou) : Bool
    return this < other.toFloat();
  @:op(A<=B) inline function lessEqual(other : Thou) : Bool
    return this <= other.toFloat();
  @:op( A>B) inline function more(other : Thou) : Bool
    return this > other.toFloat();
  @:op(A>=B) inline function moreEqual(other : Thou) : Bool
    return this >= other.toFloat();

  inline function toFloat() : Float
    return this;

  @:to inline function toKilometre() : Kilometre
    return this * 2.54e-08;
  @:to inline function toMetre() : Metre
    return this * 2.54e-05;
  @:to inline function toCentimetre() : Centimetre
    return this * 0.00254;
  @:to inline function toMillimetre() : Millimetre
    return this * 0.0254;
  @:to inline function toMicrometre() : Micrometre
    return this * 25.4;
  @:to inline function toNanometre() : Nanometre
    return this * 25400;
  @:to inline function toInch() : Inch
    return this * 0.001;
  @:to inline function toFoot() : Foot
    return this * 8.33333333333333e-05;
  @:to inline function toYard() : Yard
    return this * 2.77777777777778e-05;
  @:to inline function toChain() : Chain
    return this * 1.26262626262626e-06;
  @:to inline function toFurlong() : Furlong
    return this * 1.26262626262626e-07;
  @:to inline function toMile() : Mile
    return this * 1.57828282828283e-08;
  @:to inline function toLeague() : League
    return this * 5.26094276094276e-09;

  @:to inline function toString() : String
    return this + symbol;

  public static inline var symbol : String = "th";
}