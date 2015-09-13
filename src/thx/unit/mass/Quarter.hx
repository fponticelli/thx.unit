package thx.unit.mass;

using thx.Floats;
import thx.Decimal;

abstract Quarter(Decimal) {
  @:from inline static public function fromDecimal(value : Decimal) : Quarter
    return new Quarter(value);

  @:from inline static public function fromInt(value : Int) : Quarter
    return fromDecimal(Decimal.fromInt(value));

  @:from inline static public function fromFloat(value : Float) : Quarter
    return fromDecimal(Decimal.fromFloat(value));

  inline function new(value : Decimal)
    this = value;

  inline public function abs() : Quarter
    return this.abs();

  inline public function min(that : Quarter) : Quarter
    return this.min(that.toDecimal());

  inline public function max(that : Quarter) : Quarter
    return this.max(that.toDecimal());

  @:op( -A ) inline public function negate() : Quarter
    return -this;
  @:op( A+B) inline public function add(that : Quarter) : Quarter
    return this.add(that.toDecimal());
  @:op( A-B) inline public function subtract(that : Quarter) : Quarter
    return this.subtract(that.toDecimal());
  @:op( A*B) inline public function multiply(that : Decimal) : Quarter
    return this.multiply(that);
  @:op( A/B) inline public function divide(that : Decimal) : Quarter
    return this.divide(that);
  @:op( A%B) inline public function modulo(that : Decimal) : Quarter
    return this.modulo(that);
  @:op(A==B) inline public function equal(that : Quarter) : Bool
    return this.equals(that.toDecimal());
  public function nearEquals(that : Quarter) : Bool
    return Floats.nearEquals(this.toFloat(), that.toFloat());
  @:op(A!=B) inline public function notEqual(that : Quarter) : Bool
    return !this.equals(that.toDecimal());
  @:op( A<B) inline public function less(that : Quarter) : Bool
    return this.less(that.toDecimal());
  @:op(A<=B) inline public function lessEqual(that : Quarter) : Bool
    return this.lessEqual(that.toDecimal());
  @:deprecated("use greater instead or simply >")
  inline public function more(that : Quarter) : Bool
    return greater(that);
  @:op( A>B) inline public function greater(that : Quarter) : Bool
    return this.greater(that.toDecimal());
  @:deprecated("use greaterEqual instead or simply >=")
  inline public function moreEqual(that : Quarter) : Bool
    return greaterEqual(that);
  @:op(A>=B) inline public function greaterEqual(that : Quarter) : Bool
    return this.greaterEqual(that.toDecimal());

  inline public function toDecimal() : Decimal
    return this;

  inline public function toFloat() : Float
    return this.toFloat();


  @:to inline public function toMegagram() : Megagram
    return this * 0.01270058636;
  @:to inline public function toKilogram() : Kilogram
    return this * 12.70058636;
  @:to inline public function toGram() : Gram
    return this * 12700.58636;
  @:to inline public function toCentigram() : Centigram
    return this * 1270058.636;
  @:to inline public function toMilligram() : Milligram
    return this * 12700586.36;
  @:to inline public function toMicrogram() : Microgram
    return this * 12700586360;
  @:to inline public function toNanogram() : Nanogram
    return this * 12700586360000;
  @:to inline public function toPicogram() : Picogram
    return this * 1.270058636e+16;
  @:to inline public function toTon() : Ton
    return this * 0.0125;
  @:to inline public function toHundredweight() : Hundredweight
    return this * 0.25;
  @:to inline public function toStone() : Stone
    return this * 2;
  @:to inline public function toPound() : Pound
    return this * 28;
  @:to inline public function toOunce() : Ounce
    return this * 448;
  @:to inline public function toDrachm() : Drachm
    return this * 7168;
  @:to inline public function toGrain() : Grain
    return this * 196000;
  @:to inline public function toUnifiedAtomicMassUnit() : UnifiedAtomicMassUnit
    return this * 7.64847255272495e+27;
  @:to inline public function toDalton() : Dalton
    return this * 7.64847255272495e+27;
  @:to inline public function toPlankMass() : PlankMass
    return this * 583529887.756087;
  @:to inline public function toSlug() : Slug
    return this * 0.87026660105936;
  @:to inline public function toSolarMass() : SolarMass
    return this * 6.38685794171633e-30;

  @:to inline public function toString() : String
    return this.toString() + symbol;

  public static inline var symbol : String = "qr";
}
