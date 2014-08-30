package thx.unit.luminousintensity;

import thx.core.Floats;

// TODO parse string

abstract Candlepower(Float) {
  @:from inline static public function floatToCandlepower(value : Float) : Candlepower
    return new Candlepower(value);

  function new(value : Float)
    this = value;
  @:op( -A ) inline public function negate() : Candlepower
    return -this;
  @:op( A+B) inline public function add(other : Candlepower) : Candlepower
    return this + other.toFloat();
  @:op( A-B) inline public function subtract(other : Candlepower) : Candlepower
    return this - other.toFloat();
  @:op( A*B) inline public function multiply(other : Float) : Candlepower
    return this * other;
  @:op( A/B) inline public function divide(other : Float) : Candlepower
    return this / other;
  @:op( A%B) inline public function modulo(other : Float) : Candlepower
    return this % other;
  @:op(A==B) inline public function equal(other : Candlepower) : Bool
    return this == other;
  public function nearEqual(other : Candlepower) : Bool
    return Floats.nearEqual(this, other.toFloat());
  @:op(A!=B) inline public function notEqual(other : Candlepower) : Bool
    return this != other;
  @:op( A<B) inline public function less(other : Candlepower) : Bool
    return this < other.toFloat();
  @:op(A<=B) inline public function lessEqual(other : Candlepower) : Bool
    return this <= other.toFloat();
  @:op( A>B) inline public function more(other : Candlepower) : Bool
    return this > other.toFloat();
  @:op(A>=B) inline public function moreEqual(other : Candlepower) : Bool
    return this >= other.toFloat();

  inline public function toFloat() : Float
    return this;

  @:to inline public function toCandela() : Candela
    return this * 0.981;

  @:to inline public function toString() : String
    return this + symbol;

  public static inline var symbol : String = "cp";
}