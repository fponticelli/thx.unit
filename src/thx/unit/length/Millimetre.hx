package thx.unit.length;

using thx.Floats;
import thx.Decimal;

abstract Millimetre(Decimal) {
  @:from inline static public function fromDecimal(value : Decimal) : Millimetre
    return new Millimetre(value);

  @:from inline static public function fromInt(value : Int) : Millimetre
    return fromDecimal(Decimal.fromInt(value));

  @:from inline static public function fromFloat(value : Float) : Millimetre
    return fromDecimal(Decimal.fromFloat(value));

  inline function new(value : Decimal)
    this = value;

  inline public function abs() : Millimetre
    return this.abs();

  inline public function min(that : Millimetre) : Millimetre
    return this.min(that.toDecimal());

  inline public function max(that : Millimetre) : Millimetre
    return this.max(that.toDecimal());

  @:op( -A ) inline public function negate() : Millimetre
    return -this;
  @:op( A+B) inline public function add(that : Millimetre) : Millimetre
    return this.add(that.toDecimal());
  @:op( A-B) inline public function subtract(that : Millimetre) : Millimetre
    return this.subtract(that.toDecimal());
  @:op( A*B) inline public function multiply(that : Decimal) : Millimetre
    return this.multiply(that);
  @:op( A/B) inline public function divide(that : Decimal) : Millimetre
    return this.divide(that);
  @:op( A%B) inline public function modulo(that : Decimal) : Millimetre
    return this.modulo(that);
  @:op(A==B) inline public function equal(that : Millimetre) : Bool
    return this.equals(that.toDecimal());
  public function nearEquals(that : Millimetre) : Bool
    return Floats.nearEquals(this.toFloat(), that.toFloat());
  @:op(A!=B) inline public function notEqual(that : Millimetre) : Bool
    return !this.equals(that.toDecimal());
  @:op( A<B) inline public function less(that : Millimetre) : Bool
    return this.less(that.toDecimal());
  @:op(A<=B) inline public function lessEqual(that : Millimetre) : Bool
    return this.lessEqual(that.toDecimal());
  @:deprecated("use greater instead or simply >")
  inline public function more(that : Millimetre) : Bool
    return greater(that);
  @:op( A>B) inline public function greater(that : Millimetre) : Bool
    return this.greater(that.toDecimal());
  @:deprecated("use greaterEqual instead or simply >=")
  inline public function moreEqual(that : Millimetre) : Bool
    return greaterEqual(that);
  @:op(A>=B) inline public function greaterEqual(that : Millimetre) : Bool
    return this.greaterEqual(that.toDecimal());

  inline public function toDecimal() : Decimal
    return this;

  inline public function toFloat() : Float
    return this.toFloat();


  @:to inline public function toKilometre() : Kilometre
    return this * 1e-06;
  @:to inline public function toMetre() : Metre
    return this * 0.001;
  @:to inline public function toCentimetre() : Centimetre
    return this * 0.1;
  @:to inline public function toMicrometre() : Micrometre
    return this * 1000;
  @:to inline public function toNanometre() : Nanometre
    return this * 1000000;
  @:to inline public function toLeague() : League
    return this * 2.07123730745778e-07;
  @:to inline public function toMile() : Mile
    return this * 6.21371192237334e-07;
  @:to inline public function toFurlong() : Furlong
    return this * 4.97096953789867e-06;
  @:to inline public function toChain() : Chain
    return this * 4.97096953789867e-05;
  @:to inline public function toYard() : Yard
    return this * 0.00109361329833771;
  @:to inline public function toFoot() : Foot
    return this * 0.00328083989501312;
  @:to inline public function toInch() : Inch
    return this * 0.0393700787401575;
  @:to inline public function toLine() : Line
    return this * 0.472440944881146;
  @:to inline public function toThou() : Thou
    return this * 39.3700787401575;
  @:to inline public function toFathom() : Fathom
    return this * 0.000546806649168854;
  @:to inline public function toNauticalMile() : NauticalMile
    return this * 5.39956803455724e-07;
  @:to inline public function toEarthRadius() : EarthRadius
    return this * 1.5696100884491e-10;
  @:to inline public function toAstronomicalUnit() : AstronomicalUnit
    return this * 6.68458712226845e-15;
  @:to inline public function toLightYear() : LightYear
    return this * 1.05700083402462e-19;

  @:to inline public function toString() : String
    return this.toString() + symbol;

  public static inline var symbol : String = "mm";
}
