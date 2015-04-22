package thx.unit.temperature;

import thx.Floats;

// TODO parse string

abstract ${type}(Float) {
  @:from inline static public function floatTo${type}(value : Float) : $type
    return new ${type}(value);

  function new(value : Float)
    this = value;

  inline public function abs() : $type
    return Math.abs(this);

  inline public function min(other : $type) : $type
    return Math.min(this, other.toFloat());

  inline public function max(other : $type) : $type
    return Math.max(this, other.toFloat());

  @:op( -A ) inline public function negate() : $type
    return -this;
  @:op( A+B) inline public function add(other : $type) : $type
    return this + other.toFloat();
  @:op( A-B) inline public function subtract(other : $type) : $type
    return this - other.toFloat();
  @:op( A*B) inline public function multiply(other : Float) : $type
    return this * other;
  @:op( A/B) inline public function divide(other : Float) : $type
    return this / other;
  @:op( A%B) inline public function modulo(other : Float) : $type
    return this % other;
  @:op(A==B) inline public function equal(other : $type) : Bool
    return this == other;
  public function nearEquals(other : $type) : Bool
    return Floats.nearEquals(this, other.toFloat());
  @:op(A!=B) inline public function notEqual(other : $type) : Bool
    return this != other;
  @:op( A<B) inline public function less(other : $type) : Bool
    return this < other.toFloat();
  @:op(A<=B) inline public function lessEqual(other : $type) : Bool
    return this <= other.toFloat();
  @:op( A>B) inline public function more(other : $type) : Bool
    return this > other.toFloat();
  @:op(A>=B) inline public function moreEqual(other : $type) : Bool
    return this >= other.toFloat();

  @:to inline public function toFloat() : Float
    return this;
$if(type == 'Celsius') {
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
} else {
  @:to inline public function toCelsius() : Celsius
    return ${toCelsius};
$for(value in values) {$if(value.type != 'Celsius'){
  @:to inline public function to${value.type}() : $value.type
    return toCelsius().to${value.type}();}}}

  @:to inline public function toString() : String
    return this + symbol;

  public static inline var symbol : String = "$symbol";
}