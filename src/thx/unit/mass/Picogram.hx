package thx.unit.mass;

// TODO parse string

abstract Picogram(Float) {
  @:from inline static public function floatToPicogram(value : Float) : Picogram
    return new Picogram(value);

  function new(value : Float)
    this = value;
  @:op( -A ) inline public function negate() : Picogram
    return -this;
  @:op( A+B) inline public function add(other : Picogram) : Picogram
    return this + other.toFloat();
  @:op( A-B) inline public function subtract(other : Picogram) : Picogram
    return this - other.toFloat();
  @:op( A*B) inline public function multiply(other : Float) : Picogram
    return this * other;
  @:op( A/B) inline public function divide(other : Float) : Picogram
    return this / other;
  @:op( A%B) inline public function modulo(other : Float) : Picogram
    return this % other;
  @:op(A==B) inline public function equal(other : Picogram) : Bool
    return this == other;
  @:op(A!=B) inline public function notEqual(other : Picogram) : Bool
    return this != other;
  @:op( A<B) inline public function less(other : Picogram) : Bool
    return this < other.toFloat();
  @:op(A<=B) inline public function lessEqual(other : Picogram) : Bool
    return this <= other.toFloat();
  @:op( A>B) inline public function more(other : Picogram) : Bool
    return this > other.toFloat();
  @:op(A>=B) inline public function moreEqual(other : Picogram) : Bool
    return this >= other.toFloat();

  inline public function toFloat() : Float
    return this;

  @:to inline public function toMegagram() : Megagram
    return this * 1e-18;
  @:to inline public function toKilogram() : Kilogram
    return this * 1e-15;
  @:to inline public function toGram() : Gram
    return this * 1e-12;
  @:to inline public function toCentigram() : Centigram
    return this * 1e-10;
  @:to inline public function toMilligram() : Milligram
    return this * 1e-09;
  @:to inline public function toMicrogram() : Microgram
    return this * 1e-06;
  @:to inline public function toNanogram() : Nanogram
    return this * 0.001;
  @:to inline public function toTon() : Ton
    return this * 9.84206527611061e-19;
  @:to inline public function toHundredweight() : Hundredweight
    return this * 1.96841305522212e-17;
  @:to inline public function toQuarter() : Quarter
    return this * 7.87365222088849e-17;
  @:to inline public function toStone() : Stone
    return this * 1.5747304441777e-16;
  @:to inline public function toPound() : Pound
    return this * 2.20462262184878e-15;
  @:to inline public function toOunce() : Ounce
    return this * 3.52739619495804e-14;
  @:to inline public function toDrachm() : Drachm
    return this * 5.64383391193287e-13;
  @:to inline public function toGrain() : Grain
    return this * 1.54323583529414e-11;
  @:to inline public function toUnifiedAtomicMassUnit() : UnifiedAtomicMassUnit
    return this * 602214129011.674;
  @:to inline public function toDalton() : Dalton
    return this * 602214129011.674;
  @:to inline public function toPlankMass() : PlankMass
    return this * 4.59451139668552e-08;
  @:to inline public function toSlug() : Slug
    return this * 6.85217655619611e-17;
  @:to inline public function toSolarMass() : SolarMass
    return this * 5.0287898217294e-46;

  @:to inline public function toString() : String
    return this + symbol;

  public static inline var symbol : String = "pg";
}