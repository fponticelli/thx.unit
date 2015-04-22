package thx.unit.length;

import thx.Floats;

// TODO parse string

abstract Yard(Float) {
  @:from inline static public function floatToYard(value : Float) : Yard
    return new Yard(value);

  function new(value : Float)
    this = value;

  inline public function abs() : Yard
    return Math.abs(this);

  inline public function min(other : Yard) : Yard
    return Math.min(this, other.toFloat());

  inline public function max(other : Yard) : Yard
    return Math.max(this, other.toFloat());

  @:op( -A ) inline public function negate() : Yard
    return -this;
  @:op( A+B) inline public function add(other : Yard) : Yard
    return this + other.toFloat();
  @:op( A-B) inline public function subtract(other : Yard) : Yard
    return this - other.toFloat();
  @:op( A*B) inline public function multiply(other : Float) : Yard
    return this * other;
  @:op( A/B) inline public function divide(other : Float) : Yard
    return this / other;
  @:op( A%B) inline public function modulo(other : Float) : Yard
    return this % other;
  @:op(A==B) inline public function equal(other : Yard) : Bool
    return this == other;
  public function nearEquals(other : Yard) : Bool
    return Floats.nearEquals(this, other.toFloat());
  @:op(A!=B) inline public function notEqual(other : Yard) : Bool
    return this != other;
  @:op( A<B) inline public function less(other : Yard) : Bool
    return this < other.toFloat();
  @:op(A<=B) inline public function lessEqual(other : Yard) : Bool
    return this <= other.toFloat();
  @:op( A>B) inline public function more(other : Yard) : Bool
    return this > other.toFloat();
  @:op(A>=B) inline public function moreEqual(other : Yard) : Bool
    return this >= other.toFloat();

  @:to inline public function toFloat() : Float
    return this;

  @:to inline public function toKilometre() : Kilometre
    return this * 0.0009144;
  @:to inline public function toMetre() : Metre
    return this * 0.9144;
  @:to inline public function toCentimetre() : Centimetre
    return this * 91.44;
  @:to inline public function toMillimetre() : Millimetre
    return this * 914.4;
  @:to inline public function toMicrometre() : Micrometre
    return this * 914400;
  @:to inline public function toNanometre() : Nanometre
    return this * 914400000;
  @:to inline public function toLeague() : League
    return this * 0.000189393939393939;
  @:to inline public function toMile() : Mile
    return this * 0.000568181818181818;
  @:to inline public function toFurlong() : Furlong
    return this * 0.00454545454545455;
  @:to inline public function toChain() : Chain
    return this * 0.0454545454545454;
  @:to inline public function toFoot() : Foot
    return this * 3;
  @:to inline public function toInch() : Inch
    return this * 36;
  @:to inline public function toLine() : Line
    return this * 431.99999999932;
  @:to inline public function toThou() : Thou
    return this * 36000;
  @:to inline public function toFathom() : Fathom
    return this * 0.5;
  @:to inline public function toNauticalMile() : NauticalMile
    return this * 0.000493736501079914;
  @:to inline public function toEarthRadius() : EarthRadius
    return this * 1.43525146487786e-07;
  @:to inline public function toAstronomicalUnit() : AstronomicalUnit
    return this * 6.11238646460227e-12;
  @:to inline public function toLightYear() : LightYear
    return this * 9.66521562632108e-17;

  @:to inline public function toString() : String
    return this + symbol;

  public static inline var symbol : String = "yd";
}