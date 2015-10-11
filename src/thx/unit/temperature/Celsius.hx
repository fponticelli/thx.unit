package thx.unit.temperature;

import thx.Floats;

// TODO parse string

abstract Celsius(Float) {
  @:from inline static public function floatToCelsius(value : Float) : Celsius
    return new Celsius(value);

  function new(value : Float)
    this = value;

  inline public function abs() : Celsius
    return Math.abs(this);

  inline public function min(that : Celsius) : Celsius
    return Math.min(this, that.toFloat());

  inline public function max(that : Celsius) : Celsius
    return Math.max(this, that.toFloat());

  @:op( -A ) inline public function negate() : Celsius
    return -this;
  @:op( A+B) inline public function add(that : Celsius) : Celsius
    return this + that.toFloat();
  @:op( A-B) inline public function subtract(that : Celsius) : Celsius
    return this - that.toFloat();
  @:op( A*B) inline public function multiply(that : Float) : Celsius
    return this * that;
  @:op( A/B) inline public function divide(that : Float) : Celsius
    return this / that;
  @:op( A%B) inline public function modulo(that : Float) : Celsius
    return this % that;
  @:op(A==B) inline public function equal(that : Celsius) : Bool
    return this == that;
  public function nearEquals(that : Celsius) : Bool
    return Floats.nearEquals(this, that.toFloat());
  @:op(A!=B) inline public function notEqual(that : Celsius) : Bool
    return this != that;
  @:op( A<B) inline public function less(that : Celsius) : Bool
    return this < that.toFloat();
  @:op(A<=B) inline public function lessEqual(that : Celsius) : Bool
    return this <= that.toFloat();
  @:op( A>B) inline public function more(that : Celsius) : Bool
    return this > that.toFloat();
  @:op(A>=B) inline public function moreEqual(that : Celsius) : Bool
    return this >= that.toFloat();

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
