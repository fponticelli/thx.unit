package thx.unit.temperature;

import thx.Floats;

// TODO parse string

abstract Newton(Float) {
  @:from inline static public function floatToNewton(value : Float) : Newton
    return new Newton(value);

  function new(value : Float)
    this = value;

  inline public function abs() : Newton
    return Math.abs(this);

  inline public function min(other : Newton) : Newton
    return Math.min(this, other.toFloat());

  inline public function max(other : Newton) : Newton
    return Math.max(this, other.toFloat());

  @:op( -A ) inline public function negate() : Newton
    return -this;
  @:op( A+B) inline public function add(other : Newton) : Newton
    return this + other.toFloat();
  @:op( A-B) inline public function subtract(other : Newton) : Newton
    return this - other.toFloat();
  @:op( A*B) inline public function multiply(other : Float) : Newton
    return this * other;
  @:op( A/B) inline public function divide(other : Float) : Newton
    return this / other;
  @:op( A%B) inline public function modulo(other : Float) : Newton
    return this % other;
  @:op(A==B) inline public function equal(other : Newton) : Bool
    return this == other;
  public function nearEquals(other : Newton) : Bool
    return Floats.nearEquals(this, other.toFloat());
  @:op(A!=B) inline public function notEqual(other : Newton) : Bool
    return this != other;
  @:op( A<B) inline public function less(other : Newton) : Bool
    return this < other.toFloat();
  @:op(A<=B) inline public function lessEqual(other : Newton) : Bool
    return this <= other.toFloat();
  @:op( A>B) inline public function more(other : Newton) : Bool
    return this > other.toFloat();
  @:op(A>=B) inline public function moreEqual(other : Newton) : Bool
    return this >= other.toFloat();

  @:to inline public function toFloat() : Float
    return this;

  @:to inline public function toCelsius() : Celsius
    return this * 100/33;

  @:to inline public function toFahrenheit() : Fahrenheit
    return toCelsius().toFahrenheit();
  @:to inline public function toKelvin() : Kelvin
    return toCelsius().toKelvin();
  @:to inline public function toRankine() : Rankine
    return toCelsius().toRankine();
  @:to inline public function toDelisle() : Delisle
    return toCelsius().toDelisle();
  @:to inline public function toReaumur() : Reaumur
    return toCelsius().toReaumur();
  @:to inline public function toRomer() : Romer
    return toCelsius().toRomer();

  @:to inline public function toString() : String
    return this + symbol;

  public static inline var symbol : String = "°N";
}