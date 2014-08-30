package thx.unit.angle;

// TODO parse string

abstract Fahrenheit(Float) {
  @:from inline static public function floatToFahrenheit(value : Float) : Fahrenheit
    return new Fahrenheit(value);

  function new(value : Float)
    this = value;

  @:op( -A ) inline public function negate() : Fahrenheit
    return -this;
  @:op( A+B) inline public function add(other : Fahrenheit) : Fahrenheit
    return this + other.toFloat();
  @:op( A-B) inline public function subtract(other : Fahrenheit) : Fahrenheit
    return this - other.toFloat();
  @:op( A*B) inline public function multiply(other : Float) : Fahrenheit
    return this * other;
  @:op( A/B) inline public function divide(other : Float) : Fahrenheit
    return this / other;
  @:op( A%B) inline public function modulo(other : Float) : Fahrenheit
    return this % other;
  @:op(A==B) inline public function equal(other : Fahrenheit) : Bool
    return this == other;
  @:op(A!=B) inline public function notEqual(other : Fahrenheit) : Bool
    return this != other;
  @:op( A<B) inline public function less(other : Fahrenheit) : Bool
    return this < other.toFloat();
  @:op(A<=B) inline public function lessEqual(other : Fahrenheit) : Bool
    return this <= other.toFloat();
  @:op( A>B) inline public function more(other : Fahrenheit) : Bool
    return this > other.toFloat();
  @:op(A>=B) inline public function moreEqual(other : Fahrenheit) : Bool
    return this >= other.toFloat();

  inline public function toFloat() : Float
    return this;

  @:to inline public function toCelsius() : Celsius
    return (this - 32) * 5/9;

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