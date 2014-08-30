package thx.unit.mass;

abstract Ton(Float) {
  @:from inline static public function floatToTon(value : Float) : Ton
    return new Ton(value);

  function new(value : Float)
    this = value;
  @:op(  -A) inline public function negate() : Ton
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

  inline public function toFloat() : Float
    return this;

  @:to inline public function toKilogram() : Kilogram
    return this * 1016.0469088;
  @:to inline public function toGram() : Gram
    return this * 1016046.9088;
  @:to inline public function toMilligram() : Milligram
    return this * 1016046908.8;
  @:to inline public function toHundredweight() : Hundredweight
    return this * 20;
  @:to inline public function toQuarter() : Quarter
    return this * 80;
  @:to inline public function toStone() : Stone
    return this * 160;
  @:to inline public function toPound() : Pound
    return this * 2240;
  @:to inline public function toOunce() : Ounce
    return this * inf;
  @:to inline public function toDrachm() : Drachm
    return this * 573.44;
  @:to inline public function toGrain() : Grain
    return this * 15680000;

  @:to inline public function toString() : String
    return this + symbol;

  public static inline var symbol : String = "t";
}