package thx.unit.digital;

import thx.core.Floats;

// TODO parse string

abstract Gigabit(Float) {
  @:from inline static public function floatToGigabit(value : Float) : Gigabit
    return new Gigabit(value);

  function new(value : Float)
    this = value;

  inline public function abs() : Gigabit
    return Math.abs(this);

  inline public function min(other : Gigabit) : Gigabit
    return Math.min(this, other.toFloat());

  inline public function max(other : Gigabit) : Gigabit
    return Math.max(this, other.toFloat());

  @:op( -A ) inline public function negate() : Gigabit
    return -this;
  @:op( A+B) inline public function add(other : Gigabit) : Gigabit
    return this + other.toFloat();
  @:op( A-B) inline public function subtract(other : Gigabit) : Gigabit
    return this - other.toFloat();
  @:op( A*B) inline public function multiply(other : Float) : Gigabit
    return this * other;
  @:op( A/B) inline public function divide(other : Float) : Gigabit
    return this / other;
  @:op( A%B) inline public function modulo(other : Float) : Gigabit
    return this % other;
  @:op(A==B) inline public function equal(other : Gigabit) : Bool
    return this == other;
  public function nearEquals(other : Gigabit) : Bool
    return Floats.nearEquals(this, other.toFloat());
  @:op(A!=B) inline public function notEqual(other : Gigabit) : Bool
    return this != other;
  @:op( A<B) inline public function less(other : Gigabit) : Bool
    return this < other.toFloat();
  @:op(A<=B) inline public function lessEqual(other : Gigabit) : Bool
    return this <= other.toFloat();
  @:op( A>B) inline public function more(other : Gigabit) : Bool
    return this > other.toFloat();
  @:op(A>=B) inline public function moreEqual(other : Gigabit) : Bool
    return this >= other.toFloat();

  @:to inline public function toFloat() : Float
    return this;

  @:to inline public function toByte() : Byte
    return this * 1000000000;
  @:to inline public function toKilobyte() : Kilobyte
    return this * 976562.5;
  @:to inline public function toMegabyte() : Megabyte
    return this * 953.67431640625;
  @:to inline public function toGigabyte() : Gigabyte
    return this * 0.931322574615479;
  @:to inline public function toTerabyte() : Terabyte
    return this * 0.000909494701772928;
  @:to inline public function toPetabyte() : Petabyte
    return this * 8.88178419700125e-07;
  @:to inline public function toExabyte() : Exabyte
    return this * 8.67361737988401e-10;
  @:to inline public function toZettabyte() : Zettabyte
    return this * 8.47032947254301e-13;
  @:to inline public function toYottabyte() : Yottabyte
    return this * 8.27180612553027e-16;
  @:to inline public function toKilobit() : Kilobit
    return this * 1000000;
  @:to inline public function toMegabit() : Megabit
    return this * 1000;
  @:to inline public function toTerabit() : Terabit
    return this * 0.001;
  @:to inline public function toPetabit() : Petabit
    return this * 1e-06;
  @:to inline public function toExabit() : Exabit
    return this * 1e-09;
  @:to inline public function toZettabit() : Zettabit
    return this * 1e-12;
  @:to inline public function toYottabit() : Yottabit
    return this * 1e-15;

  @:to inline public function toString() : String
    return this + symbol;

  public static inline var symbol : String = "G";
}