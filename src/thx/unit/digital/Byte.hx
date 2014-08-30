package thx.unit.digital;

import thx.core.Floats;

// TODO parse string

abstract Byte(Float) {
  @:from inline static public function floatToByte(value : Float) : Byte
    return new Byte(value);

  function new(value : Float)
    this = value;
  @:op( -A ) inline public function negate() : Byte
    return -this;
  @:op( A+B) inline public function add(other : Byte) : Byte
    return this + other.toFloat();
  @:op( A-B) inline public function subtract(other : Byte) : Byte
    return this - other.toFloat();
  @:op( A*B) inline public function multiply(other : Float) : Byte
    return this * other;
  @:op( A/B) inline public function divide(other : Float) : Byte
    return this / other;
  @:op( A%B) inline public function modulo(other : Float) : Byte
    return this % other;
  @:op(A==B) inline public function equal(other : Byte) : Bool
    return this == other;
  public function nearEqual(other : Byte) : Bool
    return Floats.nearEqual(this, other.toFloat());
  @:op(A!=B) inline public function notEqual(other : Byte) : Bool
    return this != other;
  @:op( A<B) inline public function less(other : Byte) : Bool
    return this < other.toFloat();
  @:op(A<=B) inline public function lessEqual(other : Byte) : Bool
    return this <= other.toFloat();
  @:op( A>B) inline public function more(other : Byte) : Bool
    return this > other.toFloat();
  @:op(A>=B) inline public function moreEqual(other : Byte) : Bool
    return this >= other.toFloat();

  inline public function toFloat() : Float
    return this;

  @:to inline public function toKilobyte() : Kilobyte
    return this * 0.0009765625;
  @:to inline public function toMegabyte() : Megabyte
    return this * 9.5367431640625e-07;
  @:to inline public function toGigabyte() : Gigabyte
    return this * 9.31322574615479e-10;
  @:to inline public function toTerabyte() : Terabyte
    return this * 9.09494701772928e-13;
  @:to inline public function toPetabyte() : Petabyte
    return this * 8.88178419700125e-16;
  @:to inline public function toExabyte() : Exabyte
    return this * 8.67361737988401e-19;
  @:to inline public function toZettabyte() : Zettabyte
    return this * 8.47032947254301e-22;
  @:to inline public function toYottabyte() : Yottabyte
    return this * 8.27180612553027e-25;
  @:to inline public function toKilobit() : Kilobit
    return this * 0.001;
  @:to inline public function toMegabit() : Megabit
    return this * 1e-06;
  @:to inline public function toGigabit() : Gigabit
    return this * 1e-09;
  @:to inline public function toTerabit() : Terabit
    return this * 1e-12;
  @:to inline public function toPetabit() : Petabit
    return this * 1e-15;
  @:to inline public function toExabit() : Exabit
    return this * 1e-18;
  @:to inline public function toZettabit() : Zettabit
    return this * 1e-21;
  @:to inline public function toYottabit() : Yottabit
    return this * 1e-24;

  @:to inline public function toString() : String
    return this + symbol;

  public static inline var symbol : String = "B";
}