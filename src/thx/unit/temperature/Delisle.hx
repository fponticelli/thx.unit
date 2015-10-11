package thx.unit.temperature;

import thx.Floats;

// TODO parse string

abstract Delisle(Float) {
  @:from inline static public function floatToDelisle(value : Float) : Delisle
    return new Delisle(value);

  function new(value : Float)
    this = value;

  inline public function abs() : Delisle
    return Math.abs(this);

  inline public function min(that : Delisle) : Delisle
    return Math.min(this, that.toFloat());

  inline public function max(that : Delisle) : Delisle
    return Math.max(this, that.toFloat());

  @:op( -A ) inline public function negate() : Delisle
    return -this;
  @:op( A+B) inline public function add(that : Delisle) : Delisle
    return this + that.toFloat();
  @:op( A-B) inline public function subtract(that : Delisle) : Delisle
    return this - that.toFloat();
  @:op( A*B) inline public function multiply(that : Float) : Delisle
    return this * that;
  @:op( A/B) inline public function divide(that : Float) : Delisle
    return this / that;
  @:op( A%B) inline public function modulo(that : Float) : Delisle
    return this % that;
  @:op(A==B) inline public function equal(that : Delisle) : Bool
    return this == that;
  public function nearEquals(that : Delisle) : Bool
    return Floats.nearEquals(this, that.toFloat());
  @:op(A!=B) inline public function notEqual(that : Delisle) : Bool
    return this != that;
  @:op( A<B) inline public function less(that : Delisle) : Bool
    return this < that.toFloat();
  @:op(A<=B) inline public function lessEqual(that : Delisle) : Bool
    return this <= that.toFloat();
  @:op( A>B) inline public function more(that : Delisle) : Bool
    return this > that.toFloat();
  @:op(A>=B) inline public function moreEqual(that : Delisle) : Bool
    return this >= that.toFloat();

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

  public static inline var symbol : String = "°De";
}
