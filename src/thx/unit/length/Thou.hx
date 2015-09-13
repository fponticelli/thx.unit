package thx.unit.length;

using thx.Floats;
import thx.Decimal;

abstract Thou(Decimal) {
  @:from inline static public function fromDecimal(value : Decimal) : Thou
    return new Thou(value);

  @:from inline static public function fromInt(value : Int) : Thou
    return fromDecimal(Decimal.fromInt(value));

  @:from inline static public function fromFloat(value : Float) : Thou
    return fromDecimal(Decimal.fromFloat(value));

  inline function new(value : Decimal)
    this = value;

  inline public function abs() : Thou
    return this.abs();

  inline public function min(that : Thou) : Thou
    return this.min(that.toDecimal());

  inline public function max(that : Thou) : Thou
    return this.max(that.toDecimal());

  @:op( -A ) inline public function negate() : Thou
    return -this;
  @:op( A+B) inline public function add(that : Thou) : Thou
    return this.add(that.toDecimal());
  @:op( A-B) inline public function subtract(that : Thou) : Thou
    return this.subtract(that.toDecimal());
  @:op( A*B) inline public function multiply(that : Decimal) : Thou
    return this.multiply(that);
  @:op( A/B) inline public function divide(that : Decimal) : Thou
    return this.divide(that);
  @:op( A%B) inline public function modulo(that : Decimal) : Thou
    return this.modulo(that);
  @:op(A==B) inline public function equal(that : Thou) : Bool
    return this.equals(that.toDecimal());
  public function nearEquals(that : Thou) : Bool
    return Floats.nearEquals(this.toFloat(), that.toFloat());
  @:op(A!=B) inline public function notEqual(that : Thou) : Bool
    return !this.equals(that.toDecimal());
  @:op( A<B) inline public function less(that : Thou) : Bool
    return this.less(that.toDecimal());
  @:op(A<=B) inline public function lessEqual(that : Thou) : Bool
    return this.lessEqual(that.toDecimal());
  @:deprecated("use greater instead or simply >")
  inline public function more(that : Thou) : Bool
    return greater(that);
  @:op( A>B) inline public function greater(that : Thou) : Bool
    return this.greater(that.toDecimal());
  @:deprecated("use greaterEqual instead or simply >=")
  inline public function moreEqual(that : Thou) : Bool
    return greaterEqual(that);
  @:op(A>=B) inline public function greaterEqual(that : Thou) : Bool
    return this.greaterEqual(that.toDecimal());

  inline public function toDecimal() : Decimal
    return this;

  inline public function toFloat() : Float
    return this.toFloat();


  @:to inline public function toKilometre() : Kilometre
    return this * 2.54e-08;
  @:to inline public function toMetre() : Metre
    return this * 2.54e-05;
  @:to inline public function toCentimetre() : Centimetre
    return this * 0.00254;
  @:to inline public function toMillimetre() : Millimetre
    return this * 0.0254;
  @:to inline public function toMicrometre() : Micrometre
    return this * 25.4;
  @:to inline public function toNanometre() : Nanometre
    return this * 25400;
  @:to inline public function toLeague() : League
    return this * 5.26094276094276e-09;
  @:to inline public function toMile() : Mile
    return this * 1.57828282828283e-08;
  @:to inline public function toFurlong() : Furlong
    return this * 1.26262626262626e-07;
  @:to inline public function toChain() : Chain
    return this * 1.26262626262626e-06;
  @:to inline public function toYard() : Yard
    return this * 2.77777777777778e-05;
  @:to inline public function toFoot() : Foot
    return this * 8.33333333333333e-05;
  @:to inline public function toInch() : Inch
    return this * 0.001;
  @:to inline public function toLine() : Line
    return this * 0.0119999999999811;
  @:to inline public function toFathom() : Fathom
    return this * 1.38888888888889e-05;
  @:to inline public function toNauticalMile() : NauticalMile
    return this * 1.37149028077754e-08;
  @:to inline public function toEarthRadius() : EarthRadius
    return this * 3.98680962466071e-12;
  @:to inline public function toAstronomicalUnit() : AstronomicalUnit
    return this * 1.69788512905619e-16;
  @:to inline public function toLightYear() : LightYear
    return this * 2.68478211842252e-21;

  @:to inline public function toString() : String
    return this.toString() + symbol;

  public static inline var symbol : String = "th";
}
