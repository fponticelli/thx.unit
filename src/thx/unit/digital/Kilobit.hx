package thx.unit.digital;

import thx.core.Floats;

// TODO parse string

abstract Kilobit(Float) {
  @:from inline static public function floatToKilobit(value : Float) : Kilobit
    return new Kilobit(value);

  function new(value : Float)
    this = value;
  @:op( -A ) inline public function negate() : Kilobit
    return -this;
  @:op( A+B) inline public function add(other : Kilobit) : Kilobit
    return this + other.toFloat();
  @:op( A-B) inline public function subtract(other : Kilobit) : Kilobit
    return this - other.toFloat();
  @:op( A*B) inline public function multiply(other : Float) : Kilobit
    return this * other;
  @:op( A/B) inline public function divide(other : Float) : Kilobit
    return this / other;
  @:op( A%B) inline public function modulo(other : Float) : Kilobit
    return this % other;
  @:op(A==B) inline public function equal(other : Kilobit) : Bool
    return this == other;
  public function nearEqual(other : Kilobit) : Bool
    return Floats.nearEqual(this, other.toFloat());
  @:op(A!=B) inline public function notEqual(other : Kilobit) : Bool
    return this != other;
  @:op( A<B) inline public function less(other : Kilobit) : Bool
    return this < other.toFloat();
  @:op(A<=B) inline public function lessEqual(other : Kilobit) : Bool
    return this <= other.toFloat();
  @:op( A>B) inline public function more(other : Kilobit) : Bool
    return this > other.toFloat();
  @:op(A>=B) inline public function moreEqual(other : Kilobit) : Bool
    return this >= other.toFloat();

  inline public function toFloat() : Float
    return this;

  @:to inline public function toByte() : Byte
    return this * 1000;
  @:to inline public function toKilobyte() : Kilobyte
    return this * 0.9765625;
  @:to inline public function toMegabyte() : Megabyte
    return this * 0.00095367431640625;
  @:to inline public function toGigabyte() : Gigabyte
    return this * 9.31322574615479e-07;
  @:to inline public function toTerabyte() : Terabyte
    return this * 9.09494701772928e-10;
  @:to inline public function toPetabyte() : Petabyte
    return this * 8.88178419700125e-13;
  @:to inline public function toExabyte() : Exabyte
    return this * 8.67361737988401e-16;
  @:to inline public function toZettabyte() : Zettabyte
    return this * 8.47032947254301e-19;
  @:to inline public function toYottabyte() : Yottabyte
    return this * 8.27180612553027e-22;
  @:to inline public function toMegabit() : Megabit
    return this * 0.001;
  @:to inline public function toGigabit() : Gigabit
    return this * 1e-06;
  @:to inline public function toTerabit() : Terabit
    return this * 1e-09;
  @:to inline public function toPetabit() : Petabit
    return this * 1e-12;
  @:to inline public function toExabit() : Exabit
    return this * 1e-15;
  @:to inline public function toZettabit() : Zettabit
    return this * 1e-18;
  @:to inline public function toYottabit() : Yottabit
    return this * 1e-21;

  @:to inline public function toString() : String
    return this + symbol;

  public static inline var symbol : String = "k";
}