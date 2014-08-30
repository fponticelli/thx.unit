package thx.unit.length;

import thx.core.Floats;

// TODO parse string

abstract Thou(Float) {
  @:from inline static public function floatToThou(value : Float) : Thou
    return new Thou(value);

  function new(value : Float)
    this = value;
  @:op( -A ) inline public function negate() : Thou
    return -this;
  @:op( A+B) inline public function add(other : Thou) : Thou
    return this + other.toFloat();
  @:op( A-B) inline public function subtract(other : Thou) : Thou
    return this - other.toFloat();
  @:op( A*B) inline public function multiply(other : Float) : Thou
    return this * other;
  @:op( A/B) inline public function divide(other : Float) : Thou
    return this / other;
  @:op( A%B) inline public function modulo(other : Float) : Thou
    return this % other;
  @:op(A==B) inline public function equal(other : Thou) : Bool
    return this == other;
  public function nearEqual(other : Thou) : Bool
    return Floats.nearEqual(this, other.toFloat());
  @:op(A!=B) inline public function notEqual(other : Thou) : Bool
    return this != other;
  @:op( A<B) inline public function less(other : Thou) : Bool
    return this < other.toFloat();
  @:op(A<=B) inline public function lessEqual(other : Thou) : Bool
    return this <= other.toFloat();
  @:op( A>B) inline public function more(other : Thou) : Bool
    return this > other.toFloat();
  @:op(A>=B) inline public function moreEqual(other : Thou) : Bool
    return this >= other.toFloat();

  inline public function toFloat() : Float
    return this;

  @:to inline public function toKilometre() : Kilometre
    return this * 2.54e-08;
  @:to inline public function toMetre() : Metre
    return this * 2.54e-05;
  @:to inline public function toCentimetre() : Centimetre
    return this * 0.00254;
  @:to inline public function toMillimetre() : Millimetre
    return this * 0.0254;
  @:to inline public function toMicrometre() : Micrometre
    return this * 25.4;
  @:to inline public function toNanometre() : Nanometre
    return this * 25400;
  @:to inline public function toLeague() : League
    return this * 5.26094276094276e-09;
  @:to inline public function toMile() : Mile
    return this * 1.57828282828283e-08;
  @:to inline public function toFurlong() : Furlong
    return this * 1.26262626262626e-07;
  @:to inline public function toChain() : Chain
    return this * 1.26262626262626e-06;
  @:to inline public function toYard() : Yard
    return this * 2.77777777777778e-05;
  @:to inline public function toFoot() : Foot
    return this * 8.33333333333333e-05;
  @:to inline public function toInch() : Inch
    return this * 0.001;
  @:to inline public function toLine() : Line
    return this * 0.0119999999999811;
  @:to inline public function toFathom() : Fathom
    return this * 1.38888888888889e-05;
  @:to inline public function toNauticalMile() : NauticalMile
    return this * 1.37149028077754e-08;
  @:to inline public function toEarthRadius() : EarthRadius
    return this * 3.98680962466071e-12;
  @:to inline public function toAstronomicalUnit() : AstronomicalUnit
    return this * 1.69788512905619e-16;
  @:to inline public function toLightYear() : LightYear
    return this * 2.68478211842252e-21;

  @:to inline public function toString() : String
    return this + symbol;

  public static inline var symbol : String = "th";
}