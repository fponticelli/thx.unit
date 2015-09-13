package thx.unit.mass;

using thx.Floats;
import thx.Decimal;

abstract Hundredweight(Decimal) {
  static var ofUnit : Decimal = "50.80234544";

  @:from inline static public function fromDecimal(value : Decimal) : Hundredweight
    return new Hundredweight(value);

  @:from inline static public function fromInt(value : Int) : Hundredweight
    return fromDecimal(Decimal.fromInt(value));

  @:from inline static public function fromFloat(value : Float) : Hundredweight
    return fromDecimal(Decimal.fromFloat(value));

  inline function new(value : Decimal)
    this = value;

  inline public function abs() : Hundredweight
    return this.abs();

  inline public function min(that : Hundredweight) : Hundredweight
    return this.min(that.toDecimal());

  inline public function max(that : Hundredweight) : Hundredweight
    return this.max(that.toDecimal());

  @:op( -A ) inline public function negate() : Hundredweight
    return -this;
  @:op( A+B) inline public function add(that : Hundredweight) : Hundredweight
    return this.add(that.toDecimal());
  @:op( A-B) inline public function subtract(that : Hundredweight) : Hundredweight
    return this.subtract(that.toDecimal());
  @:op( A*B) inline public function multiply(that : Decimal) : Hundredweight
    return this.multiply(that);
  @:op( A/B) inline public function divide(that : Decimal) : Hundredweight
    return this.divide(that);
  @:op( A%B) inline public function modulo(that : Decimal) : Hundredweight
    return this.modulo(that);
  @:op(A==B) inline public function equal(that : Hundredweight) : Bool
    return this.equals(that.toDecimal());
  public function nearEquals(that : Hundredweight) : Bool
    return Floats.nearEquals(this.toFloat(), that.toFloat());
  @:op(A!=B) inline public function notEqual(that : Hundredweight) : Bool
    return !this.equals(that.toDecimal());
  @:op( A<B) inline public function less(that : Hundredweight) : Bool
    return this.less(that.toDecimal());
  @:op(A<=B) inline public function lessEqual(that : Hundredweight) : Bool
    return this.lessEqual(that.toDecimal());
  @:deprecated("use greater instead or simply >")
  inline public function more(that : Hundredweight) : Bool
    return greater(that);
  @:op( A>B) inline public function greater(that : Hundredweight) : Bool
    return this.greater(that.toDecimal());
  @:deprecated("use greaterEqual instead or simply >=")
  inline public function moreEqual(that : Hundredweight) : Bool
    return greaterEqual(that);
  @:op(A>=B) inline public function greaterEqual(that : Hundredweight) : Bool
    return this.greaterEqual(that.toDecimal());

  inline public function toDecimal() : Decimal
    return this;

  inline public function toFloat() : Float
    return this.toFloat();


  static var dividerMegagram : Decimal = "1000";
  @:to inline public function toMegagram() : Megagram
    return (this * ofUnit) / dividerMegagram;

  static var dividerKilogram : Decimal = "1";
  @:to inline public function toKilogram() : Kilogram
    return (this * ofUnit) / dividerKilogram;

  static var dividerGram : Decimal = "0.001";
  @:to inline public function toGram() : Gram
    return (this * ofUnit) / dividerGram;

  static var dividerCentigram : Decimal = "0.00001";
  @:to inline public function toCentigram() : Centigram
    return (this * ofUnit) / dividerCentigram;

  static var dividerMilligram : Decimal = "0.000001";
  @:to inline public function toMilligram() : Milligram
    return (this * ofUnit) / dividerMilligram;

  static var dividerMicrogram : Decimal = "0.000000001";
  @:to inline public function toMicrogram() : Microgram
    return (this * ofUnit) / dividerMicrogram;

  static var dividerNanogram : Decimal = "0.000000000001";
  @:to inline public function toNanogram() : Nanogram
    return (this * ofUnit) / dividerNanogram;

  static var dividerPicogram : Decimal = "0.000000000000001";
  @:to inline public function toPicogram() : Picogram
    return (this * ofUnit) / dividerPicogram;

  static var dividerTon : Decimal = "1016.0469088";
  @:to inline public function toTon() : Ton
    return (this * ofUnit) / dividerTon;

  static var dividerQuarter : Decimal = "12.70058636";
  @:to inline public function toQuarter() : Quarter
    return (this * ofUnit) / dividerQuarter;

  static var dividerStone : Decimal = "6.35029318";
  @:to inline public function toStone() : Stone
    return (this * ofUnit) / dividerStone;

  static var dividerPound : Decimal = "0.45359237";
  @:to inline public function toPound() : Pound
    return (this * ofUnit) / dividerPound;

  static var dividerOunce : Decimal = "0.028349523125";
  @:to inline public function toOunce() : Ounce
    return (this * ofUnit) / dividerOunce;

  static var dividerDrachm : Decimal = "0.0017718451953125";
  @:to inline public function toDrachm() : Drachm
    return (this * ofUnit) / dividerDrachm;

  static var dividerGrain : Decimal = "0.00006479891";
  @:to inline public function toGrain() : Grain
    return (this * ofUnit) / dividerGrain;

  static var dividerUnifiedAtomicMassUnit : Decimal = "1.660538921e-27";
  @:to inline public function toUnifiedAtomicMassUnit() : UnifiedAtomicMassUnit
    return (this * ofUnit) / dividerUnifiedAtomicMassUnit;

  static var dividerDalton : Decimal = "1.660538921e-27";
  @:to inline public function toDalton() : Dalton
    return (this * ofUnit) / dividerDalton;

  static var dividerPlankMass : Decimal = "2.17651e-8";
  @:to inline public function toPlankMass() : PlankMass
    return (this * ofUnit) / dividerPlankMass;

  static var dividerSlug : Decimal = "14.593903";
  @:to inline public function toSlug() : Slug
    return (this * ofUnit) / dividerSlug;

  static var dividerSolarMass : Decimal = "1.98855e30";
  @:to inline public function toSolarMass() : SolarMass
    return (this * ofUnit) / dividerSolarMass;


  @:to inline public function toString() : String
    return this.toString() + symbol;

  public static inline var symbol : String = "cwt";
}
