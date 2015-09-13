package thx.unit.mass;

using thx.Floats;
import thx.Decimal;

abstract Ton(Decimal) {
  @:from inline static public function fromDecimal(value : Decimal) : Ton
    return new Ton(value);

  @:from inline static public function fromInt(value : Int) : Ton
    return fromDecimal(Decimal.fromInt(value));

  @:from inline static public function fromFloat(value : Float) : Ton
    return fromDecimal(Decimal.fromFloat(value));

  inline function new(value : Decimal)
    this = value;

  inline public function abs() : Ton
    return this.abs();

  inline public function min(that : Ton) : Ton
    return this.min(that.toDecimal());

  inline public function max(that : Ton) : Ton
    return this.max(that.toDecimal());

  @:op( -A ) inline public function negate() : Ton
    return -this;
  @:op( A+B) inline public function add(that : Ton) : Ton
    return this.add(that.toDecimal());
  @:op( A-B) inline public function subtract(that : Ton) : Ton
    return this.subtract(that.toDecimal());
  @:op( A*B) inline public function multiply(that : Decimal) : Ton
    return this.multiply(that);
  @:op( A/B) inline public function divide(that : Decimal) : Ton
    return this.divide(that);
  @:op( A%B) inline public function modulo(that : Decimal) : Ton
    return this.modulo(that);
  @:op(A==B) inline public function equal(that : Ton) : Bool
    return this.equals(that.toDecimal());
  public function nearEquals(that : Ton) : Bool
    return Floats.nearEquals(this.toFloat(), that.toFloat());
  @:op(A!=B) inline public function notEqual(that : Ton) : Bool
    return !this.equals(that.toDecimal());
  @:op( A<B) inline public function less(that : Ton) : Bool
    return this.less(that.toDecimal());
  @:op(A<=B) inline public function lessEqual(that : Ton) : Bool
    return this.lessEqual(that.toDecimal());
  @:deprecated("use greater instead or simply >")
  inline public function more(that : Ton) : Bool
    return greater(that);
  @:op( A>B) inline public function greater(that : Ton) : Bool
    return this.greater(that.toDecimal());
  @:deprecated("use greaterEqual instead or simply >=")
  inline public function moreEqual(that : Ton) : Bool
    return greaterEqual(that);
  @:op(A>=B) inline public function greaterEqual(that : Ton) : Bool
    return this.greaterEqual(that.toDecimal());

  inline public function toDecimal() : Decimal
    return this;

  inline public function toFloat() : Float
    return this.toFloat();


  @:to inline public function toMegagram() : Megagram
    return this * 1.0160469088;
  @:to inline public function toKilogram() : Kilogram
    return this * 1016.0469088;
  @:to inline public function toGram() : Gram
    return this * 1016046.9088;
  @:to inline public function toCentigram() : Centigram
    return this * 101604690.88;
  @:to inline public function toMilligram() : Milligram
    return this * 1016046908.8;
  @:to inline public function toMicrogram() : Microgram
    return this * 1016046908800;
  @:to inline public function toNanogram() : Nanogram
    return this * 1.0160469088e+15;
  @:to inline public function toPicogram() : Picogram
    return this * 1.0160469088e+18;
  @:to inline public function toHundredweight() : Hundredweight
    return this * 20;
  @:to inline public function toQuarter() : Quarter
    return this * 80;
  @:to inline public function toStone() : Stone
    return this * 160;
  @:to inline public function toPound() : Pound
    return this * 2240;
  @:to inline public function toOunce() : Ounce
    return this * 35840;
  @:to inline public function toDrachm() : Drachm
    return this * 573440;
  @:to inline public function toGrain() : Grain
    return this * 15680000;
  @:to inline public function toUnifiedAtomicMassUnit() : UnifiedAtomicMassUnit
    return this * 6.11877804217996e+29;
  @:to inline public function toDalton() : Dalton
    return this * 6.11877804217996e+29;
  @:to inline public function toPlankMass() : PlankMass
    return this * 46682391020.4869;
  @:to inline public function toSlug() : Slug
    return this * 69.6213280847488;
  @:to inline public function toSolarMass() : SolarMass
    return this * 5.10948635337306e-28;

  @:to inline public function toString() : String
    return this.toString() + symbol;

  public static inline var symbol : String = "t";
}
