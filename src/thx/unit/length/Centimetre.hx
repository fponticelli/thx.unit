package thx.unit.length;

using thx.Floats;
import thx.Decimal;

abstract Centimetre(Decimal) {
  @:from inline static public function fromDecimal(value : Decimal) : Centimetre
    return new Centimetre(value);

  @:from inline static public function fromInt(value : Int) : Centimetre
    return fromDecimal(Decimal.fromInt(value));

  @:from inline static public function fromFloat(value : Float) : Centimetre
    return fromDecimal(Decimal.fromFloat(value));

  inline function new(value : Decimal)
    this = value;

  inline public function abs() : Centimetre
    return this.abs();

  inline public function min(that : Centimetre) : Centimetre
    return this.min(that.toDecimal());

  inline public function max(that : Centimetre) : Centimetre
    return this.max(that.toDecimal());

  @:op( -A ) inline public function negate() : Centimetre
    return -this;
  @:op( A+B) inline public function add(that : Centimetre) : Centimetre
    return this.add(that.toDecimal());
  @:op( A-B) inline public function subtract(that : Centimetre) : Centimetre
    return this.subtract(that.toDecimal());
  @:op( A*B) inline public function multiply(that : Decimal) : Centimetre
    return this.multiply(that);
  @:op( A/B) inline public function divide(that : Decimal) : Centimetre
    return this.divide(that);
  @:op( A%B) inline public function modulo(that : Decimal) : Centimetre
    return this.modulo(that);
  @:op(A==B) inline public function equal(that : Centimetre) : Bool
    return this.equals(that.toDecimal());
  public function nearEquals(that : Centimetre) : Bool
    return Floats.nearEquals(this.toFloat(), that.toFloat());
  @:op(A!=B) inline public function notEqual(that : Centimetre) : Bool
    return !this.equals(that.toDecimal());
  @:op( A<B) inline public function less(that : Centimetre) : Bool
    return this.less(that.toDecimal());
  @:op(A<=B) inline public function lessEqual(that : Centimetre) : Bool
    return this.lessEqual(that.toDecimal());
  @:deprecated("use greater instead or simply >")
  inline public function more(that : Centimetre) : Bool
    return greater(that);
  @:op( A>B) inline public function greater(that : Centimetre) : Bool
    return this.greater(that.toDecimal());
  @:deprecated("use greaterEqual instead or simply >=")
  inline public function moreEqual(that : Centimetre) : Bool
    return greaterEqual(that);
  @:op(A>=B) inline public function greaterEqual(that : Centimetre) : Bool
    return this.greaterEqual(that.toDecimal());

  inline public function toDecimal() : Decimal
    return this;

  inline public function toFloat() : Float
    return this.toFloat();


  @:to inline public function toKilometre() : Kilometre
    return this * 1e-05;
  @:to inline public function toMetre() : Metre
    return this * 0.01;
  @:to inline public function toMillimetre() : Millimetre
    return this * 10;
  @:to inline public function toMicrometre() : Micrometre
    return this * 10000;
  @:to inline public function toNanometre() : Nanometre
    return this * 10000000;
  @:to inline public function toLeague() : League
    return this * 2.07123730745778e-06;
  @:to inline public function toMile() : Mile
    return this * 6.21371192237334e-06;
  @:to inline public function toFurlong() : Furlong
    return this * 4.97096953789867e-05;
  @:to inline public function toChain() : Chain
    return this * 0.000497096953789867;
  @:to inline public function toYard() : Yard
    return this * 0.0109361329833771;
  @:to inline public function toFoot() : Foot
    return this * 0.0328083989501312;
  @:to inline public function toInch() : Inch
    return this * 0.393700787401575;
  @:to inline public function toLine() : Line
    return this * 4.72440944881146;
  @:to inline public function toThou() : Thou
    return this * 393.700787401575;
  @:to inline public function toFathom() : Fathom
    return this * 0.00546806649168854;
  @:to inline public function toNauticalMile() : NauticalMile
    return this * 5.39956803455724e-06;
  @:to inline public function toEarthRadius() : EarthRadius
    return this * 1.5696100884491e-09;
  @:to inline public function toAstronomicalUnit() : AstronomicalUnit
    return this * 6.68458712226845e-14;
  @:to inline public function toLightYear() : LightYear
    return this * 1.05700083402462e-18;

  @:to inline public function toString() : String
    return this.toString() + symbol;

  public static inline var symbol : String = "cm";
}
