package thx.unit.mass;

using thx.Floats;
import thx.Decimal;

abstract Gram(Decimal) {
  @:from inline static public function fromDecimal(value : Decimal) : Gram
    return new Gram(value);

  @:from inline static public function fromInt(value : Int) : Gram
    return fromDecimal(Decimal.fromInt(value));

  @:from inline static public function fromFloat(value : Float) : Gram
    return fromDecimal(Decimal.fromFloat(value));

  inline function new(value : Decimal)
    this = value;

  inline public function abs() : Gram
    return this.abs();

  inline public function min(that : Gram) : Gram
    return this.min(that.toDecimal());

  inline public function max(that : Gram) : Gram
    return this.max(that.toDecimal());

  @:op( -A ) inline public function negate() : Gram
    return -this;
  @:op( A+B) inline public function add(that : Gram) : Gram
    return this.add(that.toDecimal());
  @:op( A-B) inline public function subtract(that : Gram) : Gram
    return this.subtract(that.toDecimal());
  @:op( A*B) inline public function multiply(that : Decimal) : Gram
    return this.multiply(that);
  @:op( A/B) inline public function divide(that : Decimal) : Gram
    return this.divide(that);
  @:op( A%B) inline public function modulo(that : Decimal) : Gram
    return this.modulo(that);
  @:op(A==B) inline public function equal(that : Gram) : Bool
    return this.equals(that.toDecimal());
  public function nearEquals(that : Gram) : Bool
    return Floats.nearEquals(this.toFloat(), that.toFloat());
  @:op(A!=B) inline public function notEqual(that : Gram) : Bool
    return !this.equals(that.toDecimal());
  @:op( A<B) inline public function less(that : Gram) : Bool
    return this.less(that.toDecimal());
  @:op(A<=B) inline public function lessEqual(that : Gram) : Bool
    return this.lessEqual(that.toDecimal());
  @:deprecated("use greater instead or simply >")
  inline public function more(that : Gram) : Bool
    return greater(that);
  @:op( A>B) inline public function greater(that : Gram) : Bool
    return this.greater(that.toDecimal());
  @:deprecated("use greaterEqual instead or simply >=")
  inline public function moreEqual(that : Gram) : Bool
    return greaterEqual(that);
  @:op(A>=B) inline public function greaterEqual(that : Gram) : Bool
    return this.greaterEqual(that.toDecimal());

  inline public function toDecimal() : Decimal
    return this;

  inline public function toFloat() : Float
    return this.toFloat();


  @:to inline public function toMegagram() : Megagram
    return this * 1e-06;
  @:to inline public function toKilogram() : Kilogram
    return this * 0.001;
  @:to inline public function toCentigram() : Centigram
    return this * 100;
  @:to inline public function toMilligram() : Milligram
    return this * 1000;
  @:to inline public function toMicrogram() : Microgram
    return this * 1000000;
  @:to inline public function toNanogram() : Nanogram
    return this * 1000000000;
  @:to inline public function toPicogram() : Picogram
    return this * 1000000000000;
  @:to inline public function toTon() : Ton
    return this * 9.84206527611061e-07;
  @:to inline public function toHundredweight() : Hundredweight
    return this * 1.96841305522212e-05;
  @:to inline public function toQuarter() : Quarter
    return this * 7.87365222088848e-05;
  @:to inline public function toStone() : Stone
    return this * 0.00015747304441777;
  @:to inline public function toPound() : Pound
    return this * 0.00220462262184878;
  @:to inline public function toOunce() : Ounce
    return this * 0.0352739619495804;
  @:to inline public function toDrachm() : Drachm
    return this * 0.564383391193287;
  @:to inline public function toGrain() : Grain
    return this * 15.4323583529414;
  @:to inline public function toUnifiedAtomicMassUnit() : UnifiedAtomicMassUnit
    return this * 6.02214129011674e+23;
  @:to inline public function toDalton() : Dalton
    return this * 6.02214129011674e+23;
  @:to inline public function toPlankMass() : PlankMass
    return this * 45945.1139668552;
  @:to inline public function toSlug() : Slug
    return this * 6.85217655619611e-05;
  @:to inline public function toSolarMass() : SolarMass
    return this * 5.0287898217294e-34;

  @:to inline public function toString() : String
    return this.toString() + symbol;

  public static inline var symbol : String = "g";
}
