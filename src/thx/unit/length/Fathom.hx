package thx.unit.length;

using thx.Floats;
import thx.Decimal;

abstract Fathom(Decimal) {
  @:from inline static public function fromDecimal(value : Decimal) : Fathom
    return new Fathom(value);

  @:from inline static public function fromInt(value : Int) : Fathom
    return fromDecimal(Decimal.fromInt(value));

  @:from inline static public function fromFloat(value : Float) : Fathom
    return fromDecimal(Decimal.fromFloat(value));

  inline function new(value : Decimal)
    this = value;

  inline public function abs() : Fathom
    return this.abs();

  inline public function min(that : Fathom) : Fathom
    return this.min(that.toDecimal());

  inline public function max(that : Fathom) : Fathom
    return this.max(that.toDecimal());

  @:op( -A ) inline public function negate() : Fathom
    return -this;
  @:op( A+B) inline public function add(that : Fathom) : Fathom
    return this.add(that.toDecimal());
  @:op( A-B) inline public function subtract(that : Fathom) : Fathom
    return this.subtract(that.toDecimal());
  @:op( A*B) inline public function multiply(that : Decimal) : Fathom
    return this.multiply(that);
  @:op( A/B) inline public function divide(that : Decimal) : Fathom
    return this.divide(that);
  @:op( A%B) inline public function modulo(that : Decimal) : Fathom
    return this.modulo(that);
  @:op(A==B) inline public function equal(that : Fathom) : Bool
    return this.equals(that.toDecimal());
  public function nearEquals(that : Fathom) : Bool
    return Floats.nearEquals(this.toFloat(), that.toFloat());
  @:op(A!=B) inline public function notEqual(that : Fathom) : Bool
    return !this.equals(that.toDecimal());
  @:op( A<B) inline public function less(that : Fathom) : Bool
    return this.less(that.toDecimal());
  @:op(A<=B) inline public function lessEqual(that : Fathom) : Bool
    return this.lessEqual(that.toDecimal());
  @:deprecated("use greater instead or simply >")
  inline public function more(that : Fathom) : Bool
    return greater(that);
  @:op( A>B) inline public function greater(that : Fathom) : Bool
    return this.greater(that.toDecimal());
  @:deprecated("use greaterEqual instead or simply >=")
  inline public function moreEqual(that : Fathom) : Bool
    return greaterEqual(that);
  @:op(A>=B) inline public function greaterEqual(that : Fathom) : Bool
    return this.greaterEqual(that.toDecimal());

  inline public function toDecimal() : Decimal
    return this;

  inline public function toFloat() : Float
    return this.toFloat();


  @:to inline public function toKilometre() : Kilometre
    return this * 0.0018288;
  @:to inline public function toMetre() : Metre
    return this * 1.8288;
  @:to inline public function toCentimetre() : Centimetre
    return this * 182.88;
  @:to inline public function toMillimetre() : Millimetre
    return this * 1828.8;
  @:to inline public function toMicrometre() : Micrometre
    return this * 1828800;
  @:to inline public function toNanometre() : Nanometre
    return this * 1828800000;
  @:to inline public function toLeague() : League
    return this * 0.000378787878787879;
  @:to inline public function toMile() : Mile
    return this * 0.00113636363636364;
  @:to inline public function toFurlong() : Furlong
    return this * 0.00909090909090909;
  @:to inline public function toChain() : Chain
    return this * 0.0909090909090909;
  @:to inline public function toYard() : Yard
    return this * 2;
  @:to inline public function toFoot() : Foot
    return this * 6;
  @:to inline public function toInch() : Inch
    return this * 72;
  @:to inline public function toLine() : Line
    return this * 863.999999998639;
  @:to inline public function toThou() : Thou
    return this * 72000;
  @:to inline public function toNauticalMile() : NauticalMile
    return this * 0.000987473002159827;
  @:to inline public function toEarthRadius() : EarthRadius
    return this * 2.87050292975571e-07;
  @:to inline public function toAstronomicalUnit() : AstronomicalUnit
    return this * 1.22247729292045e-11;
  @:to inline public function toLightYear() : LightYear
    return this * 1.93304312526422e-16;

  @:to inline public function toString() : String
    return this.toString() + symbol;

  public static inline var symbol : String = "ftm";
}
