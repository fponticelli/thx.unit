package thx.unit.length;

abstract Foot(Float) {
  @:from inline static public function floatToFoot(value : Float) : Foot
    return new Foot(value);

  function new(value : Float)
    this = value;
  @:op(  -A) inline public function negate() : Foot
    return -this;
  @:op( A+B) inline public function add(other : Foot) : Foot
    return this + other.toFloat();
  @:op( A-B) inline public function subtract(other : Foot) : Foot
    return this - other.toFloat();
  @:op( A*B) inline public function multiply(other : Float) : Foot
    return this * other;
  @:op( A/B) inline public function divide(other : Float) : Foot
    return this / other;
  @:op( A%B) inline public function modulo(other : Float) : Foot
    return this % other;
  @:op(A==B) inline public function equal(other : Foot) : Bool
    return this == other;
  @:op(A!=B) inline public function notEqual(other : Foot) : Bool
    return this != other;
  @:op( A<B) inline public function less(other : Foot) : Bool
    return this < other.toFloat();
  @:op(A<=B) inline public function lessEqual(other : Foot) : Bool
    return this <= other.toFloat();
  @:op( A>B) inline public function more(other : Foot) : Bool
    return this > other.toFloat();
  @:op(A>=B) inline public function moreEqual(other : Foot) : Bool
    return this >= other.toFloat();

  inline public function toFloat() : Float
    return this;

  @:to inline public function toKilometre() : Kilometre
    return this * 0.0003048;
  @:to inline public function toMetre() : Metre
    return this * 0.3048;
  @:to inline public function toCentimetre() : Centimetre
    return this * 30.48;
  @:to inline public function toMillimetre() : Millimetre
    return this * 304.8;
  @:to inline public function toMicrometre() : Micrometre
    return this * 304800;
  @:to inline public function toNanometre() : Nanometre
    return this * 304800000;
  @:to inline public function toThou() : Thou
    return this * 12000;
  @:to inline public function toInch() : Inch
    return this * 12;
  @:to inline public function toYard() : Yard
    return this * 0.333333333333333;
  @:to inline public function toChain() : Chain
    return this * 0.0151515151515152;
  @:to inline public function toFurlong() : Furlong
    return this * 0.00151515151515152;
  @:to inline public function toMile() : Mile
    return this * 0.000189393939393939;
  @:to inline public function toLeague() : League
    return this * 6.31313131313131e-05;

  @:to inline public function toString() : String
    return this + symbol;

  public static inline var symbol : String = "ft";
}