package thx.unit.length;

using thx.Floats;
import thx.Decimal;

abstract Furlong(Decimal) {
  @:from inline static public function fromDecimal(value : Decimal) : Furlong
    return new Furlong(value);

  @:from inline static public function fromInt(value : Int) : Furlong
    return fromDecimal(Decimal.fromInt(value));

  @:from inline static public function fromFloat(value : Float) : Furlong
    return fromDecimal(Decimal.fromFloat(value));

  inline function new(value : Decimal)
    this = value;

  inline public function abs() : Furlong
    return this.abs();

  inline public function min(that : Furlong) : Furlong
    return this.min(that.toDecimal());

  inline public function max(that : Furlong) : Furlong
    return this.max(that.toDecimal());

  @:op( -A ) inline public function negate() : Furlong
    return -this;
  @:op( A+B) inline public function add(that : Furlong) : Furlong
    return this.add(that.toDecimal());
  @:op( A-B) inline public function subtract(that : Furlong) : Furlong
    return this.subtract(that.toDecimal());
  @:op( A*B) inline public function multiply(that : Decimal) : Furlong
    return this.multiply(that);
  @:op( A/B) inline public function divide(that : Decimal) : Furlong
    return this.divide(that);
  @:op( A%B) inline public function modulo(that : Decimal) : Furlong
    return this.modulo(that);
  @:op(A==B) inline public function equal(that : Furlong) : Bool
    return this.equals(that.toDecimal());
  public function nearEquals(that : Furlong) : Bool
    return Floats.nearEquals(this.toFloat(), that.toFloat());
  @:op(A!=B) inline public function notEqual(that : Furlong) : Bool
    return !this.equals(that.toDecimal());
  @:op( A<B) inline public function less(that : Furlong) : Bool
    return this.less(that.toDecimal());
  @:op(A<=B) inline public function lessEqual(that : Furlong) : Bool
    return this.lessEqual(that.toDecimal());
  @:deprecated("use greater instead or simply >")
  inline public function more(that : Furlong) : Bool
    return greater(that);
  @:op( A>B) inline public function greater(that : Furlong) : Bool
    return this.greater(that.toDecimal());
  @:deprecated("use greaterEqual instead or simply >=")
  inline public function moreEqual(that : Furlong) : Bool
    return greaterEqual(that);
  @:op(A>=B) inline public function greaterEqual(that : Furlong) : Bool
    return this.greaterEqual(that.toDecimal());

  inline public function toDecimal() : Decimal
    return this;

  inline public function toFloat() : Float
    return this.toFloat();


  @:to inline public function toKilometre() : Kilometre
    return this * 0.201168;
  @:to inline public function toMetre() : Metre
    return this * 201.168;
  @:to inline public function toCentimetre() : Centimetre
    return this * 20116.8;
  @:to inline public function toMillimetre() : Millimetre
    return this * 201168;
  @:to inline public function toMicrometre() : Micrometre
    return this * 201168000;
  @:to inline public function toNanometre() : Nanometre
    return this * 201168000000;
  @:to inline public function toLeague() : League
    return this * 0.0416666666666667;
  @:to inline public function toMile() : Mile
    return this * 0.125;
  @:to inline public function toChain() : Chain
    return this * 10;
  @:to inline public function toYard() : Yard
    return this * 220;
  @:to inline public function toFoot() : Foot
    return this * 660;
  @:to inline public function toInch() : Inch
    return this * 7920;
  @:to inline public function toLine() : Line
    return this * 95039.9999998503;
  @:to inline public function toThou() : Thou
    return this * 7920000;
  @:to inline public function toFathom() : Fathom
    return this * 110;
  @:to inline public function toNauticalMile() : NauticalMile
    return this * 0.108622030237581;
  @:to inline public function toEarthRadius() : EarthRadius
    return this * 3.15755322273128e-05;
  @:to inline public function toAstronomicalUnit() : AstronomicalUnit
    return this * 1.3447250222125e-09;
  @:to inline public function toLightYear() : LightYear
    return this * 2.12634743779064e-14;

  @:to inline public function toString() : String
    return this.toString() + symbol;

  public static inline var symbol : String = "fur";
}
