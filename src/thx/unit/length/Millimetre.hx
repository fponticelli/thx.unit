package thx.unit.length;

import thx.Floats;

// TODO parse string

abstract Millimetre(Float) {
  @:from inline static public function floatToMillimetre(value : Float) : Millimetre
    return new Millimetre(value);

  function new(value : Float)
    this = value;

  inline public function abs() : Millimetre
    return Math.abs(this);

  inline public function min(other : Millimetre) : Millimetre
    return Math.min(this, other.toFloat());

  inline public function max(other : Millimetre) : Millimetre
    return Math.max(this, other.toFloat());

  @:op( -A ) inline public function negate() : Millimetre
    return -this;
  @:op( A+B) inline public function add(other : Millimetre) : Millimetre
    return this + other.toFloat();
  @:op( A-B) inline public function subtract(other : Millimetre) : Millimetre
    return this - other.toFloat();
  @:op( A*B) inline public function multiply(other : Float) : Millimetre
    return this * other;
  @:op( A/B) inline public function divide(other : Float) : Millimetre
    return this / other;
  @:op( A%B) inline public function modulo(other : Float) : Millimetre
    return this % other;
  @:op(A==B) inline public function equal(other : Millimetre) : Bool
    return this == other;
  public function nearEquals(other : Millimetre) : Bool
    return Floats.nearEquals(this, other.toFloat());
  @:op(A!=B) inline public function notEqual(other : Millimetre) : Bool
    return this != other;
  @:op( A<B) inline public function less(other : Millimetre) : Bool
    return this < other.toFloat();
  @:op(A<=B) inline public function lessEqual(other : Millimetre) : Bool
    return this <= other.toFloat();
  @:op( A>B) inline public function more(other : Millimetre) : Bool
    return this > other.toFloat();
  @:op(A>=B) inline public function moreEqual(other : Millimetre) : Bool
    return this >= other.toFloat();

  @:to inline public function toFloat() : Float
    return this;

  @:to inline public function toKilometre() : Kilometre
    return this * 1e-06;
  @:to inline public function toMetre() : Metre
    return this * 0.001;
  @:to inline public function toCentimetre() : Centimetre
    return this * 0.1;
  @:to inline public function toMicrometre() : Micrometre
    return this * 1000;
  @:to inline public function toNanometre() : Nanometre
    return this * 1000000;
  @:to inline public function toLeague() : League
    return this * 2.07123730745778e-07;
  @:to inline public function toMile() : Mile
    return this * 6.21371192237334e-07;
  @:to inline public function toFurlong() : Furlong
    return this * 4.97096953789867e-06;
  @:to inline public function toChain() : Chain
    return this * 4.97096953789867e-05;
  @:to inline public function toYard() : Yard
    return this * 0.00109361329833771;
  @:to inline public function toFoot() : Foot
    return this * 0.00328083989501312;
  @:to inline public function toInch() : Inch
    return this * 0.0393700787401575;
  @:to inline public function toLine() : Line
    return this * 0.472440944881146;
  @:to inline public function toThou() : Thou
    return this * 39.3700787401575;
  @:to inline public function toFathom() : Fathom
    return this * 0.000546806649168854;
  @:to inline public function toNauticalMile() : NauticalMile
    return this * 5.39956803455724e-07;
  @:to inline public function toEarthRadius() : EarthRadius
    return this * 1.5696100884491e-10;
  @:to inline public function toAstronomicalUnit() : AstronomicalUnit
    return this * 6.68458712226845e-15;
  @:to inline public function toLightYear() : LightYear
    return this * 1.05700083402462e-19;

  @:to inline public function toString() : String
    return this + symbol;

  public static inline var symbol : String = "mm";
}