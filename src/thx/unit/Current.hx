package thx.unit;

import thx.unit.current.*;
import thx.Error;

abstract Current(CurrentImpl) from CurrentImpl to CurrentImpl {
  @:from static public function fromString(s : String) : Current {
    var o = Units.parseUnit(s);
    if(null == o) throw new Error("unable to parse " + s + " to Current");
    return fromPair(o);
  }

  @:from inline static public function ampere(value : Ampere) : Current
    return CurrentAmpere(value);

  public static function fromPair(info : { value : Decimal, symbol : String}, ?pos : haxe.PosInfos) : Current return switch info.symbol.toLowerCase() {
    case "a", "ampere": CurrentAmpere(info.value);
    case _: throw new thx.Error("invalid symbol " + info.symbol, pos);
  }

  public var value(get, never) : Decimal;
  public var symbol(get, never) : String;

  function getInfo() return switch this {
    case CurrentAmpere(unit): { value : unit.toDecimal(), symbol : Ampere.symbol };
  }

  public function abs() : Current return switch this {
    case CurrentAmpere(unit): unit.abs();
  }

  @:op( -A ) public function negate() : Current return switch this {
    case CurrentAmpere(unit): unit.negate();
  }

  @:op( A+B) public function add(that : Current) : Current return switch this {
    case CurrentAmpere(unit): unit.add(that.toAmpere());
  }

  @:op( A-B) public function subtract(that : Current) : Current return switch this {
    case CurrentAmpere(unit): unit.subtract(that.toAmpere());
  }

  @:op( A*B) public function multiply(that : Decimal) : Current return switch this {
    case CurrentAmpere(unit): unit.multiply(that);
  }

  @:op( A/B) public function divide(that : Decimal) : Current return switch this {
    case CurrentAmpere(unit): unit.divide(that);
  }

  @:op( A%B) public function modulo(that : Decimal) : Current return switch this {
    case CurrentAmpere(unit): unit.modulo(that);
  }

  public function min(that : Current) : Current return switch this {
    case CurrentAmpere(unit): unit.min(that.toAmpere());
  }

  public function max(that : Current) : Current return switch this {
    case CurrentAmpere(unit): unit.max(that.toAmpere());
  }

  public function equalsTo(that : Current) : Bool return switch this {
    case CurrentAmpere(unit): unit.equalsTo(that.toAmpere());
  }
  @:op(A==B)
  public static function equals(self : Current, that : Current) : Bool
    return self.equalsTo(that);

  public function nearEqualsTo(that : Current) : Bool return switch this {
    case CurrentAmpere(unit): unit.nearEqualsTo(that.toAmpere());
  }
  public static function nearEquals(self : Current, that : Current) : Bool
    return self.nearEqualsTo(that);

  public function lessThan(that : Current) : Bool return switch this {
    case CurrentAmpere(unit): unit.lessThan(that.toAmpere());
  }
  @:op( A<B)
  public static function less(self : Current, that : Current) : Bool
    return self.lessThan(that);

  public function lessEqualsTo(that : Current) : Bool return switch this {
    case CurrentAmpere(unit): unit.lessEqualsTo(that.toAmpere());
  }
  @:op( A<B)
  public static function lessEquals(self : Current, that : Current) : Bool
    return self.lessEqualsTo(that);

  public function greaterThan(that : Current) : Bool return switch this {
    case CurrentAmpere(unit): unit.greaterThan(that.toAmpere());
  }
  @:op( A>B)
  public static function greater(self : Current, that : Current) : Bool
    return self.greaterThan(that);

  public function greaterEqualsTo(that : Current) : Bool return switch this {
    case CurrentAmpere(unit): unit.greaterEqualsTo(that.toAmpere());
  }
  @:op( A<B)
  public static function greatersEquals(self : Current, that : Current) : Bool
    return self.greaterEqualsTo(that);


  @:to public function toAmpere() : Ampere return switch this {
    case CurrentAmpere(unit): unit.toAmpere();
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

enum CurrentImpl {
  CurrentAmpere(unit : Ampere);
}
