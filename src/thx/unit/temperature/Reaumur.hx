package thx.unit.temperature;

import thx.Floats;

// TODO parse string

abstract Reaumur(Float) {
  @:from inline static public function floatToReaumur(value : Float) : Reaumur
    return new Reaumur(value);

  function new(value : Float)
    this = value;

  inline public function abs() : Reaumur
    return Math.abs(this);

  inline public function min(that : Reaumur) : Reaumur
    return Math.min(this, that.toFloat());

  inline public function max(that : Reaumur) : Reaumur
    return Math.max(this, that.toFloat());

  @:op( -A ) inline public function negate() : Reaumur
    return -this;
  @:op( A+B) inline public function add(that : Reaumur) : Reaumur
    return this + that.toFloat();
  @:op( A-B) inline public function subtract(that : Reaumur) : Reaumur
    return this - that.toFloat();
  @:op( A*B) inline public function multiply(that : Float) : Reaumur
    return this * that;
  @:op( A/B) inline public function divide(that : Float) : Reaumur
    return this / that;
  @:op( A%B) inline public function modulo(that : Float) : Reaumur
    return this % that;
  @:op(A==B) inline public function equal(that : Reaumur) : Bool
    return this == that;
  public function nearEquals(that : Reaumur) : Bool
    return Floats.nearEquals(this, that.toFloat());
  @:op(A!=B) inline public function notEqual(that : Reaumur) : Bool
    return this != that;
  @:op( A<B) inline public function less(that : Reaumur) : Bool
    return this < that.toFloat();
  @:op(A<=B) inline public function lessEqual(that : Reaumur) : Bool
    return this <= that.toFloat();
  @:op( A>B) inline public function more(that : Reaumur) : Bool
    return this > that.toFloat();
  @:op(A>=B) inline public function moreEqual(that : Reaumur) : Bool
    return this >= that.toFloat();

  @:to inline public function toFloat() : Float
    return this;

  @:to inline public function toCelsius() : Celsius
    return this * 5/4;

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

  public static inline var symbol : String = "°Ré";
}
