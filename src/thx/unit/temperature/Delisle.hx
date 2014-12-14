package thx.unit.temperature;

import thx.core.Floats;

// TODO parse string

abstract Delisle(Float) {
  @:from inline static public function floatToDelisle(value : Float) : Delisle
    return new Delisle(value);

  function new(value : Float)
    this = value;

  inline public function abs() : Delisle
    return Math.abs(this);

  inline public function min(other : Delisle) : Delisle
    return Math.min(this, other.toFloat());

  inline public function max(other : Delisle) : Delisle
    return Math.max(this, other.toFloat());

  @:op( -A ) inline public function negate() : Delisle
    return -this;
  @:op( A+B) inline public function add(other : Delisle) : Delisle
    return this + other.toFloat();
  @:op( A-B) inline public function subtract(other : Delisle) : Delisle
    return this - other.toFloat();
  @:op( A*B) inline public function multiply(other : Float) : Delisle
    return this * other;
  @:op( A/B) inline public function divide(other : Float) : Delisle
    return this / other;
  @:op( A%B) inline public function modulo(other : Float) : Delisle
    return this % other;
  @:op(A==B) inline public function equal(other : Delisle) : Bool
    return this == other;
  public function nearEquals(other : Delisle) : Bool
    return Floats.nearEquals(this, other.toFloat());
  @:op(A!=B) inline public function notEqual(other : Delisle) : Bool
    return this != other;
  @:op( A<B) inline public function less(other : Delisle) : Bool
    return this < other.toFloat();
  @:op(A<=B) inline public function lessEqual(other : Delisle) : Bool
    return this <= other.toFloat();
  @:op( A>B) inline public function more(other : Delisle) : Bool
    return this > other.toFloat();
  @:op(A>=B) inline public function moreEqual(other : Delisle) : Bool
    return this >= other.toFloat();

  @:to inline public function toFloat() : Float
    return this;

  @:to inline public function toCelsius() : Celsius
    return 100 - this * 2/3;

  @:to inline public function toFahrenheit() : Fahrenheit
    return toCelsius().toFahrenheit();
  @:to inline public function toKelvin() : Kelvin
    return toCelsius().toKelvin();
  @:to inline public function toRankine() : Rankine
    return toCelsius().toRankine();
  @:to inline public function toNewton() : Newton
    return toCelsius().toNewton();
  @:to inline public function toReaumur() : Reaumur
    return toCelsius().toReaumur();
  @:to inline public function toRomer() : Romer
    return toCelsius().toRomer();

  @:to inline public function toString() : String
    return this + symbol;

  public static inline var symbol : String = "°De";
}