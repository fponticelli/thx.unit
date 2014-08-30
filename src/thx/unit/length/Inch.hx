package thx.unit.length;

abstract Inch(Float) {
  function new(value : Float)
    this = value;
  @:op(  -A) inline function negate() : Inch
    return -this;
  @:op( A+B) inline function add(other : Inch) : Inch
    return this + other.toFloat();
  @:op( A-B) inline function subtract(other : Inch) : Inch
    return this - other.toFloat();
  @:op( A*B) inline function multiply(other : Float) : Inch
    return this * other;
  @:op( A/B) inline function divide(other : Float) : Inch
    return this / other;
  @:op( A%B) inline function modulo(other : Float) : Inch
    return this % other;
  @:op(A==B) inline function equal(other : Inch) : Bool
    return this == other;
  @:op(A!=B) inline function notEqual(other : Inch) : Bool
    return this != other;
  @:op( A<B) inline function less(other : Inch) : Bool
    return this < other.toFloat();
  @:op(A<=B) inline function lessEqual(other : Inch) : Bool
    return this <= other.toFloat();
  @:op( A>B) inline function more(other : Inch) : Bool
    return this > other.toFloat();
  @:op(A>=B) inline function moreEqual(other : Inch) : Bool
    return this >= other.toFloat();

  inline function toFloat() : Float
    return this;

  @:to inline function toKilometre() : Kilometre
    return this * 2.54e-05;
  @:to inline function toMetre() : Metre
    return this * 0.0254;
  @:to inline function toCentimetre() : Centimetre
    return this * 2.54;
  @:to inline function toMillimetre() : Millimetre
    return this * 25.4;
  @:to inline function toMicrometre() : Micrometre
    return this * 25400;
  @:to inline function toNanometre() : Nanometre
    return this * 25400000;
  @:to inline function toThou() : Thou
    return this * 1000;
  @:to inline function toFoot() : Foot
    return this * 0.0833333333333333;
  @:to inline function toYard() : Yard
    return this * 0.0277777777777778;
  @:to inline function toChain() : Chain
    return this * 0.00126262626262626;
  @:to inline function toFurlong() : Furlong
    return this * 0.000126262626262626;
  @:to inline function toMile() : Mile
    return this * 1.57828282828283e-05;
  @:to inline function toLeague() : League
    return this * 5.26094276094276e-06;

  @:to inline function toString() : String
    return this + symbol;

  public static inline var symbol : String = "in";
}