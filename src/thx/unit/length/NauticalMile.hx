package thx.unit.length;

// TODO parse string

abstract NauticalMile(Float) {
  @:from inline static public function floatToNauticalMile(value : Float) : NauticalMile
    return new NauticalMile(value);

  function new(value : Float)
    this = value;
  @:op( -A ) inline public function negate() : NauticalMile
    return -this;
  @:op( A+B) inline public function add(other : NauticalMile) : NauticalMile
    return this + other.toFloat();
  @:op( A-B) inline public function subtract(other : NauticalMile) : NauticalMile
    return this - other.toFloat();
  @:op( A*B) inline public function multiply(other : Float) : NauticalMile
    return this * other;
  @:op( A/B) inline public function divide(other : Float) : NauticalMile
    return this / other;
  @:op( A%B) inline public function modulo(other : Float) : NauticalMile
    return this % other;
  @:op(A==B) inline public function equal(other : NauticalMile) : Bool
    return this == other;
  @:op(A!=B) inline public function notEqual(other : NauticalMile) : Bool
    return this != other;
  @:op( A<B) inline public function less(other : NauticalMile) : Bool
    return this < other.toFloat();
  @:op(A<=B) inline public function lessEqual(other : NauticalMile) : Bool
    return this <= other.toFloat();
  @:op( A>B) inline public function more(other : NauticalMile) : Bool
    return this > other.toFloat();
  @:op(A>=B) inline public function moreEqual(other : NauticalMile) : Bool
    return this >= other.toFloat();

  inline public function toFloat() : Float
    return this;

  @:to inline public function toKilometre() : Kilometre
    return this * 1.852;
  @:to inline public function toMetre() : Metre
    return this * 1852;
  @:to inline public function toCentimetre() : Centimetre
    return this * 185200;
  @:to inline public function toMillimetre() : Millimetre
    return this * 1852000;
  @:to inline public function toMicrometre() : Micrometre
    return this * 1852000000;
  @:to inline public function toNanometre() : Nanometre
    return this * 1852000000000;
  @:to inline public function toLeague() : League
    return this * 0.383593149341181;
  @:to inline public function toMile() : Mile
    return this * 1.15077944802354;
  @:to inline public function toFurlong() : Furlong
    return this * 9.20623558418834;
  @:to inline public function toChain() : Chain
    return this * 92.0623558418834;
  @:to inline public function toYard() : Yard
    return this * 2025.37182852143;
  @:to inline public function toFoot() : Foot
    return this * 6076.1154855643;
  @:to inline public function toInch() : Inch
    return this * 72913.3858267717;
  @:to inline public function toLine() : Line
    return this * 874960.629919882;
  @:to inline public function toThou() : Thou
    return this * 72913385.8267716;
  @:to inline public function toFathom() : Fathom
    return this * 1012.68591426072;
  @:to inline public function toEarthRadius() : EarthRadius
    return this * 0.000290691788380773;
  @:to inline public function toAstronomicalUnit() : AstronomicalUnit
    return this * 1.23798553504412e-08;
  @:to inline public function toLightYear() : LightYear
    return this * 1.95756554461359e-13;

  @:to inline public function toString() : String
    return this + symbol;

  public static inline var symbol : String = "M";
}