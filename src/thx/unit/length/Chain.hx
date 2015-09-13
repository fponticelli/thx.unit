package thx.unit.length;

using thx.Floats;
import thx.Decimal;

abstract Chain(Decimal) {
  @:from inline static public function fromDecimal(value : Decimal) : Chain
    return new Chain(value);

  @:from inline static public function fromInt(value : Int) : Chain
    return fromDecimal(Decimal.fromInt(value));

  @:from inline static public function fromFloat(value : Float) : Chain
    return fromDecimal(Decimal.fromFloat(value));

  inline function new(value : Decimal)
    this = value;

  inline public function abs() : Chain
    return this.abs();

  inline public function min(that : Chain) : Chain
    return this.min(that.toDecimal());

  inline public function max(that : Chain) : Chain
    return this.max(that.toDecimal());

  @:op( -A ) inline public function negate() : Chain
    return -this;
  @:op( A+B) inline public function add(that : Chain) : Chain
    return this.add(that.toDecimal());
  @:op( A-B) inline public function subtract(that : Chain) : Chain
    return this.subtract(that.toDecimal());
  @:op( A*B) inline public function multiply(that : Decimal) : Chain
    return this.multiply(that);
  @:op( A/B) inline public function divide(that : Decimal) : Chain
    return this.divide(that);
  @:op( A%B) inline public function modulo(that : Decimal) : Chain
    return this.modulo(that);
  @:op(A==B) inline public function equal(that : Chain) : Bool
    return this.equals(that.toDecimal());
  public function nearEquals(that : Chain) : Bool
    return Floats.nearEquals(this.toFloat(), that.toFloat());
  @:op(A!=B) inline public function notEqual(that : Chain) : Bool
    return !this.equals(that.toDecimal());
  @:op( A<B) inline public function less(that : Chain) : Bool
    return this.less(that.toDecimal());
  @:op(A<=B) inline public function lessEqual(that : Chain) : Bool
    return this.lessEqual(that.toDecimal());
  @:deprecated("use greater instead or simply >")
  inline public function more(that : Chain) : Bool
    return greater(that);
  @:op( A>B) inline public function greater(that : Chain) : Bool
    return this.greater(that.toDecimal());
  @:deprecated("use greaterEqual instead or simply >=")
  inline public function moreEqual(that : Chain) : Bool
    return greaterEqual(that);
  @:op(A>=B) inline public function greaterEqual(that : Chain) : Bool
    return this.greaterEqual(that.toDecimal());

  inline public function toDecimal() : Decimal
    return this;

  inline public function toFloat() : Float
    return this.toFloat();


  @:to inline public function toKilometre() : Kilometre
    return this * 0.0201168;
  @:to inline public function toMetre() : Metre
    return this * 20.1168;
  @:to inline public function toCentimetre() : Centimetre
    return this * 2011.68;
  @:to inline public function toMillimetre() : Millimetre
    return this * 20116.8;
  @:to inline public function toMicrometre() : Micrometre
    return this * 20116800;
  @:to inline public function toNanometre() : Nanometre
    return this * 20116800000;
  @:to inline public function toLeague() : League
    return this * 0.00416666666666667;
  @:to inline public function toMile() : Mile
    return this * 0.0125;
  @:to inline public function toFurlong() : Furlong
    return this * 0.1;
  @:to inline public function toYard() : Yard
    return this * 22;
  @:to inline public function toFoot() : Foot
    return this * 66;
  @:to inline public function toInch() : Inch
    return this * 792;
  @:to inline public function toLine() : Line
    return this * 9503.99999998503;
  @:to inline public function toThou() : Thou
    return this * 792000;
  @:to inline public function toFathom() : Fathom
    return this * 11;
  @:to inline public function toNauticalMile() : NauticalMile
    return this * 0.0108622030237581;
  @:to inline public function toEarthRadius() : EarthRadius
    return this * 3.15755322273128e-06;
  @:to inline public function toAstronomicalUnit() : AstronomicalUnit
    return this * 1.3447250222125e-10;
  @:to inline public function toLightYear() : LightYear
    return this * 2.12634743779064e-15;

  @:to inline public function toString() : String
    return this.toString() + symbol;

  public static inline var symbol : String = "ch";
}
