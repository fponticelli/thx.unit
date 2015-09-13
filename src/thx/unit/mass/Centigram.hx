package thx.unit.mass;

using thx.Floats;
import thx.Decimal;

abstract Centigram(Decimal) {
  @:from inline static public function fromDecimal(value : Decimal) : Centigram
    return new Centigram(value);

  @:from inline static public function fromInt(value : Int) : Centigram
    return fromDecimal(Decimal.fromInt(value));

  @:from inline static public function fromFloat(value : Float) : Centigram
    return fromDecimal(Decimal.fromFloat(value));

  inline function new(value : Decimal)
    this = value;

  inline public function abs() : Centigram
    return this.abs();

  inline public function min(that : Centigram) : Centigram
    return this.min(that.toDecimal());

  inline public function max(that : Centigram) : Centigram
    return this.max(that.toDecimal());

  @:op( -A ) inline public function negate() : Centigram
    return -this;
  @:op( A+B) inline public function add(that : Centigram) : Centigram
    return this.add(that.toDecimal());
  @:op( A-B) inline public function subtract(that : Centigram) : Centigram
    return this.subtract(that.toDecimal());
  @:op( A*B) inline public function multiply(that : Decimal) : Centigram
    return this.multiply(that);
  @:op( A/B) inline public function divide(that : Decimal) : Centigram
    return this.divide(that);
  @:op( A%B) inline public function modulo(that : Decimal) : Centigram
    return this.modulo(that);
  @:op(A==B) inline public function equal(that : Centigram) : Bool
    return this.equals(that.toDecimal());
  public function nearEquals(that : Centigram) : Bool
    return Floats.nearEquals(this.toFloat(), that.toFloat());
  @:op(A!=B) inline public function notEqual(that : Centigram) : Bool
    return !this.equals(that.toDecimal());
  @:op( A<B) inline public function less(that : Centigram) : Bool
    return this.less(that.toDecimal());
  @:op(A<=B) inline public function lessEqual(that : Centigram) : Bool
    return this.lessEqual(that.toDecimal());
  @:deprecated("use greater instead or simply >")
  inline public function more(that : Centigram) : Bool
    return greater(that);
  @:op( A>B) inline public function greater(that : Centigram) : Bool
    return this.greater(that.toDecimal());
  @:deprecated("use greaterEqual instead or simply >=")
  inline public function moreEqual(that : Centigram) : Bool
    return greaterEqual(that);
  @:op(A>=B) inline public function greaterEqual(that : Centigram) : Bool
    return this.greaterEqual(that.toDecimal());

  inline public function toDecimal() : Decimal
    return this;

  inline public function toFloat() : Float
    return this.toFloat();


  @:to inline public function toMegagram() : Megagram
    return this * 1e-08;
  @:to inline public function toKilogram() : Kilogram
    return this * 1e-05;
  @:to inline public function toGram() : Gram
    return this * 0.01;
  @:to inline public function toMilligram() : Milligram
    return this * 10;
  @:to inline public function toMicrogram() : Microgram
    return this * 10000;
  @:to inline public function toNanogram() : Nanogram
    return this * 10000000;
  @:to inline public function toPicogram() : Picogram
    return this * 10000000000;
  @:to inline public function toTon() : Ton
    return this * 9.84206527611061e-09;
  @:to inline public function toHundredweight() : Hundredweight
    return this * 1.96841305522212e-07;
  @:to inline public function toQuarter() : Quarter
    return this * 7.87365222088848e-07;
  @:to inline public function toStone() : Stone
    return this * 1.5747304441777e-06;
  @:to inline public function toPound() : Pound
    return this * 2.20462262184878e-05;
  @:to inline public function toOunce() : Ounce
    return this * 0.000352739619495804;
  @:to inline public function toDrachm() : Drachm
    return this * 0.00564383391193287;
  @:to inline public function toGrain() : Grain
    return this * 0.154323583529414;
  @:to inline public function toUnifiedAtomicMassUnit() : UnifiedAtomicMassUnit
    return this * 6.02214129011674e+21;
  @:to inline public function toDalton() : Dalton
    return this * 6.02214129011674e+21;
  @:to inline public function toPlankMass() : PlankMass
    return this * 459.451139668552;
  @:to inline public function toSlug() : Slug
    return this * 6.85217655619611e-07;
  @:to inline public function toSolarMass() : SolarMass
    return this * 5.0287898217294e-36;

  @:to inline public function toString() : String
    return this.toString() + symbol;

  public static inline var symbol : String = "cg";
}
