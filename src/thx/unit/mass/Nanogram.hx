package thx.unit.mass;

import thx.core.Floats;

// TODO parse string

abstract Nanogram(Float) {
  @:from inline static public function floatToNanogram(value : Float) : Nanogram
    return new Nanogram(value);

  function new(value : Float)
    this = value;
  @:op( -A ) inline public function negate() : Nanogram
    return -this;
  @:op( A+B) inline public function add(other : Nanogram) : Nanogram
    return this + other.toFloat();
  @:op( A-B) inline public function subtract(other : Nanogram) : Nanogram
    return this - other.toFloat();
  @:op( A*B) inline public function multiply(other : Float) : Nanogram
    return this * other;
  @:op( A/B) inline public function divide(other : Float) : Nanogram
    return this / other;
  @:op( A%B) inline public function modulo(other : Float) : Nanogram
    return this % other;
  @:op(A==B) inline public function equal(other : Nanogram) : Bool
    return this == other;
  public function nearEqual(other : Nanogram) : Bool
    return Floats.nearEqual(this, other.toFloat());
  @:op(A!=B) inline public function notEqual(other : Nanogram) : Bool
    return this != other;
  @:op( A<B) inline public function less(other : Nanogram) : Bool
    return this < other.toFloat();
  @:op(A<=B) inline public function lessEqual(other : Nanogram) : Bool
    return this <= other.toFloat();
  @:op( A>B) inline public function more(other : Nanogram) : Bool
    return this > other.toFloat();
  @:op(A>=B) inline public function moreEqual(other : Nanogram) : Bool
    return this >= other.toFloat();

  inline public function toFloat() : Float
    return this;

  @:to inline public function toMegagram() : Megagram
    return this * 1e-15;
  @:to inline public function toKilogram() : Kilogram
    return this * 1e-12;
  @:to inline public function toGram() : Gram
    return this * 1e-09;
  @:to inline public function toCentigram() : Centigram
    return this * 1e-07;
  @:to inline public function toMilligram() : Milligram
    return this * 1e-06;
  @:to inline public function toMicrogram() : Microgram
    return this * 0.001;
  @:to inline public function toPicogram() : Picogram
    return this * 1000;
  @:to inline public function toTon() : Ton
    return this * 9.84206527611061e-16;
  @:to inline public function toHundredweight() : Hundredweight
    return this * 1.96841305522212e-14;
  @:to inline public function toQuarter() : Quarter
    return this * 7.87365222088848e-14;
  @:to inline public function toStone() : Stone
    return this * 1.5747304441777e-13;
  @:to inline public function toPound() : Pound
    return this * 2.20462262184878e-12;
  @:to inline public function toOunce() : Ounce
    return this * 3.52739619495804e-11;
  @:to inline public function toDrachm() : Drachm
    return this * 5.64383391193287e-10;
  @:to inline public function toGrain() : Grain
    return this * 1.54323583529414e-08;
  @:to inline public function toUnifiedAtomicMassUnit() : UnifiedAtomicMassUnit
    return this * 602214129011674;
  @:to inline public function toDalton() : Dalton
    return this * 602214129011674;
  @:to inline public function toPlankMass() : PlankMass
    return this * 4.59451139668552e-05;
  @:to inline public function toSlug() : Slug
    return this * 6.8521765561961e-14;
  @:to inline public function toSolarMass() : SolarMass
    return this * 5.0287898217294e-43;

  @:to inline public function toString() : String
    return this + symbol;

  public static inline var symbol : String = "ng";
}