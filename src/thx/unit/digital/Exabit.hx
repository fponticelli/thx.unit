package thx.unit.digital;

import thx.Floats;

// TODO parse string

abstract Exabit(Float) {
  @:from inline static public function floatToExabit(value : Float) : Exabit
    return new Exabit(value);

  function new(value : Float)
    this = value;

  inline public function abs() : Exabit
    return Math.abs(this);

  inline public function min(other : Exabit) : Exabit
    return Math.min(this, other.toFloat());

  inline public function max(other : Exabit) : Exabit
    return Math.max(this, other.toFloat());

  @:op( -A ) inline public function negate() : Exabit
    return -this;
  @:op( A+B) inline public function add(other : Exabit) : Exabit
    return this + other.toFloat();
  @:op( A-B) inline public function subtract(other : Exabit) : Exabit
    return this - other.toFloat();
  @:op( A*B) inline public function multiply(other : Float) : Exabit
    return this * other;
  @:op( A/B) inline public function divide(other : Float) : Exabit
    return this / other;
  @:op( A%B) inline public function modulo(other : Float) : Exabit
    return this % other;
  @:op(A==B) inline public function equal(other : Exabit) : Bool
    return this == other;
  public function nearEquals(other : Exabit) : Bool
    return Floats.nearEquals(this, other.toFloat());
  @:op(A!=B) inline public function notEqual(other : Exabit) : Bool
    return this != other;
  @:op( A<B) inline public function less(other : Exabit) : Bool
    return this < other.toFloat();
  @:op(A<=B) inline public function lessEqual(other : Exabit) : Bool
    return this <= other.toFloat();
  @:op( A>B) inline public function more(other : Exabit) : Bool
    return this > other.toFloat();
  @:op(A>=B) inline public function moreEqual(other : Exabit) : Bool
    return this >= other.toFloat();

  @:to inline public function toFloat() : Float
    return this;

  @:to inline public function toByte() : Byte
    return this * 1e+18;
  @:to inline public function toKilobyte() : Kilobyte
    return this * 976562500000000;
  @:to inline public function toMegabyte() : Megabyte
    return this * 953674316406.25;
  @:to inline public function toGigabyte() : Gigabyte
    return this * 931322574.615479;
  @:to inline public function toTerabyte() : Terabyte
    return this * 909494.701772928;
  @:to inline public function toPetabyte() : Petabyte
    return this * 888.178419700125;
  @:to inline public function toExabyte() : Exabyte
    return this * 0.867361737988401;
  @:to inline public function toZettabyte() : Zettabyte
    return this * 0.000847032947254301;
  @:to inline public function toYottabyte() : Yottabyte
    return this * 8.27180612553027e-07;
  @:to inline public function toKilobit() : Kilobit
    return this * 1e+15;
  @:to inline public function toMegabit() : Megabit
    return this * 1000000000000;
  @:to inline public function toGigabit() : Gigabit
    return this * 1000000000;
  @:to inline public function toTerabit() : Terabit
    return this * 1000000;
  @:to inline public function toPetabit() : Petabit
    return this * 1000;
  @:to inline public function toZettabit() : Zettabit
    return this * 0.001;
  @:to inline public function toYottabit() : Yottabit
    return this * 1e-06;

  @:to inline public function toString() : String
    return this + symbol;

  public static inline var symbol : String = "E";
}