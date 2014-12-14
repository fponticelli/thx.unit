package thx.unit.length;

import thx.core.Floats;

// TODO parse string

abstract Furlong(Float) {
  @:from inline static public function floatToFurlong(value : Float) : Furlong
    return new Furlong(value);

  function new(value : Float)
    this = value;

  inline public function abs() : Furlong
    return Math.abs(this);

  inline public function min(other : Furlong) : Furlong
    return Math.min(this, other.toFloat());

  inline public function max(other : Furlong) : Furlong
    return Math.max(this, other.toFloat());

  @:op( -A ) inline public function negate() : Furlong
    return -this;
  @:op( A+B) inline public function add(other : Furlong) : Furlong
    return this + other.toFloat();
  @:op( A-B) inline public function subtract(other : Furlong) : Furlong
    return this - other.toFloat();
  @:op( A*B) inline public function multiply(other : Float) : Furlong
    return this * other;
  @:op( A/B) inline public function divide(other : Float) : Furlong
    return this / other;
  @:op( A%B) inline public function modulo(other : Float) : Furlong
    return this % other;
  @:op(A==B) inline public function equal(other : Furlong) : Bool
    return this == other;
  public function nearEquals(other : Furlong) : Bool
    return Floats.nearEquals(this, other.toFloat());
  @:op(A!=B) inline public function notEqual(other : Furlong) : Bool
    return this != other;
  @:op( A<B) inline public function less(other : Furlong) : Bool
    return this < other.toFloat();
  @:op(A<=B) inline public function lessEqual(other : Furlong) : Bool
    return this <= other.toFloat();
  @:op( A>B) inline public function more(other : Furlong) : Bool
    return this > other.toFloat();
  @:op(A>=B) inline public function moreEqual(other : Furlong) : Bool
    return this >= other.toFloat();

  @:to inline public function toFloat() : Float
    return this;

  @:to inline public function toKilometre() : Kilometre
    return this * 0.201168;
  @:to inline public function toMetre() : Metre
    return this * 201.168;
  @:to inline public function toCentimetre() : Centimetre
    return this * 20116.8;
  @:to inline public function toMillimetre() : Millimetre
    return this * 201168;
  @:to inline public function toMicrometre() : Micrometre
    return this * 201168000;
  @:to inline public function toNanometre() : Nanometre
    return this * 201168000000;
  @:to inline public function toLeague() : League
    return this * 0.0416666666666667;
  @:to inline public function toMile() : Mile
    return this * 0.125;
  @:to inline public function toChain() : Chain
    return this * 10;
  @:to inline public function toYard() : Yard
    return this * 220;
  @:to inline public function toFoot() : Foot
    return this * 660;
  @:to inline public function toInch() : Inch
    return this * 7920;
  @:to inline public function toLine() : Line
    return this * 95039.9999998503;
  @:to inline public function toThou() : Thou
    return this * 7920000;
  @:to inline public function toFathom() : Fathom
    return this * 110;
  @:to inline public function toNauticalMile() : NauticalMile
    return this * 0.108622030237581;
  @:to inline public function toEarthRadius() : EarthRadius
    return this * 3.15755322273128e-05;
  @:to inline public function toAstronomicalUnit() : AstronomicalUnit
    return this * 1.3447250222125e-09;
  @:to inline public function toLightYear() : LightYear
    return this * 2.12634743779064e-14;

  @:to inline public function toString() : String
    return this + symbol;

  public static inline var symbol : String = "fur";
}