package thx.unit.length;

import thx.core.Floats;

// TODO parse string

abstract Micrometre(Float) {
  @:from inline static public function floatToMicrometre(value : Float) : Micrometre
    return new Micrometre(value);

  function new(value : Float)
    this = value;
  @:op( -A ) inline public function negate() : Micrometre
    return -this;
  @:op( A+B) inline public function add(other : Micrometre) : Micrometre
    return this + other.toFloat();
  @:op( A-B) inline public function subtract(other : Micrometre) : Micrometre
    return this - other.toFloat();
  @:op( A*B) inline public function multiply(other : Float) : Micrometre
    return this * other;
  @:op( A/B) inline public function divide(other : Float) : Micrometre
    return this / other;
  @:op( A%B) inline public function modulo(other : Float) : Micrometre
    return this % other;
  @:op(A==B) inline public function equal(other : Micrometre) : Bool
    return this == other;
  public function nearEquals(other : Micrometre) : Bool
    return Floats.nearEquals(this, other.toFloat());
  @:op(A!=B) inline public function notEqual(other : Micrometre) : Bool
    return this != other;
  @:op( A<B) inline public function less(other : Micrometre) : Bool
    return this < other.toFloat();
  @:op(A<=B) inline public function lessEqual(other : Micrometre) : Bool
    return this <= other.toFloat();
  @:op( A>B) inline public function more(other : Micrometre) : Bool
    return this > other.toFloat();
  @:op(A>=B) inline public function moreEqual(other : Micrometre) : Bool
    return this >= other.toFloat();

  @:to inline public function toFloat() : Float
    return this;

  @:to inline public function toKilometre() : Kilometre
    return this * 1e-09;
  @:to inline public function toMetre() : Metre
    return this * 1e-06;
  @:to inline public function toCentimetre() : Centimetre
    return this * 0.0001;
  @:to inline public function toMillimetre() : Millimetre
    return this * 0.001;
  @:to inline public function toNanometre() : Nanometre
    return this * 1000;
  @:to inline public function toLeague() : League
    return this * 2.07123730745778e-10;
  @:to inline public function toMile() : Mile
    return this * 6.21371192237334e-10;
  @:to inline public function toFurlong() : Furlong
    return this * 4.97096953789867e-09;
  @:to inline public function toChain() : Chain
    return this * 4.97096953789867e-08;
  @:to inline public function toYard() : Yard
    return this * 1.09361329833771e-06;
  @:to inline public function toFoot() : Foot
    return this * 3.28083989501312e-06;
  @:to inline public function toInch() : Inch
    return this * 3.93700787401575e-05;
  @:to inline public function toLine() : Line
    return this * 0.000472440944881146;
  @:to inline public function toThou() : Thou
    return this * 0.0393700787401575;
  @:to inline public function toFathom() : Fathom
    return this * 5.46806649168854e-07;
  @:to inline public function toNauticalMile() : NauticalMile
    return this * 5.39956803455723e-10;
  @:to inline public function toEarthRadius() : EarthRadius
    return this * 1.5696100884491e-13;
  @:to inline public function toAstronomicalUnit() : AstronomicalUnit
    return this * 6.68458712226845e-18;
  @:to inline public function toLightYear() : LightYear
    return this * 1.05700083402462e-22;

  @:to inline public function toString() : String
    return this + symbol;

  public static inline var symbol : String = "µm";
}