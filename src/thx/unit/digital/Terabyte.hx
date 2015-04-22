package thx.unit.digital;

import thx.Floats;

// TODO parse string

abstract Terabyte(Float) {
  @:from inline static public function floatToTerabyte(value : Float) : Terabyte
    return new Terabyte(value);

  function new(value : Float)
    this = value;

  inline public function abs() : Terabyte
    return Math.abs(this);

  inline public function min(other : Terabyte) : Terabyte
    return Math.min(this, other.toFloat());

  inline public function max(other : Terabyte) : Terabyte
    return Math.max(this, other.toFloat());

  @:op( -A ) inline public function negate() : Terabyte
    return -this;
  @:op( A+B) inline public function add(other : Terabyte) : Terabyte
    return this + other.toFloat();
  @:op( A-B) inline public function subtract(other : Terabyte) : Terabyte
    return this - other.toFloat();
  @:op( A*B) inline public function multiply(other : Float) : Terabyte
    return this * other;
  @:op( A/B) inline public function divide(other : Float) : Terabyte
    return this / other;
  @:op( A%B) inline public function modulo(other : Float) : Terabyte
    return this % other;
  @:op(A==B) inline public function equal(other : Terabyte) : Bool
    return this == other;
  public function nearEquals(other : Terabyte) : Bool
    return Floats.nearEquals(this, other.toFloat());
  @:op(A!=B) inline public function notEqual(other : Terabyte) : Bool
    return this != other;
  @:op( A<B) inline public function less(other : Terabyte) : Bool
    return this < other.toFloat();
  @:op(A<=B) inline public function lessEqual(other : Terabyte) : Bool
    return this <= other.toFloat();
  @:op( A>B) inline public function more(other : Terabyte) : Bool
    return this > other.toFloat();
  @:op(A>=B) inline public function moreEqual(other : Terabyte) : Bool
    return this >= other.toFloat();

  @:to inline public function toFloat() : Float
    return this;

  @:to inline public function toByte() : Byte
    return this * 1099511627776;
  @:to inline public function toKilobyte() : Kilobyte
    return this * 1073741824;
  @:to inline public function toMegabyte() : Megabyte
    return this * 1048576;
  @:to inline public function toGigabyte() : Gigabyte
    return this * 1024;
  @:to inline public function toPetabyte() : Petabyte
    return this * 0.0009765625;
  @:to inline public function toExabyte() : Exabyte
    return this * 9.53674316406247e-07;
  @:to inline public function toZettabyte() : Zettabyte
    return this * 9.3132257461548e-10;
  @:to inline public function toYottabyte() : Yottabyte
    return this * 9.09494701772928e-13;
  @:to inline public function toKilobit() : Kilobit
    return this * 1099511627.776;
  @:to inline public function toMegabit() : Megabit
    return this * 1099511.627776;
  @:to inline public function toGigabit() : Gigabit
    return this * 1099.511627776;
  @:to inline public function toTerabit() : Terabit
    return this * 1.099511627776;
  @:to inline public function toPetabit() : Petabit
    return this * 0.001099511627776;
  @:to inline public function toExabit() : Exabit
    return this * 1.099511627776e-06;
  @:to inline public function toZettabit() : Zettabit
    return this * 1.099511627776e-09;
  @:to inline public function toYottabit() : Yottabit
    return this * 1.099511627776e-12;

  @:to inline public function toString() : String
    return this + symbol;

  public static inline var symbol : String = "Ti";
}