package thx.unit.length;

import thx.core.Floats;

// TODO parse string

abstract Fathom(Float) {
  @:from inline static public function floatToFathom(value : Float) : Fathom
    return new Fathom(value);

  function new(value : Float)
    this = value;
  @:op( -A ) inline public function negate() : Fathom
    return -this;
  @:op( A+B) inline public function add(other : Fathom) : Fathom
    return this + other.toFloat();
  @:op( A-B) inline public function subtract(other : Fathom) : Fathom
    return this - other.toFloat();
  @:op( A*B) inline public function multiply(other : Float) : Fathom
    return this * other;
  @:op( A/B) inline public function divide(other : Float) : Fathom
    return this / other;
  @:op( A%B) inline public function modulo(other : Float) : Fathom
    return this % other;
  @:op(A==B) inline public function equal(other : Fathom) : Bool
    return this == other;
  public function nearEqual(other : Fathom) : Bool
    return Floats.nearEqual(this, other.toFloat());
  @:op(A!=B) inline public function notEqual(other : Fathom) : Bool
    return this != other;
  @:op( A<B) inline public function less(other : Fathom) : Bool
    return this < other.toFloat();
  @:op(A<=B) inline public function lessEqual(other : Fathom) : Bool
    return this <= other.toFloat();
  @:op( A>B) inline public function more(other : Fathom) : Bool
    return this > other.toFloat();
  @:op(A>=B) inline public function moreEqual(other : Fathom) : Bool
    return this >= other.toFloat();

  inline public function toFloat() : Float
    return this;

  @:to inline public function toKilometre() : Kilometre
    return this * 0.0018288;
  @:to inline public function toMetre() : Metre
    return this * 1.8288;
  @:to inline public function toCentimetre() : Centimetre
    return this * 182.88;
  @:to inline public function toMillimetre() : Millimetre
    return this * 1828.8;
  @:to inline public function toMicrometre() : Micrometre
    return this * 1828800;
  @:to inline public function toNanometre() : Nanometre
    return this * 1828800000;
  @:to inline public function toLeague() : League
    return this * 0.000378787878787879;
  @:to inline public function toMile() : Mile
    return this * 0.00113636363636364;
  @:to inline public function toFurlong() : Furlong
    return this * 0.00909090909090909;
  @:to inline public function toChain() : Chain
    return this * 0.0909090909090909;
  @:to inline public function toYard() : Yard
    return this * 2;
  @:to inline public function toFoot() : Foot
    return this * 6;
  @:to inline public function toInch() : Inch
    return this * 72;
  @:to inline public function toLine() : Line
    return this * 863.999999998639;
  @:to inline public function toThou() : Thou
    return this * 72000;
  @:to inline public function toNauticalMile() : NauticalMile
    return this * 0.000987473002159827;
  @:to inline public function toEarthRadius() : EarthRadius
    return this * 2.87050292975571e-07;
  @:to inline public function toAstronomicalUnit() : AstronomicalUnit
    return this * 1.22247729292045e-11;
  @:to inline public function toLightYear() : LightYear
    return this * 1.93304312526422e-16;

  @:to inline public function toString() : String
    return this + symbol;

  public static inline var symbol : String = "ftm";
}