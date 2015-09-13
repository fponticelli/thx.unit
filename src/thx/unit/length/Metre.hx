package thx.unit.length;

using thx.Floats;
import thx.Decimal;

abstract Metre(Decimal) {
  @:from inline static public function fromDecimal(value : Decimal) : Metre
    return new Metre(value);

  @:from inline static public function fromInt(value : Int) : Metre
    return fromDecimal(Decimal.fromInt(value));

  @:from inline static public function fromFloat(value : Float) : Metre
    return fromDecimal(Decimal.fromFloat(value));

  inline function new(value : Decimal)
    this = value;

  inline public function abs() : Metre
    return this.abs();

  inline public function min(that : Metre) : Metre
    return this.min(that.toDecimal());

  inline public function max(that : Metre) : Metre
    return this.max(that.toDecimal());

  @:op( -A ) inline public function negate() : Metre
    return -this;
  @:op( A+B) inline public function add(that : Metre) : Metre
    return this.add(that.toDecimal());
  @:op( A-B) inline public function subtract(that : Metre) : Metre
    return this.subtract(that.toDecimal());
  @:op( A*B) inline public function multiply(that : Decimal) : Metre
    return this.multiply(that);
  @:op( A/B) inline public function divide(that : Decimal) : Metre
    return this.divide(that);
  @:op( A%B) inline public function modulo(that : Decimal) : Metre
    return this.modulo(that);
  @:op(A==B) inline public function equal(that : Metre) : Bool
    return this.equals(that.toDecimal());
  public function nearEquals(that : Metre) : Bool
    return Floats.nearEquals(this.toFloat(), that.toFloat());
  @:op(A!=B) inline public function notEqual(that : Metre) : Bool
    return !this.equals(that.toDecimal());
  @:op( A<B) inline public function less(that : Metre) : Bool
    return this.less(that.toDecimal());
  @:op(A<=B) inline public function lessEqual(that : Metre) : Bool
    return this.lessEqual(that.toDecimal());
  @:deprecated("use greater instead or simply >")
  inline public function more(that : Metre) : Bool
    return greater(that);
  @:op( A>B) inline public function greater(that : Metre) : Bool
    return this.greater(that.toDecimal());
  @:deprecated("use greaterEqual instead or simply >=")
  inline public function moreEqual(that : Metre) : Bool
    return greaterEqual(that);
  @:op(A>=B) inline public function greaterEqual(that : Metre) : Bool
    return this.greaterEqual(that.toDecimal());

  inline public function toDecimal() : Decimal
    return this;

  inline public function toFloat() : Float
    return this.toFloat();


  @:to inline public function toKilometre() : Kilometre
    return this * 0.001;
  @:to inline public function toCentimetre() : Centimetre
    return this * 100;
  @:to inline public function toMillimetre() : Millimetre
    return this * 1000;
  @:to inline public function toMicrometre() : Micrometre
    return this * 1000000;
  @:to inline public function toNanometre() : Nanometre
    return this * 1000000000;
  @:to inline public function toLeague() : League
    return this * 0.000207123730745778;
  @:to inline public function toMile() : Mile
    return this * 0.000621371192237334;
  @:to inline public function toFurlong() : Furlong
    return this * 0.00497096953789867;
  @:to inline public function toChain() : Chain
    return this * 0.0497096953789867;
  @:to inline public function toYard() : Yard
    return this * 1.09361329833771;
  @:to inline public function toFoot() : Foot
    return this * 3.28083989501312;
  @:to inline public function toInch() : Inch
    return this * 39.3700787401575;
  @:to inline public function toLine() : Line
    return this * 472.440944881146;
  @:to inline public function toThou() : Thou
    return this * 39370.0787401575;
  @:to inline public function toFathom() : Fathom
    return this * 0.546806649168854;
  @:to inline public function toNauticalMile() : NauticalMile
    return this * 0.000539956803455724;
  @:to inline public function toEarthRadius() : EarthRadius
    return this * 1.5696100884491e-07;
  @:to inline public function toAstronomicalUnit() : AstronomicalUnit
    return this * 6.68458712226845e-12;
  @:to inline public function toLightYear() : LightYear
    return this * 1.05700083402462e-16;

  @:to inline public function toString() : String
    return this.toString() + symbol;

  public static inline var symbol : String = "m";
}
