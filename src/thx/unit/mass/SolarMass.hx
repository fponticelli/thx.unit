package thx.unit.mass;

import thx.core.Floats;

// TODO parse string

abstract SolarMass(Float) {
  @:from inline static public function floatToSolarMass(value : Float) : SolarMass
    return new SolarMass(value);

  function new(value : Float)
    this = value;
  @:op( -A ) inline public function negate() : SolarMass
    return -this;
  @:op( A+B) inline public function add(other : SolarMass) : SolarMass
    return this + other.toFloat();
  @:op( A-B) inline public function subtract(other : SolarMass) : SolarMass
    return this - other.toFloat();
  @:op( A*B) inline public function multiply(other : Float) : SolarMass
    return this * other;
  @:op( A/B) inline public function divide(other : Float) : SolarMass
    return this / other;
  @:op( A%B) inline public function modulo(other : Float) : SolarMass
    return this % other;
  @:op(A==B) inline public function equal(other : SolarMass) : Bool
    return this == other;
  public function nearEqual(other : SolarMass) : Bool
    return Floats.nearEqual(this, other.toFloat());
  @:op(A!=B) inline public function notEqual(other : SolarMass) : Bool
    return this != other;
  @:op( A<B) inline public function less(other : SolarMass) : Bool
    return this < other.toFloat();
  @:op(A<=B) inline public function lessEqual(other : SolarMass) : Bool
    return this <= other.toFloat();
  @:op( A>B) inline public function more(other : SolarMass) : Bool
    return this > other.toFloat();
  @:op(A>=B) inline public function moreEqual(other : SolarMass) : Bool
    return this >= other.toFloat();

  inline public function toFloat() : Float
    return this;

  @:to inline public function toMegagram() : Megagram
    return this * 1.98855e+27;
  @:to inline public function toKilogram() : Kilogram
    return this * 1.98855e+30;
  @:to inline public function toGram() : Gram
    return this * 1.98855e+33;
  @:to inline public function toCentigram() : Centigram
    return this * 1.98855e+35;
  @:to inline public function toMilligram() : Milligram
    return this * 1.98855e+36;
  @:to inline public function toMicrogram() : Microgram
    return this * 1.98855e+39;
  @:to inline public function toNanogram() : Nanogram
    return this * 1.98855e+42;
  @:to inline public function toPicogram() : Picogram
    return this * 1.98855e+45;
  @:to inline public function toTon() : Ton
    return this * 1.95714389048097e+27;
  @:to inline public function toHundredweight() : Hundredweight
    return this * 3.91428778096195e+28;
  @:to inline public function toQuarter() : Quarter
    return this * 1.56571511238478e+29;
  @:to inline public function toStone() : Stone
    return this * 3.13143022476956e+29;
  @:to inline public function toPound() : Pound
    return this * 4.38400231467738e+30;
  @:to inline public function toOunce() : Ounce
    return this * 7.01440370348381e+31;
  @:to inline public function toDrachm() : Drachm
    return this * 1.12230459255741e+33;
  @:to inline public function toGrain() : Grain
    return this * 3.06880162027417e+34;
  @:to inline public function toUnifiedAtomicMassUnit() : UnifiedAtomicMassUnit
    return this * 1.19753290624616e+57;
  @:to inline public function toDalton() : Dalton
    return this * 1.19753290624616e+57;
  @:to inline public function toPlankMass() : PlankMass
    return this * 9.13641563787899e+37;
  @:to inline public function toSlug() : Slug
    return this * 1.36258956908238e+29;

  @:to inline public function toString() : String
    return this + symbol;

  public static inline var symbol : String = "M☉";
}