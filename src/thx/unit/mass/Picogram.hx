package thx.unit.mass;

using thx.Floats;
import thx.Decimal;

abstract Picogram(Decimal) {
  @:from inline static public function fromDecimal(value : Decimal) : Picogram
    return new Picogram(value);

  @:from inline static public function fromInt(value : Int) : Picogram
    return fromDecimal(Decimal.fromInt(value));

  @:from inline static public function fromFloat(value : Float) : Picogram
    return fromDecimal(Decimal.fromFloat(value));

  inline function new(value : Decimal)
    this = value;

  inline public function abs() : Picogram
    return this.abs();

  inline public function min(that : Picogram) : Picogram
    return this.min(that.toDecimal());

  inline public function max(that : Picogram) : Picogram
    return this.max(that.toDecimal());

  @:op( -A ) inline public function negate() : Picogram
    return -this;
  @:op( A+B) inline public function add(that : Picogram) : Picogram
    return this.add(that.toDecimal());
  @:op( A-B) inline public function subtract(that : Picogram) : Picogram
    return this.subtract(that.toDecimal());
  @:op( A*B) inline public function multiply(that : Decimal) : Picogram
    return this.multiply(that);
  @:op( A/B) inline public function divide(that : Decimal) : Picogram
    return this.divide(that);
  @:op( A%B) inline public function modulo(that : Decimal) : Picogram
    return this.modulo(that);
  @:op(A==B) inline public function equal(that : Picogram) : Bool
    return this.equals(that.toDecimal());
  public function nearEquals(that : Picogram) : Bool
    return Floats.nearEquals(this.toFloat(), that.toFloat());
  @:op(A!=B) inline public function notEqual(that : Picogram) : Bool
    return !this.equals(that.toDecimal());
  @:op( A<B) inline public function less(that : Picogram) : Bool
    return this.less(that.toDecimal());
  @:op(A<=B) inline public function lessEqual(that : Picogram) : Bool
    return this.lessEqual(that.toDecimal());
  @:deprecated("use greater instead or simply >")
  inline public function more(that : Picogram) : Bool
    return greater(that);
  @:op( A>B) inline public function greater(that : Picogram) : Bool
    return this.greater(that.toDecimal());
  @:deprecated("use greaterEqual instead or simply >=")
  inline public function moreEqual(that : Picogram) : Bool
    return greaterEqual(that);
  @:op(A>=B) inline public function greaterEqual(that : Picogram) : Bool
    return this.greaterEqual(that.toDecimal());

  inline public function toDecimal() : Decimal
    return this;

  inline public function toFloat() : Float
    return this.toFloat();


  @:to inline public function toMegagram() : Megagram
    return this * 1e-18;
  @:to inline public function toKilogram() : Kilogram
    return this * 1e-15;
  @:to inline public function toGram() : Gram
    return this * 1e-12;
  @:to inline public function toCentigram() : Centigram
    return this * 1e-10;
  @:to inline public function toMilligram() : Milligram
    return this * 1e-09;
  @:to inline public function toMicrogram() : Microgram
    return this * 1e-06;
  @:to inline public function toNanogram() : Nanogram
    return this * 0.001;
  @:to inline public function toTon() : Ton
    return this * 9.84206527611061e-19;
  @:to inline public function toHundredweight() : Hundredweight
    return this * 1.96841305522212e-17;
  @:to inline public function toQuarter() : Quarter
    return this * 7.87365222088849e-17;
  @:to inline public function toStone() : Stone
    return this * 1.5747304441777e-16;
  @:to inline public function toPound() : Pound
    return this * 2.20462262184878e-15;
  @:to inline public function toOunce() : Ounce
    return this * 3.52739619495804e-14;
  @:to inline public function toDrachm() : Drachm
    return this * 5.64383391193287e-13;
  @:to inline public function toGrain() : Grain
    return this * 1.54323583529414e-11;
  @:to inline public function toUnifiedAtomicMassUnit() : UnifiedAtomicMassUnit
    return this * 602214129011.674;
  @:to inline public function toDalton() : Dalton
    return this * 602214129011.674;
  @:to inline public function toPlankMass() : PlankMass
    return this * 4.59451139668552e-08;
  @:to inline public function toSlug() : Slug
    return this * 6.85217655619611e-17;
  @:to inline public function toSolarMass() : SolarMass
    return this * 5.0287898217294e-46;

  @:to inline public function toString() : String
    return this.toString() + symbol;

  public static inline var symbol : String = "pg";
}
