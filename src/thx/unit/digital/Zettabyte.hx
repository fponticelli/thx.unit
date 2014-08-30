package thx.unit.digital;

import thx.core.Floats;

// TODO parse string

abstract Zettabyte(Float) {
  @:from inline static public function floatToZettabyte(value : Float) : Zettabyte
    return new Zettabyte(value);

  function new(value : Float)
    this = value;
  @:op( -A ) inline public function negate() : Zettabyte
    return -this;
  @:op( A+B) inline public function add(other : Zettabyte) : Zettabyte
    return this + other.toFloat();
  @:op( A-B) inline public function subtract(other : Zettabyte) : Zettabyte
    return this - other.toFloat();
  @:op( A*B) inline public function multiply(other : Float) : Zettabyte
    return this * other;
  @:op( A/B) inline public function divide(other : Float) : Zettabyte
    return this / other;
  @:op( A%B) inline public function modulo(other : Float) : Zettabyte
    return this % other;
  @:op(A==B) inline public function equal(other : Zettabyte) : Bool
    return this == other;
  public function nearEqual(other : Zettabyte) : Bool
    return Floats.nearEqual(this, other.toFloat());
  @:op(A!=B) inline public function notEqual(other : Zettabyte) : Bool
    return this != other;
  @:op( A<B) inline public function less(other : Zettabyte) : Bool
    return this < other.toFloat();
  @:op(A<=B) inline public function lessEqual(other : Zettabyte) : Bool
    return this <= other.toFloat();
  @:op( A>B) inline public function more(other : Zettabyte) : Bool
    return this > other.toFloat();
  @:op(A>=B) inline public function moreEqual(other : Zettabyte) : Bool
    return this >= other.toFloat();

  inline public function toFloat() : Float
    return this;

  @:to inline public function toByte() : Byte
    return this * 1.18059162071741e+21;
  @:to inline public function toKilobyte() : Kilobyte
    return this * 1.15292150460685e+18;
  @:to inline public function toMegabyte() : Megabyte
    return this * 1.12589990684262e+15;
  @:to inline public function toGigabyte() : Gigabyte
    return this * 1099511627776;
  @:to inline public function toTerabyte() : Terabyte
    return this * 1073741824;
  @:to inline public function toPetabyte() : Petabyte
    return this * 1048576;
  @:to inline public function toExabyte() : Exabyte
    return this * 1024;
  @:to inline public function toYottabyte() : Yottabyte
    return this * 0.000976562499999998;
  @:to inline public function toKilobit() : Kilobit
    return this * 1.18059162071741e+18;
  @:to inline public function toMegabit() : Megabit
    return this * 1.18059162071741e+15;
  @:to inline public function toGigabit() : Gigabit
    return this * 1180591620717.41;
  @:to inline public function toTerabit() : Terabit
    return this * 1180591620.71741;
  @:to inline public function toPetabit() : Petabit
    return this * 1180591.62071741;
  @:to inline public function toExabit() : Exabit
    return this * 1180.59162071741;
  @:to inline public function toZettabit() : Zettabit
    return this * 1.18059162071741;
  @:to inline public function toYottabit() : Yottabit
    return this * 0.00118059162071741;

  @:to inline public function toString() : String
    return this + symbol;

  public static inline var symbol : String = "Zi";
}