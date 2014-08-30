package thx.unit.digital;

import thx.core.Floats;

// TODO parse string

abstract Zettabit(Float) {
  @:from inline static public function floatToZettabit(value : Float) : Zettabit
    return new Zettabit(value);

  function new(value : Float)
    this = value;
  @:op( -A ) inline public function negate() : Zettabit
    return -this;
  @:op( A+B) inline public function add(other : Zettabit) : Zettabit
    return this + other.toFloat();
  @:op( A-B) inline public function subtract(other : Zettabit) : Zettabit
    return this - other.toFloat();
  @:op( A*B) inline public function multiply(other : Float) : Zettabit
    return this * other;
  @:op( A/B) inline public function divide(other : Float) : Zettabit
    return this / other;
  @:op( A%B) inline public function modulo(other : Float) : Zettabit
    return this % other;
  @:op(A==B) inline public function equal(other : Zettabit) : Bool
    return this == other;
  public function nearEqual(other : Zettabit) : Bool
    return Floats.nearEqual(this, other.toFloat());
  @:op(A!=B) inline public function notEqual(other : Zettabit) : Bool
    return this != other;
  @:op( A<B) inline public function less(other : Zettabit) : Bool
    return this < other.toFloat();
  @:op(A<=B) inline public function lessEqual(other : Zettabit) : Bool
    return this <= other.toFloat();
  @:op( A>B) inline public function more(other : Zettabit) : Bool
    return this > other.toFloat();
  @:op(A>=B) inline public function moreEqual(other : Zettabit) : Bool
    return this >= other.toFloat();

  @:to inline public function toFloat() : Float
    return this;

  @:to inline public function toByte() : Byte
    return this * 1e+21;
  @:to inline public function toKilobyte() : Kilobyte
    return this * 9.765625e+17;
  @:to inline public function toMegabyte() : Megabyte
    return this * 953674316406250;
  @:to inline public function toGigabyte() : Gigabyte
    return this * 931322574615.479;
  @:to inline public function toTerabyte() : Terabyte
    return this * 909494701.772928;
  @:to inline public function toPetabyte() : Petabyte
    return this * 888178.419700125;
  @:to inline public function toExabyte() : Exabyte
    return this * 867.361737988401;
  @:to inline public function toZettabyte() : Zettabyte
    return this * 0.847032947254301;
  @:to inline public function toYottabyte() : Yottabyte
    return this * 0.000827180612553027;
  @:to inline public function toKilobit() : Kilobit
    return this * 1e+18;
  @:to inline public function toMegabit() : Megabit
    return this * 1e+15;
  @:to inline public function toGigabit() : Gigabit
    return this * 1000000000000;
  @:to inline public function toTerabit() : Terabit
    return this * 1000000000;
  @:to inline public function toPetabit() : Petabit
    return this * 1000000;
  @:to inline public function toExabit() : Exabit
    return this * 1000;
  @:to inline public function toYottabit() : Yottabit
    return this * 0.001;

  @:to inline public function toString() : String
    return this + symbol;

  public static inline var symbol : String = "Z";
}