package thx.unit.length;

import thx.core.Floats;

// TODO parse string

abstract EarthRadius(Float) {
  @:from inline static public function floatToEarthRadius(value : Float) : EarthRadius
    return new EarthRadius(value);

  function new(value : Float)
    this = value;
  @:op( -A ) inline public function negate() : EarthRadius
    return -this;
  @:op( A+B) inline public function add(other : EarthRadius) : EarthRadius
    return this + other.toFloat();
  @:op( A-B) inline public function subtract(other : EarthRadius) : EarthRadius
    return this - other.toFloat();
  @:op( A*B) inline public function multiply(other : Float) : EarthRadius
    return this * other;
  @:op( A/B) inline public function divide(other : Float) : EarthRadius
    return this / other;
  @:op( A%B) inline public function modulo(other : Float) : EarthRadius
    return this % other;
  @:op(A==B) inline public function equal(other : EarthRadius) : Bool
    return this == other;
  public function nearEqual(other : EarthRadius) : Bool
    return Floats.nearEqual(this, other.toFloat());
  @:op(A!=B) inline public function notEqual(other : EarthRadius) : Bool
    return this != other;
  @:op( A<B) inline public function less(other : EarthRadius) : Bool
    return this < other.toFloat();
  @:op(A<=B) inline public function lessEqual(other : EarthRadius) : Bool
    return this <= other.toFloat();
  @:op( A>B) inline public function more(other : EarthRadius) : Bool
    return this > other.toFloat();
  @:op(A>=B) inline public function moreEqual(other : EarthRadius) : Bool
    return this >= other.toFloat();

  inline public function toFloat() : Float
    return this;

  @:to inline public function toKilometre() : Kilometre
    return this * 6371.009;
  @:to inline public function toMetre() : Metre
    return this * 6371009;
  @:to inline public function toCentimetre() : Centimetre
    return this * 637100900;
  @:to inline public function toMillimetre() : Millimetre
    return this * 6371009000;
  @:to inline public function toMicrometre() : Micrometre
    return this * 6371009000000;
  @:to inline public function toNanometre() : Nanometre
    return this * 6.371009e+15;
  @:to inline public function toLeague() : League
    return this * 1319.58715269493;
  @:to inline public function toMile() : Mile
    return this * 3958.76145808478;
  @:to inline public function toFurlong() : Furlong
    return this * 31670.0916646783;
  @:to inline public function toChain() : Chain
    return this * 316700.916646783;
  @:to inline public function toYard() : Yard
    return this * 6967420.16622922;
  @:to inline public function toFoot() : Foot
    return this * 20902260.4986877;
  @:to inline public function toInch() : Inch
    return this * 250827125.984252;
  @:to inline public function toLine() : Line
    return this * 3009925511.80628;
  @:to inline public function toThou() : Thou
    return this * 250827125984.252;
  @:to inline public function toFathom() : Fathom
    return this * 3483710.08311461;
  @:to inline public function toNauticalMile() : NauticalMile
    return this * 3440.06965442765;
  @:to inline public function toAstronomicalUnit() : AstronomicalUnit
    return this * 4.25875647172564e-05;
  @:to inline public function toLightYear() : LightYear
    return this * 6.73416182657833e-10;

  @:to inline public function toString() : String
    return this + symbol;

  public static inline var symbol : String = "earth radius";
}