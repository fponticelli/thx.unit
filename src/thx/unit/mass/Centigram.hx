package thx.unit.mass;

// TODO parse string

abstract Centigram(Float) {
  @:from inline static public function floatToCentigram(value : Float) : Centigram
    return new Centigram(value);

  function new(value : Float)
    this = value;
  @:op( -A ) inline public function negate() : Centigram
    return -this;
  @:op( A+B) inline public function add(other : Centigram) : Centigram
    return this + other.toFloat();
  @:op( A-B) inline public function subtract(other : Centigram) : Centigram
    return this - other.toFloat();
  @:op( A*B) inline public function multiply(other : Float) : Centigram
    return this * other;
  @:op( A/B) inline public function divide(other : Float) : Centigram
    return this / other;
  @:op( A%B) inline public function modulo(other : Float) : Centigram
    return this % other;
  @:op(A==B) inline public function equal(other : Centigram) : Bool
    return this == other;
  @:op(A!=B) inline public function notEqual(other : Centigram) : Bool
    return this != other;
  @:op( A<B) inline public function less(other : Centigram) : Bool
    return this < other.toFloat();
  @:op(A<=B) inline public function lessEqual(other : Centigram) : Bool
    return this <= other.toFloat();
  @:op( A>B) inline public function more(other : Centigram) : Bool
    return this > other.toFloat();
  @:op(A>=B) inline public function moreEqual(other : Centigram) : Bool
    return this >= other.toFloat();

  inline public function toFloat() : Float
    return this;

  @:to inline public function toMegagram() : Megagram
    return this * 1e-08;
  @:to inline public function toKilogram() : Kilogram
    return this * 1e-05;
  @:to inline public function toGram() : Gram
    return this * 0.01;
  @:to inline public function toMilligram() : Milligram
    return this * 10;
  @:to inline public function toMicrogram() : Microgram
    return this * 10000;
  @:to inline public function toNanogram() : Nanogram
    return this * 10000000;
  @:to inline public function toPicogram() : Picogram
    return this * 10000000000;
  @:to inline public function toTon() : Ton
    return this * 9.84206527611061e-09;
  @:to inline public function toHundredweight() : Hundredweight
    return this * 1.96841305522212e-07;
  @:to inline public function toQuarter() : Quarter
    return this * 7.87365222088848e-07;
  @:to inline public function toStone() : Stone
    return this * 1.5747304441777e-06;
  @:to inline public function toPound() : Pound
    return this * 2.20462262184878e-05;
  @:to inline public function toOunce() : Ounce
    return this * 0.000352739619495804;
  @:to inline public function toDrachm() : Drachm
    return this * 0.00564383391193287;
  @:to inline public function toGrain() : Grain
    return this * 0.154323583529414;
  @:to inline public function toUnifiedAtomicMassUnit() : UnifiedAtomicMassUnit
    return this * 6.02214129011674e+21;
  @:to inline public function toDalton() : Dalton
    return this * 6.02214129011674e+21;
  @:to inline public function toPlankMass() : PlankMass
    return this * 459.451139668552;
  @:to inline public function toSlug() : Slug
    return this * 6.85217655619611e-07;
  @:to inline public function toSolarMass() : SolarMass
    return this * 5.0287898217294e-36;

  @:to inline public function toString() : String
    return this + symbol;

  public static inline var symbol : String = "cg";
}