package thx.unit.length;

using thx.Floats;
import thx.Decimal;

abstract EarthRadius(Decimal) {
  @:from inline static public function fromDecimal(value : Decimal) : EarthRadius
    return new EarthRadius(value);

  @:from inline static public function fromInt(value : Int) : EarthRadius
    return fromDecimal(Decimal.fromInt(value));

  @:from inline static public function fromFloat(value : Float) : EarthRadius
    return fromDecimal(Decimal.fromFloat(value));

  inline function new(value : Decimal)
    this = value;

  inline public function abs() : EarthRadius
    return this.abs();

  inline public function min(that : EarthRadius) : EarthRadius
    return this.min(that.toDecimal());

  inline public function max(that : EarthRadius) : EarthRadius
    return this.max(that.toDecimal());

  @:op( -A ) inline public function negate() : EarthRadius
    return -this;
  @:op( A+B) inline public function add(that : EarthRadius) : EarthRadius
    return this.add(that.toDecimal());
  @:op( A-B) inline public function subtract(that : EarthRadius) : EarthRadius
    return this.subtract(that.toDecimal());
  @:op( A*B) inline public function multiply(that : Decimal) : EarthRadius
    return this.multiply(that);
  @:op( A/B) inline public function divide(that : Decimal) : EarthRadius
    return this.divide(that);
  @:op( A%B) inline public function modulo(that : Decimal) : EarthRadius
    return this.modulo(that);
  @:op(A==B) inline public function equal(that : EarthRadius) : Bool
    return this.equals(that.toDecimal());
  public function nearEquals(that : EarthRadius) : Bool
    return Floats.nearEquals(this.toFloat(), that.toFloat());
  @:op(A!=B) inline public function notEqual(that : EarthRadius) : Bool
    return !this.equals(that.toDecimal());
  @:op( A<B) inline public function less(that : EarthRadius) : Bool
    return this.less(that.toDecimal());
  @:op(A<=B) inline public function lessEqual(that : EarthRadius) : Bool
    return this.lessEqual(that.toDecimal());
  @:deprecated("use greater instead or simply >")
  inline public function more(that : EarthRadius) : Bool
    return greater(that);
  @:op( A>B) inline public function greater(that : EarthRadius) : Bool
    return this.greater(that.toDecimal());
  @:deprecated("use greaterEqual instead or simply >=")
  inline public function moreEqual(that : EarthRadius) : Bool
    return greaterEqual(that);
  @:op(A>=B) inline public function greaterEqual(that : EarthRadius) : Bool
    return this.greaterEqual(that.toDecimal());

  inline public function toDecimal() : Decimal
    return this;

  inline public function toFloat() : Float
    return this.toFloat();


  @:to inline public function toKilometre() : Kilometre
    return this * 6371.009;
  @:to inline public function toMetre() : Metre
    return this * 6371009;
  @:to inline public function toCentimetre() : Centimetre
    return this * 637100900;
  @:to inline public function toMillimetre() : Millimetre
    return this * 6371009000;
  @:to inline public function toMicrometre() : Micrometre
    return this * 6371009000000;
  @:to inline public function toNanometre() : Nanometre
    return this * 6.371009e+15;
  @:to inline public function toLeague() : League
    return this * 1319.58715269493;
  @:to inline public function toMile() : Mile
    return this * 3958.76145808478;
  @:to inline public function toFurlong() : Furlong
    return this * 31670.0916646783;
  @:to inline public function toChain() : Chain
    return this * 316700.916646783;
  @:to inline public function toYard() : Yard
    return this * 6967420.16622922;
  @:to inline public function toFoot() : Foot
    return this * 20902260.4986877;
  @:to inline public function toInch() : Inch
    return this * 250827125.984252;
  @:to inline public function toLine() : Line
    return this * 3009925511.80628;
  @:to inline public function toThou() : Thou
    return this * 250827125984.252;
  @:to inline public function toFathom() : Fathom
    return this * 3483710.08311461;
  @:to inline public function toNauticalMile() : NauticalMile
    return this * 3440.06965442765;
  @:to inline public function toAstronomicalUnit() : AstronomicalUnit
    return this * 4.25875647172564e-05;
  @:to inline public function toLightYear() : LightYear
    return this * 6.73416182657833e-10;

  @:to inline public function toString() : String
    return this.toString() + symbol;

  public static inline var symbol : String = "earth radius";
}
