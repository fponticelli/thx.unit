package thx.unit.mass;

import thx.core.Floats;

// TODO parse string

abstract Ton(Float) {
  @:from inline static public function floatToTon(value : Float) : Ton
    return new Ton(value);

  function new(value : Float)
    this = value;

  inline public function abs() : Ton
    return Math.abs(this);

  inline public function min(other : Ton) : Ton
    return Math.min(this, other.toFloat());

  inline public function max(other : Ton) : Ton
    return Math.max(this, other.toFloat());

  @:op( -A ) inline public function negate() : Ton
    return -this;
  @:op( A+B) inline public function add(other : Ton) : Ton
    return this + other.toFloat();
  @:op( A-B) inline public function subtract(other : Ton) : Ton
    return this - other.toFloat();
  @:op( A*B) inline public function multiply(other : Float) : Ton
    return this * other;
  @:op( A/B) inline public function divide(other : Float) : Ton
    return this / other;
  @:op( A%B) inline public function modulo(other : Float) : Ton
    return this % other;
  @:op(A==B) inline public function equal(other : Ton) : Bool
    return this == other;
  public function nearEquals(other : Ton) : Bool
    return Floats.nearEquals(this, other.toFloat());
  @:op(A!=B) inline public function notEqual(other : Ton) : Bool
    return this != other;
  @:op( A<B) inline public function less(other : Ton) : Bool
    return this < other.toFloat();
  @:op(A<=B) inline public function lessEqual(other : Ton) : Bool
    return this <= other.toFloat();
  @:op( A>B) inline public function more(other : Ton) : Bool
    return this > other.toFloat();
  @:op(A>=B) inline public function moreEqual(other : Ton) : Bool
    return this >= other.toFloat();

  @:to inline public function toFloat() : Float
    return this;

  @:to inline public function toMegagram() : Megagram
    return this * 1.0160469088;
  @:to inline public function toKilogram() : Kilogram
    return this * 1016.0469088;
  @:to inline public function toGram() : Gram
    return this * 1016046.9088;
  @:to inline public function toCentigram() : Centigram
    return this * 101604690.88;
  @:to inline public function toMilligram() : Milligram
    return this * 1016046908.8;
  @:to inline public function toMicrogram() : Microgram
    return this * 1016046908800;
  @:to inline public function toNanogram() : Nanogram
    return this * 1.0160469088e+15;
  @:to inline public function toPicogram() : Picogram
    return this * 1.0160469088e+18;
  @:to inline public function toHundredweight() : Hundredweight
    return this * 20;
  @:to inline public function toQuarter() : Quarter
    return this * 80;
  @:to inline public function toStone() : Stone
    return this * 160;
  @:to inline public function toPound() : Pound
    return this * 2240;
  @:to inline public function toOunce() : Ounce
    return this * 35840;
  @:to inline public function toDrachm() : Drachm
    return this * 573440;
  @:to inline public function toGrain() : Grain
    return this * 15680000;
  @:to inline public function toUnifiedAtomicMassUnit() : UnifiedAtomicMassUnit
    return this * 6.11877804217996e+29;
  @:to inline public function toDalton() : Dalton
    return this * 6.11877804217996e+29;
  @:to inline public function toPlankMass() : PlankMass
    return this * 46682391020.4869;
  @:to inline public function toSlug() : Slug
    return this * 69.6213280847488;
  @:to inline public function toSolarMass() : SolarMass
    return this * 5.10948635337306e-28;

  @:to inline public function toString() : String
    return this + symbol;

  public static inline var symbol : String = "t";
}