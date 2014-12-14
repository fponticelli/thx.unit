package thx.unit.mass;

import thx.core.Floats;

// TODO parse string

abstract Megagram(Float) {
  @:from inline static public function floatToMegagram(value : Float) : Megagram
    return new Megagram(value);

  function new(value : Float)
    this = value;

  inline public function abs() : Megagram
    return Math.abs(this);

  inline public function min(other : Megagram) : Megagram
    return Math.min(this, other.toFloat());

  inline public function max(other : Megagram) : Megagram
    return Math.max(this, other.toFloat());

  @:op( -A ) inline public function negate() : Megagram
    return -this;
  @:op( A+B) inline public function add(other : Megagram) : Megagram
    return this + other.toFloat();
  @:op( A-B) inline public function subtract(other : Megagram) : Megagram
    return this - other.toFloat();
  @:op( A*B) inline public function multiply(other : Float) : Megagram
    return this * other;
  @:op( A/B) inline public function divide(other : Float) : Megagram
    return this / other;
  @:op( A%B) inline public function modulo(other : Float) : Megagram
    return this % other;
  @:op(A==B) inline public function equal(other : Megagram) : Bool
    return this == other;
  public function nearEquals(other : Megagram) : Bool
    return Floats.nearEquals(this, other.toFloat());
  @:op(A!=B) inline public function notEqual(other : Megagram) : Bool
    return this != other;
  @:op( A<B) inline public function less(other : Megagram) : Bool
    return this < other.toFloat();
  @:op(A<=B) inline public function lessEqual(other : Megagram) : Bool
    return this <= other.toFloat();
  @:op( A>B) inline public function more(other : Megagram) : Bool
    return this > other.toFloat();
  @:op(A>=B) inline public function moreEqual(other : Megagram) : Bool
    return this >= other.toFloat();

  @:to inline public function toFloat() : Float
    return this;

  @:to inline public function toKilogram() : Kilogram
    return this * 1000;
  @:to inline public function toGram() : Gram
    return this * 1000000;
  @:to inline public function toCentigram() : Centigram
    return this * 100000000;
  @:to inline public function toMilligram() : Milligram
    return this * 1000000000;
  @:to inline public function toMicrogram() : Microgram
    return this * 1000000000000;
  @:to inline public function toNanogram() : Nanogram
    return this * 1e+15;
  @:to inline public function toPicogram() : Picogram
    return this * 1e+18;
  @:to inline public function toTon() : Ton
    return this * 0.984206527611061;
  @:to inline public function toHundredweight() : Hundredweight
    return this * 19.6841305522212;
  @:to inline public function toQuarter() : Quarter
    return this * 78.7365222088848;
  @:to inline public function toStone() : Stone
    return this * 157.47304441777;
  @:to inline public function toPound() : Pound
    return this * 2204.62262184878;
  @:to inline public function toOunce() : Ounce
    return this * 35273.9619495804;
  @:to inline public function toDrachm() : Drachm
    return this * 564383.391193287;
  @:to inline public function toGrain() : Grain
    return this * 15432358.3529414;
  @:to inline public function toUnifiedAtomicMassUnit() : UnifiedAtomicMassUnit
    return this * 6.02214129011674e+29;
  @:to inline public function toDalton() : Dalton
    return this * 6.02214129011674e+29;
  @:to inline public function toPlankMass() : PlankMass
    return this * 45945113966.8552;
  @:to inline public function toSlug() : Slug
    return this * 68.521765561961;
  @:to inline public function toSolarMass() : SolarMass
    return this * 5.0287898217294e-28;

  @:to inline public function toString() : String
    return this + symbol;

  public static inline var symbol : String = "Mg";
}