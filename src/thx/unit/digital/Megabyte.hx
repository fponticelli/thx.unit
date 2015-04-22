package thx.unit.digital;

import thx.Floats;

// TODO parse string

abstract Megabyte(Float) {
  @:from inline static public function floatToMegabyte(value : Float) : Megabyte
    return new Megabyte(value);

  function new(value : Float)
    this = value;

  inline public function abs() : Megabyte
    return Math.abs(this);

  inline public function min(other : Megabyte) : Megabyte
    return Math.min(this, other.toFloat());

  inline public function max(other : Megabyte) : Megabyte
    return Math.max(this, other.toFloat());

  @:op( -A ) inline public function negate() : Megabyte
    return -this;
  @:op( A+B) inline public function add(other : Megabyte) : Megabyte
    return this + other.toFloat();
  @:op( A-B) inline public function subtract(other : Megabyte) : Megabyte
    return this - other.toFloat();
  @:op( A*B) inline public function multiply(other : Float) : Megabyte
    return this * other;
  @:op( A/B) inline public function divide(other : Float) : Megabyte
    return this / other;
  @:op( A%B) inline public function modulo(other : Float) : Megabyte
    return this % other;
  @:op(A==B) inline public function equal(other : Megabyte) : Bool
    return this == other;
  public function nearEquals(other : Megabyte) : Bool
    return Floats.nearEquals(this, other.toFloat());
  @:op(A!=B) inline public function notEqual(other : Megabyte) : Bool
    return this != other;
  @:op( A<B) inline public function less(other : Megabyte) : Bool
    return this < other.toFloat();
  @:op(A<=B) inline public function lessEqual(other : Megabyte) : Bool
    return this <= other.toFloat();
  @:op( A>B) inline public function more(other : Megabyte) : Bool
    return this > other.toFloat();
  @:op(A>=B) inline public function moreEqual(other : Megabyte) : Bool
    return this >= other.toFloat();

  @:to inline public function toFloat() : Float
    return this;

  @:to inline public function toByte() : Byte
    return this * 1048576;
  @:to inline public function toKilobyte() : Kilobyte
    return this * 1024;
  @:to inline public function toGigabyte() : Gigabyte
    return this * 0.0009765625;
  @:to inline public function toTerabyte() : Terabyte
    return this * 9.5367431640625e-07;
  @:to inline public function toPetabyte() : Petabyte
    return this * 9.31322574615479e-10;
  @:to inline public function toExabyte() : Exabyte
    return this * 9.09494701772926e-13;
  @:to inline public function toZettabyte() : Zettabyte
    return this * 8.88178419700126e-16;
  @:to inline public function toYottabyte() : Yottabyte
    return this * 8.67361737988403e-19;
  @:to inline public function toKilobit() : Kilobit
    return this * 1048.576;
  @:to inline public function toMegabit() : Megabit
    return this * 1.048576;
  @:to inline public function toGigabit() : Gigabit
    return this * 0.001048576;
  @:to inline public function toTerabit() : Terabit
    return this * 1.048576e-06;
  @:to inline public function toPetabit() : Petabit
    return this * 1.048576e-09;
  @:to inline public function toExabit() : Exabit
    return this * 1.048576e-12;
  @:to inline public function toZettabit() : Zettabit
    return this * 1.048576e-15;
  @:to inline public function toYottabit() : Yottabit
    return this * 1.048576e-18;

  @:to inline public function toString() : String
    return this + symbol;

  public static inline var symbol : String = "Mi";
}