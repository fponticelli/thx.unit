package thx.unit.length;

// TODO parse string

abstract League(Float) {
  @:from inline static public function floatToLeague(value : Float) : League
    return new League(value);

  function new(value : Float)
    this = value;
  @:op( -A ) inline public function negate() : League
    return -this;
  @:op( A+B) inline public function add(other : League) : League
    return this + other.toFloat();
  @:op( A-B) inline public function subtract(other : League) : League
    return this - other.toFloat();
  @:op( A*B) inline public function multiply(other : Float) : League
    return this * other;
  @:op( A/B) inline public function divide(other : Float) : League
    return this / other;
  @:op( A%B) inline public function modulo(other : Float) : League
    return this % other;
  @:op(A==B) inline public function equal(other : League) : Bool
    return this == other;
  @:op(A!=B) inline public function notEqual(other : League) : Bool
    return this != other;
  @:op( A<B) inline public function less(other : League) : Bool
    return this < other.toFloat();
  @:op(A<=B) inline public function lessEqual(other : League) : Bool
    return this <= other.toFloat();
  @:op( A>B) inline public function more(other : League) : Bool
    return this > other.toFloat();
  @:op(A>=B) inline public function moreEqual(other : League) : Bool
    return this >= other.toFloat();

  inline public function toFloat() : Float
    return this;

  @:to inline public function toKilometre() : Kilometre
    return this * 4.828032;
  @:to inline public function toMetre() : Metre
    return this * 4828.032;
  @:to inline public function toCentimetre() : Centimetre
    return this * 482803.2;
  @:to inline public function toMillimetre() : Millimetre
    return this * 4828032;
  @:to inline public function toMicrometre() : Micrometre
    return this * 4828032000;
  @:to inline public function toNanometre() : Nanometre
    return this * 4828032000000;
  @:to inline public function toMile() : Mile
    return this * 3;
  @:to inline public function toFurlong() : Furlong
    return this * 24;
  @:to inline public function toChain() : Chain
    return this * 240;
  @:to inline public function toYard() : Yard
    return this * 5280;
  @:to inline public function toFoot() : Foot
    return this * 15840;
  @:to inline public function toInch() : Inch
    return this * 190080;
  @:to inline public function toLine() : Line
    return this * 2280959.99999641;
  @:to inline public function toThou() : Thou
    return this * 190080000;
  @:to inline public function toFathom() : Fathom
    return this * 2640;
  @:to inline public function toNauticalMile() : NauticalMile
    return this * 2.60692872570194;
  @:to inline public function toEarthRadius() : EarthRadius
    return this * 0.000757812773455508;
  @:to inline public function toAstronomicalUnit() : AstronomicalUnit
    return this * 3.22734005331e-08;
  @:to inline public function toLightYear() : LightYear
    return this * 5.10323385069753e-13;

  @:to inline public function toString() : String
    return this + symbol;

  public static inline var symbol : String = "lea";
}