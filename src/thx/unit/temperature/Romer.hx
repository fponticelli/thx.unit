package thx.unit.temperature;

import thx.core.Floats;

// TODO parse string

abstract Romer(Float) {
  @:from inline static public function floatToRomer(value : Float) : Romer
    return new Romer(value);

  function new(value : Float)
    this = value;

  @:op( -A ) inline public function negate() : Romer
    return -this;
  @:op( A+B) inline public function add(other : Romer) : Romer
    return this + other.toFloat();
  @:op( A-B) inline public function subtract(other : Romer) : Romer
    return this - other.toFloat();
  @:op( A*B) inline public function multiply(other : Float) : Romer
    return this * other;
  @:op( A/B) inline public function divide(other : Float) : Romer
    return this / other;
  @:op( A%B) inline public function modulo(other : Float) : Romer
    return this % other;
  @:op(A==B) inline public function equal(other : Romer) : Bool
    return this == other;
  public function nearEqual(other : Romer) : Bool
    return Floats.nearEqual(this, other.toFloat());
  @:op(A!=B) inline public function notEqual(other : Romer) : Bool
    return this != other;
  @:op( A<B) inline public function less(other : Romer) : Bool
    return this < other.toFloat();
  @:op(A<=B) inline public function lessEqual(other : Romer) : Bool
    return this <= other.toFloat();
  @:op( A>B) inline public function more(other : Romer) : Bool
    return this > other.toFloat();
  @:op(A>=B) inline public function moreEqual(other : Romer) : Bool
    return this >= other.toFloat();

  inline public function toFloat() : Float
    return this;

  @:to inline public function toCelsius() : Celsius
    return (this - 7.5) * 40/21;

  @:to inline public function toFahrenheit() : Fahrenheit
    return toCelsius().toFahrenheit();
  @:to inline public function toKelvin() : Kelvin
    return toCelsius().toKelvin();
  @:to inline public function toRankine() : Rankine
    return toCelsius().toRankine();
  @:to inline public function toDelisle() : Delisle
    return toCelsius().toDelisle();
  @:to inline public function toNewton() : Newton
    return toCelsius().toNewton();
  @:to inline public function toReaumur() : Reaumur
    return toCelsius().toReaumur();

  @:to inline public function toString() : String
    return this + symbol;

  public static inline var symbol : String = "°Rø";
}