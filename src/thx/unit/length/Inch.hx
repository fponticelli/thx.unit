package thx.unit.length;

using thx.Floats;
import thx.Decimal;

abstract Inch(Decimal) {
  @:from inline static public function fromDecimal(value : Decimal) : Inch
    return new Inch(value);

  @:from inline static public function fromInt(value : Int) : Inch
    return fromDecimal(Decimal.fromInt(value));

  @:from inline static public function fromFloat(value : Float) : Inch
    return fromDecimal(Decimal.fromFloat(value));

  inline function new(value : Decimal)
    this = value;

  inline public function abs() : Inch
    return this.abs();

  inline public function min(that : Inch) : Inch
    return this.min(that.toDecimal());

  inline public function max(that : Inch) : Inch
    return this.max(that.toDecimal());

  @:op( -A ) inline public function negate() : Inch
    return -this;
  @:op( A+B) inline public function add(that : Inch) : Inch
    return this.add(that.toDecimal());
  @:op( A-B) inline public function subtract(that : Inch) : Inch
    return this.subtract(that.toDecimal());
  @:op( A*B) inline public function multiply(that : Decimal) : Inch
    return this.multiply(that);
  @:op( A/B) inline public function divide(that : Decimal) : Inch
    return this.divide(that);
  @:op( A%B) inline public function modulo(that : Decimal) : Inch
    return this.modulo(that);
  @:op(A==B) inline public function equal(that : Inch) : Bool
    return this.equals(that.toDecimal());
  public function nearEquals(that : Inch) : Bool
    return Floats.nearEquals(this.toFloat(), that.toFloat());
  @:op(A!=B) inline public function notEqual(that : Inch) : Bool
    return !this.equals(that.toDecimal());
  @:op( A<B) inline public function less(that : Inch) : Bool
    return this.less(that.toDecimal());
  @:op(A<=B) inline public function lessEqual(that : Inch) : Bool
    return this.lessEqual(that.toDecimal());
  @:deprecated("use greater instead or simply >")
  inline public function more(that : Inch) : Bool
    return greater(that);
  @:op( A>B) inline public function greater(that : Inch) : Bool
    return this.greater(that.toDecimal());
  @:deprecated("use greaterEqual instead or simply >=")
  inline public function moreEqual(that : Inch) : Bool
    return greaterEqual(that);
  @:op(A>=B) inline public function greaterEqual(that : Inch) : Bool
    return this.greaterEqual(that.toDecimal());

  inline public function toDecimal() : Decimal
    return this;

  inline public function toFloat() : Float
    return this.toFloat();


  @:to inline public function toKilometre() : Kilometre
    return this * 2.54e-05;
  @:to inline public function toMetre() : Metre
    return this * 0.0254;
  @:to inline public function toCentimetre() : Centimetre
    return this * 2.54;
  @:to inline public function toMillimetre() : Millimetre
    return this * 25.4;
  @:to inline public function toMicrometre() : Micrometre
    return this * 25400;
  @:to inline public function toNanometre() : Nanometre
    return this * 25400000;
  @:to inline public function toLeague() : League
    return this * 5.26094276094276e-06;
  @:to inline public function toMile() : Mile
    return this * 1.57828282828283e-05;
  @:to inline public function toFurlong() : Furlong
    return this * 0.000126262626262626;
  @:to inline public function toChain() : Chain
    return this * 0.00126262626262626;
  @:to inline public function toYard() : Yard
    return this * 0.0277777777777778;
  @:to inline public function toFoot() : Foot
    return this * 0.0833333333333333;
  @:to inline public function toLine() : Line
    return this * 11.9999999999811;
  @:to inline public function toThou() : Thou
    return this * 1000;
  @:to inline public function toFathom() : Fathom
    return this * 0.0138888888888889;
  @:to inline public function toNauticalMile() : NauticalMile
    return this * 1.37149028077754e-05;
  @:to inline public function toEarthRadius() : EarthRadius
    return this * 3.98680962466071e-09;
  @:to inline public function toAstronomicalUnit() : AstronomicalUnit
    return this * 1.69788512905619e-13;
  @:to inline public function toLightYear() : LightYear
    return this * 2.68478211842252e-18;

  @:to inline public function toString() : String
    return this.toString() + symbol;

  public static inline var symbol : String = "in";
}
