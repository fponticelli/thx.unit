package thx.unit.length;

import thx.Floats;

// TODO parse string

abstract LightYear(Float) {
  @:from inline static public function floatToLightYear(value : Float) : LightYear
    return new LightYear(value);

  function new(value : Float)
    this = value;

  inline public function abs() : LightYear
    return Math.abs(this);

  inline public function min(other : LightYear) : LightYear
    return Math.min(this, other.toFloat());

  inline public function max(other : LightYear) : LightYear
    return Math.max(this, other.toFloat());

  @:op( -A ) inline public function negate() : LightYear
    return -this;
  @:op( A+B) inline public function add(other : LightYear) : LightYear
    return this + other.toFloat();
  @:op( A-B) inline public function subtract(other : LightYear) : LightYear
    return this - other.toFloat();
  @:op( A*B) inline public function multiply(other : Float) : LightYear
    return this * other;
  @:op( A/B) inline public function divide(other : Float) : LightYear
    return this / other;
  @:op( A%B) inline public function modulo(other : Float) : LightYear
    return this % other;
  @:op(A==B) inline public function equal(other : LightYear) : Bool
    return this == other;
  public function nearEquals(other : LightYear) : Bool
    return Floats.nearEquals(this, other.toFloat());
  @:op(A!=B) inline public function notEqual(other : LightYear) : Bool
    return this != other;
  @:op( A<B) inline public function less(other : LightYear) : Bool
    return this < other.toFloat();
  @:op(A<=B) inline public function lessEqual(other : LightYear) : Bool
    return this <= other.toFloat();
  @:op( A>B) inline public function more(other : LightYear) : Bool
    return this > other.toFloat();
  @:op(A>=B) inline public function moreEqual(other : LightYear) : Bool
    return this >= other.toFloat();

  @:to inline public function toFloat() : Float
    return this;

  @:to inline public function toKilometre() : Kilometre
    return this * 9460730472580.8;
  @:to inline public function toMetre() : Metre
    return this * 9.4607304725808e+15;
  @:to inline public function toCentimetre() : Centimetre
    return this * 9.4607304725808e+17;
  @:to inline public function toMillimetre() : Millimetre
    return this * 9.4607304725808e+18;
  @:to inline public function toMicrometre() : Micrometre
    return this * 9.4607304725808e+21;
  @:to inline public function toNanometre() : Nanometre
    return this * 9.4607304725808e+24;
  @:to inline public function toLeague() : League
    return this * 1959541791061.2;
  @:to inline public function toMile() : Mile
    return this * 5878625373183.61;
  @:to inline public function toFurlong() : Furlong
    return this * 47029002985468.9;
  @:to inline public function toChain() : Chain
    return this * 470290029854689;
  @:to inline public function toYard() : Yard
    return this * 1.03463806568032e+16;
  @:to inline public function toFoot() : Foot
    return this * 3.10391419704094e+16;
  @:to inline public function toInch() : Inch
    return this * 3.72469703644913e+17;
  @:to inline public function toLine() : Line
    return this * 4.46963644373192e+18;
  @:to inline public function toThou() : Thou
    return this * 3.72469703644913e+20;
  @:to inline public function toFathom() : Fathom
    return this * 5.17319032840158e+15;
  @:to inline public function toNauticalMile() : NauticalMile
    return this * 5108385784330.89;
  @:to inline public function toEarthRadius() : EarthRadius
    return this * 1484965799.38606;
  @:to inline public function toAstronomicalUnit() : AstronomicalUnit
    return this * 63241.0770842663;

  @:to inline public function toString() : String
    return this + symbol;

  public static inline var symbol : String = "ly";
}