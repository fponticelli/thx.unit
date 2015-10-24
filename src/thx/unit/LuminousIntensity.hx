package thx.unit;

import thx.unit.luminousintensity.*;
import thx.Error;

abstract LuminousIntensity(LuminousIntensityImpl) from LuminousIntensityImpl to LuminousIntensityImpl {
  @:from static public function fromString(s : String) : LuminousIntensity {
    var o = Units.parseUnitDecimal(s);
    if(null == o) throw new Error("unable to parse " + s + " to LuminousIntensity");
    return fromPair(o);
  }

  @:from inline static public function candela(value : Candela) : LuminousIntensity
    return LuminousIntensityCandela(value);

  @:from inline static public function candlepower(value : Candlepower) : LuminousIntensity
    return LuminousIntensityCandlepower(value);

  public static function fromPair(info : { value : Decimal, symbol : String}, ?pos : haxe.PosInfos) : LuminousIntensity return switch info.symbol.toLowerCase() {
    case "cd", "candela": LuminousIntensityCandela(info.value);
    case "cp", "candlepower": LuminousIntensityCandlepower(info.value);
    case _: throw new thx.Error("invalid symbol " + info.symbol, pos);
  }

  public var value(get, never) : Decimal;
  public var symbol(get, never) : String;

  function getInfo() return switch this {
  case LuminousIntensityCandela(unit): { value : unit.toDecimal(), symbol : Candela.symbol };
  case LuminousIntensityCandlepower(unit): { value : unit.toDecimal(), symbol : Candlepower.symbol };
  }

  public function abs() : LuminousIntensity return switch this {
    case LuminousIntensityCandela(unit): unit.abs();
    case LuminousIntensityCandlepower(unit): unit.abs();
  }

  @:op( -A ) public function negate() : LuminousIntensity return switch this {
    case LuminousIntensityCandela(unit): unit.negate();
    case LuminousIntensityCandlepower(unit): unit.negate();
  }

  @:op( A+B) public function add(that : LuminousIntensity) : LuminousIntensity return switch this {
    case LuminousIntensityCandela(unit): unit.add(that.toCandela());
    case LuminousIntensityCandlepower(unit): unit.add(that.toCandlepower());
  }

  @:op( A-B) public function subtract(that : LuminousIntensity) : LuminousIntensity return switch this {
    case LuminousIntensityCandela(unit): unit.subtract(that.toCandela());
    case LuminousIntensityCandlepower(unit): unit.subtract(that.toCandlepower());
  }

  @:op( A*B) public function multiply(that : Decimal) : LuminousIntensity return switch this {
    case LuminousIntensityCandela(unit): unit.multiply(that);
    case LuminousIntensityCandlepower(unit): unit.multiply(that);
  }

  @:op( A/B) public function divide(that : Decimal) : LuminousIntensity return switch this {
    case LuminousIntensityCandela(unit): unit.divide(that);
    case LuminousIntensityCandlepower(unit): unit.divide(that);
  }

  @:op( A%B) public function modulo(that : Decimal) : LuminousIntensity return switch this {
    case LuminousIntensityCandela(unit): unit.modulo(that);
    case LuminousIntensityCandlepower(unit): unit.modulo(that);
  }

  public function min(that : LuminousIntensity) : LuminousIntensity return switch this {
    case LuminousIntensityCandela(unit): unit.min(that.toCandela());
    case LuminousIntensityCandlepower(unit): unit.min(that.toCandlepower());
  }

  public function max(that : LuminousIntensity) : LuminousIntensity return switch this {
    case LuminousIntensityCandela(unit): unit.max(that.toCandela());
    case LuminousIntensityCandlepower(unit): unit.max(that.toCandlepower());
  }

  public function equalsTo(that : LuminousIntensity) : Bool return switch this {
    case LuminousIntensityCandela(unit): unit.equalsTo(that.toCandela());
    case LuminousIntensityCandlepower(unit): unit.equalsTo(that.toCandlepower());
  }
  @:op(A==B)
  public static function equals(self : LuminousIntensity, that : LuminousIntensity) : Bool
    return self.equalsTo(that);

  public function nearEqualsTo(that : LuminousIntensity) : Bool return switch this {
    case LuminousIntensityCandela(unit): unit.nearEqualsTo(that.toCandela());
    case LuminousIntensityCandlepower(unit): unit.nearEqualsTo(that.toCandlepower());
  }
  public static function nearEquals(self : LuminousIntensity, that : LuminousIntensity) : Bool
    return self.nearEqualsTo(that);

  public function lessThan(that : LuminousIntensity) : Bool return switch this {
    case LuminousIntensityCandela(unit): unit.lessThan(that.toCandela());
    case LuminousIntensityCandlepower(unit): unit.lessThan(that.toCandlepower());
  }
  @:op( A<B)
  public static function less(self : LuminousIntensity, that : LuminousIntensity) : Bool
    return self.lessThan(that);

  public function lessEqualsTo(that : LuminousIntensity) : Bool return switch this {
    case LuminousIntensityCandela(unit): unit.lessEqualsTo(that.toCandela());
    case LuminousIntensityCandlepower(unit): unit.lessEqualsTo(that.toCandlepower());
  }
  @:op( A<B)
  public static function lessEquals(self : LuminousIntensity, that : LuminousIntensity) : Bool
    return self.lessEqualsTo(that);

  public function greaterThan(that : LuminousIntensity) : Bool return switch this {
    case LuminousIntensityCandela(unit): unit.greaterThan(that.toCandela());
    case LuminousIntensityCandlepower(unit): unit.greaterThan(that.toCandlepower());
  }
  @:op( A>B)
  public static function greater(self : LuminousIntensity, that : LuminousIntensity) : Bool
    return self.greaterThan(that);

  public function greaterEqualsTo(that : LuminousIntensity) : Bool return switch this {
    case LuminousIntensityCandela(unit): unit.greaterEqualsTo(that.toCandela());
    case LuminousIntensityCandlepower(unit): unit.greaterEqualsTo(that.toCandlepower());
  }
  @:op( A<B)
  public static function greatersEquals(self : LuminousIntensity, that : LuminousIntensity) : Bool
    return self.greaterEqualsTo(that);


  @:to public function toCandela() : Candela return switch this {
    case LuminousIntensityCandela(unit): unit.toCandela();
    case LuminousIntensityCandlepower(unit): unit.toCandlepower();
  }

  @:to public function toCandlepower() : Candlepower return switch this {
    case LuminousIntensityCandela(unit): unit.toCandela();
    case LuminousIntensityCandlepower(unit): unit.toCandlepower();
  }

  function get_value() : Decimal
    return getInfo().value;

  function get_symbol() : String
    return getInfo().symbol;

  public function toString() {
    var info = getInfo();
    return info.value.toString() + info.symbol;
  }
}

enum LuminousIntensityImpl {
  LuminousIntensityCandela(unit : Candela);
  LuminousIntensityCandlepower(unit : Candlepower);
}
