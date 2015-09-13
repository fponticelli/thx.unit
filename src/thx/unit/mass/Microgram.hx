package thx.unit.mass;

using thx.Floats;
import thx.Decimal;

abstract Microgram(Decimal) {
  @:from inline static public function fromDecimal(value : Decimal) : Microgram
    return new Microgram(value);

  @:from inline static public function fromInt(value : Int) : Microgram
    return fromDecimal(Decimal.fromInt(value));

  @:from inline static public function fromFloat(value : Float) : Microgram
    return fromDecimal(Decimal.fromFloat(value));

  inline function new(value : Decimal)
    this = value;

  inline public function abs() : Microgram
    return this.abs();

  inline public function min(that : Microgram) : Microgram
    return this.min(that.toDecimal());

  inline public function max(that : Microgram) : Microgram
    return this.max(that.toDecimal());

  @:op( -A ) inline public function negate() : Microgram
    return -this;
  @:op( A+B) inline public function add(that : Microgram) : Microgram
    return this.add(that.toDecimal());
  @:op( A-B) inline public function subtract(that : Microgram) : Microgram
    return this.subtract(that.toDecimal());
  @:op( A*B) inline public function multiply(that : Decimal) : Microgram
    return this.multiply(that);
  @:op( A/B) inline public function divide(that : Decimal) : Microgram
    return this.divide(that);
  @:op( A%B) inline public function modulo(that : Decimal) : Microgram
    return this.modulo(that);
  @:op(A==B) inline public function equal(that : Microgram) : Bool
    return this.equals(that.toDecimal());
  public function nearEquals(that : Microgram) : Bool
    return Floats.nearEquals(this.toFloat(), that.toFloat());
  @:op(A!=B) inline public function notEqual(that : Microgram) : Bool
    return !this.equals(that.toDecimal());
  @:op( A<B) inline public function less(that : Microgram) : Bool
    return this.less(that.toDecimal());
  @:op(A<=B) inline public function lessEqual(that : Microgram) : Bool
    return this.lessEqual(that.toDecimal());
  @:deprecated("use greater instead or simply >")
  inline public function more(that : Microgram) : Bool
    return greater(that);
  @:op( A>B) inline public function greater(that : Microgram) : Bool
    return this.greater(that.toDecimal());
  @:deprecated("use greaterEqual instead or simply >=")
  inline public function moreEqual(that : Microgram) : Bool
    return greaterEqual(that);
  @:op(A>=B) inline public function greaterEqual(that : Microgram) : Bool
    return this.greaterEqual(that.toDecimal());

  inline public function toDecimal() : Decimal
    return this;

  inline public function toFloat() : Float
    return this.toFloat();


  @:to inline public function toMegagram() : Megagram
    return this * 1e-12;
  @:to inline public function toKilogram() : Kilogram
    return this * 1e-09;
  @:to inline public function toGram() : Gram
    return this * 1e-06;
  @:to inline public function toCentigram() : Centigram
    return this * 0.0001;
  @:to inline public function toMilligram() : Milligram
    return this * 0.001;
  @:to inline public function toNanogram() : Nanogram
    return this * 1000;
  @:to inline public function toPicogram() : Picogram
    return this * 1000000;
  @:to inline public function toTon() : Ton
    return this * 9.84206527611061e-13;
  @:to inline public function toHundredweight() : Hundredweight
    return this * 1.96841305522212e-11;
  @:to inline public function toQuarter() : Quarter
    return this * 7.87365222088848e-11;
  @:to inline public function toStone() : Stone
    return this * 1.5747304441777e-10;
  @:to inline public function toPound() : Pound
    return this * 2.20462262184878e-09;
  @:to inline public function toOunce() : Ounce
    return this * 3.52739619495804e-08;
  @:to inline public function toDrachm() : Drachm
    return this * 5.64383391193287e-07;
  @:to inline public function toGrain() : Grain
    return this * 1.54323583529414e-05;
  @:to inline public function toUnifiedAtomicMassUnit() : UnifiedAtomicMassUnit
    return this * 6.02214129011674e+17;
  @:to inline public function toDalton() : Dalton
    return this * 6.02214129011674e+17;
  @:to inline public function toPlankMass() : PlankMass
    return this * 0.0459451139668552;
  @:to inline public function toSlug() : Slug
    return this * 6.85217655619611e-11;
  @:to inline public function toSolarMass() : SolarMass
    return this * 5.0287898217294e-40;

  @:to inline public function toString() : String
    return this.toString() + symbol;

  public static inline var symbol : String = "µg";
}
