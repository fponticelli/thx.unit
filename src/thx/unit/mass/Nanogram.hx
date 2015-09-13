package thx.unit.mass;

using thx.Floats;
import thx.Decimal;

abstract Nanogram(Decimal) {
  @:from inline static public function fromDecimal(value : Decimal) : Nanogram
    return new Nanogram(value);

  @:from inline static public function fromInt(value : Int) : Nanogram
    return fromDecimal(Decimal.fromInt(value));

  @:from inline static public function fromFloat(value : Float) : Nanogram
    return fromDecimal(Decimal.fromFloat(value));

  inline function new(value : Decimal)
    this = value;

  inline public function abs() : Nanogram
    return this.abs();

  inline public function min(that : Nanogram) : Nanogram
    return this.min(that.toDecimal());

  inline public function max(that : Nanogram) : Nanogram
    return this.max(that.toDecimal());

  @:op( -A ) inline public function negate() : Nanogram
    return -this;
  @:op( A+B) inline public function add(that : Nanogram) : Nanogram
    return this.add(that.toDecimal());
  @:op( A-B) inline public function subtract(that : Nanogram) : Nanogram
    return this.subtract(that.toDecimal());
  @:op( A*B) inline public function multiply(that : Decimal) : Nanogram
    return this.multiply(that);
  @:op( A/B) inline public function divide(that : Decimal) : Nanogram
    return this.divide(that);
  @:op( A%B) inline public function modulo(that : Decimal) : Nanogram
    return this.modulo(that);
  @:op(A==B) inline public function equal(that : Nanogram) : Bool
    return this.equals(that.toDecimal());
  public function nearEquals(that : Nanogram) : Bool
    return Floats.nearEquals(this.toFloat(), that.toFloat());
  @:op(A!=B) inline public function notEqual(that : Nanogram) : Bool
    return !this.equals(that.toDecimal());
  @:op( A<B) inline public function less(that : Nanogram) : Bool
    return this.less(that.toDecimal());
  @:op(A<=B) inline public function lessEqual(that : Nanogram) : Bool
    return this.lessEqual(that.toDecimal());
  @:deprecated("use greater instead or simply >")
  inline public function more(that : Nanogram) : Bool
    return greater(that);
  @:op( A>B) inline public function greater(that : Nanogram) : Bool
    return this.greater(that.toDecimal());
  @:deprecated("use greaterEqual instead or simply >=")
  inline public function moreEqual(that : Nanogram) : Bool
    return greaterEqual(that);
  @:op(A>=B) inline public function greaterEqual(that : Nanogram) : Bool
    return this.greaterEqual(that.toDecimal());

  inline public function toDecimal() : Decimal
    return this;

  inline public function toFloat() : Float
    return this.toFloat();


  @:to inline public function toMegagram() : Megagram
    return this * 1e-15;
  @:to inline public function toKilogram() : Kilogram
    return this * 1e-12;
  @:to inline public function toGram() : Gram
    return this * 1e-09;
  @:to inline public function toCentigram() : Centigram
    return this * 1e-07;
  @:to inline public function toMilligram() : Milligram
    return this * 1e-06;
  @:to inline public function toMicrogram() : Microgram
    return this * 0.001;
  @:to inline public function toPicogram() : Picogram
    return this * 1000;
  @:to inline public function toTon() : Ton
    return this * 9.84206527611061e-16;
  @:to inline public function toHundredweight() : Hundredweight
    return this * 1.96841305522212e-14;
  @:to inline public function toQuarter() : Quarter
    return this * 7.87365222088848e-14;
  @:to inline public function toStone() : Stone
    return this * 1.5747304441777e-13;
  @:to inline public function toPound() : Pound
    return this * 2.20462262184878e-12;
  @:to inline public function toOunce() : Ounce
    return this * 3.52739619495804e-11;
  @:to inline public function toDrachm() : Drachm
    return this * 5.64383391193287e-10;
  @:to inline public function toGrain() : Grain
    return this * 1.54323583529414e-08;
  @:to inline public function toUnifiedAtomicMassUnit() : UnifiedAtomicMassUnit
    return this * 602214129011674;
  @:to inline public function toDalton() : Dalton
    return this * 602214129011674;
  @:to inline public function toPlankMass() : PlankMass
    return this * 4.59451139668552e-05;
  @:to inline public function toSlug() : Slug
    return this * 6.8521765561961e-14;
  @:to inline public function toSolarMass() : SolarMass
    return this * 5.0287898217294e-43;

  @:to inline public function toString() : String
    return this.toString() + symbol;

  public static inline var symbol : String = "ng";
}
