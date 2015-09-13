package thx.unit.mass;

using thx.Floats;
import thx.Decimal;

abstract PlankMass(Decimal) {
  @:from inline static public function fromDecimal(value : Decimal) : PlankMass
    return new PlankMass(value);

  @:from inline static public function fromInt(value : Int) : PlankMass
    return fromDecimal(Decimal.fromInt(value));

  @:from inline static public function fromFloat(value : Float) : PlankMass
    return fromDecimal(Decimal.fromFloat(value));

  inline function new(value : Decimal)
    this = value;

  inline public function abs() : PlankMass
    return this.abs();

  inline public function min(that : PlankMass) : PlankMass
    return this.min(that.toDecimal());

  inline public function max(that : PlankMass) : PlankMass
    return this.max(that.toDecimal());

  @:op( -A ) inline public function negate() : PlankMass
    return -this;
  @:op( A+B) inline public function add(that : PlankMass) : PlankMass
    return this.add(that.toDecimal());
  @:op( A-B) inline public function subtract(that : PlankMass) : PlankMass
    return this.subtract(that.toDecimal());
  @:op( A*B) inline public function multiply(that : Decimal) : PlankMass
    return this.multiply(that);
  @:op( A/B) inline public function divide(that : Decimal) : PlankMass
    return this.divide(that);
  @:op( A%B) inline public function modulo(that : Decimal) : PlankMass
    return this.modulo(that);
  @:op(A==B) inline public function equal(that : PlankMass) : Bool
    return this.equals(that.toDecimal());
  public function nearEquals(that : PlankMass) : Bool
    return Floats.nearEquals(this.toFloat(), that.toFloat());
  @:op(A!=B) inline public function notEqual(that : PlankMass) : Bool
    return !this.equals(that.toDecimal());
  @:op( A<B) inline public function less(that : PlankMass) : Bool
    return this.less(that.toDecimal());
  @:op(A<=B) inline public function lessEqual(that : PlankMass) : Bool
    return this.lessEqual(that.toDecimal());
  @:deprecated("use greater instead or simply >")
  inline public function more(that : PlankMass) : Bool
    return greater(that);
  @:op( A>B) inline public function greater(that : PlankMass) : Bool
    return this.greater(that.toDecimal());
  @:deprecated("use greaterEqual instead or simply >=")
  inline public function moreEqual(that : PlankMass) : Bool
    return greaterEqual(that);
  @:op(A>=B) inline public function greaterEqual(that : PlankMass) : Bool
    return this.greaterEqual(that.toDecimal());

  inline public function toDecimal() : Decimal
    return this;

  inline public function toFloat() : Float
    return this.toFloat();


  @:to inline public function toMegagram() : Megagram
    return this * 2.17651e-11;
  @:to inline public function toKilogram() : Kilogram
    return this * 2.17651e-08;
  @:to inline public function toGram() : Gram
    return this * 2.17651e-05;
  @:to inline public function toCentigram() : Centigram
    return this * 0.00217651;
  @:to inline public function toMilligram() : Milligram
    return this * 0.0217651;
  @:to inline public function toMicrogram() : Microgram
    return this * 21.7651;
  @:to inline public function toNanogram() : Nanogram
    return this * 21765.1;
  @:to inline public function toPicogram() : Picogram
    return this * 21765100;
  @:to inline public function toTon() : Ton
    return this * 2.14213534941075e-11;
  @:to inline public function toHundredweight() : Hundredweight
    return this * 4.2842706988215e-10;
  @:to inline public function toQuarter() : Quarter
    return this * 1.7137082795286e-09;
  @:to inline public function toStone() : Stone
    return this * 3.4274165590572e-09;
  @:to inline public function toPound() : Pound
    return this * 4.79838318268008e-08;
  @:to inline public function toOunce() : Ounce
    return this * 7.67741309228813e-07;
  @:to inline public function toDrachm() : Drachm
    return this * 1.2283860947661e-05;
  @:to inline public function toGrain() : Grain
    return this * 0.000335886822787606;
  @:to inline public function toUnifiedAtomicMassUnit() : UnifiedAtomicMassUnit
    return this * 1.3107250739352e+19;
  @:to inline public function toDalton() : Dalton
    return this * 1.3107250739352e+19;
  @:to inline public function toSlug() : Slug
    return this * 1.49138307963264e-09;
  @:to inline public function toSolarMass() : SolarMass
    return this * 1.09452113348923e-38;

  @:to inline public function toString() : String
    return this.toString() + symbol;

  public static inline var symbol : String = "mP";
}
