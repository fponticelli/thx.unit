package thx.unit.temperature;

import thx.Floats;

// TODO parse string

abstract Rankine(Float) {
  @:from inline static public function floatToRankine(value : Float) : Rankine
    return new Rankine(value);

  function new(value : Float)
    this = value;

  inline public function abs() : Rankine
    return Math.abs(this);

  inline public function min(that : Rankine) : Rankine
    return Math.min(this, that.toFloat());

  inline public function max(that : Rankine) : Rankine
    return Math.max(this, that.toFloat());

  @:op( -A ) inline public function negate() : Rankine
    return -this;
  @:op( A+B) inline public function add(that : Rankine) : Rankine
    return this + that.toFloat();
  @:op( A-B) inline public function subtract(that : Rankine) : Rankine
    return this - that.toFloat();
  @:op( A*B) inline public function multiply(that : Float) : Rankine
    return this * that;
  @:op( A/B) inline public function divide(that : Float) : Rankine
    return this / that;
  @:op( A%B) inline public function modulo(that : Float) : Rankine
    return this % that;
  @:op(A==B) inline public function equals(that : Rankine) : Bool
    return this == that;
  public function nearEquals(that : Rankine) : Bool
    return Floats.nearEquals(this, that.toFloat());
  @:op(A!=B) inline public function notEquals(that : Rankine) : Bool
    return this != that;
  @:op( A<B) inline public function less(that : Rankine) : Bool
    return this < that.toFloat();
  @:op(A<=B) inline public function lessEquals(that : Rankine) : Bool
    return this <= that.toFloat();
  @:op( A>B) inline public function greater(that : Rankine) : Bool
    return this > that.toFloat();
  @:op(A>=B) inline public function greaterEquals(that : Rankine) : Bool
    return this >= that.toFloat();

  @:to inline public function toFloat() : Float
    return this;

  @:to inline public function toCelsius() : Celsius
    return (this - 491.67) * 5/9;

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

  public static inline var symbol : String = "°R";
}
