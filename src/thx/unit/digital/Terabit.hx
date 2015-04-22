package thx.unit.digital;

import thx.Floats;

// TODO parse string

abstract Terabit(Float) {
  @:from inline static public function floatToTerabit(value : Float) : Terabit
    return new Terabit(value);

  function new(value : Float)
    this = value;

  inline public function abs() : Terabit
    return Math.abs(this);

  inline public function min(other : Terabit) : Terabit
    return Math.min(this, other.toFloat());

  inline public function max(other : Terabit) : Terabit
    return Math.max(this, other.toFloat());

  @:op( -A ) inline public function negate() : Terabit
    return -this;
  @:op( A+B) inline public function add(other : Terabit) : Terabit
    return this + other.toFloat();
  @:op( A-B) inline public function subtract(other : Terabit) : Terabit
    return this - other.toFloat();
  @:op( A*B) inline public function multiply(other : Float) : Terabit
    return this * other;
  @:op( A/B) inline public function divide(other : Float) : Terabit
    return this / other;
  @:op( A%B) inline public function modulo(other : Float) : Terabit
    return this % other;
  @:op(A==B) inline public function equal(other : Terabit) : Bool
    return this == other;
  public function nearEquals(other : Terabit) : Bool
    return Floats.nearEquals(this, other.toFloat());
  @:op(A!=B) inline public function notEqual(other : Terabit) : Bool
    return this != other;
  @:op( A<B) inline public function less(other : Terabit) : Bool
    return this < other.toFloat();
  @:op(A<=B) inline public function lessEqual(other : Terabit) : Bool
    return this <= other.toFloat();
  @:op( A>B) inline public function more(other : Terabit) : Bool
    return this > other.toFloat();
  @:op(A>=B) inline public function moreEqual(other : Terabit) : Bool
    return this >= other.toFloat();

  @:to inline public function toFloat() : Float
    return this;

  @:to inline public function toByte() : Byte
    return this * 1000000000000;
  @:to inline public function toKilobyte() : Kilobyte
    return this * 976562500;
  @:to inline public function toMegabyte() : Megabyte
    return this * 953674.31640625;
  @:to inline public function toGigabyte() : Gigabyte
    return this * 931.322574615479;
  @:to inline public function toTerabyte() : Terabyte
    return this * 0.909494701772928;
  @:to inline public function toPetabyte() : Petabyte
    return this * 0.000888178419700125;
  @:to inline public function toExabyte() : Exabyte
    return this * 8.67361737988401e-07;
  @:to inline public function toZettabyte() : Zettabyte
    return this * 8.47032947254301e-10;
  @:to inline public function toYottabyte() : Yottabyte
    return this * 8.27180612553027e-13;
  @:to inline public function toKilobit() : Kilobit
    return this * 1000000000;
  @:to inline public function toMegabit() : Megabit
    return this * 1000000;
  @:to inline public function toGigabit() : Gigabit
    return this * 1000;
  @:to inline public function toPetabit() : Petabit
    return this * 0.001;
  @:to inline public function toExabit() : Exabit
    return this * 1e-06;
  @:to inline public function toZettabit() : Zettabit
    return this * 1e-09;
  @:to inline public function toYottabit() : Yottabit
    return this * 1e-12;

  @:to inline public function toString() : String
    return this + symbol;

  public static inline var symbol : String = "T";
}