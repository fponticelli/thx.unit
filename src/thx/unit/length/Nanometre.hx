package thx.unit.length;

using thx.Floats;
import thx.Decimal;

abstract Nanometre(Decimal) {
  static var ofUnit : Decimal = 1e-09;

  @:from inline static public function fromDecimal(value : Decimal) : Nanometre
    return new Nanometre(value);

  @:from inline static public function fromInt(value : Int) : Nanometre
    return fromDecimal(Decimal.fromInt(value));

  @:from inline static public function fromFloat(value : Float) : Nanometre
    return fromDecimal(Decimal.fromFloat(value));

  inline function new(value : Decimal)
    this = value;

  inline public function abs() : Nanometre
    return this.abs();

  inline public function min(that : Nanometre) : Nanometre
    return this.min(that.toDecimal());

  inline public function max(that : Nanometre) : Nanometre
    return this.max(that.toDecimal());

  @:op( -A ) inline public function negate() : Nanometre
    return -this;
  @:op( A+B) inline public function add(that : Nanometre) : Nanometre
    return this.add(that.toDecimal());
  @:op( A-B) inline public function subtract(that : Nanometre) : Nanometre
    return this.subtract(that.toDecimal());
  @:op( A*B) inline public function multiply(that : Decimal) : Nanometre
    return this.multiply(that);
  @:op( A/B) inline public function divide(that : Decimal) : Nanometre
    return this.divide(that);
  @:op( A%B) inline public function modulo(that : Decimal) : Nanometre
    return this.modulo(that);
  @:op(A==B) inline public function equal(that : Nanometre) : Bool
    return this.equals(that.toDecimal());
  public function nearEquals(that : Nanometre) : Bool
    return Floats.nearEquals(this.toFloat(), that.toFloat());
  @:op(A!=B) inline public function notEqual(that : Nanometre) : Bool
    return !this.equals(that.toDecimal());
  @:op( A<B) inline public function less(that : Nanometre) : Bool
    return this.less(that.toDecimal());
  @:op(A<=B) inline public function lessEqual(that : Nanometre) : Bool
    return this.lessEqual(that.toDecimal());
  @:deprecated("use greater instead or simply >")
  inline public function more(that : Nanometre) : Bool
    return greater(that);
  @:op( A>B) inline public function greater(that : Nanometre) : Bool
    return this.greater(that.toDecimal());
  @:deprecated("use greaterEqual instead or simply >=")
  inline public function moreEqual(that : Nanometre) : Bool
    return greaterEqual(that);
  @:op(A>=B) inline public function greaterEqual(that : Nanometre) : Bool
    return this.greaterEqual(that.toDecimal());

  inline public function toDecimal() : Decimal
    return this;

  inline public function toFloat() : Float
    return this.toFloat();


  static var dividerKilometre : Decimal = 1000;
  @:to inline public function toKilometre() : Kilometre
    return (this * ofUnit) / dividerKilometre;

  static var dividerMetre : Decimal = 1;
  @:to inline public function toMetre() : Metre
    return (this * ofUnit) / dividerMetre;

  static var dividerCentimetre : Decimal = 0.01;
  @:to inline public function toCentimetre() : Centimetre
    return (this * ofUnit) / dividerCentimetre;

  static var dividerMillimetre : Decimal = 0.001;
  @:to inline public function toMillimetre() : Millimetre
    return (this * ofUnit) / dividerMillimetre;

  static var dividerMicrometre : Decimal = 1e-06;
  @:to inline public function toMicrometre() : Micrometre
    return (this * ofUnit) / dividerMicrometre;

  static var dividerLeague : Decimal = 4828.032;
  @:to inline public function toLeague() : League
    return (this * ofUnit) / dividerLeague;

  static var dividerMile : Decimal = 1609.344;
  @:to inline public function toMile() : Mile
    return (this * ofUnit) / dividerMile;

  static var dividerFurlong : Decimal = 201.168;
  @:to inline public function toFurlong() : Furlong
    return (this * ofUnit) / dividerFurlong;

  static var dividerChain : Decimal = 20.1168;
  @:to inline public function toChain() : Chain
    return (this * ofUnit) / dividerChain;

  static var dividerYard : Decimal = 0.9144;
  @:to inline public function toYard() : Yard
    return (this * ofUnit) / dividerYard;

  static var dividerFoot : Decimal = 0.3048;
  @:to inline public function toFoot() : Foot
    return (this * ofUnit) / dividerFoot;

  static var dividerInch : Decimal = 0.0254;
  @:to inline public function toInch() : Inch
    return (this * ofUnit) / dividerInch;

  static var dividerLine : Decimal = 0.00211666666667;
  @:to inline public function toLine() : Line
    return (this * ofUnit) / dividerLine;

  static var dividerThou : Decimal = 2.54e-05;
  @:to inline public function toThou() : Thou
    return (this * ofUnit) / dividerThou;

  static var dividerFathom : Decimal = 1.8288;
  @:to inline public function toFathom() : Fathom
    return (this * ofUnit) / dividerFathom;

  static var dividerNauticalMile : Decimal = 1852;
  @:to inline public function toNauticalMile() : NauticalMile
    return (this * ofUnit) / dividerNauticalMile;

  static var dividerEarthRadius : Decimal = 6371009;
  @:to inline public function toEarthRadius() : EarthRadius
    return (this * ofUnit) / dividerEarthRadius;

  static var dividerAstronomicalUnit : Decimal = 149597870700;
  @:to inline public function toAstronomicalUnit() : AstronomicalUnit
    return (this * ofUnit) / dividerAstronomicalUnit;

  static var dividerLightYear : Decimal = 9.4607304725808e+15;
  @:to inline public function toLightYear() : LightYear
    return (this * ofUnit) / dividerLightYear;


  @:to inline public function toString() : String
    return this.toString() + symbol;

  public static inline var symbol : String = "nm";
}
