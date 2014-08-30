package thx.unit.digital;

import thx.core.Floats;

// TODO parse string

abstract Yottabit(Float) {
  @:from inline static public function floatToYottabit(value : Float) : Yottabit
    return new Yottabit(value);

  function new(value : Float)
    this = value;
  @:op( -A ) inline public function negate() : Yottabit
    return -this;
  @:op( A+B) inline public function add(other : Yottabit) : Yottabit
    return this + other.toFloat();
  @:op( A-B) inline public function subtract(other : Yottabit) : Yottabit
    return this - other.toFloat();
  @:op( A*B) inline public function multiply(other : Float) : Yottabit
    return this * other;
  @:op( A/B) inline public function divide(other : Float) : Yottabit
    return this / other;
  @:op( A%B) inline public function modulo(other : Float) : Yottabit
    return this % other;
  @:op(A==B) inline public function equal(other : Yottabit) : Bool
    return this == other;
  public function nearEqual(other : Yottabit) : Bool
    return Floats.nearEqual(this, other.toFloat());
  @:op(A!=B) inline public function notEqual(other : Yottabit) : Bool
    return this != other;
  @:op( A<B) inline public function less(other : Yottabit) : Bool
    return this < other.toFloat();
  @:op(A<=B) inline public function lessEqual(other : Yottabit) : Bool
    return this <= other.toFloat();
  @:op( A>B) inline public function more(other : Yottabit) : Bool
    return this > other.toFloat();
  @:op(A>=B) inline public function moreEqual(other : Yottabit) : Bool
    return this >= other.toFloat();

  @:to inline public function toFloat() : Float
    return this;

  @:to inline public function toByte() : Byte
    return this * 1e+24;
  @:to inline public function toKilobyte() : Kilobyte
    return this * 9.765625e+20;
  @:to inline public function toMegabyte() : Megabyte
    return this * 9.5367431640625e+17;
  @:to inline public function toGigabyte() : Gigabyte
    return this * 931322574615478;
  @:to inline public function toTerabyte() : Terabyte
    return this * 909494701772.928;
  @:to inline public function toPetabyte() : Petabyte
    return this * 888178419.700125;
  @:to inline public function toExabyte() : Exabyte
    return this * 867361.737988401;
  @:to inline public function toZettabyte() : Zettabyte
    return this * 847.032947254301;
  @:to inline public function toYottabyte() : Yottabyte
    return this * 0.827180612553027;
  @:to inline public function toKilobit() : Kilobit
    return this * 1e+21;
  @:to inline public function toMegabit() : Megabit
    return this * 1e+18;
  @:to inline public function toGigabit() : Gigabit
    return this * 1e+15;
  @:to inline public function toTerabit() : Terabit
    return this * 1000000000000;
  @:to inline public function toPetabit() : Petabit
    return this * 1000000000;
  @:to inline public function toExabit() : Exabit
    return this * 1000000;
  @:to inline public function toZettabit() : Zettabit
    return this * 1000;

  @:to inline public function toString() : String
    return this + symbol;

  public static inline var symbol : String = "Y";
}