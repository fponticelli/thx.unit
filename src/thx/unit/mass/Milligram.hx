package thx.unit.mass;

using thx.Floats;
import thx.Decimal;

abstract Milligram(Decimal) {
  @:from inline static public function fromDecimal(value : Decimal) : Milligram
    return new Milligram(value);

  @:from inline static public function fromInt(value : Int) : Milligram
    return fromDecimal(Decimal.fromInt(value));

  @:from inline static public function fromFloat(value : Float) : Milligram
    return fromDecimal(Decimal.fromFloat(value));

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
    return this.add(that.toDecimal());
  @:op( A-B) inline public function subtract(that : Milligram) : Milligram
    return this.subtract(that.toDecimal());
  @:op( A*B) inline public function multiply(that : Decimal) : Milligram
    return this.multiply(that);
  @:op( A/B) inline public function divide(that : Decimal) : Milligram
    return this.divide(that);
  @:op( A%B) inline public function modulo(that : Decimal) : Milligram
    return this.modulo(that);
  @:op(A==B) inline public function equal(that : Milligram) : Bool
    return this.equals(that.toDecimal());
  public function nearEquals(that : Milligram) : Bool
    return Floats.nearEquals(this.toFloat(), that.toFloat());
  @:op(A!=B) inline public function notEqual(that : Milligram) : Bool
    return !this.equals(that.toDecimal());
  @:op( A<B) inline public function less(that : Milligram) : Bool
    return this.less(that.toDecimal());
  @:op(A<=B) inline public function lessEqual(that : Milligram) : Bool
    return this.lessEqual(that.toDecimal());
  @:deprecated("use greater instead or simply >")
  inline public function more(that : Milligram) : Bool
    return greater(that);
  @:op( A>B) inline public function greater(that : Milligram) : Bool
    return this.greater(that.toDecimal());
  @:deprecated("use greaterEqual instead or simply >=")
  inline public function moreEqual(that : Milligram) : Bool
    return greaterEqual(that);
  @:op(A>=B) inline public function greaterEqual(that : Milligram) : Bool
    return this.greaterEqual(that.toDecimal());

  inline public function toDecimal() : Decimal
    return this;

  inline public function toFloat() : Float
    return this.toFloat();


  @:to inline public function toMegagram() : Megagram
    return this * 1e-09;
  @:to inline public function toKilogram() : Kilogram
    return this * 1e-06;
  @:to inline public function toGram() : Gram
    return this * 0.001;
  @:to inline public function toCentigram() : Centigram
    return this * 0.1;
  @:to inline public function toMicrogram() : Microgram
    return this * 1000;
  @:to inline public function toNanogram() : Nanogram
    return this * 1000000;
  @:to inline public function toPicogram() : Picogram
    return this * 1000000000;
  @:to inline public function toTon() : Ton
    return this * 9.84206527611061e-10;
  @:to inline public function toHundredweight() : Hundredweight
    return this * 1.96841305522212e-08;
  @:to inline public function toQuarter() : Quarter
    return this * 7.87365222088848e-08;
  @:to inline public function toStone() : Stone
    return this * 1.5747304441777e-07;
  @:to inline public function toPound() : Pound
    return this * 2.20462262184878e-06;
  @:to inline public function toOunce() : Ounce
    return this * 3.52739619495804e-05;
  @:to inline public function toDrachm() : Drachm
    return this * 0.000564383391193287;
  @:to inline public function toGrain() : Grain
    return this * 0.0154323583529414;
  @:to inline public function toUnifiedAtomicMassUnit() : UnifiedAtomicMassUnit
    return this * 6.02214129011674e+20;
  @:to inline public function toDalton() : Dalton
    return this * 6.02214129011674e+20;
  @:to inline public function toPlankMass() : PlankMass
    return this * 45.9451139668552;
  @:to inline public function toSlug() : Slug
    return this * 6.8521765561961e-08;
  @:to inline public function toSolarMass() : SolarMass
    return this * 5.0287898217294e-37;

  @:to inline public function toString() : String
    return this.toString() + symbol;

  public static inline var symbol : String = "mg";
}
