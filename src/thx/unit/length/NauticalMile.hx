package thx.unit.length;

using thx.Floats;
import thx.Decimal;

abstract NauticalMile(Decimal) {
  @:from inline static public function fromDecimal(value : Decimal) : NauticalMile
    return new NauticalMile(value);

  @:from inline static public function fromInt(value : Int) : NauticalMile
    return fromDecimal(Decimal.fromInt(value));

  @:from inline static public function fromFloat(value : Float) : NauticalMile
    return fromDecimal(Decimal.fromFloat(value));

  inline function new(value : Decimal)
    this = value;

  inline public function abs() : NauticalMile
    return this.abs();

  inline public function min(that : NauticalMile) : NauticalMile
    return this.min(that.toDecimal());

  inline public function max(that : NauticalMile) : NauticalMile
    return this.max(that.toDecimal());

  @:op( -A ) inline public function negate() : NauticalMile
    return -this;
  @:op( A+B) inline public function add(that : NauticalMile) : NauticalMile
    return this.add(that.toDecimal());
  @:op( A-B) inline public function subtract(that : NauticalMile) : NauticalMile
    return this.subtract(that.toDecimal());
  @:op( A*B) inline public function multiply(that : Decimal) : NauticalMile
    return this.multiply(that);
  @:op( A/B) inline public function divide(that : Decimal) : NauticalMile
    return this.divide(that);
  @:op( A%B) inline public function modulo(that : Decimal) : NauticalMile
    return this.modulo(that);
  @:op(A==B) inline public function equal(that : NauticalMile) : Bool
    return this.equals(that.toDecimal());
  public function nearEquals(that : NauticalMile) : Bool
    return Floats.nearEquals(this.toFloat(), that.toFloat());
  @:op(A!=B) inline public function notEqual(that : NauticalMile) : Bool
    return !this.equals(that.toDecimal());
  @:op( A<B) inline public function less(that : NauticalMile) : Bool
    return this.less(that.toDecimal());
  @:op(A<=B) inline public function lessEqual(that : NauticalMile) : Bool
    return this.lessEqual(that.toDecimal());
  @:deprecated("use greater instead or simply >")
  inline public function more(that : NauticalMile) : Bool
    return greater(that);
  @:op( A>B) inline public function greater(that : NauticalMile) : Bool
    return this.greater(that.toDecimal());
  @:deprecated("use greaterEqual instead or simply >=")
  inline public function moreEqual(that : NauticalMile) : Bool
    return greaterEqual(that);
  @:op(A>=B) inline public function greaterEqual(that : NauticalMile) : Bool
    return this.greaterEqual(that.toDecimal());

  inline public function toDecimal() : Decimal
    return this;

  inline public function toFloat() : Float
    return this.toFloat();


  @:to inline public function toKilometre() : Kilometre
    return this * 1.852;
  @:to inline public function toMetre() : Metre
    return this * 1852;
  @:to inline public function toCentimetre() : Centimetre
    return this * 185200;
  @:to inline public function toMillimetre() : Millimetre
    return this * 1852000;
  @:to inline public function toMicrometre() : Micrometre
    return this * 1852000000;
  @:to inline public function toNanometre() : Nanometre
    return this * 1852000000000;
  @:to inline public function toLeague() : League
    return this * 0.383593149341181;
  @:to inline public function toMile() : Mile
    return this * 1.15077944802354;
  @:to inline public function toFurlong() : Furlong
    return this * 9.20623558418834;
  @:to inline public function toChain() : Chain
    return this * 92.0623558418834;
  @:to inline public function toYard() : Yard
    return this * 2025.37182852143;
  @:to inline public function toFoot() : Foot
    return this * 6076.1154855643;
  @:to inline public function toInch() : Inch
    return this * 72913.3858267717;
  @:to inline public function toLine() : Line
    return this * 874960.629919882;
  @:to inline public function toThou() : Thou
    return this * 72913385.8267716;
  @:to inline public function toFathom() : Fathom
    return this * 1012.68591426072;
  @:to inline public function toEarthRadius() : EarthRadius
    return this * 0.000290691788380773;
  @:to inline public function toAstronomicalUnit() : AstronomicalUnit
    return this * 1.23798553504412e-08;
  @:to inline public function toLightYear() : LightYear
    return this * 1.95756554461359e-13;

  @:to inline public function toString() : String
    return this.toString() + symbol;

  public static inline var symbol : String = "M";
}
