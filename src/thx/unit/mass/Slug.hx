package thx.unit.mass;

using thx.Floats;
import thx.Decimal;

abstract Slug(Decimal) {
  @:from inline static public function fromDecimal(value : Decimal) : Slug
    return new Slug(value);

  @:from inline static public function fromInt(value : Int) : Slug
    return fromDecimal(Decimal.fromInt(value));

  @:from inline static public function fromFloat(value : Float) : Slug
    return fromDecimal(Decimal.fromFloat(value));

  inline function new(value : Decimal)
    this = value;

  inline public function abs() : Slug
    return this.abs();

  inline public function min(that : Slug) : Slug
    return this.min(that.toDecimal());

  inline public function max(that : Slug) : Slug
    return this.max(that.toDecimal());

  @:op( -A ) inline public function negate() : Slug
    return -this;
  @:op( A+B) inline public function add(that : Slug) : Slug
    return this.add(that.toDecimal());
  @:op( A-B) inline public function subtract(that : Slug) : Slug
    return this.subtract(that.toDecimal());
  @:op( A*B) inline public function multiply(that : Decimal) : Slug
    return this.multiply(that);
  @:op( A/B) inline public function divide(that : Decimal) : Slug
    return this.divide(that);
  @:op( A%B) inline public function modulo(that : Decimal) : Slug
    return this.modulo(that);
  @:op(A==B) inline public function equal(that : Slug) : Bool
    return this.equals(that.toDecimal());
  public function nearEquals(that : Slug) : Bool
    return Floats.nearEquals(this.toFloat(), that.toFloat());
  @:op(A!=B) inline public function notEqual(that : Slug) : Bool
    return !this.equals(that.toDecimal());
  @:op( A<B) inline public function less(that : Slug) : Bool
    return this.less(that.toDecimal());
  @:op(A<=B) inline public function lessEqual(that : Slug) : Bool
    return this.lessEqual(that.toDecimal());
  @:deprecated("use greater instead or simply >")
  inline public function more(that : Slug) : Bool
    return greater(that);
  @:op( A>B) inline public function greater(that : Slug) : Bool
    return this.greater(that.toDecimal());
  @:deprecated("use greaterEqual instead or simply >=")
  inline public function moreEqual(that : Slug) : Bool
    return greaterEqual(that);
  @:op(A>=B) inline public function greaterEqual(that : Slug) : Bool
    return this.greaterEqual(that.toDecimal());

  inline public function toDecimal() : Decimal
    return this;

  inline public function toFloat() : Float
    return this.toFloat();


  @:to inline public function toMegagram() : Megagram
    return this * 0.014593903;
  @:to inline public function toKilogram() : Kilogram
    return this * 14.593903;
  @:to inline public function toGram() : Gram
    return this * 14593.903;
  @:to inline public function toCentigram() : Centigram
    return this * 1459390.3;
  @:to inline public function toMilligram() : Milligram
    return this * 14593903;
  @:to inline public function toMicrogram() : Microgram
    return this * 14593903000;
  @:to inline public function toNanogram() : Nanogram
    return this * 14593903000000;
  @:to inline public function toPicogram() : Picogram
    return this * 1.4593903e+16;
  @:to inline public function toTon() : Ton
    return this * 0.0143634145959226;
  @:to inline public function toHundredweight() : Hundredweight
    return this * 0.287268291918453;
  @:to inline public function toQuarter() : Quarter
    return this * 1.14907316767381;
  @:to inline public function toStone() : Stone
    return this * 2.29814633534762;
  @:to inline public function toPound() : Pound
    return this * 32.1740486948667;
  @:to inline public function toOunce() : Ounce
    return this * 514.784779117867;
  @:to inline public function toDrachm() : Drachm
    return this * 8236.55646588588;
  @:to inline public function toGrain() : Grain
    return this * 225218.340864067;
  @:to inline public function toUnifiedAtomicMassUnit() : UnifiedAtomicMassUnit
    return this * 8.78865458402586e+27;
  @:to inline public function toDalton() : Dalton
    return this * 8.78865458402586e+27;
  @:to inline public function toPlankMass() : PlankMass
    return this * 670518536.55623;
  @:to inline public function toSolarMass() : SolarMass
    return this * 7.33896708657062e-30;

  @:to inline public function toString() : String
    return this.toString() + symbol;

  public static inline var symbol : String = "slug";
}
