package thx.unit.mass;

using thx.Floats;
import thx.Decimal;

abstract Pound(Decimal) {
  @:from inline static public function fromDecimal(value : Decimal) : Pound
    return new Pound(value);

  @:from inline static public function fromInt(value : Int) : Pound
    return fromDecimal(Decimal.fromInt(value));

  @:from inline static public function fromFloat(value : Float) : Pound
    return fromDecimal(Decimal.fromFloat(value));

  inline function new(value : Decimal)
    this = value;

  inline public function abs() : Pound
    return this.abs();

  inline public function min(that : Pound) : Pound
    return this.min(that.toDecimal());

  inline public function max(that : Pound) : Pound
    return this.max(that.toDecimal());

  @:op( -A ) inline public function negate() : Pound
    return -this;
  @:op( A+B) inline public function add(that : Pound) : Pound
    return this.add(that.toDecimal());
  @:op( A-B) inline public function subtract(that : Pound) : Pound
    return this.subtract(that.toDecimal());
  @:op( A*B) inline public function multiply(that : Decimal) : Pound
    return this.multiply(that);
  @:op( A/B) inline public function divide(that : Decimal) : Pound
    return this.divide(that);
  @:op( A%B) inline public function modulo(that : Decimal) : Pound
    return this.modulo(that);
  @:op(A==B) inline public function equal(that : Pound) : Bool
    return this.equals(that.toDecimal());
  public function nearEquals(that : Pound) : Bool
    return Floats.nearEquals(this.toFloat(), that.toFloat());
  @:op(A!=B) inline public function notEqual(that : Pound) : Bool
    return !this.equals(that.toDecimal());
  @:op( A<B) inline public function less(that : Pound) : Bool
    return this.less(that.toDecimal());
  @:op(A<=B) inline public function lessEqual(that : Pound) : Bool
    return this.lessEqual(that.toDecimal());
  @:deprecated("use greater instead or simply >")
  inline public function more(that : Pound) : Bool
    return greater(that);
  @:op( A>B) inline public function greater(that : Pound) : Bool
    return this.greater(that.toDecimal());
  @:deprecated("use greaterEqual instead or simply >=")
  inline public function moreEqual(that : Pound) : Bool
    return greaterEqual(that);
  @:op(A>=B) inline public function greaterEqual(that : Pound) : Bool
    return this.greaterEqual(that.toDecimal());

  inline public function toDecimal() : Decimal
    return this;

  inline public function toFloat() : Float
    return this.toFloat();


  @:to inline public function toMegagram() : Megagram
    return this * 0.00045359237;
  @:to inline public function toKilogram() : Kilogram
    return this * 0.45359237;
  @:to inline public function toGram() : Gram
    return this * 453.59237;
  @:to inline public function toCentigram() : Centigram
    return this * 45359.237;
  @:to inline public function toMilligram() : Milligram
    return this * 453592.37;
  @:to inline public function toMicrogram() : Microgram
    return this * 453592370;
  @:to inline public function toNanogram() : Nanogram
    return this * 453592370000;
  @:to inline public function toPicogram() : Picogram
    return this * 453592370000000;
  @:to inline public function toTon() : Ton
    return this * 0.000446428571428571;
  @:to inline public function toHundredweight() : Hundredweight
    return this * 0.00892857142857143;
  @:to inline public function toQuarter() : Quarter
    return this * 0.0357142857142857;
  @:to inline public function toStone() : Stone
    return this * 0.0714285714285714;
  @:to inline public function toOunce() : Ounce
    return this * 16;
  @:to inline public function toDrachm() : Drachm
    return this * 256;
  @:to inline public function toGrain() : Grain
    return this * 7000;
  @:to inline public function toUnifiedAtomicMassUnit() : UnifiedAtomicMassUnit
    return this * 2.73159734025891e+26;
  @:to inline public function toDalton() : Dalton
    return this * 2.73159734025891e+26;
  @:to inline public function toPlankMass() : PlankMass
    return this * 20840353.134146;
  @:to inline public function toSlug() : Slug
    return this * 0.0310809500378343;
  @:to inline public function toSolarMass() : SolarMass
    return this * 2.28102069347012e-31;

  @:to inline public function toString() : String
    return this.toString() + symbol;

  public static inline var symbol : String = "lb";
}
