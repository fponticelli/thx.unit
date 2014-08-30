package thx.unit.length;

import thx.core.Floats;

// TODO parse string

abstract Line(Float) {
  @:from inline static public function floatToLine(value : Float) : Line
    return new Line(value);

  function new(value : Float)
    this = value;
  @:op( -A ) inline public function negate() : Line
    return -this;
  @:op( A+B) inline public function add(other : Line) : Line
    return this + other.toFloat();
  @:op( A-B) inline public function subtract(other : Line) : Line
    return this - other.toFloat();
  @:op( A*B) inline public function multiply(other : Float) : Line
    return this * other;
  @:op( A/B) inline public function divide(other : Float) : Line
    return this / other;
  @:op( A%B) inline public function modulo(other : Float) : Line
    return this % other;
  @:op(A==B) inline public function equal(other : Line) : Bool
    return this == other;
  public function nearEqual(other : Line) : Bool
    return Floats.nearEqual(this, other.toFloat());
  @:op(A!=B) inline public function notEqual(other : Line) : Bool
    return this != other;
  @:op( A<B) inline public function less(other : Line) : Bool
    return this < other.toFloat();
  @:op(A<=B) inline public function lessEqual(other : Line) : Bool
    return this <= other.toFloat();
  @:op( A>B) inline public function more(other : Line) : Bool
    return this > other.toFloat();
  @:op(A>=B) inline public function moreEqual(other : Line) : Bool
    return this >= other.toFloat();

  @:to inline public function toFloat() : Float
    return this;

  @:to inline public function toKilometre() : Kilometre
    return this * 2.11666666667e-06;
  @:to inline public function toMetre() : Metre
    return this * 0.00211666666667;
  @:to inline public function toCentimetre() : Centimetre
    return this * 0.211666666667;
  @:to inline public function toMillimetre() : Millimetre
    return this * 2.11666666667;
  @:to inline public function toMicrometre() : Micrometre
    return this * 2116.66666667;
  @:to inline public function toNanometre() : Nanometre
    return this * 2116666.66667;
  @:to inline public function toLeague() : League
    return this * 4.38411896745921e-07;
  @:to inline public function toMile() : Mile
    return this * 1.31523569023776e-06;
  @:to inline public function toFurlong() : Furlong
    return this * 1.05218855219021e-05;
  @:to inline public function toChain() : Chain
    return this * 0.000105218855219021;
  @:to inline public function toYard() : Yard
    return this * 0.00231481481481846;
  @:to inline public function toFoot() : Foot
    return this * 0.00694444444445538;
  @:to inline public function toInch() : Inch
    return this * 0.0833333333334646;
  @:to inline public function toThou() : Thou
    return this * 83.3333333334646;
  @:to inline public function toFathom() : Fathom
    return this * 0.00115740740740923;
  @:to inline public function toNauticalMile() : NauticalMile
    return this * 1.14290856731641e-06;
  @:to inline public function toEarthRadius() : EarthRadius
    return this * 3.32234135388916e-10;
  @:to inline public function toAstronomicalUnit() : AstronomicalUnit
    return this * 1.41490427421572e-14;
  @:to inline public function toLightYear() : LightYear
    return this * 2.23731843202229e-19;

  @:to inline public function toString() : String
    return this + symbol;

  public static inline var symbol : String = "line";
}