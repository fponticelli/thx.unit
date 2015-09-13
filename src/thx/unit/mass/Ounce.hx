package thx.unit.mass;

using thx.Floats;
import thx.Decimal;

abstract Ounce(Decimal) {
  @:from inline static public function fromDecimal(value : Decimal) : Ounce
    return new Ounce(value);

  @:from inline static public function fromInt(value : Int) : Ounce
    return fromDecimal(Decimal.fromInt(value));

  @:from inline static public function fromFloat(value : Float) : Ounce
    return fromDecimal(Decimal.fromFloat(value));

  inline function new(value : Decimal)
    this = value;

  inline public function abs() : Ounce
    return this.abs();

  inline public function min(that : Ounce) : Ounce
    return this.min(that.toDecimal());

  inline public function max(that : Ounce) : Ounce
    return this.max(that.toDecimal());

  @:op( -A ) inline public function negate() : Ounce
    return -this;
  @:op( A+B) inline public function add(that : Ounce) : Ounce
    return this.add(that.toDecimal());
  @:op( A-B) inline public function subtract(that : Ounce) : Ounce
    return this.subtract(that.toDecimal());
  @:op( A*B) inline public function multiply(that : Decimal) : Ounce
    return this.multiply(that);
  @:op( A/B) inline public function divide(that : Decimal) : Ounce
    return this.divide(that);
  @:op( A%B) inline public function modulo(that : Decimal) : Ounce
    return this.modulo(that);
  @:op(A==B) inline public function equal(that : Ounce) : Bool
    return this.equals(that.toDecimal());
  public function nearEquals(that : Ounce) : Bool
    return Floats.nearEquals(this.toFloat(), that.toFloat());
  @:op(A!=B) inline public function notEqual(that : Ounce) : Bool
    return !this.equals(that.toDecimal());
  @:op( A<B) inline public function less(that : Ounce) : Bool
    return this.less(that.toDecimal());
  @:op(A<=B) inline public function lessEqual(that : Ounce) : Bool
    return this.lessEqual(that.toDecimal());
  @:deprecated("use greater instead or simply >")
  inline public function more(that : Ounce) : Bool
    return greater(that);
  @:op( A>B) inline public function greater(that : Ounce) : Bool
    return this.greater(that.toDecimal());
  @:deprecated("use greaterEqual instead or simply >=")
  inline public function moreEqual(that : Ounce) : Bool
    return greaterEqual(that);
  @:op(A>=B) inline public function greaterEqual(that : Ounce) : Bool
    return this.greaterEqual(that.toDecimal());

  inline public function toDecimal() : Decimal
    return this;

  inline public function toFloat() : Float
    return this.toFloat();


  @:to inline public function toMegagram() : Megagram
    return this * 2.8349523125e-05;
  @:to inline public function toKilogram() : Kilogram
    return this * 0.028349523125;
  @:to inline public function toGram() : Gram
    return this * 28.349523125;
  @:to inline public function toCentigram() : Centigram
    return this * 2834.9523125;
  @:to inline public function toMilligram() : Milligram
    return this * 28349.523125;
  @:to inline public function toMicrogram() : Microgram
    return this * 28349523.125;
  @:to inline public function toNanogram() : Nanogram
    return this * 28349523125;
  @:to inline public function toPicogram() : Picogram
    return this * 28349523125000;
  @:to inline public function toTon() : Ton
    return this * 2.79017857142857e-05;
  @:to inline public function toHundredweight() : Hundredweight
    return this * 0.000558035714285714;
  @:to inline public function toQuarter() : Quarter
    return this * 0.00223214285714286;
  @:to inline public function toStone() : Stone
    return this * 0.00446428571428571;
  @:to inline public function toPound() : Pound
    return this * 0.0625;
  @:to inline public function toDrachm() : Drachm
    return this * 16;
  @:to inline public function toGrain() : Grain
    return this * 437.5;
  @:to inline public function toUnifiedAtomicMassUnit() : UnifiedAtomicMassUnit
    return this * 1.70724833766182e+25;
  @:to inline public function toDalton() : Dalton
    return this * 1.70724833766182e+25;
  @:to inline public function toPlankMass() : PlankMass
    return this * 1302522.07088412;
  @:to inline public function toSlug() : Slug
    return this * 0.00194255937736464;
  @:to inline public function toSolarMass() : SolarMass
    return this * 1.42563793341882e-32;

  @:to inline public function toString() : String
    return this.toString() + symbol;

  public static inline var symbol : String = "oz";
}
