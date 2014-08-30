package thx.unit.mass;

abstract Quarter(Float) {
  @:from inline static public function floatToQuarter(value : Float) : Quarter
    return new Quarter(value);

  function new(value : Float)
    this = value;
  @:op(  -A) inline public function negate() : Quarter
    return -this;
  @:op( A+B) inline public function add(other : Quarter) : Quarter
    return this + other.toFloat();
  @:op( A-B) inline public function subtract(other : Quarter) : Quarter
    return this - other.toFloat();
  @:op( A*B) inline public function multiply(other : Float) : Quarter
    return this * other;
  @:op( A/B) inline public function divide(other : Float) : Quarter
    return this / other;
  @:op( A%B) inline public function modulo(other : Float) : Quarter
    return this % other;
  @:op(A==B) inline public function equal(other : Quarter) : Bool
    return this == other;
  @:op(A!=B) inline public function notEqual(other : Quarter) : Bool
    return this != other;
  @:op( A<B) inline public function less(other : Quarter) : Bool
    return this < other.toFloat();
  @:op(A<=B) inline public function lessEqual(other : Quarter) : Bool
    return this <= other.toFloat();
  @:op( A>B) inline public function more(other : Quarter) : Bool
    return this > other.toFloat();
  @:op(A>=B) inline public function moreEqual(other : Quarter) : Bool
    return this >= other.toFloat();

  inline public function toFloat() : Float
    return this;

  @:to inline public function toKilogram() : Kilogram
    return this * 12.70058636;
  @:to inline public function toGram() : Gram
    return this * 12700.58636;
  @:to inline public function toMilligram() : Milligram
    return this * 12700586.36;
  @:to inline public function toTon() : Ton
    return this * 0.0125;
  @:to inline public function toHundredweight() : Hundredweight
    return this * 0.25;
  @:to inline public function toStone() : Stone
    return this * 2;
  @:to inline public function toPound() : Pound
    return this * 28;
  @:to inline public function toOunce() : Ounce
    return this * inf;
  @:to inline public function toDrachm() : Drachm
    return this * 7.168;
  @:to inline public function toGrain() : Grain
    return this * 196000;

  @:to inline public function toString() : String
    return this + symbol;

  public static inline var symbol : String = "qr";
}