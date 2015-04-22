package thx.unit.mass;

import thx.Floats;

// TODO parse string

abstract Microgram(Float) {
  @:from inline static public function floatToMicrogram(value : Float) : Microgram
    return new Microgram(value);

  function new(value : Float)
    this = value;

  inline public function abs() : Microgram
    return Math.abs(this);

  inline public function min(other : Microgram) : Microgram
    return Math.min(this, other.toFloat());

  inline public function max(other : Microgram) : Microgram
    return Math.max(this, other.toFloat());

  @:op( -A ) inline public function negate() : Microgram
    return -this;
  @:op( A+B) inline public function add(other : Microgram) : Microgram
    return this + other.toFloat();
  @:op( A-B) inline public function subtract(other : Microgram) : Microgram
    return this - other.toFloat();
  @:op( A*B) inline public function multiply(other : Float) : Microgram
    return this * other;
  @:op( A/B) inline public function divide(other : Float) : Microgram
    return this / other;
  @:op( A%B) inline public function modulo(other : Float) : Microgram
    return this % other;
  @:op(A==B) inline public function equal(other : Microgram) : Bool
    return this == other;
  public function nearEquals(other : Microgram) : Bool
    return Floats.nearEquals(this, other.toFloat());
  @:op(A!=B) inline public function notEqual(other : Microgram) : Bool
    return this != other;
  @:op( A<B) inline public function less(other : Microgram) : Bool
    return this < other.toFloat();
  @:op(A<=B) inline public function lessEqual(other : Microgram) : Bool
    return this <= other.toFloat();
  @:op( A>B) inline public function more(other : Microgram) : Bool
    return this > other.toFloat();
  @:op(A>=B) inline public function moreEqual(other : Microgram) : Bool
    return this >= other.toFloat();

  @:to inline public function toFloat() : Float
    return this;

  @:to inline public function toMegagram() : Megagram
    return this * 1e-12;
  @:to inline public function toKilogram() : Kilogram
    return this * 1e-09;
  @:to inline public function toGram() : Gram
    return this * 1e-06;
  @:to inline public function toCentigram() : Centigram
    return this * 0.0001;
  @:to inline public function toMilligram() : Milligram
    return this * 0.001;
  @:to inline public function toNanogram() : Nanogram
    return this * 1000;
  @:to inline public function toPicogram() : Picogram
    return this * 1000000;
  @:to inline public function toTon() : Ton
    return this * 9.84206527611061e-13;
  @:to inline public function toHundredweight() : Hundredweight
    return this * 1.96841305522212e-11;
  @:to inline public function toQuarter() : Quarter
    return this * 7.87365222088848e-11;
  @:to inline public function toStone() : Stone
    return this * 1.5747304441777e-10;
  @:to inline public function toPound() : Pound
    return this * 2.20462262184878e-09;
  @:to inline public function toOunce() : Ounce
    return this * 3.52739619495804e-08;
  @:to inline public function toDrachm() : Drachm
    return this * 5.64383391193287e-07;
  @:to inline public function toGrain() : Grain
    return this * 1.54323583529414e-05;
  @:to inline public function toUnifiedAtomicMassUnit() : UnifiedAtomicMassUnit
    return this * 6.02214129011674e+17;
  @:to inline public function toDalton() : Dalton
    return this * 6.02214129011674e+17;
  @:to inline public function toPlankMass() : PlankMass
    return this * 0.0459451139668552;
  @:to inline public function toSlug() : Slug
    return this * 6.85217655619611e-11;
  @:to inline public function toSolarMass() : SolarMass
    return this * 5.0287898217294e-40;

  @:to inline public function toString() : String
    return this + symbol;

  public static inline var symbol : String = "µg";
}