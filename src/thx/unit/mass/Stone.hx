package thx.unit.mass;

using thx.Floats;
import thx.Decimal;

abstract Stone(Decimal) {
  @:from inline static public function fromDecimal(value : Decimal) : Stone
    return new Stone(value);

  @:from inline static public function fromInt(value : Int) : Stone
    return fromDecimal(Decimal.fromInt(value));

  @:from inline static public function fromFloat(value : Float) : Stone
    return fromDecimal(Decimal.fromFloat(value));

  inline function new(value : Decimal)
    this = value;

  inline public function abs() : Stone
    return this.abs();

  inline public function min(that : Stone) : Stone
    return this.min(that.toDecimal());

  inline public function max(that : Stone) : Stone
    return this.max(that.toDecimal());

  @:op( -A ) inline public function negate() : Stone
    return -this;
  @:op( A+B) inline public function add(that : Stone) : Stone
    return this.add(that.toDecimal());
  @:op( A-B) inline public function subtract(that : Stone) : Stone
    return this.subtract(that.toDecimal());
  @:op( A*B) inline public function multiply(that : Decimal) : Stone
    return this.multiply(that);
  @:op( A/B) inline public function divide(that : Decimal) : Stone
    return this.divide(that);
  @:op( A%B) inline public function modulo(that : Decimal) : Stone
    return this.modulo(that);
  @:op(A==B) inline public function equal(that : Stone) : Bool
    return this.equals(that.toDecimal());
  public function nearEquals(that : Stone) : Bool
    return Floats.nearEquals(this.toFloat(), that.toFloat());
  @:op(A!=B) inline public function notEqual(that : Stone) : Bool
    return !this.equals(that.toDecimal());
  @:op( A<B) inline public function less(that : Stone) : Bool
    return this.less(that.toDecimal());
  @:op(A<=B) inline public function lessEqual(that : Stone) : Bool
    return this.lessEqual(that.toDecimal());
  @:deprecated("use greater instead or simply >")
  inline public function more(that : Stone) : Bool
    return greater(that);
  @:op( A>B) inline public function greater(that : Stone) : Bool
    return this.greater(that.toDecimal());
  @:deprecated("use greaterEqual instead or simply >=")
  inline public function moreEqual(that : Stone) : Bool
    return greaterEqual(that);
  @:op(A>=B) inline public function greaterEqual(that : Stone) : Bool
    return this.greaterEqual(that.toDecimal());

  inline public function toDecimal() : Decimal
    return this;

  inline public function toFloat() : Float
    return this.toFloat();


  @:to inline public function toMegagram() : Megagram
    return this * 0.00635029318;
  @:to inline public function toKilogram() : Kilogram
    return this * 6.35029318;
  @:to inline public function toGram() : Gram
    return this * 6350.29318;
  @:to inline public function toCentigram() : Centigram
    return this * 635029.318;
  @:to inline public function toMilligram() : Milligram
    return this * 6350293.18;
  @:to inline public function toMicrogram() : Microgram
    return this * 6350293180;
  @:to inline public function toNanogram() : Nanogram
    return this * 6350293180000;
  @:to inline public function toPicogram() : Picogram
    return this * 6.35029318e+15;
  @:to inline public function toTon() : Ton
    return this * 0.00625;
  @:to inline public function toHundredweight() : Hundredweight
    return this * 0.125;
  @:to inline public function toQuarter() : Quarter
    return this * 0.5;
  @:to inline public function toPound() : Pound
    return this * 14;
  @:to inline public function toOunce() : Ounce
    return this * 224;
  @:to inline public function toDrachm() : Drachm
    return this * 3584;
  @:to inline public function toGrain() : Grain
    return this * 98000;
  @:to inline public function toUnifiedAtomicMassUnit() : UnifiedAtomicMassUnit
    return this * 3.82423627636247e+27;
  @:to inline public function toDalton() : Dalton
    return this * 3.82423627636247e+27;
  @:to inline public function toPlankMass() : PlankMass
    return this * 291764943.878043;
  @:to inline public function toSlug() : Slug
    return this * 0.43513330052968;
  @:to inline public function toSolarMass() : SolarMass
    return this * 3.19342897085816e-30;

  @:to inline public function toString() : String
    return this.toString() + symbol;

  public static inline var symbol : String = "st";
}
