package thx.unit.length;

using thx.Floats;
import thx.Decimal;

abstract League(Decimal) {
  @:from inline static public function fromDecimal(value : Decimal) : League
    return new League(value);

  @:from inline static public function fromInt(value : Int) : League
    return fromDecimal(Decimal.fromInt(value));

  @:from inline static public function fromFloat(value : Float) : League
    return fromDecimal(Decimal.fromFloat(value));

  inline function new(value : Decimal)
    this = value;

  inline public function abs() : League
    return this.abs();

  inline public function min(that : League) : League
    return this.min(that.toDecimal());

  inline public function max(that : League) : League
    return this.max(that.toDecimal());

  @:op( -A ) inline public function negate() : League
    return -this;
  @:op( A+B) inline public function add(that : League) : League
    return this.add(that.toDecimal());
  @:op( A-B) inline public function subtract(that : League) : League
    return this.subtract(that.toDecimal());
  @:op( A*B) inline public function multiply(that : Decimal) : League
    return this.multiply(that);
  @:op( A/B) inline public function divide(that : Decimal) : League
    return this.divide(that);
  @:op( A%B) inline public function modulo(that : Decimal) : League
    return this.modulo(that);
  @:op(A==B) inline public function equal(that : League) : Bool
    return this.equals(that.toDecimal());
  public function nearEquals(that : League) : Bool
    return Floats.nearEquals(this.toFloat(), that.toFloat());
  @:op(A!=B) inline public function notEqual(that : League) : Bool
    return !this.equals(that.toDecimal());
  @:op( A<B) inline public function less(that : League) : Bool
    return this.less(that.toDecimal());
  @:op(A<=B) inline public function lessEqual(that : League) : Bool
    return this.lessEqual(that.toDecimal());
  @:deprecated("use greater instead or simply >")
  inline public function more(that : League) : Bool
    return greater(that);
  @:op( A>B) inline public function greater(that : League) : Bool
    return this.greater(that.toDecimal());
  @:deprecated("use greaterEqual instead or simply >=")
  inline public function moreEqual(that : League) : Bool
    return greaterEqual(that);
  @:op(A>=B) inline public function greaterEqual(that : League) : Bool
    return this.greaterEqual(that.toDecimal());

  inline public function toDecimal() : Decimal
    return this;

  inline public function toFloat() : Float
    return this.toFloat();


  @:to inline public function toKilometre() : Kilometre
    return this * 4.828032;
  @:to inline public function toMetre() : Metre
    return this * 4828.032;
  @:to inline public function toCentimetre() : Centimetre
    return this * 482803.2;
  @:to inline public function toMillimetre() : Millimetre
    return this * 4828032;
  @:to inline public function toMicrometre() : Micrometre
    return this * 4828032000;
  @:to inline public function toNanometre() : Nanometre
    return this * 4828032000000;
  @:to inline public function toMile() : Mile
    return this * 3;
  @:to inline public function toFurlong() : Furlong
    return this * 24;
  @:to inline public function toChain() : Chain
    return this * 240;
  @:to inline public function toYard() : Yard
    return this * 5280;
  @:to inline public function toFoot() : Foot
    return this * 15840;
  @:to inline public function toInch() : Inch
    return this * 190080;
  @:to inline public function toLine() : Line
    return this * 2280959.99999641;
  @:to inline public function toThou() : Thou
    return this * 190080000;
  @:to inline public function toFathom() : Fathom
    return this * 2640;
  @:to inline public function toNauticalMile() : NauticalMile
    return this * 2.60692872570194;
  @:to inline public function toEarthRadius() : EarthRadius
    return this * 0.000757812773455508;
  @:to inline public function toAstronomicalUnit() : AstronomicalUnit
    return this * 3.22734005331e-08;
  @:to inline public function toLightYear() : LightYear
    return this * 5.10323385069753e-13;

  @:to inline public function toString() : String
    return this.toString() + symbol;

  public static inline var symbol : String = "lea";
}
