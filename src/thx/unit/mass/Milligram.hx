package thx.unit.mass;

abstract Milligram(Float) {
  @:from inline static public function floatToMilligram(value : Float) : Milligram
    return new Milligram(value);

  function new(value : Float)
    this = value;
  @:op(  -A) inline public function negate() : Milligram
    return -this;
  @:op( A+B) inline public function add(other : Milligram) : Milligram
    return this + other.toFloat();
  @:op( A-B) inline public function subtract(other : Milligram) : Milligram
    return this - other.toFloat();
  @:op( A*B) inline public function multiply(other : Float) : Milligram
    return this * other;
  @:op( A/B) inline public function divide(other : Float) : Milligram
    return this / other;
  @:op( A%B) inline public function modulo(other : Float) : Milligram
    return this % other;
  @:op(A==B) inline public function equal(other : Milligram) : Bool
    return this == other;
  @:op(A!=B) inline public function notEqual(other : Milligram) : Bool
    return this != other;
  @:op( A<B) inline public function less(other : Milligram) : Bool
    return this < other.toFloat();
  @:op(A<=B) inline public function lessEqual(other : Milligram) : Bool
    return this <= other.toFloat();
  @:op( A>B) inline public function more(other : Milligram) : Bool
    return this > other.toFloat();
  @:op(A>=B) inline public function moreEqual(other : Milligram) : Bool
    return this >= other.toFloat();

  inline public function toFloat() : Float
    return this;

  @:to inline public function toKilogram() : Kilogram
    return this * 1e-06;
  @:to inline public function toGram() : Gram
    return this * 0.001;
  @:to inline public function toTon() : Ton
    return this * 9.84206527611061e-10;
  @:to inline public function toHundredweight() : Hundredweight
    return this * 1.96841305522212e-08;
  @:to inline public function toQuarter() : Quarter
    return this * 7.87365222088848e-08;
  @:to inline public function toStone() : Stone
    return this * 1.5747304441777e-07;
  @:to inline public function toPound() : Pound
    return this * 2.20462262184878e-06;
  @:to inline public function toOunce() : Ounce
    return this * inf;
  @:to inline public function toDrachm() : Drachm
    return this * 5.64383391193287e-07;
  @:to inline public function toGrain() : Grain
    return this * 0.0154323583529414;

  @:to inline public function toString() : String
    return this + symbol;

  public static inline var symbol : String = "mg";
}