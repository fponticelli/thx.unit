package thx.unit.mass;

import thx.core.Floats;

// TODO parse string

abstract Kilogram(Float) {
  @:from inline static public function floatToKilogram(value : Float) : Kilogram
    return new Kilogram(value);

  function new(value : Float)
    this = value;
  @:op( -A ) inline public function negate() : Kilogram
    return -this;
  @:op( A+B) inline public function add(other : Kilogram) : Kilogram
    return this + other.toFloat();
  @:op( A-B) inline public function subtract(other : Kilogram) : Kilogram
    return this - other.toFloat();
  @:op( A*B) inline public function multiply(other : Float) : Kilogram
    return this * other;
  @:op( A/B) inline public function divide(other : Float) : Kilogram
    return this / other;
  @:op( A%B) inline public function modulo(other : Float) : Kilogram
    return this % other;
  @:op(A==B) inline public function equal(other : Kilogram) : Bool
    return this == other;
  public function nearEqual(other : Kilogram) : Bool
    return Floats.nearEqual(this, other.toFloat());
  @:op(A!=B) inline public function notEqual(other : Kilogram) : Bool
    return this != other;
  @:op( A<B) inline public function less(other : Kilogram) : Bool
    return this < other.toFloat();
  @:op(A<=B) inline public function lessEqual(other : Kilogram) : Bool
    return this <= other.toFloat();
  @:op( A>B) inline public function more(other : Kilogram) : Bool
    return this > other.toFloat();
  @:op(A>=B) inline public function moreEqual(other : Kilogram) : Bool
    return this >= other.toFloat();

  @:to inline public function toFloat() : Float
    return this;

  @:to inline public function toMegagram() : Megagram
    return this * 0.001;
  @:to inline public function toGram() : Gram
    return this * 1000;
  @:to inline public function toCentigram() : Centigram
    return this * 100000;
  @:to inline public function toMilligram() : Milligram
    return this * 1000000;
  @:to inline public function toMicrogram() : Microgram
    return this * 1000000000;
  @:to inline public function toNanogram() : Nanogram
    return this * 1000000000000;
  @:to inline public function toPicogram() : Picogram
    return this * 1e+15;
  @:to inline public function toTon() : Ton
    return this * 0.000984206527611061;
  @:to inline public function toHundredweight() : Hundredweight
    return this * 0.0196841305522212;
  @:to inline public function toQuarter() : Quarter
    return this * 0.0787365222088848;
  @:to inline public function toStone() : Stone
    return this * 0.15747304441777;
  @:to inline public function toPound() : Pound
    return this * 2.20462262184878;
  @:to inline public function toOunce() : Ounce
    return this * 35.2739619495804;
  @:to inline public function toDrachm() : Drachm
    return this * 564.383391193287;
  @:to inline public function toGrain() : Grain
    return this * 15432.3583529414;
  @:to inline public function toUnifiedAtomicMassUnit() : UnifiedAtomicMassUnit
    return this * 6.02214129011674e+26;
  @:to inline public function toDalton() : Dalton
    return this * 6.02214129011674e+26;
  @:to inline public function toPlankMass() : PlankMass
    return this * 45945113.9668552;
  @:to inline public function toSlug() : Slug
    return this * 0.068521765561961;
  @:to inline public function toSolarMass() : SolarMass
    return this * 5.0287898217294e-31;

  @:to inline public function toString() : String
    return this + symbol;

  public static inline var symbol : String = "kg";
}