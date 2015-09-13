package thx.unit.length;

using thx.Floats;
import thx.Decimal;

abstract Yard(Decimal) {
  @:from inline static public function fromDecimal(value : Decimal) : Yard
    return new Yard(value);

  @:from inline static public function fromInt(value : Int) : Yard
    return fromDecimal(Decimal.fromInt(value));

  @:from inline static public function fromFloat(value : Float) : Yard
    return fromDecimal(Decimal.fromFloat(value));

  inline function new(value : Decimal)
    this = value;

  inline public function abs() : Yard
    return this.abs();

  inline public function min(that : Yard) : Yard
    return this.min(that.toDecimal());

  inline public function max(that : Yard) : Yard
    return this.max(that.toDecimal());

  @:op( -A ) inline public function negate() : Yard
    return -this;
  @:op( A+B) inline public function add(that : Yard) : Yard
    return this.add(that.toDecimal());
  @:op( A-B) inline public function subtract(that : Yard) : Yard
    return this.subtract(that.toDecimal());
  @:op( A*B) inline public function multiply(that : Decimal) : Yard
    return this.multiply(that);
  @:op( A/B) inline public function divide(that : Decimal) : Yard
    return this.divide(that);
  @:op( A%B) inline public function modulo(that : Decimal) : Yard
    return this.modulo(that);
  @:op(A==B) inline public function equal(that : Yard) : Bool
    return this.equals(that.toDecimal());
  public function nearEquals(that : Yard) : Bool
    return Floats.nearEquals(this.toFloat(), that.toFloat());
  @:op(A!=B) inline public function notEqual(that : Yard) : Bool
    return !this.equals(that.toDecimal());
  @:op( A<B) inline public function less(that : Yard) : Bool
    return this.less(that.toDecimal());
  @:op(A<=B) inline public function lessEqual(that : Yard) : Bool
    return this.lessEqual(that.toDecimal());
  @:deprecated("use greater instead or simply >")
  inline public function more(that : Yard) : Bool
    return greater(that);
  @:op( A>B) inline public function greater(that : Yard) : Bool
    return this.greater(that.toDecimal());
  @:deprecated("use greaterEqual instead or simply >=")
  inline public function moreEqual(that : Yard) : Bool
    return greaterEqual(that);
  @:op(A>=B) inline public function greaterEqual(that : Yard) : Bool
    return this.greaterEqual(that.toDecimal());

  inline public function toDecimal() : Decimal
    return this;

  inline public function toFloat() : Float
    return this.toFloat();


  @:to inline public function toKilometre() : Kilometre
    return this * 0.0009144;
  @:to inline public function toMetre() : Metre
    return this * 0.9144;
  @:to inline public function toCentimetre() : Centimetre
    return this * 91.44;
  @:to inline public function toMillimetre() : Millimetre
    return this * 914.4;
  @:to inline public function toMicrometre() : Micrometre
    return this * 914400;
  @:to inline public function toNanometre() : Nanometre
    return this * 914400000;
  @:to inline public function toLeague() : League
    return this * 0.000189393939393939;
  @:to inline public function toMile() : Mile
    return this * 0.000568181818181818;
  @:to inline public function toFurlong() : Furlong
    return this * 0.00454545454545455;
  @:to inline public function toChain() : Chain
    return this * 0.0454545454545454;
  @:to inline public function toFoot() : Foot
    return this * 3;
  @:to inline public function toInch() : Inch
    return this * 36;
  @:to inline public function toLine() : Line
    return this * 431.99999999932;
  @:to inline public function toThou() : Thou
    return this * 36000;
  @:to inline public function toFathom() : Fathom
    return this * 0.5;
  @:to inline public function toNauticalMile() : NauticalMile
    return this * 0.000493736501079914;
  @:to inline public function toEarthRadius() : EarthRadius
    return this * 1.43525146487786e-07;
  @:to inline public function toAstronomicalUnit() : AstronomicalUnit
    return this * 6.11238646460227e-12;
  @:to inline public function toLightYear() : LightYear
    return this * 9.66521562632108e-17;

  @:to inline public function toString() : String
    return this.toString() + symbol;

  public static inline var symbol : String = "yd";
}
