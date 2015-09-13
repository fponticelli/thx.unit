package thx.unit.mass;

using thx.Floats;
import thx.Decimal;

abstract SolarMass(Decimal) {
  @:from inline static public function fromDecimal(value : Decimal) : SolarMass
    return new SolarMass(value);

  @:from inline static public function fromInt(value : Int) : SolarMass
    return fromDecimal(Decimal.fromInt(value));

  @:from inline static public function fromFloat(value : Float) : SolarMass
    return fromDecimal(Decimal.fromFloat(value));

  inline function new(value : Decimal)
    this = value;

  inline public function abs() : SolarMass
    return this.abs();

  inline public function min(that : SolarMass) : SolarMass
    return this.min(that.toDecimal());

  inline public function max(that : SolarMass) : SolarMass
    return this.max(that.toDecimal());

  @:op( -A ) inline public function negate() : SolarMass
    return -this;
  @:op( A+B) inline public function add(that : SolarMass) : SolarMass
    return this.add(that.toDecimal());
  @:op( A-B) inline public function subtract(that : SolarMass) : SolarMass
    return this.subtract(that.toDecimal());
  @:op( A*B) inline public function multiply(that : Decimal) : SolarMass
    return this.multiply(that);
  @:op( A/B) inline public function divide(that : Decimal) : SolarMass
    return this.divide(that);
  @:op( A%B) inline public function modulo(that : Decimal) : SolarMass
    return this.modulo(that);
  @:op(A==B) inline public function equal(that : SolarMass) : Bool
    return this.equals(that.toDecimal());
  public function nearEquals(that : SolarMass) : Bool
    return Floats.nearEquals(this.toFloat(), that.toFloat());
  @:op(A!=B) inline public function notEqual(that : SolarMass) : Bool
    return !this.equals(that.toDecimal());
  @:op( A<B) inline public function less(that : SolarMass) : Bool
    return this.less(that.toDecimal());
  @:op(A<=B) inline public function lessEqual(that : SolarMass) : Bool
    return this.lessEqual(that.toDecimal());
  @:deprecated("use greater instead or simply >")
  inline public function more(that : SolarMass) : Bool
    return greater(that);
  @:op( A>B) inline public function greater(that : SolarMass) : Bool
    return this.greater(that.toDecimal());
  @:deprecated("use greaterEqual instead or simply >=")
  inline public function moreEqual(that : SolarMass) : Bool
    return greaterEqual(that);
  @:op(A>=B) inline public function greaterEqual(that : SolarMass) : Bool
    return this.greaterEqual(that.toDecimal());

  inline public function toDecimal() : Decimal
    return this;

  inline public function toFloat() : Float
    return this.toFloat();


  @:to inline public function toMegagram() : Megagram
    return this * 1.98855e+27;
  @:to inline public function toKilogram() : Kilogram
    return this * 1.98855e+30;
  @:to inline public function toGram() : Gram
    return this * 1.98855e+33;
  @:to inline public function toCentigram() : Centigram
    return this * 1.98855e+35;
  @:to inline public function toMilligram() : Milligram
    return this * 1.98855e+36;
  @:to inline public function toMicrogram() : Microgram
    return this * 1.98855e+39;
  @:to inline public function toNanogram() : Nanogram
    return this * 1.98855e+42;
  @:to inline public function toPicogram() : Picogram
    return this * 1.98855e+45;
  @:to inline public function toTon() : Ton
    return this * 1.95714389048097e+27;
  @:to inline public function toHundredweight() : Hundredweight
    return this * 3.91428778096195e+28;
  @:to inline public function toQuarter() : Quarter
    return this * 1.56571511238478e+29;
  @:to inline public function toStone() : Stone
    return this * 3.13143022476956e+29;
  @:to inline public function toPound() : Pound
    return this * 4.38400231467738e+30;
  @:to inline public function toOunce() : Ounce
    return this * 7.01440370348381e+31;
  @:to inline public function toDrachm() : Drachm
    return this * 1.12230459255741e+33;
  @:to inline public function toGrain() : Grain
    return this * 3.06880162027417e+34;
  @:to inline public function toUnifiedAtomicMassUnit() : UnifiedAtomicMassUnit
    return this * 1.19753290624616e+57;
  @:to inline public function toDalton() : Dalton
    return this * 1.19753290624616e+57;
  @:to inline public function toPlankMass() : PlankMass
    return this * 9.13641563787899e+37;
  @:to inline public function toSlug() : Slug
    return this * 1.36258956908238e+29;

  @:to inline public function toString() : String
    return this.toString() + symbol;

  public static inline var symbol : String = "M☉";
}
