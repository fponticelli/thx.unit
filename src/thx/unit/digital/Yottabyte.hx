package thx.unit.digital;

import thx.Floats;

// TODO parse string

abstract Yottabyte(Float) {
  @:from inline static public function floatToYottabyte(value : Float) : Yottabyte
    return new Yottabyte(value);

  function new(value : Float)
    this = value;

  inline public function abs() : Yottabyte
    return Math.abs(this);

  inline public function min(other : Yottabyte) : Yottabyte
    return Math.min(this, other.toFloat());

  inline public function max(other : Yottabyte) : Yottabyte
    return Math.max(this, other.toFloat());

  @:op( -A ) inline public function negate() : Yottabyte
    return -this;
  @:op( A+B) inline public function add(other : Yottabyte) : Yottabyte
    return this + other.toFloat();
  @:op( A-B) inline public function subtract(other : Yottabyte) : Yottabyte
    return this - other.toFloat();
  @:op( A*B) inline public function multiply(other : Float) : Yottabyte
    return this * other;
  @:op( A/B) inline public function divide(other : Float) : Yottabyte
    return this / other;
  @:op( A%B) inline public function modulo(other : Float) : Yottabyte
    return this % other;
  @:op(A==B) inline public function equal(other : Yottabyte) : Bool
    return this == other;
  public function nearEquals(other : Yottabyte) : Bool
    return Floats.nearEquals(this, other.toFloat());
  @:op(A!=B) inline public function notEqual(other : Yottabyte) : Bool
    return this != other;
  @:op( A<B) inline public function less(other : Yottabyte) : Bool
    return this < other.toFloat();
  @:op(A<=B) inline public function lessEqual(other : Yottabyte) : Bool
    return this <= other.toFloat();
  @:op( A>B) inline public function more(other : Yottabyte) : Bool
    return this > other.toFloat();
  @:op(A>=B) inline public function moreEqual(other : Yottabyte) : Bool
    return this >= other.toFloat();

  @:to inline public function toFloat() : Float
    return this;

  @:to inline public function toByte() : Byte
    return this * 1.20892581961463e+24;
  @:to inline public function toKilobyte() : Kilobyte
    return this * 1.18059162071741e+21;
  @:to inline public function toMegabyte() : Megabyte
    return this * 1.15292150460685e+18;
  @:to inline public function toGigabyte() : Gigabyte
    return this * 1.12589990684262e+15;
  @:to inline public function toTerabyte() : Terabyte
    return this * 1099511627776;
  @:to inline public function toPetabyte() : Petabyte
    return this * 1073741824;
  @:to inline public function toExabyte() : Exabyte
    return this * 1048576;
  @:to inline public function toZettabyte() : Zettabyte
    return this * 1024;
  @:to inline public function toKilobit() : Kilobit
    return this * 1.20892581961463e+21;
  @:to inline public function toMegabit() : Megabit
    return this * 1.20892581961463e+18;
  @:to inline public function toGigabit() : Gigabit
    return this * 1.20892581961463e+15;
  @:to inline public function toTerabit() : Terabit
    return this * 1208925819614.63;
  @:to inline public function toPetabit() : Petabit
    return this * 1208925819.61463;
  @:to inline public function toExabit() : Exabit
    return this * 1208925.81961463;
  @:to inline public function toZettabit() : Zettabit
    return this * 1208.92581961463;
  @:to inline public function toYottabit() : Yottabit
    return this * 1.20892581961463;

  @:to inline public function toString() : String
    return this + symbol;

  public static inline var symbol : String = "Yi";
}