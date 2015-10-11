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

  inline public function min(that : Kelvin) : Kelvin
    return Math.min(this, that.toFloat());

  inline public function max(that : Kelvin) : Kelvin
    return Math.max(this, that.toFloat());

  @:op( -A ) inline public function negate() : Kelvin
    return -this;
  @:op( A+B) inline public function add(that : Kelvin) : Kelvin
    return this + that.toFloat();
  @:op( A-B) inline public function subtract(that : Kelvin) : Kelvin
    return this - that.toFloat();
  @:op( A*B) inline public function multiply(that : Float) : Kelvin
    return this * that;
  @:op( A/B) inline public function divide(that : Float) : Kelvin
    return this / that;
  @:op( A%B) inline public function modulo(that : Float) : Kelvin
    return this % that;
  @:op(A==B) inline public function equal(that : Kelvin) : Bool
    return this == that;
  public function nearEquals(that : Kelvin) : Bool
    return Floats.nearEquals(this, that.toFloat());
  @:op(A!=B) inline public function notEqual(that : Kelvin) : Bool
    return this != that;
  @:op( A<B) inline public function less(that : Kelvin) : Bool
    return this < that.toFloat();
  @:op(A<=B) inline public function lessEqual(that : Kelvin) : Bool
    return this <= that.toFloat();
  @:op( A>B) inline public function more(that : Kelvin) : Bool
    return this > that.toFloat();
  @:op(A>=B) inline public function moreEqual(that : Kelvin) : Bool
    return this >= that.toFloat();

  @:to inline public function toFloat() : Float
    return this;

  @:to inline public function toCelsius() : Celsius
    return this - 273.15;

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
  @:to inline public function toRomer() : Romer
    return toCelsius().toRomer();

  @:to inline public function toString() : String
    return this + symbol;

  public static inline var symbol : String = "K";
}
