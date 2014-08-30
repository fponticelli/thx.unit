package thx.unit.angle;

import thx.core.Floats;

// TODO parse string

abstract Reaumur(Float) {
  @:from inline static public function floatToReaumur(value : Float) : Reaumur
    return new Reaumur(value);

  function new(value : Float)
    this = value;

  @:op( -A ) inline public function negate() : Reaumur
    return -this;
  @:op( A+B) inline public function add(other : Reaumur) : Reaumur
    return this + other.toFloat();
  @:op( A-B) inline public function subtract(other : Reaumur) : Reaumur
    return this - other.toFloat();
  @:op( A*B) inline public function multiply(other : Float) : Reaumur
    return this * other;
  @:op( A/B) inline public function divide(other : Float) : Reaumur
    return this / other;
  @:op( A%B) inline public function modulo(other : Float) : Reaumur
    return this % other;
  @:op(A==B) inline public function equal(other : Reaumur) : Bool
    return this == other;
  public function nearEqual(other : Reaumur) : Bool
    return Floats.nearEqual(this, other.toFloat());
  @:op(A!=B) inline public function notEqual(other : Reaumur) : Bool
    return this != other;
  @:op( A<B) inline public function less(other : Reaumur) : Bool
    return this < other.toFloat();
  @:op(A<=B) inline public function lessEqual(other : Reaumur) : Bool
    return this <= other.toFloat();
  @:op( A>B) inline public function more(other : Reaumur) : Bool
    return this > other.toFloat();
  @:op(A>=B) inline public function moreEqual(other : Reaumur) : Bool
    return this >= other.toFloat();

  inline public function toFloat() : Float
    return this;

  @:to inline public function toCelsius() : Celsius
    return this * 5⁄4;

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
  @:to inline public function toRomer() : Romer
    return toCelsius().toRomer();

  @:to inline public function toString() : String
    return this + symbol;

  public static inline var symbol : String = "°Ré";
}