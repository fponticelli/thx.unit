package thx.unit.mass;

abstract Ounce(Float) {
  @:from inline static public function floatToOunce(value : Float) : Ounce
    return new Ounce(value);

  function new(value : Float)
    this = value;
  @:op(  -A) inline public function negate() : Ounce
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

  @:to inline public function toKilogram() : Kilogram
    return this * 0;
  @:to inline public function toGram() : Gram
    return this * 0;
  @:to inline public function toMilligram() : Milligram
    return this * 0;
  @:to inline public function toTon() : Ton
    return this * 0;
  @:to inline public function toHundredweight() : Hundredweight
    return this * 0;
  @:to inline public function toQuarter() : Quarter
    return this * 0;
  @:to inline public function toStone() : Stone
    return this * 0;
  @:to inline public function toPound() : Pound
    return this * 0;
  @:to inline public function toDrachm() : Drachm
    return this * 0;
  @:to inline public function toGrain() : Grain
    return this * 0;

  @:to inline public function toString() : String
    return this + symbol;

  public static inline var symbol : String = "oz";
}