package thx.unit.temperature;

import thx.Floats;

// TODO parse string

abstract Romer(Float) {
  @:from inline static public function floatToRomer(value : Float) : Romer
    return new Romer(value);

  function new(value : Float)
    this = value;

  inline public function abs() : Romer
    return Math.abs(this);

  inline public function min(that : Romer) : Romer
    return Math.min(this, that.toFloat());

  inline public function max(that : Romer) : Romer
    return Math.max(this, that.toFloat());

  @:op( -A ) inline public function negate() : Romer
    return -this;
  @:op( A+B) inline public function add(that : Romer) : Romer
    return this + that.toFloat();
  @:op( A-B) inline public function subtract(that : Romer) : Romer
    return this - that.toFloat();
  @:op( A*B) inline public function multiply(that : Float) : Romer
    return this * that;
  @:op( A/B) inline public function divide(that : Float) : Romer
    return this / that;
  @:op( A%B) inline public function modulo(that : Float) : Romer
    return this % that;
  @:op(A==B) inline public function equal(that : Romer) : Bool
    return this == that;
  public function nearEquals(that : Romer) : Bool
    return Floats.nearEquals(this, that.toFloat());
  @:op(A!=B) inline public function notEqual(that : Romer) : Bool
    return this != that;
  @:op( A<B) inline public function less(that : Romer) : Bool
    return this < that.toFloat();
  @:op(A<=B) inline public function lessEqual(that : Romer) : Bool
    return this <= that.toFloat();
  @:op( A>B) inline public function more(that : Romer) : Bool
    return this > that.toFloat();
  @:op(A>=B) inline public function moreEqual(that : Romer) : Bool
    return this >= that.toFloat();

  @:to inline public function toFloat() : Float
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
  @:to inline public function toRomer() : Romer
    return toCelsius().toRomer();

  @:to inline public function toString() : String
    return this + symbol;

  public static inline var symbol : String = "°Rø";
}
