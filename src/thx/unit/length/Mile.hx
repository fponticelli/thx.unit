package thx.unit.length;

using thx.Floats;
import thx.Decimal;

abstract Mile(Decimal) {
  @:from inline static public function fromDecimal(value : Decimal) : Mile
    return new Mile(value);

  @:from inline static public function fromInt(value : Int) : Mile
    return fromDecimal(Decimal.fromInt(value));

  @:from inline static public function fromFloat(value : Float) : Mile
    return fromDecimal(Decimal.fromFloat(value));

  inline function new(value : Decimal)
    this = value;

  inline public function abs() : Mile
    return this.abs();

  inline public function min(that : Mile) : Mile
    return this.min(that.toDecimal());

  inline public function max(that : Mile) : Mile
    return this.max(that.toDecimal());

  @:op( -A ) inline public function negate() : Mile
    return -this;
  @:op( A+B) inline public function add(that : Mile) : Mile
    return this.add(that.toDecimal());
  @:op( A-B) inline public function subtract(that : Mile) : Mile
    return this.subtract(that.toDecimal());
  @:op( A*B) inline public function multiply(that : Decimal) : Mile
    return this.multiply(that);
  @:op( A/B) inline public function divide(that : Decimal) : Mile
    return this.divide(that);
  @:op( A%B) inline public function modulo(that : Decimal) : Mile
    return this.modulo(that);
  @:op(A==B) inline public function equal(that : Mile) : Bool
    return this.equals(that.toDecimal());
  public function nearEquals(that : Mile) : Bool
    return Floats.nearEquals(this.toFloat(), that.toFloat());
  @:op(A!=B) inline public function notEqual(that : Mile) : Bool
    return !this.equals(that.toDecimal());
  @:op( A<B) inline public function less(that : Mile) : Bool
    return this.less(that.toDecimal());
  @:op(A<=B) inline public function lessEqual(that : Mile) : Bool
    return this.lessEqual(that.toDecimal());
  @:deprecated("use greater instead or simply >")
  inline public function more(that : Mile) : Bool
    return greater(that);
  @:op( A>B) inline public function greater(that : Mile) : Bool
    return this.greater(that.toDecimal());
  @:deprecated("use greaterEqual instead or simply >=")
  inline public function moreEqual(that : Mile) : Bool
    return greaterEqual(that);
  @:op(A>=B) inline public function greaterEqual(that : Mile) : Bool
    return this.greaterEqual(that.toDecimal());

  inline public function toDecimal() : Decimal
    return this;

  inline public function toFloat() : Float
    return this.toFloat();


  @:to inline public function toKilometre() : Kilometre
    return this * 1.609344;
  @:to inline public function toMetre() : Metre
    return this * 1609.344;
  @:to inline public function toCentimetre() : Centimetre
    return this * 160934.4;
  @:to inline public function toMillimetre() : Millimetre
    return this * 1609344;
  @:to inline public function toMicrometre() : Micrometre
    return this * 1609344000;
  @:to inline public function toNanometre() : Nanometre
    return this * 1609344000000;
  @:to inline public function toLeague() : League
    return this * 0.333333333333333;
  @:to inline public function toFurlong() : Furlong
    return this * 8;
  @:to inline public function toChain() : Chain
    return this * 80;
  @:to inline public function toYard() : Yard
    return this * 1760;
  @:to inline public function toFoot() : Foot
    return this * 5280;
  @:to inline public function toInch() : Inch
    return this * 63360;
  @:to inline public function toLine() : Line
    return this * 760319.999998803;
  @:to inline public function toThou() : Thou
    return this * 63360000;
  @:to inline public function toFathom() : Fathom
    return this * 880;
  @:to inline public function toNauticalMile() : NauticalMile
    return this * 0.868976241900648;
  @:to inline public function toEarthRadius() : EarthRadius
    return this * 0.000252604257818503;
  @:to inline public function toAstronomicalUnit() : AstronomicalUnit
    return this * 1.07578001777e-08;
  @:to inline public function toLightYear() : LightYear
    return this * 1.70107795023251e-13;

  @:to inline public function toString() : String
    return this.toString() + symbol;

  public static inline var symbol : String = "mi";
}
