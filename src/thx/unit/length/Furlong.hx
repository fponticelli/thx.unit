package thx.unit.length;

abstract Furlong(Float) {
  @:from inline static public function floatToFurlong(value : Float) : Furlong
    return new Furlong(value);

  function new(value : Float)
    this = value;
  @:op(  -A) inline public function negate() : Furlong
    return -this;
  @:op( A+B) inline public function add(other : Furlong) : Furlong
    return this + other.toFloat();
  @:op( A-B) inline public function subtract(other : Furlong) : Furlong
    return this - other.toFloat();
  @:op( A*B) inline public function multiply(other : Float) : Furlong
    return this * other;
  @:op( A/B) inline public function divide(other : Float) : Furlong
    return this / other;
  @:op( A%B) inline public function modulo(other : Float) : Furlong
    return this % other;
  @:op(A==B) inline public function equal(other : Furlong) : Bool
    return this == other;
  @:op(A!=B) inline public function notEqual(other : Furlong) : Bool
    return this != other;
  @:op( A<B) inline public function less(other : Furlong) : Bool
    return this < other.toFloat();
  @:op(A<=B) inline public function lessEqual(other : Furlong) : Bool
    return this <= other.toFloat();
  @:op( A>B) inline public function more(other : Furlong) : Bool
    return this > other.toFloat();
  @:op(A>=B) inline public function moreEqual(other : Furlong) : Bool
    return this >= other.toFloat();

  inline public function toFloat() : Float
    return this;

  @:to inline public function toKilometre() : Kilometre
    return this * 0.201168;
  @:to inline public function toMetre() : Metre
    return this * 201.168;
  @:to inline public function toCentimetre() : Centimetre
    return this * 20116.8;
  @:to inline public function toMillimetre() : Millimetre
    return this * 201168;
  @:to inline public function toMicrometre() : Micrometre
    return this * 201168000;
  @:to inline public function toNanometre() : Nanometre
    return this * 201168000000;
  @:to inline public function toLeague() : League
    return this * 0.0416666666666667;
  @:to inline public function toMile() : Mile
    return this * 0.125;
  @:to inline public function toChain() : Chain
    return this * 10;
  @:to inline public function toYard() : Yard
    return this * 220;
  @:to inline public function toFoot() : Foot
    return this * 660;
  @:to inline public function toInch() : Inch
    return this * 7920;
  @:to inline public function toThou() : Thou
    return this * 7920000;

  @:to inline public function toString() : String
    return this + symbol;

  public static inline var symbol : String = "fur";
}