package thx.unit.mass;

abstract Grain(Float) {
  @:from inline static public function floatToGrain(value : Float) : Grain
    return new Grain(value);

  function new(value : Float)
    this = value;
  @:op(  -A) inline public function negate() : Grain
    return -this;
  @:op( A+B) inline public function add(other : Grain) : Grain
    return this + other.toFloat();
  @:op( A-B) inline public function subtract(other : Grain) : Grain
    return this - other.toFloat();
  @:op( A*B) inline public function multiply(other : Float) : Grain
    return this * other;
  @:op( A/B) inline public function divide(other : Float) : Grain
    return this / other;
  @:op( A%B) inline public function modulo(other : Float) : Grain
    return this % other;
  @:op(A==B) inline public function equal(other : Grain) : Bool
    return this == other;
  @:op(A!=B) inline public function notEqual(other : Grain) : Bool
    return this != other;
  @:op( A<B) inline public function less(other : Grain) : Bool
    return this < other.toFloat();
  @:op(A<=B) inline public function lessEqual(other : Grain) : Bool
    return this <= other.toFloat();
  @:op( A>B) inline public function more(other : Grain) : Bool
    return this > other.toFloat();
  @:op(A>=B) inline public function moreEqual(other : Grain) : Bool
    return this >= other.toFloat();

  inline public function toFloat() : Float
    return this;

  @:to inline public function toKilogram() : Kilogram
    return this * 6.479891e-05;
  @:to inline public function toGram() : Gram
    return this * 0.06479891;
  @:to inline public function toMilligram() : Milligram
    return this * 64.79891;
  @:to inline public function toTon() : Ton
    return this * 6.37755102040816e-08;
  @:to inline public function toHundredweight() : Hundredweight
    return this * 1.27551020408163e-06;
  @:to inline public function toQuarter() : Quarter
    return this * 5.10204081632653e-06;
  @:to inline public function toStone() : Stone
    return this * 1.02040816326531e-05;
  @:to inline public function toPound() : Pound
    return this * 0.000142857142857143;
  @:to inline public function toOunce() : Ounce
    return this * inf;
  @:to inline public function toDrachm() : Drachm
    return this * 3.65714285714286e-05;

  @:to inline public function toString() : String
    return this + symbol;

  public static inline var symbol : String = "gr";
}