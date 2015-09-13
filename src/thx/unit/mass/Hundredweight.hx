package thx.unit.mass;

using thx.Floats;
import thx.Decimal;

abstract Hundredweight(Decimal) {
  @:from inline static public function fromDecimal(value : Decimal) : Hundredweight
    return new Hundredweight(value);

  @:from inline static public function fromInt(value : Int) : Hundredweight
    return fromDecimal(Decimal.fromInt(value));

  @:from inline static public function fromFloat(value : Float) : Hundredweight
    return fromDecimal(Decimal.fromFloat(value));

  inline function new(value : Decimal)
    this = value;

  inline public function abs() : Hundredweight
    return this.abs();

  inline public function min(that : Hundredweight) : Hundredweight
    return this.min(that.toDecimal());

  inline public function max(that : Hundredweight) : Hundredweight
    return this.max(that.toDecimal());

  @:op( -A ) inline public function negate() : Hundredweight
    return -this;
  @:op( A+B) inline public function add(that : Hundredweight) : Hundredweight
    return this.add(that.toDecimal());
  @:op( A-B) inline public function subtract(that : Hundredweight) : Hundredweight
    return this.subtract(that.toDecimal());
  @:op( A*B) inline public function multiply(that : Decimal) : Hundredweight
    return this.multiply(that);
  @:op( A/B) inline public function divide(that : Decimal) : Hundredweight
    return this.divide(that);
  @:op( A%B) inline public function modulo(that : Decimal) : Hundredweight
    return this.modulo(that);
  @:op(A==B) inline public function equal(that : Hundredweight) : Bool
    return this.equals(that.toDecimal());
  public function nearEquals(that : Hundredweight) : Bool
    return Floats.nearEquals(this.toFloat(), that.toFloat());
  @:op(A!=B) inline public function notEqual(that : Hundredweight) : Bool
    return !this.equals(that.toDecimal());
  @:op( A<B) inline public function less(that : Hundredweight) : Bool
    return this.less(that.toDecimal());
  @:op(A<=B) inline public function lessEqual(that : Hundredweight) : Bool
    return this.lessEqual(that.toDecimal());
  @:deprecated("use greater instead or simply >")
  inline public function more(that : Hundredweight) : Bool
    return greater(that);
  @:op( A>B) inline public function greater(that : Hundredweight) : Bool
    return this.greater(that.toDecimal());
  @:deprecated("use greaterEqual instead or simply >=")
  inline public function moreEqual(that : Hundredweight) : Bool
    return greaterEqual(that);
  @:op(A>=B) inline public function greaterEqual(that : Hundredweight) : Bool
    return this.greaterEqual(that.toDecimal());

  inline public function toDecimal() : Decimal
    return this;

  inline public function toFloat() : Float
    return this.toFloat();


  @:to inline public function toMegagram() : Megagram
    return this * 0.05080234544;
  @:to inline public function toKilogram() : Kilogram
    return this * 50.80234544;
  @:to inline public function toGram() : Gram
    return this * 50802.34544;
  @:to inline public function toCentigram() : Centigram
    return this * 5080234.544;
  @:to inline public function toMilligram() : Milligram
    return this * 50802345.44;
  @:to inline public function toMicrogram() : Microgram
    return this * 50802345440;
  @:to inline public function toNanogram() : Nanogram
    return this * 50802345440000;
  @:to inline public function toPicogram() : Picogram
    return this * 5.080234544e+16;
  @:to inline public function toTon() : Ton
    return this * 0.05;
  @:to inline public function toQuarter() : Quarter
    return this * 4;
  @:to inline public function toStone() : Stone
    return this * 8;
  @:to inline public function toPound() : Pound
    return this * 112;
  @:to inline public function toOunce() : Ounce
    return this * 1792;
  @:to inline public function toDrachm() : Drachm
    return this * 28672;
  @:to inline public function toGrain() : Grain
    return this * 784000;
  @:to inline public function toUnifiedAtomicMassUnit() : UnifiedAtomicMassUnit
    return this * 3.05938902108998e+28;
  @:to inline public function toDalton() : Dalton
    return this * 3.05938902108998e+28;
  @:to inline public function toPlankMass() : PlankMass
    return this * 2334119551.02435;
  @:to inline public function toSlug() : Slug
    return this * 3.48106640423744;
  @:to inline public function toSolarMass() : SolarMass
    return this * 2.55474317668653e-29;

  @:to inline public function toString() : String
    return this.toString() + symbol;

  public static inline var symbol : String = "cwt";
}
