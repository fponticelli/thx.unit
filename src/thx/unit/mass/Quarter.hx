package thx.unit.mass;

import thx.core.Floats;

// TODO parse string

abstract Quarter(Float) {
  @:from inline static public function floatToQuarter(value : Float) : Quarter
    return new Quarter(value);

  function new(value : Float)
    this = value;
  @:op( -A ) inline public function negate() : Quarter
    return -this;
  @:op( A+B) inline public function add(other : Quarter) : Quarter
    return this + other.toFloat();
  @:op( A-B) inline public function subtract(other : Quarter) : Quarter
    return this - other.toFloat();
  @:op( A*B) inline public function multiply(other : Float) : Quarter
    return this * other;
  @:op( A/B) inline public function divide(other : Float) : Quarter
    return this / other;
  @:op( A%B) inline public function modulo(other : Float) : Quarter
    return this % other;
  @:op(A==B) inline public function equal(other : Quarter) : Bool
    return this == other;
  public function nearEqual(other : Quarter) : Bool
    return Floats.nearEqual(this, other.toFloat());
  @:op(A!=B) inline public function notEqual(other : Quarter) : Bool
    return this != other;
  @:op( A<B) inline public function less(other : Quarter) : Bool
    return this < other.toFloat();
  @:op(A<=B) inline public function lessEqual(other : Quarter) : Bool
    return this <= other.toFloat();
  @:op( A>B) inline public function more(other : Quarter) : Bool
    return this > other.toFloat();
  @:op(A>=B) inline public function moreEqual(other : Quarter) : Bool
    return this >= other.toFloat();

  inline public function toFloat() : Float
    return this;

  @:to inline public function toMegagram() : Megagram
    return this * 0.01270058636;
  @:to inline public function toKilogram() : Kilogram
    return this * 12.70058636;
  @:to inline public function toGram() : Gram
    return this * 12700.58636;
  @:to inline public function toCentigram() : Centigram
    return this * 1270058.636;
  @:to inline public function toMilligram() : Milligram
    return this * 12700586.36;
  @:to inline public function toMicrogram() : Microgram
    return this * 12700586360;
  @:to inline public function toNanogram() : Nanogram
    return this * 12700586360000;
  @:to inline public function toPicogram() : Picogram
    return this * 1.270058636e+16;
  @:to inline public function toTon() : Ton
    return this * 0.0125;
  @:to inline public function toHundredweight() : Hundredweight
    return this * 0.25;
  @:to inline public function toStone() : Stone
    return this * 2;
  @:to inline public function toPound() : Pound
    return this * 28;
  @:to inline public function toOunce() : Ounce
    return this * 448;
  @:to inline public function toDrachm() : Drachm
    return this * 7168;
  @:to inline public function toGrain() : Grain
    return this * 196000;
  @:to inline public function toUnifiedAtomicMassUnit() : UnifiedAtomicMassUnit
    return this * 7.64847255272495e+27;
  @:to inline public function toDalton() : Dalton
    return this * 7.64847255272495e+27;
  @:to inline public function toPlankMass() : PlankMass
    return this * 583529887.756087;
  @:to inline public function toSlug() : Slug
    return this * 0.87026660105936;
  @:to inline public function toSolarMass() : SolarMass
    return this * 6.38685794171633e-30;

  @:to inline public function toString() : String
    return this + symbol;

  public static inline var symbol : String = "qr";
}