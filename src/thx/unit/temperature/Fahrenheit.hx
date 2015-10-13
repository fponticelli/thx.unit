package thx.unit.temperature;

import thx.Floats;

// TODO parse string

abstract Fahrenheit(Float) {
  @:from inline static public function floatToFahrenheit(value : Float) : Fahrenheit
    return new Fahrenheit(value);

  function new(value : Float)
    this = value;

  inline public function abs() : Fahrenheit
    return Math.abs(this);

  inline public function min(that : Fahrenheit) : Fahrenheit
    return Math.min(this, that.toFloat());

  inline public function max(that : Fahrenheit) : Fahrenheit
    return Math.max(this, that.toFloat());

  @:op( -A ) inline public function negate() : Fahrenheit
    return -this;
  @:op( A+B) inline public function add(that : Fahrenheit) : Fahrenheit
    return this + that.toFloat();
  @:op( A-B) inline public function subtract(that : Fahrenheit) : Fahrenheit
    return this - that.toFloat();
  @:op( A*B) inline public function multiply(that : Float) : Fahrenheit
    return this * that;
  @:op( A/B) inline public function divide(that : Float) : Fahrenheit
    return this / that;
  @:op( A%B) inline public function modulo(that : Float) : Fahrenheit
    return this % that;
  @:op(A==B) inline public function equals(that : Fahrenheit) : Bool
    return this == that;
  public function nearEquals(that : Fahrenheit) : Bool
    return Floats.nearEquals(this, that.toFloat());
  @:op(A!=B) inline public function notEquals(that : Fahrenheit) : Bool
    return this != that;
  @:op( A<B) inline public function less(that : Fahrenheit) : Bool
    return this < that.toFloat();
  @:op(A<=B) inline public function lessEquals(that : Fahrenheit) : Bool
    return this <= that.toFloat();
  @:op( A>B) inline public function greater(that : Fahrenheit) : Bool
    return this > that.toFloat();
  @:op(A>=B) inline public function greaterEquals(that : Fahrenheit) : Bool
    return this >= that.toFloat();

  @:to inline public function toFloat() : Float
    return this;

  @:to inline public function toCelsius() : Celsius
    return (this - 32) * 5/9;

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

  public static inline var symbol : String = "°F";
}
