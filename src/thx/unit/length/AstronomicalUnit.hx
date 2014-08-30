package thx.unit.length;

// TODO parse string

abstract AstronomicalUnit(Float) {
  @:from inline static public function floatToAstronomicalUnit(value : Float) : AstronomicalUnit
    return new AstronomicalUnit(value);

  function new(value : Float)
    this = value;
  @:op( -A ) inline public function negate() : AstronomicalUnit
    return -this;
  @:op( A+B) inline public function add(other : AstronomicalUnit) : AstronomicalUnit
    return this + other.toFloat();
  @:op( A-B) inline public function subtract(other : AstronomicalUnit) : AstronomicalUnit
    return this - other.toFloat();
  @:op( A*B) inline public function multiply(other : Float) : AstronomicalUnit
    return this * other;
  @:op( A/B) inline public function divide(other : Float) : AstronomicalUnit
    return this / other;
  @:op( A%B) inline public function modulo(other : Float) : AstronomicalUnit
    return this % other;
  @:op(A==B) inline public function equal(other : AstronomicalUnit) : Bool
    return this == other;
  @:op(A!=B) inline public function notEqual(other : AstronomicalUnit) : Bool
    return this != other;
  @:op( A<B) inline public function less(other : AstronomicalUnit) : Bool
    return this < other.toFloat();
  @:op(A<=B) inline public function lessEqual(other : AstronomicalUnit) : Bool
    return this <= other.toFloat();
  @:op( A>B) inline public function more(other : AstronomicalUnit) : Bool
    return this > other.toFloat();
  @:op(A>=B) inline public function moreEqual(other : AstronomicalUnit) : Bool
    return this >= other.toFloat();

  inline public function toFloat() : Float
    return this;

  @:to inline public function toKilometre() : Kilometre
    return this * 149597870.7;
  @:to inline public function toMetre() : Metre
    return this * 149597870700;
  @:to inline public function toCentimetre() : Centimetre
    return this * 14959787070000;
  @:to inline public function toMillimetre() : Millimetre
    return this * 149597870700000;
  @:to inline public function toMicrometre() : Micrometre
    return this * 1.495978707e+17;
  @:to inline public function toNanometre() : Nanometre
    return this * 1.495978707e+20;
  @:to inline public function toLeague() : League
    return this * 30985269.0910085;
  @:to inline public function toMile() : Mile
    return this * 92955807.2730255;
  @:to inline public function toFurlong() : Furlong
    return this * 743646458.184204;
  @:to inline public function toChain() : Chain
    return this * 7436464581.84204;
  @:to inline public function toYard() : Yard
    return this * 163602220800.525;
  @:to inline public function toFoot() : Foot
    return this * 490806662401.575;
  @:to inline public function toInch() : Inch
    return this * 5889679948818.9;
  @:to inline public function toLine() : Line
    return this * 70676159385715.5;
  @:to inline public function toThou() : Thou
    return this * 5.8896799488189e+15;
  @:to inline public function toFathom() : Fathom
    return this * 81801110400.2625;
  @:to inline public function toNauticalMile() : NauticalMile
    return this * 80776388.0669546;
  @:to inline public function toEarthRadius() : EarthRadius
    return this * 23481.0327061224;
  @:to inline public function toLightYear() : LightYear
    return this * 1.58125074098207e-05;

  @:to inline public function toString() : String
    return this + symbol;

  public static inline var symbol : String = "au";
}