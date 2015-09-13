package thx.unit.length;

using thx.Floats;
import thx.Decimal;

abstract AstronomicalUnit(Decimal) {
  @:from inline static public function fromDecimal(value : Decimal) : AstronomicalUnit
    return new AstronomicalUnit(value);

  @:from inline static public function fromInt(value : Int) : AstronomicalUnit
    return fromDecimal(Decimal.fromInt(value));

  @:from inline static public function fromFloat(value : Float) : AstronomicalUnit
    return fromDecimal(Decimal.fromFloat(value));

  inline function new(value : Decimal)
    this = value;

  inline public function abs() : AstronomicalUnit
    return this.abs();

  inline public function min(that : AstronomicalUnit) : AstronomicalUnit
    return this.min(that.toDecimal());

  inline public function max(that : AstronomicalUnit) : AstronomicalUnit
    return this.max(that.toDecimal());

  @:op( -A ) inline public function negate() : AstronomicalUnit
    return -this;
  @:op( A+B) inline public function add(that : AstronomicalUnit) : AstronomicalUnit
    return this.add(that.toDecimal());
  @:op( A-B) inline public function subtract(that : AstronomicalUnit) : AstronomicalUnit
    return this.subtract(that.toDecimal());
  @:op( A*B) inline public function multiply(that : Decimal) : AstronomicalUnit
    return this.multiply(that);
  @:op( A/B) inline public function divide(that : Decimal) : AstronomicalUnit
    return this.divide(that);
  @:op( A%B) inline public function modulo(that : Decimal) : AstronomicalUnit
    return this.modulo(that);
  @:op(A==B) inline public function equal(that : AstronomicalUnit) : Bool
    return this.equals(that.toDecimal());
  public function nearEquals(that : AstronomicalUnit) : Bool
    return Floats.nearEquals(this.toFloat(), that.toFloat());
  @:op(A!=B) inline public function notEqual(that : AstronomicalUnit) : Bool
    return !this.equals(that.toDecimal());
  @:op( A<B) inline public function less(that : AstronomicalUnit) : Bool
    return this.less(that.toDecimal());
  @:op(A<=B) inline public function lessEqual(that : AstronomicalUnit) : Bool
    return this.lessEqual(that.toDecimal());
  @:deprecated("use greater instead or simply >")
  inline public function more(that : AstronomicalUnit) : Bool
    return greater(that);
  @:op( A>B) inline public function greater(that : AstronomicalUnit) : Bool
    return this.greater(that.toDecimal());
  @:deprecated("use greaterEqual instead or simply >=")
  inline public function moreEqual(that : AstronomicalUnit) : Bool
    return greaterEqual(that);
  @:op(A>=B) inline public function greaterEqual(that : AstronomicalUnit) : Bool
    return this.greaterEqual(that.toDecimal());

  inline public function toDecimal() : Decimal
    return this;

  inline public function toFloat() : Float
    return this.toFloat();


  @:to inline public function toKilometre() : Kilometre
    return this * 149597870.7;
  @:to inline public function toMetre() : Metre
    return this * 149597870700;
  @:to inline public function toCentimetre() : Centimetre
    return this * 14959787070000;
  @:to inline public function toMillimetre() : Millimetre
    return this * 149597870700000;
  @:to inline public function toMicrometre() : Micrometre
    return this * 1.495978707e+17;
  @:to inline public function toNanometre() : Nanometre
    return this * 1.495978707e+20;
  @:to inline public function toLeague() : League
    return this * 30985269.0910085;
  @:to inline public function toMile() : Mile
    return this * 92955807.2730255;
  @:to inline public function toFurlong() : Furlong
    return this * 743646458.184204;
  @:to inline public function toChain() : Chain
    return this * 7436464581.84204;
  @:to inline public function toYard() : Yard
    return this * 163602220800.525;
  @:to inline public function toFoot() : Foot
    return this * 490806662401.575;
  @:to inline public function toInch() : Inch
    return this * 5889679948818.9;
  @:to inline public function toLine() : Line
    return this * 70676159385715.5;
  @:to inline public function toThou() : Thou
    return this * 5.8896799488189e+15;
  @:to inline public function toFathom() : Fathom
    return this * 81801110400.2625;
  @:to inline public function toNauticalMile() : NauticalMile
    return this * 80776388.0669546;
  @:to inline public function toEarthRadius() : EarthRadius
    return this * 23481.0327061224;
  @:to inline public function toLightYear() : LightYear
    return this * 1.58125074098207e-05;

  @:to inline public function toString() : String
    return this.toString() + symbol;

  public static inline var symbol : String = "au";
}
