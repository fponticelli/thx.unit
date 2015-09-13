package thx.unit.length;

using thx.Floats;
import thx.Decimal;

abstract Foot(Decimal) {
  @:from inline static public function fromDecimal(value : Decimal) : Foot
    return new Foot(value);

  @:from inline static public function fromInt(value : Int) : Foot
    return fromDecimal(Decimal.fromInt(value));

  @:from inline static public function fromFloat(value : Float) : Foot
    return fromDecimal(Decimal.fromFloat(value));

  inline function new(value : Decimal)
    this = value;

  inline public function abs() : Foot
    return this.abs();

  inline public function min(that : Foot) : Foot
    return this.min(that.toDecimal());

  inline public function max(that : Foot) : Foot
    return this.max(that.toDecimal());

  @:op( -A ) inline public function negate() : Foot
    return -this;
  @:op( A+B) inline public function add(that : Foot) : Foot
    return this.add(that.toDecimal());
  @:op( A-B) inline public function subtract(that : Foot) : Foot
    return this.subtract(that.toDecimal());
  @:op( A*B) inline public function multiply(that : Decimal) : Foot
    return this.multiply(that);
  @:op( A/B) inline public function divide(that : Decimal) : Foot
    return this.divide(that);
  @:op( A%B) inline public function modulo(that : Decimal) : Foot
    return this.modulo(that);
  @:op(A==B) inline public function equal(that : Foot) : Bool
    return this.equals(that.toDecimal());
  public function nearEquals(that : Foot) : Bool
    return Floats.nearEquals(this.toFloat(), that.toFloat());
  @:op(A!=B) inline public function notEqual(that : Foot) : Bool
    return !this.equals(that.toDecimal());
  @:op( A<B) inline public function less(that : Foot) : Bool
    return this.less(that.toDecimal());
  @:op(A<=B) inline public function lessEqual(that : Foot) : Bool
    return this.lessEqual(that.toDecimal());
  @:deprecated("use greater instead or simply >")
  inline public function more(that : Foot) : Bool
    return greater(that);
  @:op( A>B) inline public function greater(that : Foot) : Bool
    return this.greater(that.toDecimal());
  @:deprecated("use greaterEqual instead or simply >=")
  inline public function moreEqual(that : Foot) : Bool
    return greaterEqual(that);
  @:op(A>=B) inline public function greaterEqual(that : Foot) : Bool
    return this.greaterEqual(that.toDecimal());

  inline public function toDecimal() : Decimal
    return this;

  inline public function toFloat() : Float
    return this.toFloat();


  @:to inline public function toKilometre() : Kilometre
    return this * 0.0003048;
  @:to inline public function toMetre() : Metre
    return this * 0.3048;
  @:to inline public function toCentimetre() : Centimetre
    return this * 30.48;
  @:to inline public function toMillimetre() : Millimetre
    return this * 304.8;
  @:to inline public function toMicrometre() : Micrometre
    return this * 304800;
  @:to inline public function toNanometre() : Nanometre
    return this * 304800000;
  @:to inline public function toLeague() : League
    return this * 6.31313131313131e-05;
  @:to inline public function toMile() : Mile
    return this * 0.000189393939393939;
  @:to inline public function toFurlong() : Furlong
    return this * 0.00151515151515152;
  @:to inline public function toChain() : Chain
    return this * 0.0151515151515152;
  @:to inline public function toYard() : Yard
    return this * 0.333333333333333;
  @:to inline public function toInch() : Inch
    return this * 12;
  @:to inline public function toLine() : Line
    return this * 143.999999999773;
  @:to inline public function toThou() : Thou
    return this * 12000;
  @:to inline public function toFathom() : Fathom
    return this * 0.166666666666667;
  @:to inline public function toNauticalMile() : NauticalMile
    return this * 0.000164578833693305;
  @:to inline public function toEarthRadius() : EarthRadius
    return this * 4.78417154959285e-08;
  @:to inline public function toAstronomicalUnit() : AstronomicalUnit
    return this * 2.03746215486742e-12;
  @:to inline public function toLightYear() : LightYear
    return this * 3.22173854210703e-17;

  @:to inline public function toString() : String
    return this.toString() + symbol;

  public static inline var symbol : String = "ft";
}
