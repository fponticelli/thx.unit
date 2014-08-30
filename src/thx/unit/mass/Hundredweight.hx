package thx.unit.mass;

import thx.core.Floats;

// TODO parse string

abstract Hundredweight(Float) {
  @:from inline static public function floatToHundredweight(value : Float) : Hundredweight
    return new Hundredweight(value);

  function new(value : Float)
    this = value;
  @:op( -A ) inline public function negate() : Hundredweight
    return -this;
  @:op( A+B) inline public function add(other : Hundredweight) : Hundredweight
    return this + other.toFloat();
  @:op( A-B) inline public function subtract(other : Hundredweight) : Hundredweight
    return this - other.toFloat();
  @:op( A*B) inline public function multiply(other : Float) : Hundredweight
    return this * other;
  @:op( A/B) inline public function divide(other : Float) : Hundredweight
    return this / other;
  @:op( A%B) inline public function modulo(other : Float) : Hundredweight
    return this % other;
  @:op(A==B) inline public function equal(other : Hundredweight) : Bool
    return this == other;
  public function nearEqual(other : Hundredweight) : Bool
    return Floats.nearEqual(this, other.toFloat());
  @:op(A!=B) inline public function notEqual(other : Hundredweight) : Bool
    return this != other;
  @:op( A<B) inline public function less(other : Hundredweight) : Bool
    return this < other.toFloat();
  @:op(A<=B) inline public function lessEqual(other : Hundredweight) : Bool
    return this <= other.toFloat();
  @:op( A>B) inline public function more(other : Hundredweight) : Bool
    return this > other.toFloat();
  @:op(A>=B) inline public function moreEqual(other : Hundredweight) : Bool
    return this >= other.toFloat();

  inline public function toFloat() : Float
    return this;

  @:to inline public function toMegagram() : Megagram
    return this * 0.05080234544;
  @:to inline public function toKilogram() : Kilogram
    return this * 50.80234544;
  @:to inline public function toGram() : Gram
    return this * 50802.34544;
  @:to inline public function toCentigram() : Centigram
    return this * 5080234.544;
  @:to inline public function toMilligram() : Milligram
    return this * 50802345.44;
  @:to inline public function toMicrogram() : Microgram
    return this * 50802345440;
  @:to inline public function toNanogram() : Nanogram
    return this * 50802345440000;
  @:to inline public function toPicogram() : Picogram
    return this * 5.080234544e+16;
  @:to inline public function toTon() : Ton
    return this * 0.05;
  @:to inline public function toQuarter() : Quarter
    return this * 4;
  @:to inline public function toStone() : Stone
    return this * 8;
  @:to inline public function toPound() : Pound
    return this * 112;
  @:to inline public function toOunce() : Ounce
    return this * 1792;
  @:to inline public function toDrachm() : Drachm
    return this * 28672;
  @:to inline public function toGrain() : Grain
    return this * 784000;
  @:to inline public function toUnifiedAtomicMassUnit() : UnifiedAtomicMassUnit
    return this * 3.05938902108998e+28;
  @:to inline public function toDalton() : Dalton
    return this * 3.05938902108998e+28;
  @:to inline public function toPlankMass() : PlankMass
    return this * 2334119551.02435;
  @:to inline public function toSlug() : Slug
    return this * 3.48106640423744;
  @:to inline public function toSolarMass() : SolarMass
    return this * 2.55474317668653e-29;

  @:to inline public function toString() : String
    return this + symbol;

  public static inline var symbol : String = "cwt";
}