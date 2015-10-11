package thx.unit.length;

using thx.Floats;
import thx.Decimal;

abstract Millimetre(Decimal) {
  static var ofUnit : Decimal = "0.001";

  @:from inline static public function fromDecimal(value : Decimal) : Millimetre
    return new Millimetre(value);

  @:from inline static public function fromInt(value : Int) : Millimetre
    return fromDecimal(Decimal.fromInt(value));

  @:from inline static public function fromFloat(value : Float) : Millimetre
    return fromDecimal(Decimal.fromFloat(value));

  inline function new(value : Decimal)
    this = value;

  inline public function abs() : Millimetre
    return this.abs();

  inline public function min(that : Millimetre) : Millimetre
    return this.min(that.toDecimal());

  inline public function max(that : Millimetre) : Millimetre
    return this.max(that.toDecimal());

  @:op( -A ) inline public function negate() : Millimetre
    return -this;
  @:op( A+B) inline public function add(that : Millimetre) : Millimetre
    return this.add(that.toDecimal());
  @:op( A-B) inline public function subtract(that : Millimetre) : Millimetre
    return this.subtract(that.toDecimal());
  @:op( A*B) inline public function multiply(that : Decimal) : Millimetre
    return this.multiply(that);
  @:op( A/B) inline public function divide(that : Decimal) : Millimetre
    return this.divide(that);
  @:op( A%B) inline public function modulo(that : Decimal) : Millimetre
    return this.modulo(that);

  inline public function equalsTo(that : Millimetre) : Bool
    return this.equalsTo(that.toDecimal());
  @:op(A==B)
  inline public function equals(that : Millimetre) : Bool
    return this.equalsTo(that.toDecimal());

  public function nearEqualsTo(that : Millimetre) : Bool
    return Floats.nearEquals(this.toFloat(), that.toFloat());
  public static function nearEquals(self : Millimetre, that : Millimetre) : Bool
    return Floats.nearEquals(self.toFloat(), that.toFloat());

  inline public function notEqualsTo(that : Millimetre) : Bool
    return !this.equalsTo(that.toDecimal());
  @:op(A!=B)
  inline static public function notEquals(self : Millimetre, that : Millimetre) : Bool
    return !self.equalsTo(that.toDecimal());

  inline public function lessThan(that : Millimetre) : Bool
    return this.lessThan(that.toDecimal());
  @:op( A<B)
  inline static public function less(self : Millimetre, that : Millimetre) : Bool
    return self.lessThan(that.toDecimal());

  inline public function lessEqualsTo(that : Millimetre) : Bool
    return this.lessEqualsTo(that.toDecimal());
  @:op(A<=B)
  inline static public function lessEquals(self : Millimetre, that : Millimetre) : Bool
    return self.lessEqualsTo(that.toDecimal());

  inline public function greaterThan(that : Millimetre) : Bool
    return this.greaterThan(that.toDecimal());
  @:op( A>B)
  inline static public function greater(self : Millimetre, that : Millimetre) : Bool
    return self.greaterThan(that.toDecimal());

  inline public function greaterEqualsTo(that : Millimetre) : Bool
    return this.greaterEqualsTo(that.toDecimal());
  @:op(A>=B)
  inline public function greaterEquals(that : Millimetre) : Bool
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

  public static inline var symbol : String = "mm";
}
