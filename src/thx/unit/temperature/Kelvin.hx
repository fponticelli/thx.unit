package thx.unit.temperature;

import thx.Floats;

// TODO parse string

abstract Kelvin(Float) {
  @:from inline static public function floatToKelvin(value : Float) : Kelvin
    return new Kelvin(value);

  function new(value : Float)
    this = value;

  inline public function abs() : Kelvin
    return Math.abs(this);

  inline public function min(other : Kelvin) : Kelvin
    return Math.min(this, other.toFloat());

  inline public function max(other : Kelvin) : Kelvin
    return Math.max(this, other.toFloat());

  @:op( -A ) inline public function negate() : Kelvin
    return -this;
  @:op( A+B) inline public function add(other : Kelvin) : Kelvin
    return this + other.toFloat();
  @:op( A-B) inline public function subtract(other : Kelvin) : Kelvin
    return this - other.toFloat();
  @:op( A*B) inline public function multiply(other : Float) : Kelvin
    return this * other;
  @:op( A/B) inline public function divide(other : Float) : Kelvin
    return this / other;
  @:op( A%B) inline public function modulo(other : Float) : Kelvin
    return this % other;
  @:op(A==B) inline public function equal(other : Kelvin) : Bool
    return this == other;
  public function nearEquals(other : Kelvin) : Bool
    return Floats.nearEquals(this, other.toFloat());
  @:op(A!=B) inline public function notEqual(other : Kelvin) : Bool
    return this != other;
  @:op( A<B) inline public function less(other : Kelvin) : Bool
    return this < other.toFloat();
  @:op(A<=B) inline public function lessEqual(other : Kelvin) : Bool
    return this <= other.toFloat();
  @:op( A>B) inline public function more(other : Kelvin) : Bool
    return this > other.toFloat();
  @:op(A>=B) inline public function moreEqual(other : Kelvin) : Bool
    return this >= other.toFloat();

  @:to inline public function toFloat() : Float
    return this;

  @:to inline public function toCelsius() : Celsius
    return this - 273.15;

  @:to inline public function toFahrenheit() : Fahrenheit
    return toCelsius().toFahrenheit();
  @:to inline public function toRankine() : Rankine
    return toCelsius().toRankine();
  @:to inline public function toDelisle() : Delisle
    return toCelsius().toDelisle();
  @:to inline public function toNewton() : Newton
    return toCelsius().toNewton();
  @:to inline public function toReaumur() : Reaumur
    return toCelsius().toReaumur();
  @:to inline public function toRomer() : Romer
    return toCelsius().toRomer();

  @:to inline public function toString() : String
    return this + symbol;

  public static inline var symbol : String = "K";
}