package thx.unit.length;

using thx.Floats;
import thx.Decimal;

abstract Line(Decimal) {
  @:from inline static public function fromDecimal(value : Decimal) : Line
    return new Line(value);

  @:from inline static public function fromInt(value : Int) : Line
    return fromDecimal(Decimal.fromInt(value));

  @:from inline static public function fromFloat(value : Float) : Line
    return fromDecimal(Decimal.fromFloat(value));

  inline function new(value : Decimal)
    this = value;

  inline public function abs() : Line
    return this.abs();

  inline public function min(that : Line) : Line
    return this.min(that.toDecimal());

  inline public function max(that : Line) : Line
    return this.max(that.toDecimal());

  @:op( -A ) inline public function negate() : Line
    return -this;
  @:op( A+B) inline public function add(that : Line) : Line
    return this.add(that.toDecimal());
  @:op( A-B) inline public function subtract(that : Line) : Line
    return this.subtract(that.toDecimal());
  @:op( A*B) inline public function multiply(that : Decimal) : Line
    return this.multiply(that);
  @:op( A/B) inline public function divide(that : Decimal) : Line
    return this.divide(that);
  @:op( A%B) inline public function modulo(that : Decimal) : Line
    return this.modulo(that);
  @:op(A==B) inline public function equal(that : Line) : Bool
    return this.equals(that.toDecimal());
  public function nearEquals(that : Line) : Bool
    return Floats.nearEquals(this.toFloat(), that.toFloat());
  @:op(A!=B) inline public function notEqual(that : Line) : Bool
    return !this.equals(that.toDecimal());
  @:op( A<B) inline public function less(that : Line) : Bool
    return this.less(that.toDecimal());
  @:op(A<=B) inline public function lessEqual(that : Line) : Bool
    return this.lessEqual(that.toDecimal());
  @:deprecated("use greater instead or simply >")
  inline public function more(that : Line) : Bool
    return greater(that);
  @:op( A>B) inline public function greater(that : Line) : Bool
    return this.greater(that.toDecimal());
  @:deprecated("use greaterEqual instead or simply >=")
  inline public function moreEqual(that : Line) : Bool
    return greaterEqual(that);
  @:op(A>=B) inline public function greaterEqual(that : Line) : Bool
    return this.greaterEqual(that.toDecimal());

  inline public function toDecimal() : Decimal
    return this;

  inline public function toFloat() : Float
    return this.toFloat();


  @:to inline public function toKilometre() : Kilometre
    return this * 2.11666666667e-06;
  @:to inline public function toMetre() : Metre
    return this * 0.00211666666667;
  @:to inline public function toCentimetre() : Centimetre
    return this * 0.211666666667;
  @:to inline public function toMillimetre() : Millimetre
    return this * 2.11666666667;
  @:to inline public function toMicrometre() : Micrometre
    return this * 2116.66666667;
  @:to inline public function toNanometre() : Nanometre
    return this * 2116666.66667;
  @:to inline public function toLeague() : League
    return this * 4.38411896745921e-07;
  @:to inline public function toMile() : Mile
    return this * 1.31523569023776e-06;
  @:to inline public function toFurlong() : Furlong
    return this * 1.05218855219021e-05;
  @:to inline public function toChain() : Chain
    return this * 0.000105218855219021;
  @:to inline public function toYard() : Yard
    return this * 0.00231481481481846;
  @:to inline public function toFoot() : Foot
    return this * 0.00694444444445538;
  @:to inline public function toInch() : Inch
    return this * 0.0833333333334646;
  @:to inline public function toThou() : Thou
    return this * 83.3333333334646;
  @:to inline public function toFathom() : Fathom
    return this * 0.00115740740740923;
  @:to inline public function toNauticalMile() : NauticalMile
    return this * 1.14290856731641e-06;
  @:to inline public function toEarthRadius() : EarthRadius
    return this * 3.32234135388916e-10;
  @:to inline public function toAstronomicalUnit() : AstronomicalUnit
    return this * 1.41490427421572e-14;
  @:to inline public function toLightYear() : LightYear
    return this * 2.23731843202229e-19;

  @:to inline public function toString() : String
    return this.toString() + symbol;

  public static inline var symbol : String = "line";
}
