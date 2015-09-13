package thx.unit.mass;

using thx.Floats;
import thx.Decimal;

abstract UnifiedAtomicMassUnit(Decimal) {
  @:from inline static public function fromDecimal(value : Decimal) : UnifiedAtomicMassUnit
    return new UnifiedAtomicMassUnit(value);

  @:from inline static public function fromInt(value : Int) : UnifiedAtomicMassUnit
    return fromDecimal(Decimal.fromInt(value));

  @:from inline static public function fromFloat(value : Float) : UnifiedAtomicMassUnit
    return fromDecimal(Decimal.fromFloat(value));

  inline function new(value : Decimal)
    this = value;

  inline public function abs() : UnifiedAtomicMassUnit
    return this.abs();

  inline public function min(that : UnifiedAtomicMassUnit) : UnifiedAtomicMassUnit
    return this.min(that.toDecimal());

  inline public function max(that : UnifiedAtomicMassUnit) : UnifiedAtomicMassUnit
    return this.max(that.toDecimal());

  @:op( -A ) inline public function negate() : UnifiedAtomicMassUnit
    return -this;
  @:op( A+B) inline public function add(that : UnifiedAtomicMassUnit) : UnifiedAtomicMassUnit
    return this.add(that.toDecimal());
  @:op( A-B) inline public function subtract(that : UnifiedAtomicMassUnit) : UnifiedAtomicMassUnit
    return this.subtract(that.toDecimal());
  @:op( A*B) inline public function multiply(that : Decimal) : UnifiedAtomicMassUnit
    return this.multiply(that);
  @:op( A/B) inline public function divide(that : Decimal) : UnifiedAtomicMassUnit
    return this.divide(that);
  @:op( A%B) inline public function modulo(that : Decimal) : UnifiedAtomicMassUnit
    return this.modulo(that);
  @:op(A==B) inline public function equal(that : UnifiedAtomicMassUnit) : Bool
    return this.equals(that.toDecimal());
  public function nearEquals(that : UnifiedAtomicMassUnit) : Bool
    return Floats.nearEquals(this.toFloat(), that.toFloat());
  @:op(A!=B) inline public function notEqual(that : UnifiedAtomicMassUnit) : Bool
    return !this.equals(that.toDecimal());
  @:op( A<B) inline public function less(that : UnifiedAtomicMassUnit) : Bool
    return this.less(that.toDecimal());
  @:op(A<=B) inline public function lessEqual(that : UnifiedAtomicMassUnit) : Bool
    return this.lessEqual(that.toDecimal());
  @:deprecated("use greater instead or simply >")
  inline public function more(that : UnifiedAtomicMassUnit) : Bool
    return greater(that);
  @:op( A>B) inline public function greater(that : UnifiedAtomicMassUnit) : Bool
    return this.greater(that.toDecimal());
  @:deprecated("use greaterEqual instead or simply >=")
  inline public function moreEqual(that : UnifiedAtomicMassUnit) : Bool
    return greaterEqual(that);
  @:op(A>=B) inline public function greaterEqual(that : UnifiedAtomicMassUnit) : Bool
    return this.greaterEqual(that.toDecimal());

  inline public function toDecimal() : Decimal
    return this;

  inline public function toFloat() : Float
    return this.toFloat();


  @:to inline public function toMegagram() : Megagram
    return this * 1.660538921e-30;
  @:to inline public function toKilogram() : Kilogram
    return this * 1.660538921e-27;
  @:to inline public function toGram() : Gram
    return this * 1.660538921e-24;
  @:to inline public function toCentigram() : Centigram
    return this * 1.660538921e-22;
  @:to inline public function toMilligram() : Milligram
    return this * 1.660538921e-21;
  @:to inline public function toMicrogram() : Microgram
    return this * 1.660538921e-18;
  @:to inline public function toNanogram() : Nanogram
    return this * 1.660538921e-15;
  @:to inline public function toPicogram() : Picogram
    return this * 1.660538921e-12;
  @:to inline public function toTon() : Ton
    return this * 1.63431324540043e-30;
  @:to inline public function toHundredweight() : Hundredweight
    return this * 3.26862649080085e-29;
  @:to inline public function toQuarter() : Quarter
    return this * 1.30745059632034e-28;
  @:to inline public function toStone() : Stone
    return this * 2.61490119264068e-28;
  @:to inline public function toPound() : Pound
    return this * 3.66086166969696e-27;
  @:to inline public function toOunce() : Ounce
    return this * 5.85737867151513e-26;
  @:to inline public function toDrachm() : Drachm
    return this * 9.37180587442421e-25;
  @:to inline public function toGrain() : Grain
    return this * 2.56260316878787e-23;
  @:to inline public function toDalton() : Dalton
    return this * 1;
  @:to inline public function toPlankMass() : PlankMass
    return this * 7.62936499717437e-20;
  @:to inline public function toSlug() : Slug
    return this * 1.13783058651274e-28;
  @:to inline public function toSolarMass() : SolarMass
    return this * 8.35050122451032e-58;

  @:to inline public function toString() : String
    return this.toString() + symbol;

  public static inline var symbol : String = "u";
}
