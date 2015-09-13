package thx.unit.mass;

using thx.Floats;
import thx.Decimal;

abstract Kilogram(Decimal) {
  @:from inline static public function fromDecimal(value : Decimal) : Kilogram
    return new Kilogram(value);

  @:from inline static public function fromInt(value : Int) : Kilogram
    return fromDecimal(Decimal.fromInt(value));

  @:from inline static public function fromFloat(value : Float) : Kilogram
    return fromDecimal(Decimal.fromFloat(value));

  inline function new(value : Decimal)
    this = value;

  inline public function abs() : Kilogram
    return this.abs();

  inline public function min(that : Kilogram) : Kilogram
    return this.min(that.toDecimal());

  inline public function max(that : Kilogram) : Kilogram
    return this.max(that.toDecimal());

  @:op( -A ) inline public function negate() : Kilogram
    return -this;
  @:op( A+B) inline public function add(that : Kilogram) : Kilogram
    return this.add(that.toDecimal());
  @:op( A-B) inline public function subtract(that : Kilogram) : Kilogram
    return this.subtract(that.toDecimal());
  @:op( A*B) inline public function multiply(that : Decimal) : Kilogram
    return this.multiply(that);
  @:op( A/B) inline public function divide(that : Decimal) : Kilogram
    return this.divide(that);
  @:op( A%B) inline public function modulo(that : Decimal) : Kilogram
    return this.modulo(that);
  @:op(A==B) inline public function equal(that : Kilogram) : Bool
    return this.equals(that.toDecimal());
  public function nearEquals(that : Kilogram) : Bool
    return Floats.nearEquals(this.toFloat(), that.toFloat());
  @:op(A!=B) inline public function notEqual(that : Kilogram) : Bool
    return !this.equals(that.toDecimal());
  @:op( A<B) inline public function less(that : Kilogram) : Bool
    return this.less(that.toDecimal());
  @:op(A<=B) inline public function lessEqual(that : Kilogram) : Bool
    return this.lessEqual(that.toDecimal());
  @:deprecated("use greater instead or simply >")
  inline public function more(that : Kilogram) : Bool
    return greater(that);
  @:op( A>B) inline public function greater(that : Kilogram) : Bool
    return this.greater(that.toDecimal());
  @:deprecated("use greaterEqual instead or simply >=")
  inline public function moreEqual(that : Kilogram) : Bool
    return greaterEqual(that);
  @:op(A>=B) inline public function greaterEqual(that : Kilogram) : Bool
    return this.greaterEqual(that.toDecimal());

  inline public function toDecimal() : Decimal
    return this;

  inline public function toFloat() : Float
    return this.toFloat();


  @:to inline public function toMegagram() : Megagram
    return this * 0.001;
  @:to inline public function toGram() : Gram
    return this * 1000;
  @:to inline public function toCentigram() : Centigram
    return this * 100000;
  @:to inline public function toMilligram() : Milligram
    return this * 1000000;
  @:to inline public function toMicrogram() : Microgram
    return this * 1000000000;
  @:to inline public function toNanogram() : Nanogram
    return this * 1000000000000;
  @:to inline public function toPicogram() : Picogram
    return this * 1e+15;
  @:to inline public function toTon() : Ton
    return this * 0.000984206527611061;
  @:to inline public function toHundredweight() : Hundredweight
    return this * 0.0196841305522212;
  @:to inline public function toQuarter() : Quarter
    return this * 0.0787365222088848;
  @:to inline public function toStone() : Stone
    return this * 0.15747304441777;
  @:to inline public function toPound() : Pound
    return this * 2.20462262184878;
  @:to inline public function toOunce() : Ounce
    return this * 35.2739619495804;
  @:to inline public function toDrachm() : Drachm
    return this * 564.383391193287;
  @:to inline public function toGrain() : Grain
    return this * 15432.3583529414;
  @:to inline public function toUnifiedAtomicMassUnit() : UnifiedAtomicMassUnit
    return this * 6.02214129011674e+26;
  @:to inline public function toDalton() : Dalton
    return this * 6.02214129011674e+26;
  @:to inline public function toPlankMass() : PlankMass
    return this * 45945113.9668552;
  @:to inline public function toSlug() : Slug
    return this * 0.068521765561961;
  @:to inline public function toSolarMass() : SolarMass
    return this * 5.0287898217294e-31;

  @:to inline public function toString() : String
    return this.toString() + symbol;

  public static inline var symbol : String = "kg";
}
