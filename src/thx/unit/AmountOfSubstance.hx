package thx.unit;

import thx.unit.amountofsubstance.*;
import thx.Error;

abstract AmountOfSubstance(AmountOfSubstanceImpl) from AmountOfSubstanceImpl to AmountOfSubstanceImpl {
  @:from static public function fromString(s : String) : AmountOfSubstance {
    var o = Units.parseUnitDecimal(s);
    if(null == o) throw new Error("unable to parse " + s + " to AmountOfSubstance");
    return fromPair(o);
  }

  @:from inline static public function mole(value : Mole) : AmountOfSubstance
    return AmountOfSubstanceMole(value);

  @:from inline static public function poundMole(value : PoundMole) : AmountOfSubstance
    return AmountOfSubstancePoundMole(value);

  public static function fromPair(info : { value : Decimal, symbol : String}, ?pos : haxe.PosInfos) : AmountOfSubstance return switch info.symbol.toLowerCase() {
    case "mol", "mole": AmountOfSubstanceMole(info.value);
    case "pound-mol", "pound mole": AmountOfSubstancePoundMole(info.value);
    case _: throw new thx.Error("invalid symbol " + info.symbol, pos);
  }

  public var value(get, never) : Decimal;
  public var symbol(get, never) : String;

  function getInfo() return switch this {
  case AmountOfSubstanceMole(unit): { value : unit.toDecimal(), symbol : Mole.symbol };
  case AmountOfSubstancePoundMole(unit): { value : unit.toDecimal(), symbol : PoundMole.symbol };
  }

  public function abs() : AmountOfSubstance return switch this {
    case AmountOfSubstanceMole(unit): unit.abs();
    case AmountOfSubstancePoundMole(unit): unit.abs();
  }

  @:op( -A ) public function negate() : AmountOfSubstance return switch this {
    case AmountOfSubstanceMole(unit): unit.negate();
    case AmountOfSubstancePoundMole(unit): unit.negate();
  }

  @:op( A+B) public function add(that : AmountOfSubstance) : AmountOfSubstance return switch this {
    case AmountOfSubstanceMole(unit): unit.add(that.toMole());
    case AmountOfSubstancePoundMole(unit): unit.add(that.toPoundMole());
  }

  @:op( A-B) public function subtract(that : AmountOfSubstance) : AmountOfSubstance return switch this {
    case AmountOfSubstanceMole(unit): unit.subtract(that.toMole());
    case AmountOfSubstancePoundMole(unit): unit.subtract(that.toPoundMole());
  }

  @:op( A*B) public function multiply(that : Decimal) : AmountOfSubstance return switch this {
    case AmountOfSubstanceMole(unit): unit.multiply(that);
    case AmountOfSubstancePoundMole(unit): unit.multiply(that);
  }

  @:op( A/B) public function divide(that : Decimal) : AmountOfSubstance return switch this {
    case AmountOfSubstanceMole(unit): unit.divide(that);
    case AmountOfSubstancePoundMole(unit): unit.divide(that);
  }

  @:op( A%B) public function modulo(that : Decimal) : AmountOfSubstance return switch this {
    case AmountOfSubstanceMole(unit): unit.modulo(that);
    case AmountOfSubstancePoundMole(unit): unit.modulo(that);
  }

  public function min(that : AmountOfSubstance) : AmountOfSubstance return switch this {
    case AmountOfSubstanceMole(unit): unit.min(that.toMole());
    case AmountOfSubstancePoundMole(unit): unit.min(that.toPoundMole());
  }

  public function max(that : AmountOfSubstance) : AmountOfSubstance return switch this {
    case AmountOfSubstanceMole(unit): unit.max(that.toMole());
    case AmountOfSubstancePoundMole(unit): unit.max(that.toPoundMole());
  }

  public function equalsTo(that : AmountOfSubstance) : Bool return switch this {
    case AmountOfSubstanceMole(unit): unit.equalsTo(that.toMole());
    case AmountOfSubstancePoundMole(unit): unit.equalsTo(that.toPoundMole());
  }
  @:op(A==B)
  public static function equals(self : AmountOfSubstance, that : AmountOfSubstance) : Bool
    return self.equalsTo(that);

  public function nearEqualsTo(that : AmountOfSubstance) : Bool return switch this {
    case AmountOfSubstanceMole(unit): unit.nearEqualsTo(that.toMole());
    case AmountOfSubstancePoundMole(unit): unit.nearEqualsTo(that.toPoundMole());
  }
  public static function nearEquals(self : AmountOfSubstance, that : AmountOfSubstance) : Bool
    return self.nearEqualsTo(that);

  public function lessThan(that : AmountOfSubstance) : Bool return switch this {
    case AmountOfSubstanceMole(unit): unit.lessThan(that.toMole());
    case AmountOfSubstancePoundMole(unit): unit.lessThan(that.toPoundMole());
  }
  @:op( A<B)
  public static function less(self : AmountOfSubstance, that : AmountOfSubstance) : Bool
    return self.lessThan(that);

  public function lessEqualsTo(that : AmountOfSubstance) : Bool return switch this {
    case AmountOfSubstanceMole(unit): unit.lessEqualsTo(that.toMole());
    case AmountOfSubstancePoundMole(unit): unit.lessEqualsTo(that.toPoundMole());
  }
  @:op( A<B)
  public static function lessEquals(self : AmountOfSubstance, that : AmountOfSubstance) : Bool
    return self.lessEqualsTo(that);

  public function greaterThan(that : AmountOfSubstance) : Bool return switch this {
    case AmountOfSubstanceMole(unit): unit.greaterThan(that.toMole());
    case AmountOfSubstancePoundMole(unit): unit.greaterThan(that.toPoundMole());
  }
  @:op( A>B)
  public static function greater(self : AmountOfSubstance, that : AmountOfSubstance) : Bool
    return self.greaterThan(that);

  public function greaterEqualsTo(that : AmountOfSubstance) : Bool return switch this {
    case AmountOfSubstanceMole(unit): unit.greaterEqualsTo(that.toMole());
    case AmountOfSubstancePoundMole(unit): unit.greaterEqualsTo(that.toPoundMole());
  }
  @:op( A<B)
  public static function greatersEquals(self : AmountOfSubstance, that : AmountOfSubstance) : Bool
    return self.greaterEqualsTo(that);


  @:to public function toMole() : Mole return switch this {
    case AmountOfSubstanceMole(unit): unit.toMole();
    case AmountOfSubstancePoundMole(unit): unit.toPoundMole();
  }

  @:to public function toPoundMole() : PoundMole return switch this {
    case AmountOfSubstanceMole(unit): unit.toMole();
    case AmountOfSubstancePoundMole(unit): unit.toPoundMole();
  }

  function get_value() : Decimal
    return getInfo().value;

  function get_symbol() : String
    return getInfo().symbol;

  public function toString() {
    var info = getInfo();
    return "" + info.value + info.symbol;
  }
}

enum AmountOfSubstanceImpl {
  AmountOfSubstanceMole(unit : Mole);
  AmountOfSubstancePoundMole(unit : PoundMole);
}
