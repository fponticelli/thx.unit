package thx.unit.digital;

import thx.core.Floats;

// TODO parse string

abstract Exabyte(Float) {
  @:from inline static public function floatToExabyte(value : Float) : Exabyte
    return new Exabyte(value);

  function new(value : Float)
    this = value;
  @:op( -A ) inline public function negate() : Exabyte
    return -this;
  @:op( A+B) inline public function add(other : Exabyte) : Exabyte
    return this + other.toFloat();
  @:op( A-B) inline public function subtract(other : Exabyte) : Exabyte
    return this - other.toFloat();
  @:op( A*B) inline public function multiply(other : Float) : Exabyte
    return this * other;
  @:op( A/B) inline public function divide(other : Float) : Exabyte
    return this / other;
  @:op( A%B) inline public function modulo(other : Float) : Exabyte
    return this % other;
  @:op(A==B) inline public function equal(other : Exabyte) : Bool
    return this == other;
  public function nearEquals(other : Exabyte) : Bool
    return Floats.nearEquals(this, other.toFloat());
  @:op(A!=B) inline public function notEqual(other : Exabyte) : Bool
    return this != other;
  @:op( A<B) inline public function less(other : Exabyte) : Bool
    return this < other.toFloat();
  @:op(A<=B) inline public function lessEqual(other : Exabyte) : Bool
    return this <= other.toFloat();
  @:op( A>B) inline public function more(other : Exabyte) : Bool
    return this > other.toFloat();
  @:op(A>=B) inline public function moreEqual(other : Exabyte) : Bool
    return this >= other.toFloat();

  @:to inline public function toFloat() : Float
    return this;

  @:to inline public function toByte() : Byte
    return this * 1.15292150460685e+18;
  @:to inline public function toKilobyte() : Kilobyte
    return this * 1.12589990684263e+15;
  @:to inline public function toMegabyte() : Megabyte
    return this * 1099511627776;
  @:to inline public function toGigabyte() : Gigabyte
    return this * 1073741824;
  @:to inline public function toTerabyte() : Terabyte
    return this * 1048576;
  @:to inline public function toPetabyte() : Petabyte
    return this * 1024;
  @:to inline public function toZettabyte() : Zettabyte
    return this * 0.000976562500000004;
  @:to inline public function toYottabyte() : Yottabyte
    return this * 9.53674316406252e-07;
  @:to inline public function toKilobit() : Kilobit
    return this * 1.15292150460685e+15;
  @:to inline public function toMegabit() : Megabit
    return this * 1152921504606.85;
  @:to inline public function toGigabit() : Gigabit
    return this * 1152921504.60685;
  @:to inline public function toTerabit() : Terabit
    return this * 1152921.50460685;
  @:to inline public function toPetabit() : Petabit
    return this * 1152.92150460685;
  @:to inline public function toExabit() : Exabit
    return this * 1.15292150460685;
  @:to inline public function toZettabit() : Zettabit
    return this * 0.00115292150460685;
  @:to inline public function toYottabit() : Yottabit
    return this * 1.15292150460685e-06;

  @:to inline public function toString() : String
    return this + symbol;

  public static inline var symbol : String = "Ei";
}