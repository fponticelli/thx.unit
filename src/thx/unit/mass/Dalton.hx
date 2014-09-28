package thx.unit.mass;

import thx.core.Floats;

// TODO parse string

abstract Dalton(Float) {
  @:from inline static public function floatToDalton(value : Float) : Dalton
    return new Dalton(value);

  function new(value : Float)
    this = value;
  @:op( -A ) inline public function negate() : Dalton
    return -this;
  @:op( A+B) inline public function add(other : Dalton) : Dalton
    return this + other.toFloat();
  @:op( A-B) inline public function subtract(other : Dalton) : Dalton
    return this - other.toFloat();
  @:op( A*B) inline public function multiply(other : Float) : Dalton
    return this * other;
  @:op( A/B) inline public function divide(other : Float) : Dalton
    return this / other;
  @:op( A%B) inline public function modulo(other : Float) : Dalton
    return this % other;
  @:op(A==B) inline public function equal(other : Dalton) : Bool
    return this == other;
  public function nearEquals(other : Dalton) : Bool
    return Floats.nearEquals(this, other.toFloat());
  @:op(A!=B) inline public function notEqual(other : Dalton) : Bool
    return this != other;
  @:op( A<B) inline public function less(other : Dalton) : Bool
    return this < other.toFloat();
  @:op(A<=B) inline public function lessEqual(other : Dalton) : Bool
    return this <= other.toFloat();
  @:op( A>B) inline public function more(other : Dalton) : Bool
    return this > other.toFloat();
  @:op(A>=B) inline public function moreEqual(other : Dalton) : Bool
    return this >= other.toFloat();

  @:to inline public function toFloat() : Float
    return this;

  @:to inline public function toMegagram() : Megagram
    return this * 1.660538921e-30;
  @:to inline public function toKilogram() : Kilogram
    return this * 1.660538921e-27;
  @:to inline public function toGram() : Gram
    return this * 1.660538921e-24;
  @:to inline public function toCentigram() : Centigram
    return this * 1.660538921e-22;
  @:to inline public function toMilligram() : Milligram
    return this * 1.660538921e-21;
  @:to inline public function toMicrogram() : Microgram
    return this * 1.660538921e-18;
  @:to inline public function toNanogram() : Nanogram
    return this * 1.660538921e-15;
  @:to inline public function toPicogram() : Picogram
    return this * 1.660538921e-12;
  @:to inline public function toTon() : Ton
    return this * 1.63431324540043e-30;
  @:to inline public function toHundredweight() : Hundredweight
    return this * 3.26862649080085e-29;
  @:to inline public function toQuarter() : Quarter
    return this * 1.30745059632034e-28;
  @:to inline public function toStone() : Stone
    return this * 2.61490119264068e-28;
  @:to inline public function toPound() : Pound
    return this * 3.66086166969696e-27;
  @:to inline public function toOunce() : Ounce
    return this * 5.85737867151513e-26;
  @:to inline public function toDrachm() : Drachm
    return this * 9.37180587442421e-25;
  @:to inline public function toGrain() : Grain
    return this * 2.56260316878787e-23;
  @:to inline public function toUnifiedAtomicMassUnit() : UnifiedAtomicMassUnit
    return this * 1;
  @:to inline public function toPlankMass() : PlankMass
    return this * 7.62936499717437e-20;
  @:to inline public function toSlug() : Slug
    return this * 1.13783058651274e-28;
  @:to inline public function toSolarMass() : SolarMass
    return this * 8.35050122451032e-58;

  @:to inline public function toString() : String
    return this + symbol;

  public static inline var symbol : String = "Da";
}