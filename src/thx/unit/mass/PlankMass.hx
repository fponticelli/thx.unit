package thx.unit.mass;

import thx.core.Floats;

// TODO parse string

abstract PlankMass(Float) {
  @:from inline static public function floatToPlankMass(value : Float) : PlankMass
    return new PlankMass(value);

  function new(value : Float)
    this = value;

  inline public function abs() : PlankMass
    return Math.abs(this);

  inline public function min(other : PlankMass) : PlankMass
    return Math.min(this, other.toFloat());

  inline public function max(other : PlankMass) : PlankMass
    return Math.max(this, other.toFloat());

  @:op( -A ) inline public function negate() : PlankMass
    return -this;
  @:op( A+B) inline public function add(other : PlankMass) : PlankMass
    return this + other.toFloat();
  @:op( A-B) inline public function subtract(other : PlankMass) : PlankMass
    return this - other.toFloat();
  @:op( A*B) inline public function multiply(other : Float) : PlankMass
    return this * other;
  @:op( A/B) inline public function divide(other : Float) : PlankMass
    return this / other;
  @:op( A%B) inline public function modulo(other : Float) : PlankMass
    return this % other;
  @:op(A==B) inline public function equal(other : PlankMass) : Bool
    return this == other;
  public function nearEquals(other : PlankMass) : Bool
    return Floats.nearEquals(this, other.toFloat());
  @:op(A!=B) inline public function notEqual(other : PlankMass) : Bool
    return this != other;
  @:op( A<B) inline public function less(other : PlankMass) : Bool
    return this < other.toFloat();
  @:op(A<=B) inline public function lessEqual(other : PlankMass) : Bool
    return this <= other.toFloat();
  @:op( A>B) inline public function more(other : PlankMass) : Bool
    return this > other.toFloat();
  @:op(A>=B) inline public function moreEqual(other : PlankMass) : Bool
    return this >= other.toFloat();

  @:to inline public function toFloat() : Float
    return this;

  @:to inline public function toMegagram() : Megagram
    return this * 2.17651e-11;
  @:to inline public function toKilogram() : Kilogram
    return this * 2.17651e-08;
  @:to inline public function toGram() : Gram
    return this * 2.17651e-05;
  @:to inline public function toCentigram() : Centigram
    return this * 0.00217651;
  @:to inline public function toMilligram() : Milligram
    return this * 0.0217651;
  @:to inline public function toMicrogram() : Microgram
    return this * 21.7651;
  @:to inline public function toNanogram() : Nanogram
    return this * 21765.1;
  @:to inline public function toPicogram() : Picogram
    return this * 21765100;
  @:to inline public function toTon() : Ton
    return this * 2.14213534941075e-11;
  @:to inline public function toHundredweight() : Hundredweight
    return this * 4.2842706988215e-10;
  @:to inline public function toQuarter() : Quarter
    return this * 1.7137082795286e-09;
  @:to inline public function toStone() : Stone
    return this * 3.4274165590572e-09;
  @:to inline public function toPound() : Pound
    return this * 4.79838318268008e-08;
  @:to inline public function toOunce() : Ounce
    return this * 7.67741309228813e-07;
  @:to inline public function toDrachm() : Drachm
    return this * 1.2283860947661e-05;
  @:to inline public function toGrain() : Grain
    return this * 0.000335886822787606;
  @:to inline public function toUnifiedAtomicMassUnit() : UnifiedAtomicMassUnit
    return this * 1.3107250739352e+19;
  @:to inline public function toDalton() : Dalton
    return this * 1.3107250739352e+19;
  @:to inline public function toSlug() : Slug
    return this * 1.49138307963264e-09;
  @:to inline public function toSolarMass() : SolarMass
    return this * 1.09452113348923e-38;

  @:to inline public function toString() : String
    return this + symbol;

  public static inline var symbol : String = "mP";
}