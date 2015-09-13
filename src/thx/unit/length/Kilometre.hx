package thx.unit.length;

using thx.Floats;
import thx.Decimal;

abstract Kilometre(Decimal) {
  @:from inline static public function fromDecimal(value : Decimal) : Kilometre
    return new Kilometre(value);

  @:from inline static public function fromInt(value : Int) : Kilometre
    return fromDecimal(Decimal.fromInt(value));

  @:from inline static public function fromFloat(value : Float) : Kilometre
    return fromDecimal(Decimal.fromFloat(value));

  inline function new(value : Decimal)
    this = value;

  inline public function abs() : Kilometre
    return this.abs();

  inline public function min(that : Kilometre) : Kilometre
    return this.min(that.toDecimal());

  inline public function max(that : Kilometre) : Kilometre
    return this.max(that.toDecimal());

  @:op( -A ) inline public function negate() : Kilometre
    return -this;
  @:op( A+B) inline public function add(that : Kilometre) : Kilometre
    return this.add(that.toDecimal());
  @:op( A-B) inline public function subtract(that : Kilometre) : Kilometre
    return this.subtract(that.toDecimal());
  @:op( A*B) inline public function multiply(that : Decimal) : Kilometre
    return this.multiply(that);
  @:op( A/B) inline public function divide(that : Decimal) : Kilometre
    return this.divide(that);
  @:op( A%B) inline public function modulo(that : Decimal) : Kilometre
    return this.modulo(that);
  @:op(A==B) inline public function equal(that : Kilometre) : Bool
    return this.equals(that.toDecimal());
  public function nearEquals(that : Kilometre) : Bool
    return Floats.nearEquals(this.toFloat(), that.toFloat());
  @:op(A!=B) inline public function notEqual(that : Kilometre) : Bool
    return !this.equals(that.toDecimal());
  @:op( A<B) inline public function less(that : Kilometre) : Bool
    return this.less(that.toDecimal());
  @:op(A<=B) inline public function lessEqual(that : Kilometre) : Bool
    return this.lessEqual(that.toDecimal());
  @:deprecated("use greater instead or simply >")
  inline public function more(that : Kilometre) : Bool
    return greater(that);
  @:op( A>B) inline public function greater(that : Kilometre) : Bool
    return this.greater(that.toDecimal());
  @:deprecated("use greaterEqual instead or simply >=")
  inline public function moreEqual(that : Kilometre) : Bool
    return greaterEqual(that);
  @:op(A>=B) inline public function greaterEqual(that : Kilometre) : Bool
    return this.greaterEqual(that.toDecimal());

  inline public function toDecimal() : Decimal
    return this;

  inline public function toFloat() : Float
    return this.toFloat();


  @:to inline public function toMetre() : Metre
    return this * 1000;
  @:to inline public function toCentimetre() : Centimetre
    return this * 100000;
  @:to inline public function toMillimetre() : Millimetre
    return this * 1000000;
  @:to inline public function toMicrometre() : Micrometre
    return this * 1000000000;
  @:to inline public function toNanometre() : Nanometre
    return this * 1000000000000;
  @:to inline public function toLeague() : League
    return this * 0.207123730745778;
  @:to inline public function toMile() : Mile
    return this * 0.621371192237334;
  @:to inline public function toFurlong() : Furlong
    return this * 4.97096953789867;
  @:to inline public function toChain() : Chain
    return this * 49.7096953789867;
  @:to inline public function toYard() : Yard
    return this * 1093.61329833771;
  @:to inline public function toFoot() : Foot
    return this * 3280.83989501312;
  @:to inline public function toInch() : Inch
    return this * 39370.0787401575;
  @:to inline public function toLine() : Line
    return this * 472440.944881146;
  @:to inline public function toThou() : Thou
    return this * 39370078.7401575;
  @:to inline public function toFathom() : Fathom
    return this * 546.806649168854;
  @:to inline public function toNauticalMile() : NauticalMile
    return this * 0.539956803455723;
  @:to inline public function toEarthRadius() : EarthRadius
    return this * 0.00015696100884491;
  @:to inline public function toAstronomicalUnit() : AstronomicalUnit
    return this * 6.68458712226845e-09;
  @:to inline public function toLightYear() : LightYear
    return this * 1.05700083402462e-13;

  @:to inline public function toString() : String
    return this.toString() + symbol;

  public static inline var symbol : String = "km";
}
