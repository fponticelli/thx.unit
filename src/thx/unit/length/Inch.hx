package thx.unit.length;

using thx.Floats;
import thx.Decimal;

abstract Inch(Decimal) {
  static var ofUnit : Decimal = "0.0254";

  @:from inline static public function fromDecimal(value : Decimal) : Inch
    return new Inch(value);

  @:from inline static public function fromInt(value : Int) : Inch
    return fromDecimal(Decimal.fromInt(value));

  @:from inline static public function fromFloat(value : Float) : Inch
    return fromDecimal(Decimal.fromFloat(value));

  inline function new(value : Decimal)
    this = value;

  inline public function abs() : Inch
    return this.abs();

  inline public function min(that : Inch) : Inch
    return this.min(that.toDecimal());

  inline public function max(that : Inch) : Inch
    return this.max(that.toDecimal());

  @:op( -A ) inline public function negate() : Inch
    return -this;
  @:op( A+B) inline public function add(that : Inch) : Inch
    return this.add(that.toDecimal());
  @:op( A-B) inline public function subtract(that : Inch) : Inch
    return this.subtract(that.toDecimal());
  @:op( A*B) inline public function multiply(that : Decimal) : Inch
    return this.multiply(that);
  @:op( A/B) inline public function divide(that : Decimal) : Inch
    return this.divide(that);
  @:op( A%B) inline public function modulo(that : Decimal) : Inch
    return this.modulo(that);

  inline public function equalsTo(that : Inch) : Bool
    return this.equalsTo(that.toDecimal());
  @:op(A==B)
  inline static public function equals(self : Inch, that : Inch) : Bool
    return self.equalsTo(that.toDecimal());

  public function nearEqualsTo(that : Inch) : Bool
    return Floats.nearEquals(this.toFloat(), that.toFloat());
  public static function nearEquals(self : Inch, that : Inch) : Bool
    return Floats.nearEquals(self.toFloat(), that.toFloat());

  inline public function notEqualsTo(that : Inch) : Bool
    return !this.equalsTo(that.toDecimal());
  @:op(A!=B)
  inline static public function notEquals(self : Inch, that : Inch) : Bool
    return !self.equalsTo(that.toDecimal());

  inline public function lessThan(that : Inch) : Bool
    return this.lessThan(that.toDecimal());
  @:op( A<B)
  inline static public function less(self : Inch, that : Inch) : Bool
    return self.lessThan(that.toDecimal());

  inline public function lessEqualsTo(that : Inch) : Bool
    return this.lessEqualsTo(that.toDecimal());
  @:op(A<=B)
  inline static public function lessEquals(self : Inch, that : Inch) : Bool
    return self.lessEqualsTo(that.toDecimal());

  inline public function greaterThan(that : Inch) : Bool
    return this.greaterThan(that.toDecimal());
  @:op( A>B)
  inline static public function greater(self : Inch, that : Inch) : Bool
    return self.greaterThan(that.toDecimal());

  inline public function greaterEqualsTo(that : Inch) : Bool
    return this.greaterEqualsTo(that.toDecimal());
  @:op(A>=B)
  inline public function greaterEquals(that : Inch) : Bool
    return this.greaterEqualsTo(that.toDecimal());

  inline public function toDecimal() : Decimal
    return this;

  inline public function toFloat() : Float
    return this.toFloat();


  static var dividerKilometre : Decimal = "1000";
  @:to inline public function toKilometre() : Kilometre
      return ((this * ofUnit) / dividerKilometre).trim();
    
  static var dividerMetre : Decimal = "1";
  @:to inline public function toMetre() : Metre
      return ((this * ofUnit) / dividerMetre).trim();
    
  static var dividerCentimetre : Decimal = "0.01";
  @:to inline public function toCentimetre() : Centimetre
      return ((this * ofUnit) / dividerCentimetre).trim();
    
  static var dividerMillimetre : Decimal = "0.001";
  @:to inline public function toMillimetre() : Millimetre
      return ((this * ofUnit) / dividerMillimetre).trim();
    
  static var dividerMicrometre : Decimal = "0.000001";
  @:to inline public function toMicrometre() : Micrometre
      return ((this * ofUnit) / dividerMicrometre).trim();
    
  static var dividerNanometre : Decimal = "0.000000001";
  @:to inline public function toNanometre() : Nanometre
      return ((this * ofUnit) / dividerNanometre).trim();
    
  static var dividerLeague : Decimal = "4828.032";
  @:to inline public function toLeague() : League
      return ((this * ofUnit) / dividerLeague).trim();
    
  static var dividerMile : Decimal = "1609.344";
  @:to inline public function toMile() : Mile
      return ((this * ofUnit) / dividerMile).trim();
    
  static var dividerFurlong : Decimal = "201.168";
  @:to inline public function toFurlong() : Furlong
      return ((this * ofUnit) / dividerFurlong).trim();
    
  static var dividerChain : Decimal = "20.1168";
  @:to inline public function toChain() : Chain
      return ((this * ofUnit) / dividerChain).trim();
    
  static var dividerYard : Decimal = "0.9144";
  @:to inline public function toYard() : Yard
      return ((this * ofUnit) / dividerYard).trim();
    
  static var dividerFoot : Decimal = "0.3048";
  @:to inline public function toFoot() : Foot
      return ((this * ofUnit) / dividerFoot).trim();
    
  static var dividerInch : Decimal = "0.0254";
  @:to inline public function toInch() : Inch
      return this;
    
  static var dividerLine : Decimal = "0.00211666666667";
  @:to inline public function toLine() : Line
      return ((this * ofUnit) / dividerLine).trim();
    
  static var dividerThou : Decimal = "0.0000254";
  @:to inline public function toThou() : Thou
      return ((this * ofUnit) / dividerThou).trim();
    
  static var dividerFathom : Decimal = "1.82880";
  @:to inline public function toFathom() : Fathom
      return ((this * ofUnit) / dividerFathom).trim();
    
  static var dividerNauticalMile : Decimal = "1852";
  @:to inline public function toNauticalMile() : NauticalMile
      return ((this * ofUnit) / dividerNauticalMile).trim();
    
  static var dividerEarthRadius : Decimal = "6371009";
  @:to inline public function toEarthRadius() : EarthRadius
      return ((this * ofUnit) / dividerEarthRadius).trim();
    
  static var dividerAstronomicalUnit : Decimal = "149597870700";
  @:to inline public function toAstronomicalUnit() : AstronomicalUnit
      return ((this * ofUnit) / dividerAstronomicalUnit).trim();
    
  static var dividerLightYear : Decimal = "9460730472580800";
  @:to inline public function toLightYear() : LightYear
      return ((this * ofUnit) / dividerLightYear).trim();
    
  @:to inline public function toString() : String
    return this.toString() + symbol;

  public static inline var symbol : String = "in";
}
