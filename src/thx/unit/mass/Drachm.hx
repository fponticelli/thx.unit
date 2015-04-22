package thx.unit.mass;

import thx.Floats;

// TODO parse string

abstract Drachm(Float) {
  @:from inline static public function floatToDrachm(value : Float) : Drachm
    return new Drachm(value);

  function new(value : Float)
    this = value;

  inline public function abs() : Drachm
    return Math.abs(this);

  inline public function min(other : Drachm) : Drachm
    return Math.min(this, other.toFloat());

  inline public function max(other : Drachm) : Drachm
    return Math.max(this, other.toFloat());

  @:op( -A ) inline public function negate() : Drachm
    return -this;
  @:op( A+B) inline public function add(other : Drachm) : Drachm
    return this + other.toFloat();
  @:op( A-B) inline public function subtract(other : Drachm) : Drachm
    return this - other.toFloat();
  @:op( A*B) inline public function multiply(other : Float) : Drachm
    return this * other;
  @:op( A/B) inline public function divide(other : Float) : Drachm
    return this / other;
  @:op( A%B) inline public function modulo(other : Float) : Drachm
    return this % other;
  @:op(A==B) inline public function equal(other : Drachm) : Bool
    return this == other;
  public function nearEquals(other : Drachm) : Bool
    return Floats.nearEquals(this, other.toFloat());
  @:op(A!=B) inline public function notEqual(other : Drachm) : Bool
    return this != other;
  @:op( A<B) inline public function less(other : Drachm) : Bool
    return this < other.toFloat();
  @:op(A<=B) inline public function lessEqual(other : Drachm) : Bool
    return this <= other.toFloat();
  @:op( A>B) inline public function more(other : Drachm) : Bool
    return this > other.toFloat();
  @:op(A>=B) inline public function moreEqual(other : Drachm) : Bool
    return this >= other.toFloat();

  @:to inline public function toFloat() : Float
    return this;

  @:to inline public function toMegagram() : Megagram
    return this * 1.7718451953125e-06;
  @:to inline public function toKilogram() : Kilogram
    return this * 0.0017718451953125;
  @:to inline public function toGram() : Gram
    return this * 1.7718451953125;
  @:to inline public function toCentigram() : Centigram
    return this * 177.18451953125;
  @:to inline public function toMilligram() : Milligram
    return this * 1771.8451953125;
  @:to inline public function toMicrogram() : Microgram
    return this * 1771845.1953125;
  @:to inline public function toNanogram() : Nanogram
    return this * 1771845195.3125;
  @:to inline public function toPicogram() : Picogram
    return this * 1771845195312.5;
  @:to inline public function toTon() : Ton
    return this * 1.74386160714286e-06;
  @:to inline public function toHundredweight() : Hundredweight
    return this * 3.48772321428571e-05;
  @:to inline public function toQuarter() : Quarter
    return this * 0.000139508928571429;
  @:to inline public function toStone() : Stone
    return this * 0.000279017857142857;
  @:to inline public function toPound() : Pound
    return this * 0.00390625;
  @:to inline public function toOunce() : Ounce
    return this * 0.0625;
  @:to inline public function toGrain() : Grain
    return this * 27.34375;
  @:to inline public function toUnifiedAtomicMassUnit() : UnifiedAtomicMassUnit
    return this * 1.06703021103864e+24;
  @:to inline public function toDalton() : Dalton
    return this * 1.06703021103864e+24;
  @:to inline public function toPlankMass() : PlankMass
    return this * 81407.6294302576;
  @:to inline public function toSlug() : Slug
    return this * 0.00012140996108529;
  @:to inline public function toSolarMass() : SolarMass
    return this * 8.91023708386764e-34;

  @:to inline public function toString() : String
    return this + symbol;

  public static inline var symbol : String = "dr";
}