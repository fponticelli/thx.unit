package thx.unit.length;

import thx.core.Floats;

// TODO parse string

abstract Kilometre(Float) {
  @:from inline static public function floatToKilometre(value : Float) : Kilometre
    return new Kilometre(value);

  function new(value : Float)
    this = value;

  inline public function abs() : Kilometre
    return Math.abs(this);

  inline public function min(other : Kilometre) : Kilometre
    return Math.min(this, other.toFloat());

  inline public function max(other : Kilometre) : Kilometre
    return Math.max(this, other.toFloat());

  @:op( -A ) inline public function negate() : Kilometre
    return -this;
  @:op( A+B) inline public function add(other : Kilometre) : Kilometre
    return this + other.toFloat();
  @:op( A-B) inline public function subtract(other : Kilometre) : Kilometre
    return this - other.toFloat();
  @:op( A*B) inline public function multiply(other : Float) : Kilometre
    return this * other;
  @:op( A/B) inline public function divide(other : Float) : Kilometre
    return this / other;
  @:op( A%B) inline public function modulo(other : Float) : Kilometre
    return this % other;
  @:op(A==B) inline public function equal(other : Kilometre) : Bool
    return this == other;
  public function nearEquals(other : Kilometre) : Bool
    return Floats.nearEquals(this, other.toFloat());
  @:op(A!=B) inline public function notEqual(other : Kilometre) : Bool
    return this != other;
  @:op( A<B) inline public function less(other : Kilometre) : Bool
    return this < other.toFloat();
  @:op(A<=B) inline public function lessEqual(other : Kilometre) : Bool
    return this <= other.toFloat();
  @:op( A>B) inline public function more(other : Kilometre) : Bool
    return this > other.toFloat();
  @:op(A>=B) inline public function moreEqual(other : Kilometre) : Bool
    return this >= other.toFloat();

  @:to inline public function toFloat() : Float
    return this;

  @:to inline public function toMetre() : Metre
    return this * 1000;
  @:to inline public function toCentimetre() : Centimetre
    return this * 100000;
  @:to inline public function toMillimetre() : Millimetre
    return this * 1000000;
  @:to inline public function toMicrometre() : Micrometre
    return this * 1000000000;
  @:to inline public function toNanometre() : Nanometre
    return this * 1000000000000;
  @:to inline public function toLeague() : League
    return this * 0.207123730745778;
  @:to inline public function toMile() : Mile
    return this * 0.621371192237334;
  @:to inline public function toFurlong() : Furlong
    return this * 4.97096953789867;
  @:to inline public function toChain() : Chain
    return this * 49.7096953789867;
  @:to inline public function toYard() : Yard
    return this * 1093.61329833771;
  @:to inline public function toFoot() : Foot
    return this * 3280.83989501312;
  @:to inline public function toInch() : Inch
    return this * 39370.0787401575;
  @:to inline public function toLine() : Line
    return this * 472440.944881146;
  @:to inline public function toThou() : Thou
    return this * 39370078.7401575;
  @:to inline public function toFathom() : Fathom
    return this * 546.806649168854;
  @:to inline public function toNauticalMile() : NauticalMile
    return this * 0.539956803455723;
  @:to inline public function toEarthRadius() : EarthRadius
    return this * 0.00015696100884491;
  @:to inline public function toAstronomicalUnit() : AstronomicalUnit
    return this * 6.68458712226845e-09;
  @:to inline public function toLightYear() : LightYear
    return this * 1.05700083402462e-13;

  @:to inline public function toString() : String
    return this + symbol;

  public static inline var symbol : String = "km";
}