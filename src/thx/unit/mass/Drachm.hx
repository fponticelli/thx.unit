package thx.unit.mass;

abstract Drachm(Float) {
  @:from inline static public function floatToDrachm(value : Float) : Drachm
    return new Drachm(value);

  function new(value : Float)
    this = value;
  @:op(  -A) inline public function negate() : Drachm
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

  inline public function toFloat() : Float
    return this;

  @:to inline public function toKilogram() : Kilogram
    return this * 1.7718451953125;
  @:to inline public function toGram() : Gram
    return this * 1771.8451953125;
  @:to inline public function toMilligram() : Milligram
    return this * 1771845.1953125;
  @:to inline public function toTon() : Ton
    return this * 0.00174386160714286;
  @:to inline public function toHundredweight() : Hundredweight
    return this * 0.0348772321428571;
  @:to inline public function toQuarter() : Quarter
    return this * 0.139508928571429;
  @:to inline public function toStone() : Stone
    return this * 0.279017857142857;
  @:to inline public function toPound() : Pound
    return this * 3.90625;
  @:to inline public function toOunce() : Ounce
    return this * inf;
  @:to inline public function toGrain() : Grain
    return this * 27343.75;

  @:to inline public function toString() : String
    return this + symbol;

  public static inline var symbol : String = "dr";
}