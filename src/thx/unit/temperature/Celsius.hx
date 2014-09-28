package thx.unit.temperature;

import thx.core.Floats;

// TODO parse string

abstract Celsius(Float) {
  @:from inline static public function floatToCelsius(value : Float) : Celsius
    return new Celsius(value);

  function new(value : Float)
    this = value;

  @:op( -A ) inline public function negate() : Celsius
    return -this;
  @:op( A+B) inline public function add(other : Celsius) : Celsius
    return this + other.toFloat();
  @:op( A-B) inline public function subtract(other : Celsius) : Celsius
    return this - other.toFloat();
  @:op( A*B) inline public function multiply(other : Float) : Celsius
    return this * other;
  @:op( A/B) inline public function divide(other : Float) : Celsius
    return this / other;
  @:op( A%B) inline public function modulo(other : Float) : Celsius
    return this % other;
  @:op(A==B) inline public function equal(other : Celsius) : Bool
    return this == other;
  public function nearEquals(other : Celsius) : Bool
    return Floats.nearEquals(this, other.toFloat());
  @:op(A!=B) inline public function notEqual(other : Celsius) : Bool
    return this != other;
  @:op( A<B) inline public function less(other : Celsius) : Bool
    return this < other.toFloat();
  @:op(A<=B) inline public function lessEqual(other : Celsius) : Bool
    return this <= other.toFloat();
  @:op( A>B) inline public function more(other : Celsius) : Bool
    return this > other.toFloat();
  @:op(A>=B) inline public function moreEqual(other : Celsius) : Bool
    return this >= other.toFloat();

  @:to inline public function toFloat() : Float
    return this;

  @:to inline public function toFahrenheit() : Fahrenheit
    return this * 9/5 + 32;
  @:to inline public function toKelvin() : Kelvin
    return this + 273.15;
  @:to inline public function toRankine() : Rankine
    return (this + 273.15) * 9/5;
  @:to inline public function toDelisle() : Delisle
    return (100 - this) * 3/2;
  @:to inline public function toNewton() : Newton
    return this * 33/100;
  @:to inline public function toReaumur() : Reaumur
    return this * 4/5;
  @:to inline public function toRomer() : Romer
    return this * 21/40 + 7.5;


  @:to inline public function toString() : String
    return this + symbol;

  public static inline var symbol : String = "°C";
}