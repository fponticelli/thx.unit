package thx.unit.mass;

import thx.core.Floats;

// TODO parse string

abstract Stone(Float) {
  @:from inline static public function floatToStone(value : Float) : Stone
    return new Stone(value);

  function new(value : Float)
    this = value;
  @:op( -A ) inline public function negate() : Stone
    return -this;
  @:op( A+B) inline public function add(other : Stone) : Stone
    return this + other.toFloat();
  @:op( A-B) inline public function subtract(other : Stone) : Stone
    return this - other.toFloat();
  @:op( A*B) inline public function multiply(other : Float) : Stone
    return this * other;
  @:op( A/B) inline public function divide(other : Float) : Stone
    return this / other;
  @:op( A%B) inline public function modulo(other : Float) : Stone
    return this % other;
  @:op(A==B) inline public function equal(other : Stone) : Bool
    return this == other;
  public function nearEqual(other : Stone) : Bool
    return Floats.nearEqual(this, other.toFloat());
  @:op(A!=B) inline public function notEqual(other : Stone) : Bool
    return this != other;
  @:op( A<B) inline public function less(other : Stone) : Bool
    return this < other.toFloat();
  @:op(A<=B) inline public function lessEqual(other : Stone) : Bool
    return this <= other.toFloat();
  @:op( A>B) inline public function more(other : Stone) : Bool
    return this > other.toFloat();
  @:op(A>=B) inline public function moreEqual(other : Stone) : Bool
    return this >= other.toFloat();

  @:to inline public function toFloat() : Float
    return this;

  @:to inline public function toMegagram() : Megagram
    return this * 0.00635029318;
  @:to inline public function toKilogram() : Kilogram
    return this * 6.35029318;
  @:to inline public function toGram() : Gram
    return this * 6350.29318;
  @:to inline public function toCentigram() : Centigram
    return this * 635029.318;
  @:to inline public function toMilligram() : Milligram
    return this * 6350293.18;
  @:to inline public function toMicrogram() : Microgram
    return this * 6350293180;
  @:to inline public function toNanogram() : Nanogram
    return this * 6350293180000;
  @:to inline public function toPicogram() : Picogram
    return this * 6.35029318e+15;
  @:to inline public function toTon() : Ton
    return this * 0.00625;
  @:to inline public function toHundredweight() : Hundredweight
    return this * 0.125;
  @:to inline public function toQuarter() : Quarter
    return this * 0.5;
  @:to inline public function toPound() : Pound
    return this * 14;
  @:to inline public function toOunce() : Ounce
    return this * 224;
  @:to inline public function toDrachm() : Drachm
    return this * 3584;
  @:to inline public function toGrain() : Grain
    return this * 98000;
  @:to inline public function toUnifiedAtomicMassUnit() : UnifiedAtomicMassUnit
    return this * 3.82423627636247e+27;
  @:to inline public function toDalton() : Dalton
    return this * 3.82423627636247e+27;
  @:to inline public function toPlankMass() : PlankMass
    return this * 291764943.878043;
  @:to inline public function toSlug() : Slug
    return this * 0.43513330052968;
  @:to inline public function toSolarMass() : SolarMass
    return this * 3.19342897085816e-30;

  @:to inline public function toString() : String
    return this + symbol;

  public static inline var symbol : String = "st";
}