package thx.unit.mass;

import thx.core.Floats;

// TODO parse string

abstract Slug(Float) {
  @:from inline static public function floatToSlug(value : Float) : Slug
    return new Slug(value);

  function new(value : Float)
    this = value;
  @:op( -A ) inline public function negate() : Slug
    return -this;
  @:op( A+B) inline public function add(other : Slug) : Slug
    return this + other.toFloat();
  @:op( A-B) inline public function subtract(other : Slug) : Slug
    return this - other.toFloat();
  @:op( A*B) inline public function multiply(other : Float) : Slug
    return this * other;
  @:op( A/B) inline public function divide(other : Float) : Slug
    return this / other;
  @:op( A%B) inline public function modulo(other : Float) : Slug
    return this % other;
  @:op(A==B) inline public function equal(other : Slug) : Bool
    return this == other;
  public function nearEqual(other : Slug) : Bool
    return Floats.nearEqual(this, other.toFloat());
  @:op(A!=B) inline public function notEqual(other : Slug) : Bool
    return this != other;
  @:op( A<B) inline public function less(other : Slug) : Bool
    return this < other.toFloat();
  @:op(A<=B) inline public function lessEqual(other : Slug) : Bool
    return this <= other.toFloat();
  @:op( A>B) inline public function more(other : Slug) : Bool
    return this > other.toFloat();
  @:op(A>=B) inline public function moreEqual(other : Slug) : Bool
    return this >= other.toFloat();

  @:to inline public function toFloat() : Float
    return this;

  @:to inline public function toMegagram() : Megagram
    return this * 0.014593903;
  @:to inline public function toKilogram() : Kilogram
    return this * 14.593903;
  @:to inline public function toGram() : Gram
    return this * 14593.903;
  @:to inline public function toCentigram() : Centigram
    return this * 1459390.3;
  @:to inline public function toMilligram() : Milligram
    return this * 14593903;
  @:to inline public function toMicrogram() : Microgram
    return this * 14593903000;
  @:to inline public function toNanogram() : Nanogram
    return this * 14593903000000;
  @:to inline public function toPicogram() : Picogram
    return this * 1.4593903e+16;
  @:to inline public function toTon() : Ton
    return this * 0.0143634145959226;
  @:to inline public function toHundredweight() : Hundredweight
    return this * 0.287268291918453;
  @:to inline public function toQuarter() : Quarter
    return this * 1.14907316767381;
  @:to inline public function toStone() : Stone
    return this * 2.29814633534762;
  @:to inline public function toPound() : Pound
    return this * 32.1740486948667;
  @:to inline public function toOunce() : Ounce
    return this * 514.784779117867;
  @:to inline public function toDrachm() : Drachm
    return this * 8236.55646588588;
  @:to inline public function toGrain() : Grain
    return this * 225218.340864067;
  @:to inline public function toUnifiedAtomicMassUnit() : UnifiedAtomicMassUnit
    return this * 8.78865458402586e+27;
  @:to inline public function toDalton() : Dalton
    return this * 8.78865458402586e+27;
  @:to inline public function toPlankMass() : PlankMass
    return this * 670518536.55623;
  @:to inline public function toSolarMass() : SolarMass
    return this * 7.33896708657062e-30;

  @:to inline public function toString() : String
    return this + symbol;

  public static inline var symbol : String = "slug";
}