package thx.unit.mass;

import thx.Decimal;

abstract Milligram(Decimal) {
  static var ofUnit : Decimal = "0.000001"; 
  @:from inline static public function fromDecimal(value : Decimal) : Milligram
    return new Milligram(value);

  @:from inline static public function fromInt(value : Int) : Milligram 
    return fromDecimal(Decimal.fromInt(value));
  

  @:from inline static public function fromFloat(value : Float) : Milligram
    return new Milligram(value);


  inline function new(value : Decimal)
    this = value;

  inline public function abs() : Milligram
    return this.abs();

  inline public function min(that : Milligram) : Milligram
    return this.min(that.toDecimal());

  inline public function max(that : Milligram) : Milligram
    return this.max(that.toDecimal());

  @:op( -A ) inline public function negate() : Milligram
    return -this;
  @:op( A+B) inline public function add(that : Milligram) : Milligram
    return this + that.toDecimal();
  @:op( A-B) inline public function subtract(that : Milligram) : Milligram
    return this - that.toDecimal();
  @:op( A*B) inline public function multiply(that : Decimal) : Milligram
    return this * that;
  @:op( A/B) inline public function divide(that : Decimal) : Milligram
    return this / that;
  @:op( A%B) inline public function modulo(that : Decimal) : Milligram
    return this % that;

  inline public function equalsTo(that : Milligram) : Bool
    return this == that.toDecimal();
  @:op(A==B)
  inline static public function equals(self : Milligram, that : Milligram) : Bool
    return self.toDecimal() == that.toDecimal();

  public function nearEqualsTo(that : Milligram) : Bool 
    return Floats.nearEquals(this.toFloat(), that.toFloat());
  
  public static function nearEquals(self : Milligram, that : Milligram) : Bool 
    return Floats.nearEquals(self.toFloat(), that.toFloat());
  

  inline public function notEqualsTo(that : Milligram) : Bool
    return this != that.toDecimal();
  @:op(A!=B)
  inline static public function notEquals(self : Milligram, that : Milligram) : Bool
    return self.toDecimal() != that.toDecimal();

  inline public function lessThan(that : Milligram) : Bool
    return this < that.toDecimal();
  @:op( A<B)
  inline static public function less(self : Milligram, that : Milligram) : Bool
    return self.toDecimal() < that.toDecimal();

  inline public function lessEqualsTo(that : Milligram) : Bool
    return this <= that.toDecimal();
  @:op(A<=B)
  inline static public function lessEquals(self : Milligram, that : Milligram) : Bool
    return self.toDecimal() <= that.toDecimal();

  inline public function greaterThan(that : Milligram) : Bool
    return this > that.toDecimal();
  @:op( A>B)
  inline static public function greater(self : Milligram, that : Milligram) : Bool
    return self.toDecimal() >= that.toDecimal();

  inline public function greaterEqualsTo(that : Milligram) : Bool
    return this >= that.toDecimal();
  @:op(A>=B)
  inline static public function greaterEquals(self : Milligram, that : Milligram) : Bool
    return self.toDecimal() >= that.toDecimal();
 inline public function toDecimal() : Decimal
    return this;

  inline public function toFloat() : Float
    return this.toFloat();



  static var dividerMegagram : Decimal = "1000";
  @:to inline public function toMegagram() : Megagram
      return ((this * ofUnit) / dividerMegagram).trim();
    
  static var dividerKilogram : Decimal = "1";
  @:to inline public function toKilogram() : Kilogram
      return ((this * ofUnit) / dividerKilogram).trim();
    
  static var dividerGram : Decimal = "0.001";
  @:to inline public function toGram() : Gram
      return ((this * ofUnit) / dividerGram).trim();
    
  static var dividerCentigram : Decimal = "0.00001";
  @:to inline public function toCentigram() : Centigram
      return ((this * ofUnit) / dividerCentigram).trim();
    
  static var dividerMilligram : Decimal = "0.000001";
  @:to inline public function toMilligram() : Milligram
      return this;
    
  static var dividerMicrogram : Decimal = "0.000000001";
  @:to inline public function toMicrogram() : Microgram
      return ((this * ofUnit) / dividerMicrogram).trim();
    
  static var dividerNanogram : Decimal = "0.000000000001";
  @:to inline public function toNanogram() : Nanogram
      return ((this * ofUnit) / dividerNanogram).trim();
    
  static var dividerPicogram : Decimal = "0.000000000000001";
  @:to inline public function toPicogram() : Picogram
      return ((this * ofUnit) / dividerPicogram).trim();
    
  static var dividerTon : Decimal = "1016.0469088";
  @:to inline public function toTon() : Ton
      return ((this * ofUnit) / dividerTon).trim();
    
  static var dividerHundredweight : Decimal = "50.80234544";
  @:to inline public function toHundredweight() : Hundredweight
      return ((this * ofUnit) / dividerHundredweight).trim();
    
  static var dividerQuarter : Decimal = "12.70058636";
  @:to inline public function toQuarter() : Quarter
      return ((this * ofUnit) / dividerQuarter).trim();
    
  static var dividerStone : Decimal = "6.35029318";
  @:to inline public function toStone() : Stone
      return ((this * ofUnit) / dividerStone).trim();
    
  static var dividerPound : Decimal = "0.45359237";
  @:to inline public function toPound() : Pound
      return ((this * ofUnit) / dividerPound).trim();
    
  static var dividerOunce : Decimal = "0.028349523125";
  @:to inline public function toOunce() : Ounce
      return ((this * ofUnit) / dividerOunce).trim();
    
  static var dividerDrachm : Decimal = "0.0017718451953125";
  @:to inline public function toDrachm() : Drachm
      return ((this * ofUnit) / dividerDrachm).trim();
    
  static var dividerGrain : Decimal = "0.00006479891";
  @:to inline public function toGrain() : Grain
      return ((this * ofUnit) / dividerGrain).trim();
    
  static var dividerUnifiedAtomicMassUnit : Decimal = "1.660538921e-27";
  @:to inline public function toUnifiedAtomicMassUnit() : UnifiedAtomicMassUnit
      return ((this * ofUnit) / dividerUnifiedAtomicMassUnit).trim();
    
  static var dividerDalton : Decimal = "1.660538921e-27";
  @:to inline public function toDalton() : Dalton
      return ((this * ofUnit) / dividerDalton).trim();
    
  static var dividerPlankMass : Decimal = "2.17651e-8";
  @:to inline public function toPlankMass() : PlankMass
      return ((this * ofUnit) / dividerPlankMass).trim();
    
  static var dividerSlug : Decimal = "14.593903";
  @:to inline public function toSlug() : Slug
      return ((this * ofUnit) / dividerSlug).trim();
    
  static var dividerSolarMass : Decimal = "1.98855e30";
  @:to inline public function toSolarMass() : SolarMass
      return ((this * ofUnit) / dividerSolarMass).trim();
    
  @:to inline public function toString() : String
    return "" + this + symbol;

  public static inline var symbol : String = "mg";
}
