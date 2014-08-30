package thx.unit.length;

abstract Metre(Float) {
  @:from inline static public function floatToMetre(value : Float) : Metre
    return new Metre(value);

  function new(value : Float)
    this = value;
  @:op(  -A) inline public function negate() : Metre
    return -this;
  @:op( A+B) inline public function add(other : Metre) : Metre
    return this + other.toFloat();
  @:op( A-B) inline public function subtract(other : Metre) : Metre
    return this - other.toFloat();
  @:op( A*B) inline public function multiply(other : Float) : Metre
    return this * other;
  @:op( A/B) inline public function divide(other : Float) : Metre
    return this / other;
  @:op( A%B) inline public function modulo(other : Float) : Metre
    return this % other;
  @:op(A==B) inline public function equal(other : Metre) : Bool
    return this == other;
  @:op(A!=B) inline public function notEqual(other : Metre) : Bool
    return this != other;
  @:op( A<B) inline public function less(other : Metre) : Bool
    return this < other.toFloat();
  @:op(A<=B) inline public function lessEqual(other : Metre) : Bool
    return this <= other.toFloat();
  @:op( A>B) inline public function more(other : Metre) : Bool
    return this > other.toFloat();
  @:op(A>=B) inline public function moreEqual(other : Metre) : Bool
    return this >= other.toFloat();

  inline public function toFloat() : Float
    return this;

  @:to inline public function toKilometre() : Kilometre
    return this * 0.001;
  @:to inline public function toCentimetre() : Centimetre
    return this * 100;
  @:to inline public function toMillimetre() : Millimetre
    return this * 1000;
  @:to inline public function toMicrometre() : Micrometre
    return this * 1000000;
  @:to inline public function toNanometre() : Nanometre
    return this * 1000000000;
  @:to inline public function toThou() : Thou
    return this * 39370.0787401575;
  @:to inline public function toInch() : Inch
    return this * 39.3700787401575;
  @:to inline public function toFoot() : Foot
    return this * 3.28083989501312;
  @:to inline public function toYard() : Yard
    return this * 1.09361329833771;
  @:to inline public function toChain() : Chain
    return this * 0.0497096953789867;
  @:to inline public function toFurlong() : Furlong
    return this * 0.00497096953789867;
  @:to inline public function toMile() : Mile
    return this * 0.000621371192237334;
  @:to inline public function toLeague() : League
    return this * 0.000207123730745778;

  @:to inline public function toString() : String
    return this + symbol;

  public static inline var symbol : String = "m";
}