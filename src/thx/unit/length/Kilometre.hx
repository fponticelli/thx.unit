package thx.unit.length;

abstract Kilometre(Float) {
  @:from inline static public function floatToKilometre(value : Float) : Kilometre
    return new Kilometre(value);

  function new(value : Float)
    this = value;
  @:op(  -A) inline public function negate() : Kilometre
    return -this;
  @:op( A+B) inline public function add(other : Kilometre) : Kilometre
    return this + other.toFloat();
  @:op( A-B) inline public function subtract(other : Kilometre) : Kilometre
    return this - other.toFloat();
  @:op( A*B) inline public function multiply(other : Float) : Kilometre
    return this * other;
  @:op( A/B) inline public function divide(other : Float) : Kilometre
    return this / other;
  @:op( A%B) inline public function modulo(other : Float) : Kilometre
    return this % other;
  @:op(A==B) inline public function equal(other : Kilometre) : Bool
    return this == other;
  @:op(A!=B) inline public function notEqual(other : Kilometre) : Bool
    return this != other;
  @:op( A<B) inline public function less(other : Kilometre) : Bool
    return this < other.toFloat();
  @:op(A<=B) inline public function lessEqual(other : Kilometre) : Bool
    return this <= other.toFloat();
  @:op( A>B) inline public function more(other : Kilometre) : Bool
    return this > other.toFloat();
  @:op(A>=B) inline public function moreEqual(other : Kilometre) : Bool
    return this >= other.toFloat();

  inline public function toFloat() : Float
    return this;

  @:to inline public function toMetre() : Metre
    return this * 1000;
  @:to inline public function toCentimetre() : Centimetre
    return this * 100000;
  @:to inline public function toMillimetre() : Millimetre
    return this * 1000000;
  @:to inline public function toMicrometre() : Micrometre
    return this * 1000000000;
  @:to inline public function toNanometre() : Nanometre
    return this * 1000000000000;
  @:to inline public function toLeague() : League
    return this * 0.207123730745778;
  @:to inline public function toMile() : Mile
    return this * 0.621371192237334;
  @:to inline public function toFurlong() : Furlong
    return this * 4.97096953789867;
  @:to inline public function toChain() : Chain
    return this * 49.7096953789867;
  @:to inline public function toYard() : Yard
    return this * 1093.61329833771;
  @:to inline public function toFoot() : Foot
    return this * 3280.83989501312;
  @:to inline public function toInch() : Inch
    return this * 39370.0787401575;
  @:to inline public function toThou() : Thou
    return this * 39370078.7401575;

  @:to inline public function toString() : String
    return this + symbol;

  public static inline var symbol : String = "km";
}