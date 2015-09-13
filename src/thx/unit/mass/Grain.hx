package thx.unit.mass;

using thx.Floats;
import thx.Decimal;

abstract Grain(Decimal) {
  @:from inline static public function fromDecimal(value : Decimal) : Grain
    return new Grain(value);

  @:from inline static public function fromInt(value : Int) : Grain
    return fromDecimal(Decimal.fromInt(value));

  @:from inline static public function fromFloat(value : Float) : Grain
    return fromDecimal(Decimal.fromFloat(value));

  inline function new(value : Decimal)
    this = value;

  inline public function abs() : Grain
    return this.abs();

  inline public function min(that : Grain) : Grain
    return this.min(that.toDecimal());

  inline public function max(that : Grain) : Grain
    return this.max(that.toDecimal());

  @:op( -A ) inline public function negate() : Grain
    return -this;
  @:op( A+B) inline public function add(that : Grain) : Grain
    return this.add(that.toDecimal());
  @:op( A-B) inline public function subtract(that : Grain) : Grain
    return this.subtract(that.toDecimal());
  @:op( A*B) inline public function multiply(that : Decimal) : Grain
    return this.multiply(that);
  @:op( A/B) inline public function divide(that : Decimal) : Grain
    return this.divide(that);
  @:op( A%B) inline public function modulo(that : Decimal) : Grain
    return this.modulo(that);
  @:op(A==B) inline public function equal(that : Grain) : Bool
    return this.equals(that.toDecimal());
  public function nearEquals(that : Grain) : Bool
    return Floats.nearEquals(this.toFloat(), that.toFloat());
  @:op(A!=B) inline public function notEqual(that : Grain) : Bool
    return !this.equals(that.toDecimal());
  @:op( A<B) inline public function less(that : Grain) : Bool
    return this.less(that.toDecimal());
  @:op(A<=B) inline public function lessEqual(that : Grain) : Bool
    return this.lessEqual(that.toDecimal());
  @:deprecated("use greater instead or simply >")
  inline public function more(that : Grain) : Bool
    return greater(that);
  @:op( A>B) inline public function greater(that : Grain) : Bool
    return this.greater(that.toDecimal());
  @:deprecated("use greaterEqual instead or simply >=")
  inline public function moreEqual(that : Grain) : Bool
    return greaterEqual(that);
  @:op(A>=B) inline public function greaterEqual(that : Grain) : Bool
    return this.greaterEqual(that.toDecimal());

  inline public function toDecimal() : Decimal
    return this;

  inline public function toFloat() : Float
    return this.toFloat();


  @:to inline public function toMegagram() : Megagram
    return this * 6.479891e-08;
  @:to inline public function toKilogram() : Kilogram
    return this * 6.479891e-05;
  @:to inline public function toGram() : Gram
    return this * 0.06479891;
  @:to inline public function toCentigram() : Centigram
    return this * 6.479891;
  @:to inline public function toMilligram() : Milligram
    return this * 64.79891;
  @:to inline public function toMicrogram() : Microgram
    return this * 64798.91;
  @:to inline public function toNanogram() : Nanogram
    return this * 64798910;
  @:to inline public function toPicogram() : Picogram
    return this * 64798910000;
  @:to inline public function toTon() : Ton
    return this * 6.37755102040816e-08;
  @:to inline public function toHundredweight() : Hundredweight
    return this * 1.27551020408163e-06;
  @:to inline public function toQuarter() : Quarter
    return this * 5.10204081632653e-06;
  @:to inline public function toStone() : Stone
    return this * 1.02040816326531e-05;
  @:to inline public function toPound() : Pound
    return this * 0.000142857142857143;
  @:to inline public function toOunce() : Ounce
    return this * 0.00228571428571429;
  @:to inline public function toDrachm() : Drachm
    return this * 0.0365714285714286;
  @:to inline public function toUnifiedAtomicMassUnit() : UnifiedAtomicMassUnit
    return this * 3.90228191465559e+22;
  @:to inline public function toDalton() : Dalton
    return this * 3.90228191465559e+22;
  @:to inline public function toPlankMass() : PlankMass
    return this * 2977.19330487799;
  @:to inline public function toSlug() : Slug
    return this * 4.44013571969061e-06;
  @:to inline public function toSolarMass() : SolarMass
    return this * 3.25860099067159e-35;

  @:to inline public function toString() : String
    return this.toString() + symbol;

  public static inline var symbol : String = "gr";
}
