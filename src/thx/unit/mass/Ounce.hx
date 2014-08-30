package thx.unit.mass;

import thx.core.Floats;

// TODO parse string

abstract Ounce(Float) {
  @:from inline static public function floatToOunce(value : Float) : Ounce
    return new Ounce(value);

  function new(value : Float)
    this = value;
  @:op( -A ) inline public function negate() : Ounce
    return -this;
  @:op( A+B) inline public function add(other : Ounce) : Ounce
    return this + other.toFloat();
  @:op( A-B) inline public function subtract(other : Ounce) : Ounce
    return this - other.toFloat();
  @:op( A*B) inline public function multiply(other : Float) : Ounce
    return this * other;
  @:op( A/B) inline public function divide(other : Float) : Ounce
    return this / other;
  @:op( A%B) inline public function modulo(other : Float) : Ounce
    return this % other;
  @:op(A==B) inline public function equal(other : Ounce) : Bool
    return this == other;
  public function nearEqual(other : Ounce) : Bool
    return Floats.nearEqual(this, other.toFloat());
  @:op(A!=B) inline public function notEqual(other : Ounce) : Bool
    return this != other;
  @:op( A<B) inline public function less(other : Ounce) : Bool
    return this < other.toFloat();
  @:op(A<=B) inline public function lessEqual(other : Ounce) : Bool
    return this <= other.toFloat();
  @:op( A>B) inline public function more(other : Ounce) : Bool
    return this > other.toFloat();
  @:op(A>=B) inline public function moreEqual(other : Ounce) : Bool
    return this >= other.toFloat();

  inline public function toFloat() : Float
    return this;

  @:to inline public function toMegagram() : Megagram
    return this * 2.8349523125e-05;
  @:to inline public function toKilogram() : Kilogram
    return this * 0.028349523125;
  @:to inline public function toGram() : Gram
    return this * 28.349523125;
  @:to inline public function toCentigram() : Centigram
    return this * 2834.9523125;
  @:to inline public function toMilligram() : Milligram
    return this * 28349.523125;
  @:to inline public function toMicrogram() : Microgram
    return this * 28349523.125;
  @:to inline public function toNanogram() : Nanogram
    return this * 28349523125;
  @:to inline public function toPicogram() : Picogram
    return this * 28349523125000;
  @:to inline public function toTon() : Ton
    return this * 2.79017857142857e-05;
  @:to inline public function toHundredweight() : Hundredweight
    return this * 0.000558035714285714;
  @:to inline public function toQuarter() : Quarter
    return this * 0.00223214285714286;
  @:to inline public function toStone() : Stone
    return this * 0.00446428571428571;
  @:to inline public function toPound() : Pound
    return this * 0.0625;
  @:to inline public function toDrachm() : Drachm
    return this * 16;
  @:to inline public function toGrain() : Grain
    return this * 437.5;
  @:to inline public function toUnifiedAtomicMassUnit() : UnifiedAtomicMassUnit
    return this * 1.70724833766182e+25;
  @:to inline public function toDalton() : Dalton
    return this * 1.70724833766182e+25;
  @:to inline public function toPlankMass() : PlankMass
    return this * 1302522.07088412;
  @:to inline public function toSlug() : Slug
    return this * 0.00194255937736464;
  @:to inline public function toSolarMass() : SolarMass
    return this * 1.42563793341882e-32;

  @:to inline public function toString() : String
    return this + symbol;

  public static inline var symbol : String = "oz";
}