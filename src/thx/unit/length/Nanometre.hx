package thx.unit.length;

import thx.core.Floats;

// TODO parse string

abstract Nanometre(Float) {
  @:from inline static public function floatToNanometre(value : Float) : Nanometre
    return new Nanometre(value);

  function new(value : Float)
    this = value;
  @:op( -A ) inline public function negate() : Nanometre
    return -this;
  @:op( A+B) inline public function add(other : Nanometre) : Nanometre
    return this + other.toFloat();
  @:op( A-B) inline public function subtract(other : Nanometre) : Nanometre
    return this - other.toFloat();
  @:op( A*B) inline public function multiply(other : Float) : Nanometre
    return this * other;
  @:op( A/B) inline public function divide(other : Float) : Nanometre
    return this / other;
  @:op( A%B) inline public function modulo(other : Float) : Nanometre
    return this % other;
  @:op(A==B) inline public function equal(other : Nanometre) : Bool
    return this == other;
  public function nearEquals(other : Nanometre) : Bool
    return Floats.nearEquals(this, other.toFloat());
  @:op(A!=B) inline public function notEqual(other : Nanometre) : Bool
    return this != other;
  @:op( A<B) inline public function less(other : Nanometre) : Bool
    return this < other.toFloat();
  @:op(A<=B) inline public function lessEqual(other : Nanometre) : Bool
    return this <= other.toFloat();
  @:op( A>B) inline public function more(other : Nanometre) : Bool
    return this > other.toFloat();
  @:op(A>=B) inline public function moreEqual(other : Nanometre) : Bool
    return this >= other.toFloat();

  @:to inline public function toFloat() : Float
    return this;

  @:to inline public function toKilometre() : Kilometre
    return this * 1e-12;
  @:to inline public function toMetre() : Metre
    return this * 1e-09;
  @:to inline public function toCentimetre() : Centimetre
    return this * 1e-07;
  @:to inline public function toMillimetre() : Millimetre
    return this * 1e-06;
  @:to inline public function toMicrometre() : Micrometre
    return this * 0.001;
  @:to inline public function toLeague() : League
    return this * 2.07123730745778e-13;
  @:to inline public function toMile() : Mile
    return this * 6.21371192237334e-13;
  @:to inline public function toFurlong() : Furlong
    return this * 4.97096953789867e-12;
  @:to inline public function toChain() : Chain
    return this * 4.97096953789867e-11;
  @:to inline public function toYard() : Yard
    return this * 1.09361329833771e-09;
  @:to inline public function toFoot() : Foot
    return this * 3.28083989501312e-09;
  @:to inline public function toInch() : Inch
    return this * 3.93700787401575e-08;
  @:to inline public function toLine() : Line
    return this * 4.72440944881146e-07;
  @:to inline public function toThou() : Thou
    return this * 3.93700787401575e-05;
  @:to inline public function toFathom() : Fathom
    return this * 5.46806649168854e-10;
  @:to inline public function toNauticalMile() : NauticalMile
    return this * 5.39956803455724e-13;
  @:to inline public function toEarthRadius() : EarthRadius
    return this * 1.5696100884491e-16;
  @:to inline public function toAstronomicalUnit() : AstronomicalUnit
    return this * 6.68458712226845e-21;
  @:to inline public function toLightYear() : LightYear
    return this * 1.05700083402462e-25;

  @:to inline public function toString() : String
    return this + symbol;

  public static inline var symbol : String = "nm";
}