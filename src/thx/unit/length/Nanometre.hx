package thx.unit.length;

using thx.Floats;
import thx.Decimal;

abstract Nanometre(Decimal) {
  @:from inline static public function fromDecimal(value : Decimal) : Nanometre
    return new Nanometre(value);

  @:from inline static public function fromInt(value : Int) : Nanometre
    return fromDecimal(Decimal.fromInt(value));

  @:from inline static public function fromFloat(value : Float) : Nanometre
    return fromDecimal(Decimal.fromFloat(value));

  inline function new(value : Decimal)
    this = value;

  inline public function abs() : Nanometre
    return this.abs();

  inline public function min(that : Nanometre) : Nanometre
    return this.min(that.toDecimal());

  inline public function max(that : Nanometre) : Nanometre
    return this.max(that.toDecimal());

  @:op( -A ) inline public function negate() : Nanometre
    return -this;
  @:op( A+B) inline public function add(that : Nanometre) : Nanometre
    return this.add(that.toDecimal());
  @:op( A-B) inline public function subtract(that : Nanometre) : Nanometre
    return this.subtract(that.toDecimal());
  @:op( A*B) inline public function multiply(that : Decimal) : Nanometre
    return this.multiply(that);
  @:op( A/B) inline public function divide(that : Decimal) : Nanometre
    return this.divide(that);
  @:op( A%B) inline public function modulo(that : Decimal) : Nanometre
    return this.modulo(that);
  @:op(A==B) inline public function equal(that : Nanometre) : Bool
    return this.equals(that.toDecimal());
  public function nearEquals(that : Nanometre) : Bool
    return Floats.nearEquals(this.toFloat(), that.toFloat());
  @:op(A!=B) inline public function notEqual(that : Nanometre) : Bool
    return !this.equals(that.toDecimal());
  @:op( A<B) inline public function less(that : Nanometre) : Bool
    return this.less(that.toDecimal());
  @:op(A<=B) inline public function lessEqual(that : Nanometre) : Bool
    return this.lessEqual(that.toDecimal());
  @:deprecated("use greater instead or simply >")
  inline public function more(that : Nanometre) : Bool
    return greater(that);
  @:op( A>B) inline public function greater(that : Nanometre) : Bool
    return this.greater(that.toDecimal());
  @:deprecated("use greaterEqual instead or simply >=")
  inline public function moreEqual(that : Nanometre) : Bool
    return greaterEqual(that);
  @:op(A>=B) inline public function greaterEqual(that : Nanometre) : Bool
    return this.greaterEqual(that.toDecimal());

  inline public function toDecimal() : Decimal
    return this;

  inline public function toFloat() : Float
    return this.toFloat();


  @:to inline public function toKilometre() : Kilometre
    return this * 1e-12;
  @:to inline public function toMetre() : Metre
    return this * 1e-09;
  @:to inline public function toCentimetre() : Centimetre
    return this * 1e-07;
  @:to inline public function toMillimetre() : Millimetre
    return this * 1e-06;
  @:to inline public function toMicrometre() : Micrometre
    return this * 0.001;
  @:to inline public function toLeague() : League
    return this * 2.07123730745778e-13;
  @:to inline public function toMile() : Mile
    return this * 6.21371192237334e-13;
  @:to inline public function toFurlong() : Furlong
    return this * 4.97096953789867e-12;
  @:to inline public function toChain() : Chain
    return this * 4.97096953789867e-11;
  @:to inline public function toYard() : Yard
    return this * 1.09361329833771e-09;
  @:to inline public function toFoot() : Foot
    return this * 3.28083989501312e-09;
  @:to inline public function toInch() : Inch
    return this * 3.93700787401575e-08;
  @:to inline public function toLine() : Line
    return this * 4.72440944881146e-07;
  @:to inline public function toThou() : Thou
    return this * 3.93700787401575e-05;
  @:to inline public function toFathom() : Fathom
    return this * 5.46806649168854e-10;
  @:to inline public function toNauticalMile() : NauticalMile
    return this * 5.39956803455724e-13;
  @:to inline public function toEarthRadius() : EarthRadius
    return this * 1.5696100884491e-16;
  @:to inline public function toAstronomicalUnit() : AstronomicalUnit
    return this * 6.68458712226845e-21;
  @:to inline public function toLightYear() : LightYear
    return this * 1.05700083402462e-25;

  @:to inline public function toString() : String
    return this.toString() + symbol;

  public static inline var symbol : String = "nm";
}
