package thx.unit.length;

import thx.core.Floats;

// TODO parse string

abstract Centimetre(Float) {
  @:from inline static public function floatToCentimetre(value : Float) : Centimetre
    return new Centimetre(value);

  function new(value : Float)
    this = value;

  inline public function abs() : Centimetre
    return Math.abs(this);

  inline public function min(other : Centimetre) : Centimetre
    return Math.min(this, other.toFloat());

  inline public function max(other : Centimetre) : Centimetre
    return Math.max(this, other.toFloat());

  @:op( -A ) inline public function negate() : Centimetre
    return -this;
  @:op( A+B) inline public function add(other : Centimetre) : Centimetre
    return this + other.toFloat();
  @:op( A-B) inline public function subtract(other : Centimetre) : Centimetre
    return this - other.toFloat();
  @:op( A*B) inline public function multiply(other : Float) : Centimetre
    return this * other;
  @:op( A/B) inline public function divide(other : Float) : Centimetre
    return this / other;
  @:op( A%B) inline public function modulo(other : Float) : Centimetre
    return this % other;
  @:op(A==B) inline public function equal(other : Centimetre) : Bool
    return this == other;
  public function nearEquals(other : Centimetre) : Bool
    return Floats.nearEquals(this, other.toFloat());
  @:op(A!=B) inline public function notEqual(other : Centimetre) : Bool
    return this != other;
  @:op( A<B) inline public function less(other : Centimetre) : Bool
    return this < other.toFloat();
  @:op(A<=B) inline public function lessEqual(other : Centimetre) : Bool
    return this <= other.toFloat();
  @:op( A>B) inline public function more(other : Centimetre) : Bool
    return this > other.toFloat();
  @:op(A>=B) inline public function moreEqual(other : Centimetre) : Bool
    return this >= other.toFloat();

  @:to inline public function toFloat() : Float
    return this;

  @:to inline public function toKilometre() : Kilometre
    return this * 1e-05;
  @:to inline public function toMetre() : Metre
    return this * 0.01;
  @:to inline public function toMillimetre() : Millimetre
    return this * 10;
  @:to inline public function toMicrometre() : Micrometre
    return this * 10000;
  @:to inline public function toNanometre() : Nanometre
    return this * 10000000;
  @:to inline public function toLeague() : League
    return this * 2.07123730745778e-06;
  @:to inline public function toMile() : Mile
    return this * 6.21371192237334e-06;
  @:to inline public function toFurlong() : Furlong
    return this * 4.97096953789867e-05;
  @:to inline public function toChain() : Chain
    return this * 0.000497096953789867;
  @:to inline public function toYard() : Yard
    return this * 0.0109361329833771;
  @:to inline public function toFoot() : Foot
    return this * 0.0328083989501312;
  @:to inline public function toInch() : Inch
    return this * 0.393700787401575;
  @:to inline public function toLine() : Line
    return this * 4.72440944881146;
  @:to inline public function toThou() : Thou
    return this * 393.700787401575;
  @:to inline public function toFathom() : Fathom
    return this * 0.00546806649168854;
  @:to inline public function toNauticalMile() : NauticalMile
    return this * 5.39956803455724e-06;
  @:to inline public function toEarthRadius() : EarthRadius
    return this * 1.5696100884491e-09;
  @:to inline public function toAstronomicalUnit() : AstronomicalUnit
    return this * 6.68458712226845e-14;
  @:to inline public function toLightYear() : LightYear
    return this * 1.05700083402462e-18;

  @:to inline public function toString() : String
    return this + symbol;

  public static inline var symbol : String = "cm";
}