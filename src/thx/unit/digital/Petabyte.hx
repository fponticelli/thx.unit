package thx.unit.digital;

import thx.core.Floats;

// TODO parse string

abstract Petabyte(Float) {
  @:from inline static public function floatToPetabyte(value : Float) : Petabyte
    return new Petabyte(value);

  function new(value : Float)
    this = value;
  @:op( -A ) inline public function negate() : Petabyte
    return -this;
  @:op( A+B) inline public function add(other : Petabyte) : Petabyte
    return this + other.toFloat();
  @:op( A-B) inline public function subtract(other : Petabyte) : Petabyte
    return this - other.toFloat();
  @:op( A*B) inline public function multiply(other : Float) : Petabyte
    return this * other;
  @:op( A/B) inline public function divide(other : Float) : Petabyte
    return this / other;
  @:op( A%B) inline public function modulo(other : Float) : Petabyte
    return this % other;
  @:op(A==B) inline public function equal(other : Petabyte) : Bool
    return this == other;
  public function nearEquals(other : Petabyte) : Bool
    return Floats.nearEquals(this, other.toFloat());
  @:op(A!=B) inline public function notEqual(other : Petabyte) : Bool
    return this != other;
  @:op( A<B) inline public function less(other : Petabyte) : Bool
    return this < other.toFloat();
  @:op(A<=B) inline public function lessEqual(other : Petabyte) : Bool
    return this <= other.toFloat();
  @:op( A>B) inline public function more(other : Petabyte) : Bool
    return this > other.toFloat();
  @:op(A>=B) inline public function moreEqual(other : Petabyte) : Bool
    return this >= other.toFloat();

  @:to inline public function toFloat() : Float
    return this;

  @:to inline public function toByte() : Byte
    return this * 1.12589990684262e+15;
  @:to inline public function toKilobyte() : Kilobyte
    return this * 1099511627776;
  @:to inline public function toMegabyte() : Megabyte
    return this * 1073741824;
  @:to inline public function toGigabyte() : Gigabyte
    return this * 1048576;
  @:to inline public function toTerabyte() : Terabyte
    return this * 1024;
  @:to inline public function toExabyte() : Exabyte
    return this * 0.000976562499999997;
  @:to inline public function toZettabyte() : Zettabyte
    return this * 9.53674316406251e-07;
  @:to inline public function toYottabyte() : Yottabyte
    return this * 9.31322574615478e-10;
  @:to inline public function toKilobit() : Kilobit
    return this * 1125899906842.62;
  @:to inline public function toMegabit() : Megabit
    return this * 1125899906.84262;
  @:to inline public function toGigabit() : Gigabit
    return this * 1125899.90684262;
  @:to inline public function toTerabit() : Terabit
    return this * 1125.89990684262;
  @:to inline public function toPetabit() : Petabit
    return this * 1.12589990684262;
  @:to inline public function toExabit() : Exabit
    return this * 0.00112589990684262;
  @:to inline public function toZettabit() : Zettabit
    return this * 1.12589990684262e-06;
  @:to inline public function toYottabit() : Yottabit
    return this * 1.12589990684262e-09;

  @:to inline public function toString() : String
    return this + symbol;

  public static inline var symbol : String = "Pi";
}