package thx.unit.mass;

using thx.Floats;
import thx.Decimal;

abstract Megagram(Decimal) {
  @:from inline static public function fromDecimal(value : Decimal) : Megagram
    return new Megagram(value);

  @:from inline static public function fromInt(value : Int) : Megagram
    return fromDecimal(Decimal.fromInt(value));

  @:from inline static public function fromFloat(value : Float) : Megagram
    return fromDecimal(Decimal.fromFloat(value));

  inline function new(value : Decimal)
    this = value;

  inline public function abs() : Megagram
    return this.abs();

  inline public function min(that : Megagram) : Megagram
    return this.min(that.toDecimal());

  inline public function max(that : Megagram) : Megagram
    return this.max(that.toDecimal());

  @:op( -A ) inline public function negate() : Megagram
    return -this;
  @:op( A+B) inline public function add(that : Megagram) : Megagram
    return this.add(that.toDecimal());
  @:op( A-B) inline public function subtract(that : Megagram) : Megagram
    return this.subtract(that.toDecimal());
  @:op( A*B) inline public function multiply(that : Decimal) : Megagram
    return this.multiply(that);
  @:op( A/B) inline public function divide(that : Decimal) : Megagram
    return this.divide(that);
  @:op( A%B) inline public function modulo(that : Decimal) : Megagram
    return this.modulo(that);
  @:op(A==B) inline public function equal(that : Megagram) : Bool
    return this.equals(that.toDecimal());
  public function nearEquals(that : Megagram) : Bool
    return Floats.nearEquals(this.toFloat(), that.toFloat());
  @:op(A!=B) inline public function notEqual(that : Megagram) : Bool
    return !this.equals(that.toDecimal());
  @:op( A<B) inline public function less(that : Megagram) : Bool
    return this.less(that.toDecimal());
  @:op(A<=B) inline public function lessEqual(that : Megagram) : Bool
    return this.lessEqual(that.toDecimal());
  @:deprecated("use greater instead or simply >")
  inline public function more(that : Megagram) : Bool
    return greater(that);
  @:op( A>B) inline public function greater(that : Megagram) : Bool
    return this.greater(that.toDecimal());
  @:deprecated("use greaterEqual instead or simply >=")
  inline public function moreEqual(that : Megagram) : Bool
    return greaterEqual(that);
  @:op(A>=B) inline public function greaterEqual(that : Megagram) : Bool
    return this.greaterEqual(that.toDecimal());

  inline public function toDecimal() : Decimal
    return this;

  inline public function toFloat() : Float
    return this.toFloat();


  @:to inline public function toKilogram() : Kilogram
    return this * 1000;
  @:to inline public function toGram() : Gram
    return this * 1000000;
  @:to inline public function toCentigram() : Centigram
    return this * 100000000;
  @:to inline public function toMilligram() : Milligram
    return this * 1000000000;
  @:to inline public function toMicrogram() : Microgram
    return this * 1000000000000;
  @:to inline public function toNanogram() : Nanogram
    return this * 1e+15;
  @:to inline public function toPicogram() : Picogram
    return this * 1e+18;
  @:to inline public function toTon() : Ton
    return this * 0.984206527611061;
  @:to inline public function toHundredweight() : Hundredweight
    return this * 19.6841305522212;
  @:to inline public function toQuarter() : Quarter
    return this * 78.7365222088848;
  @:to inline public function toStone() : Stone
    return this * 157.47304441777;
  @:to inline public function toPound() : Pound
    return this * 2204.62262184878;
  @:to inline public function toOunce() : Ounce
    return this * 35273.9619495804;
  @:to inline public function toDrachm() : Drachm
    return this * 564383.391193287;
  @:to inline public function toGrain() : Grain
    return this * 15432358.3529414;
  @:to inline public function toUnifiedAtomicMassUnit() : UnifiedAtomicMassUnit
    return this * 6.02214129011674e+29;
  @:to inline public function toDalton() : Dalton
    return this * 6.02214129011674e+29;
  @:to inline public function toPlankMass() : PlankMass
    return this * 45945113966.8552;
  @:to inline public function toSlug() : Slug
    return this * 68.521765561961;
  @:to inline public function toSolarMass() : SolarMass
    return this * 5.0287898217294e-28;

  @:to inline public function toString() : String
    return this.toString() + symbol;

  public static inline var symbol : String = "Mg";
}
