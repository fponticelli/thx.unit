package thx.unit.mass;

using thx.Floats;
import thx.Decimal;

abstract Drachm(Decimal) {
  @:from inline static public function fromDecimal(value : Decimal) : Drachm
    return new Drachm(value);

  @:from inline static public function fromInt(value : Int) : Drachm
    return fromDecimal(Decimal.fromInt(value));

  @:from inline static public function fromFloat(value : Float) : Drachm
    return fromDecimal(Decimal.fromFloat(value));

  inline function new(value : Decimal)
    this = value;

  inline public function abs() : Drachm
    return this.abs();

  inline public function min(that : Drachm) : Drachm
    return this.min(that.toDecimal());

  inline public function max(that : Drachm) : Drachm
    return this.max(that.toDecimal());

  @:op( -A ) inline public function negate() : Drachm
    return -this;
  @:op( A+B) inline public function add(that : Drachm) : Drachm
    return this.add(that.toDecimal());
  @:op( A-B) inline public function subtract(that : Drachm) : Drachm
    return this.subtract(that.toDecimal());
  @:op( A*B) inline public function multiply(that : Decimal) : Drachm
    return this.multiply(that);
  @:op( A/B) inline public function divide(that : Decimal) : Drachm
    return this.divide(that);
  @:op( A%B) inline public function modulo(that : Decimal) : Drachm
    return this.modulo(that);
  @:op(A==B) inline public function equal(that : Drachm) : Bool
    return this.equals(that.toDecimal());
  public function nearEquals(that : Drachm) : Bool
    return Floats.nearEquals(this.toFloat(), that.toFloat());
  @:op(A!=B) inline public function notEqual(that : Drachm) : Bool
    return !this.equals(that.toDecimal());
  @:op( A<B) inline public function less(that : Drachm) : Bool
    return this.less(that.toDecimal());
  @:op(A<=B) inline public function lessEqual(that : Drachm) : Bool
    return this.lessEqual(that.toDecimal());
  @:deprecated("use greater instead or simply >")
  inline public function more(that : Drachm) : Bool
    return greater(that);
  @:op( A>B) inline public function greater(that : Drachm) : Bool
    return this.greater(that.toDecimal());
  @:deprecated("use greaterEqual instead or simply >=")
  inline public function moreEqual(that : Drachm) : Bool
    return greaterEqual(that);
  @:op(A>=B) inline public function greaterEqual(that : Drachm) : Bool
    return this.greaterEqual(that.toDecimal());

  inline public function toDecimal() : Decimal
    return this;

  inline public function toFloat() : Float
    return this.toFloat();


  @:to inline public function toMegagram() : Megagram
    return this * 1.7718451953125e-06;
  @:to inline public function toKilogram() : Kilogram
    return this * 0.0017718451953125;
  @:to inline public function toGram() : Gram
    return this * 1.7718451953125;
  @:to inline public function toCentigram() : Centigram
    return this * 177.18451953125;
  @:to inline public function toMilligram() : Milligram
    return this * 1771.8451953125;
  @:to inline public function toMicrogram() : Microgram
    return this * 1771845.1953125;
  @:to inline public function toNanogram() : Nanogram
    return this * 1771845195.3125;
  @:to inline public function toPicogram() : Picogram
    return this * 1771845195312.5;
  @:to inline public function toTon() : Ton
    return this * 1.74386160714286e-06;
  @:to inline public function toHundredweight() : Hundredweight
    return this * 3.48772321428571e-05;
  @:to inline public function toQuarter() : Quarter
    return this * 0.000139508928571429;
  @:to inline public function toStone() : Stone
    return this * 0.000279017857142857;
  @:to inline public function toPound() : Pound
    return this * 0.00390625;
  @:to inline public function toOunce() : Ounce
    return this * 0.0625;
  @:to inline public function toGrain() : Grain
    return this * 27.34375;
  @:to inline public function toUnifiedAtomicMassUnit() : UnifiedAtomicMassUnit
    return this * 1.06703021103864e+24;
  @:to inline public function toDalton() : Dalton
    return this * 1.06703021103864e+24;
  @:to inline public function toPlankMass() : PlankMass
    return this * 81407.6294302576;
  @:to inline public function toSlug() : Slug
    return this * 0.00012140996108529;
  @:to inline public function toSolarMass() : SolarMass
    return this * 8.91023708386764e-34;

  @:to inline public function toString() : String
    return this.toString() + symbol;

  public static inline var symbol : String = "dr";
}
