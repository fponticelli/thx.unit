package thx.unit.length;

using thx.Floats;
import thx.Decimal;

abstract LightYear(Decimal) {
  static var ofUnit : Decimal = "9460730472580800";

  @:from inline static public function fromDecimal(value : Decimal) : LightYear
    return new LightYear(value);

  @:from inline static public function fromInt(value : Int) : LightYear
    return fromDecimal(Decimal.fromInt(value));

  @:from inline static public function fromFloat(value : Float) : LightYear
    return fromDecimal(Decimal.fromFloat(value));

  inline function new(value : Decimal)
    this = value;

  inline public function abs() : LightYear
    return this.abs();

  inline public function min(that : LightYear) : LightYear
    return this.min(that.toDecimal());

  inline public function max(that : LightYear) : LightYear
    return this.max(that.toDecimal());

  @:op( -A ) inline public function negate() : LightYear
    return -this;
  @:op( A+B) inline public function add(that : LightYear) : LightYear
    return this.add(that.toDecimal());
  @:op( A-B) inline public function subtract(that : LightYear) : LightYear
    return this.subtract(that.toDecimal());
  @:op( A*B) inline public function multiply(that : Decimal) : LightYear
    return this.multiply(that);
  @:op( A/B) inline public function divide(that : Decimal) : LightYear
    return this.divide(that);
  @:op( A%B) inline public function modulo(that : Decimal) : LightYear
    return this.modulo(that);
  @:op(A==B) inline public function equals(that : LightYear) : Bool
    return this.equalsTo(that.toDecimal());
  public function nearEquals(that : LightYear) : Bool
    return Floats.nearEquals(this.toFloat(), that.toFloat());
  @:op(A!=B) inline public function notEquals(that : LightYear) : Bool
    return !this.equalsTo(that.toDecimal());
  @:op( A<B) inline public function less(that : LightYear) : Bool
    return this.lessThan(that.toDecimal());
  @:op(A<=B) inline public function lessEquals(that : LightYear) : Bool
    return this.lessEqualsTo(that.toDecimal());
  @:op( A>B) inline public function greater(that : LightYear) : Bool
    return this.greaterThan(that.toDecimal());
  @:op(A>=B) inline public function greaterEquals(that : LightYear) : Bool
    return this.greaterEqualsTo(that.toDecimal());

  inline public function toDecimal() : Decimal
    return this;

  inline public function toFloat() : Float
    return this.toFloat();


  static var dividerKilometre : Decimal = "1000";
  @:to inline public function toKilometre() : Kilometre
    return (this * ofUnit) / dividerKilometre;

  static var dividerMetre : Decimal = "1";
  @:to inline public function toMetre() : Metre
    return (this * ofUnit) / dividerMetre;

  static var dividerCentimetre : Decimal = "0.01";
  @:to inline public function toCentimetre() : Centimetre
    return (this * ofUnit) / dividerCentimetre;

  static var dividerMillimetre : Decimal = "0.001";
  @:to inline public function toMillimetre() : Millimetre
    return (this * ofUnit) / dividerMillimetre;

  static var dividerMicrometre : Decimal = "0.000001";
  @:to inline public function toMicrometre() : Micrometre
    return (this * ofUnit) / dividerMicrometre;

  static var dividerNanometre : Decimal = "0.000000001";
  @:to inline public function toNanometre() : Nanometre
    return (this * ofUnit) / dividerNanometre;

  static var dividerLeague : Decimal = "4828.032";
  @:to inline public function toLeague() : League
    return (this * ofUnit) / dividerLeague;

  static var dividerMile : Decimal = "1609.344";
  @:to inline public function toMile() : Mile
    return (this * ofUnit) / dividerMile;

  static var dividerFurlong : Decimal = "201.168";
  @:to inline public function toFurlong() : Furlong
    return (this * ofUnit) / dividerFurlong;

  static var dividerChain : Decimal = "20.1168";
  @:to inline public function toChain() : Chain
    return (this * ofUnit) / dividerChain;

  static var dividerYard : Decimal = "0.9144";
  @:to inline public function toYard() : Yard
    return (this * ofUnit) / dividerYard;

  static var dividerFoot : Decimal = "0.3048";
  @:to inline public function toFoot() : Foot
    return (this * ofUnit) / dividerFoot;

  static var dividerInch : Decimal = "0.0254";
  @:to inline public function toInch() : Inch
    return (this * ofUnit) / dividerInch;

  static var dividerLine : Decimal = "0.00211666666667";
  @:to inline public function toLine() : Line
    return (this * ofUnit) / dividerLine;

  static var dividerThou : Decimal = "0.0000254";
  @:to inline public function toThou() : Thou
    return (this * ofUnit) / dividerThou;

  static var dividerFathom : Decimal = "1.82880";
  @:to inline public function toFathom() : Fathom
    return (this * ofUnit) / dividerFathom;

  static var dividerNauticalMile : Decimal = "1852";
  @:to inline public function toNauticalMile() : NauticalMile
    return (this * ofUnit) / dividerNauticalMile;

  static var dividerEarthRadius : Decimal = "6371009";
  @:to inline public function toEarthRadius() : EarthRadius
    return (this * ofUnit) / dividerEarthRadius;

  static var dividerAstronomicalUnit : Decimal = "149597870700";
  @:to inline public function toAstronomicalUnit() : AstronomicalUnit
    return (this * ofUnit) / dividerAstronomicalUnit;

  static var dividerLightYear : Decimal = "9460730472580800";
  @:to inline public function toLightYear() : LightYear
    return (this * ofUnit) / dividerLightYear;


  @:to inline public function toString() : String
    return this.toString() + symbol;

  public static inline var symbol : String = "ly";
}
