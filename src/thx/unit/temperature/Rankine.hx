package thx.unit.temperature;

import thx.core.Floats;

// TODO parse string

abstract Rankine(Float) {
  @:from inline static public function floatToRankine(value : Float) : Rankine
    return new Rankine(value);

  function new(value : Float)
    this = value;

  inline public function abs() : Rankine
    return Math.abs(this);

  inline public function min(other : Rankine) : Rankine
    return Math.min(this, other.toFloat());

  inline public function max(other : Rankine) : Rankine
    return Math.max(this, other.toFloat());

  @:op( -A ) inline public function negate() : Rankine
    return -this;
  @:op( A+B) inline public function add(other : Rankine) : Rankine
    return this + other.toFloat();
  @:op( A-B) inline public function subtract(other : Rankine) : Rankine
    return this - other.toFloat();
  @:op( A*B) inline public function multiply(other : Float) : Rankine
    return this * other;
  @:op( A/B) inline public function divide(other : Float) : Rankine
    return this / other;
  @:op( A%B) inline public function modulo(other : Float) : Rankine
    return this % other;
  @:op(A==B) inline public function equal(other : Rankine) : Bool
    return this == other;
  public function nearEquals(other : Rankine) : Bool
    return Floats.nearEquals(this, other.toFloat());
  @:op(A!=B) inline public function notEqual(other : Rankine) : Bool
    return this != other;
  @:op( A<B) inline public function less(other : Rankine) : Bool
    return this < other.toFloat();
  @:op(A<=B) inline public function lessEqual(other : Rankine) : Bool
    return this <= other.toFloat();
  @:op( A>B) inline public function more(other : Rankine) : Bool
    return this > other.toFloat();
  @:op(A>=B) inline public function moreEqual(other : Rankine) : Bool
    return this >= other.toFloat();

  @:to inline public function toFloat() : Float
    return this;

  @:to inline public function toCelsius() : Celsius
    return (this - 491.67) * 5/9;

  @:to inline public function toFahrenheit() : Fahrenheit
    return toCelsius().toFahrenheit();
  @:to inline public function toKelvin() : Kelvin
    return toCelsius().toKelvin();
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

  public static inline var symbol : String = "°R";
}