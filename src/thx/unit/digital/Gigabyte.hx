package thx.unit.digital;

import thx.core.Floats;

// TODO parse string

abstract Gigabyte(Float) {
  @:from inline static public function floatToGigabyte(value : Float) : Gigabyte
    return new Gigabyte(value);

  function new(value : Float)
    this = value;
  @:op( -A ) inline public function negate() : Gigabyte
    return -this;
  @:op( A+B) inline public function add(other : Gigabyte) : Gigabyte
    return this + other.toFloat();
  @:op( A-B) inline public function subtract(other : Gigabyte) : Gigabyte
    return this - other.toFloat();
  @:op( A*B) inline public function multiply(other : Float) : Gigabyte
    return this * other;
  @:op( A/B) inline public function divide(other : Float) : Gigabyte
    return this / other;
  @:op( A%B) inline public function modulo(other : Float) : Gigabyte
    return this % other;
  @:op(A==B) inline public function equal(other : Gigabyte) : Bool
    return this == other;
  public function nearEqual(other : Gigabyte) : Bool
    return Floats.nearEqual(this, other.toFloat());
  @:op(A!=B) inline public function notEqual(other : Gigabyte) : Bool
    return this != other;
  @:op( A<B) inline public function less(other : Gigabyte) : Bool
    return this < other.toFloat();
  @:op(A<=B) inline public function lessEqual(other : Gigabyte) : Bool
    return this <= other.toFloat();
  @:op( A>B) inline public function more(other : Gigabyte) : Bool
    return this > other.toFloat();
  @:op(A>=B) inline public function moreEqual(other : Gigabyte) : Bool
    return this >= other.toFloat();

  inline public function toFloat() : Float
    return this;

  @:to inline public function toByte() : Byte
    return this * 1073741824;
  @:to inline public function toKilobyte() : Kilobyte
    return this * 1048576;
  @:to inline public function toMegabyte() : Megabyte
    return this * 1024;
  @:to inline public function toTerabyte() : Terabyte
    return this * 0.0009765625;
  @:to inline public function toPetabyte() : Petabyte
    return this * 9.5367431640625e-07;
  @:to inline public function toExabyte() : Exabyte
    return this * 9.31322574615476e-10;
  @:to inline public function toZettabyte() : Zettabyte
    return this * 9.09494701772929e-13;
  @:to inline public function toYottabyte() : Yottabyte
    return this * 8.88178419700125e-16;
  @:to inline public function toKilobit() : Kilobit
    return this * 1073741.824;
  @:to inline public function toMegabit() : Megabit
    return this * 1073.741824;
  @:to inline public function toGigabit() : Gigabit
    return this * 1.073741824;
  @:to inline public function toTerabit() : Terabit
    return this * 0.001073741824;
  @:to inline public function toPetabit() : Petabit
    return this * 1.073741824e-06;
  @:to inline public function toExabit() : Exabit
    return this * 1.073741824e-09;
  @:to inline public function toZettabit() : Zettabit
    return this * 1.073741824e-12;
  @:to inline public function toYottabit() : Yottabit
    return this * 1.073741824e-15;

  @:to inline public function toString() : String
    return this + symbol;

  public static inline var symbol : String = "Gi";
}