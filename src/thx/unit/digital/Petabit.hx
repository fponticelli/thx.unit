package thx.unit.digital;

import thx.core.Floats;

// TODO parse string

abstract Petabit(Float) {
  @:from inline static public function floatToPetabit(value : Float) : Petabit
    return new Petabit(value);

  function new(value : Float)
    this = value;

  inline public function abs() : Petabit
    return Math.abs(this);

  inline public function min(other : Petabit) : Petabit
    return Math.min(this, other.toFloat());

  inline public function max(other : Petabit) : Petabit
    return Math.max(this, other.toFloat());

  @:op( -A ) inline public function negate() : Petabit
    return -this;
  @:op( A+B) inline public function add(other : Petabit) : Petabit
    return this + other.toFloat();
  @:op( A-B) inline public function subtract(other : Petabit) : Petabit
    return this - other.toFloat();
  @:op( A*B) inline public function multiply(other : Float) : Petabit
    return this * other;
  @:op( A/B) inline public function divide(other : Float) : Petabit
    return this / other;
  @:op( A%B) inline public function modulo(other : Float) : Petabit
    return this % other;
  @:op(A==B) inline public function equal(other : Petabit) : Bool
    return this == other;
  public function nearEquals(other : Petabit) : Bool
    return Floats.nearEquals(this, other.toFloat());
  @:op(A!=B) inline public function notEqual(other : Petabit) : Bool
    return this != other;
  @:op( A<B) inline public function less(other : Petabit) : Bool
    return this < other.toFloat();
  @:op(A<=B) inline public function lessEqual(other : Petabit) : Bool
    return this <= other.toFloat();
  @:op( A>B) inline public function more(other : Petabit) : Bool
    return this > other.toFloat();
  @:op(A>=B) inline public function moreEqual(other : Petabit) : Bool
    return this >= other.toFloat();

  @:to inline public function toFloat() : Float
    return this;

  @:to inline public function toByte() : Byte
    return this * 1e+15;
  @:to inline public function toKilobyte() : Kilobyte
    return this * 976562500000;
  @:to inline public function toMegabyte() : Megabyte
    return this * 953674316.40625;
  @:to inline public function toGigabyte() : Gigabyte
    return this * 931322.574615479;
  @:to inline public function toTerabyte() : Terabyte
    return this * 909.494701772928;
  @:to inline public function toPetabyte() : Petabyte
    return this * 0.888178419700125;
  @:to inline public function toExabyte() : Exabyte
    return this * 0.000867361737988401;
  @:to inline public function toZettabyte() : Zettabyte
    return this * 8.47032947254301e-07;
  @:to inline public function toYottabyte() : Yottabyte
    return this * 8.27180612553027e-10;
  @:to inline public function toKilobit() : Kilobit
    return this * 1000000000000;
  @:to inline public function toMegabit() : Megabit
    return this * 1000000000;
  @:to inline public function toGigabit() : Gigabit
    return this * 1000000;
  @:to inline public function toTerabit() : Terabit
    return this * 1000;
  @:to inline public function toExabit() : Exabit
    return this * 0.001;
  @:to inline public function toZettabit() : Zettabit
    return this * 1e-06;
  @:to inline public function toYottabit() : Yottabit
    return this * 1e-09;

  @:to inline public function toString() : String
    return this + symbol;

  public static inline var symbol : String = "P";
}