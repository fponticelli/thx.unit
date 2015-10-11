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

  inline public function min(that : Newton) : Newton
    return Math.min(this, that.toFloat());

  inline public function max(that : Newton) : Newton
    return Math.max(this, that.toFloat());

  @:op( -A ) inline public function negate() : Newton
    return -this;
  @:op( A+B) inline public function add(that : Newton) : Newton
    return this + that.toFloat();
  @:op( A-B) inline public function subtract(that : Newton) : Newton
    return this - that.toFloat();
  @:op( A*B) inline public function multiply(that : Float) : Newton
    return this * that;
  @:op( A/B) inline public function divide(that : Float) : Newton
    return this / that;
  @:op( A%B) inline public function modulo(that : Float) : Newton
    return this % that;
  @:op(A==B) inline public function equal(that : Newton) : Bool
    return this == that;
  public function nearEquals(that : Newton) : Bool
    return Floats.nearEquals(this, that.toFloat());
  @:op(A!=B) inline public function notEqual(that : Newton) : Bool
    return this != that;
  @:op( A<B) inline public function less(that : Newton) : Bool
    return this < that.toFloat();
  @:op(A<=B) inline public function lessEqual(that : Newton) : Bool
    return this <= that.toFloat();
  @:op( A>B) inline public function more(that : Newton) : Bool
    return this > that.toFloat();
  @:op(A>=B) inline public function moreEqual(that : Newton) : Bool
    return this >= that.toFloat();

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
  @:to inline public function toNewton() : Newton
    return toCelsius().toNewton();
  @:to inline public function toReaumur() : Reaumur
    return toCelsius().toReaumur();
  @:to inline public function toRomer() : Romer
    return toCelsius().toRomer();

  @:to inline public function toString() : String
    return this + symbol;

  public static inline var symbol : String = "°N";
}
