package thx.unit.length;

using thx.Floats;
import thx.Decimal;

abstract LightYear(Decimal) {
  @:from inline static public function fromDecimal(value : Decimal) : LightYear
    return new LightYear(value);

  @:from inline static public function fromInt(value : Int) : LightYear
    return fromDecimal(Decimal.fromInt(value));

  @:from inline static public function fromFloat(value : Float) : LightYear
    return fromDecimal(Decimal.fromFloat(value));

  inline function new(value : Decimal)
    this = value;

  inline public function abs() : LightYear
    return this.abs();

  inline public function min(that : LightYear) : LightYear
    return this.min(that.toDecimal());

  inline public function max(that : LightYear) : LightYear
    return this.max(that.toDecimal());

  @:op( -A ) inline public function negate() : LightYear
    return -this;
  @:op( A+B) inline public function add(that : LightYear) : LightYear
    return this.add(that.toDecimal());
  @:op( A-B) inline public function subtract(that : LightYear) : LightYear
    return this.subtract(that.toDecimal());
  @:op( A*B) inline public function multiply(that : Decimal) : LightYear
    return this.multiply(that);
  @:op( A/B) inline public function divide(that : Decimal) : LightYear
    return this.divide(that);
  @:op( A%B) inline public function modulo(that : Decimal) : LightYear
    return this.modulo(that);
  @:op(A==B) inline public function equal(that : LightYear) : Bool
    return this.equals(that.toDecimal());
  public function nearEquals(that : LightYear) : Bool
    return Floats.nearEquals(this.toFloat(), that.toFloat());
  @:op(A!=B) inline public function notEqual(that : LightYear) : Bool
    return !this.equals(that.toDecimal());
  @:op( A<B) inline public function less(that : LightYear) : Bool
    return this.less(that.toDecimal());
  @:op(A<=B) inline public function lessEqual(that : LightYear) : Bool
    return this.lessEqual(that.toDecimal());
  @:deprecated("use greater instead or simply >")
  inline public function more(that : LightYear) : Bool
    return greater(that);
  @:op( A>B) inline public function greater(that : LightYear) : Bool
    return this.greater(that.toDecimal());
  @:deprecated("use greaterEqual instead or simply >=")
  inline public function moreEqual(that : LightYear) : Bool
    return greaterEqual(that);
  @:op(A>=B) inline public function greaterEqual(that : LightYear) : Bool
    return this.greaterEqual(that.toDecimal());

  inline public function toDecimal() : Decimal
    return this;

  inline public function toFloat() : Float
    return this.toFloat();


  @:to inline public function toKilometre() : Kilometre
    return this * 9460730472580.8;
  @:to inline public function toMetre() : Metre
    return this * 9.4607304725808e+15;
  @:to inline public function toCentimetre() : Centimetre
    return this * 9.4607304725808e+17;
  @:to inline public function toMillimetre() : Millimetre
    return this * 9.4607304725808e+18;
  @:to inline public function toMicrometre() : Micrometre
    return this * 9.4607304725808e+21;
  @:to inline public function toNanometre() : Nanometre
    return this * 9.4607304725808e+24;
  @:to inline public function toLeague() : League
    return this * 1959541791061.2;
  @:to inline public function toMile() : Mile
    return this * 5878625373183.61;
  @:to inline public function toFurlong() : Furlong
    return this * 47029002985468.9;
  @:to inline public function toChain() : Chain
    return this * 470290029854689;
  @:to inline public function toYard() : Yard
    return this * 1.03463806568032e+16;
  @:to inline public function toFoot() : Foot
    return this * 3.10391419704094e+16;
  @:to inline public function toInch() : Inch
    return this * 3.72469703644913e+17;
  @:to inline public function toLine() : Line
    return this * 4.46963644373192e+18;
  @:to inline public function toThou() : Thou
    return this * 3.72469703644913e+20;
  @:to inline public function toFathom() : Fathom
    return this * 5.17319032840158e+15;
  @:to inline public function toNauticalMile() : NauticalMile
    return this * 5108385784330.89;
  @:to inline public function toEarthRadius() : EarthRadius
    return this * 1484965799.38606;
  @:to inline public function toAstronomicalUnit() : AstronomicalUnit
    return this * 63241.0770842663;

  @:to inline public function toString() : String
    return this.toString() + symbol;

  public static inline var symbol : String = "ly";
}
