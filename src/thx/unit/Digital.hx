package thx.unit;

import thx.unit.digital.*;
import thx.Error;

abstract Digital(DigitalImpl) from DigitalImpl to DigitalImpl {
  @:from static public function fromString(s : String) : Digital {
    var o = Units.parseUnitDecimal(s);
    if(null == o) throw new Error("unable to parse " + s + " to Digital");
    return fromPair(o);
  }

  @:from inline static public function byte(value : Byte) : Digital
    return DigitalByte(value);

  @:from inline static public function kilobyte(value : Kilobyte) : Digital
    return DigitalKilobyte(value);

  @:from inline static public function megabyte(value : Megabyte) : Digital
    return DigitalMegabyte(value);

  @:from inline static public function gigabyte(value : Gigabyte) : Digital
    return DigitalGigabyte(value);

  @:from inline static public function terabyte(value : Terabyte) : Digital
    return DigitalTerabyte(value);

  @:from inline static public function petabyte(value : Petabyte) : Digital
    return DigitalPetabyte(value);

  @:from inline static public function exabyte(value : Exabyte) : Digital
    return DigitalExabyte(value);

  @:from inline static public function zettabyte(value : Zettabyte) : Digital
    return DigitalZettabyte(value);

  @:from inline static public function yottabyte(value : Yottabyte) : Digital
    return DigitalYottabyte(value);

  @:from inline static public function kilobit(value : Kilobit) : Digital
    return DigitalKilobit(value);

  @:from inline static public function megabit(value : Megabit) : Digital
    return DigitalMegabit(value);

  @:from inline static public function gigabit(value : Gigabit) : Digital
    return DigitalGigabit(value);

  @:from inline static public function terabit(value : Terabit) : Digital
    return DigitalTerabit(value);

  @:from inline static public function petabit(value : Petabit) : Digital
    return DigitalPetabit(value);

  @:from inline static public function exabit(value : Exabit) : Digital
    return DigitalExabit(value);

  @:from inline static public function zettabit(value : Zettabit) : Digital
    return DigitalZettabit(value);

  @:from inline static public function yottabit(value : Yottabit) : Digital
    return DigitalYottabit(value);

  public static function fromPair(info : { value : Decimal, symbol : String}, ?pos : haxe.PosInfos) : Digital return switch info.symbol.toLowerCase() {
    case "b", "byte": DigitalByte(info.value);
    case "ki", "kilobyte": DigitalKilobyte(info.value);
    case "mi", "megabyte": DigitalMegabyte(info.value);
    case "gi", "gigabyte": DigitalGigabyte(info.value);
    case "ti", "terabyte": DigitalTerabyte(info.value);
    case "pi", "petabyte": DigitalPetabyte(info.value);
    case "ei", "exabyte": DigitalExabyte(info.value);
    case "zi", "zettabyte": DigitalZettabyte(info.value);
    case "yi", "yottabyte": DigitalYottabyte(info.value);
    case "k", "kilobit": DigitalKilobit(info.value);
    case "m", "megabit": DigitalMegabit(info.value);
    case "g", "gigabit": DigitalGigabit(info.value);
    case "t", "terabit": DigitalTerabit(info.value);
    case "p", "petabit": DigitalPetabit(info.value);
    case "e", "exabit": DigitalExabit(info.value);
    case "z", "zettabit": DigitalZettabit(info.value);
    case "y", "yottabit": DigitalYottabit(info.value);
    case _: throw new thx.Error("invalid symbol " + info.symbol, pos);
  }

  public var value(get, never) : Decimal;
  public var symbol(get, never) : String;

  function getInfo() return switch this {
  case DigitalByte(unit): { value : unit.toDecimal(), symbol : Byte.symbol };
  case DigitalKilobyte(unit): { value : unit.toDecimal(), symbol : Kilobyte.symbol };
  case DigitalMegabyte(unit): { value : unit.toDecimal(), symbol : Megabyte.symbol };
  case DigitalGigabyte(unit): { value : unit.toDecimal(), symbol : Gigabyte.symbol };
  case DigitalTerabyte(unit): { value : unit.toDecimal(), symbol : Terabyte.symbol };
  case DigitalPetabyte(unit): { value : unit.toDecimal(), symbol : Petabyte.symbol };
  case DigitalExabyte(unit): { value : unit.toDecimal(), symbol : Exabyte.symbol };
  case DigitalZettabyte(unit): { value : unit.toDecimal(), symbol : Zettabyte.symbol };
  case DigitalYottabyte(unit): { value : unit.toDecimal(), symbol : Yottabyte.symbol };
  case DigitalKilobit(unit): { value : unit.toDecimal(), symbol : Kilobit.symbol };
  case DigitalMegabit(unit): { value : unit.toDecimal(), symbol : Megabit.symbol };
  case DigitalGigabit(unit): { value : unit.toDecimal(), symbol : Gigabit.symbol };
  case DigitalTerabit(unit): { value : unit.toDecimal(), symbol : Terabit.symbol };
  case DigitalPetabit(unit): { value : unit.toDecimal(), symbol : Petabit.symbol };
  case DigitalExabit(unit): { value : unit.toDecimal(), symbol : Exabit.symbol };
  case DigitalZettabit(unit): { value : unit.toDecimal(), symbol : Zettabit.symbol };
  case DigitalYottabit(unit): { value : unit.toDecimal(), symbol : Yottabit.symbol };
  }

  public function abs() : Digital return switch this {
    case DigitalByte(unit): unit.abs();
    case DigitalKilobyte(unit): unit.abs();
    case DigitalMegabyte(unit): unit.abs();
    case DigitalGigabyte(unit): unit.abs();
    case DigitalTerabyte(unit): unit.abs();
    case DigitalPetabyte(unit): unit.abs();
    case DigitalExabyte(unit): unit.abs();
    case DigitalZettabyte(unit): unit.abs();
    case DigitalYottabyte(unit): unit.abs();
    case DigitalKilobit(unit): unit.abs();
    case DigitalMegabit(unit): unit.abs();
    case DigitalGigabit(unit): unit.abs();
    case DigitalTerabit(unit): unit.abs();
    case DigitalPetabit(unit): unit.abs();
    case DigitalExabit(unit): unit.abs();
    case DigitalZettabit(unit): unit.abs();
    case DigitalYottabit(unit): unit.abs();
  }

  @:op( -A ) public function negate() : Digital return switch this {
    case DigitalByte(unit): unit.negate();
    case DigitalKilobyte(unit): unit.negate();
    case DigitalMegabyte(unit): unit.negate();
    case DigitalGigabyte(unit): unit.negate();
    case DigitalTerabyte(unit): unit.negate();
    case DigitalPetabyte(unit): unit.negate();
    case DigitalExabyte(unit): unit.negate();
    case DigitalZettabyte(unit): unit.negate();
    case DigitalYottabyte(unit): unit.negate();
    case DigitalKilobit(unit): unit.negate();
    case DigitalMegabit(unit): unit.negate();
    case DigitalGigabit(unit): unit.negate();
    case DigitalTerabit(unit): unit.negate();
    case DigitalPetabit(unit): unit.negate();
    case DigitalExabit(unit): unit.negate();
    case DigitalZettabit(unit): unit.negate();
    case DigitalYottabit(unit): unit.negate();
  }

  @:op( A+B) public function add(that : Digital) : Digital return switch this {
    case DigitalByte(unit): unit.add(that.toByte());
    case DigitalKilobyte(unit): unit.add(that.toKilobyte());
    case DigitalMegabyte(unit): unit.add(that.toMegabyte());
    case DigitalGigabyte(unit): unit.add(that.toGigabyte());
    case DigitalTerabyte(unit): unit.add(that.toTerabyte());
    case DigitalPetabyte(unit): unit.add(that.toPetabyte());
    case DigitalExabyte(unit): unit.add(that.toExabyte());
    case DigitalZettabyte(unit): unit.add(that.toZettabyte());
    case DigitalYottabyte(unit): unit.add(that.toYottabyte());
    case DigitalKilobit(unit): unit.add(that.toKilobit());
    case DigitalMegabit(unit): unit.add(that.toMegabit());
    case DigitalGigabit(unit): unit.add(that.toGigabit());
    case DigitalTerabit(unit): unit.add(that.toTerabit());
    case DigitalPetabit(unit): unit.add(that.toPetabit());
    case DigitalExabit(unit): unit.add(that.toExabit());
    case DigitalZettabit(unit): unit.add(that.toZettabit());
    case DigitalYottabit(unit): unit.add(that.toYottabit());
  }

  @:op( A-B) public function subtract(that : Digital) : Digital return switch this {
    case DigitalByte(unit): unit.subtract(that.toByte());
    case DigitalKilobyte(unit): unit.subtract(that.toKilobyte());
    case DigitalMegabyte(unit): unit.subtract(that.toMegabyte());
    case DigitalGigabyte(unit): unit.subtract(that.toGigabyte());
    case DigitalTerabyte(unit): unit.subtract(that.toTerabyte());
    case DigitalPetabyte(unit): unit.subtract(that.toPetabyte());
    case DigitalExabyte(unit): unit.subtract(that.toExabyte());
    case DigitalZettabyte(unit): unit.subtract(that.toZettabyte());
    case DigitalYottabyte(unit): unit.subtract(that.toYottabyte());
    case DigitalKilobit(unit): unit.subtract(that.toKilobit());
    case DigitalMegabit(unit): unit.subtract(that.toMegabit());
    case DigitalGigabit(unit): unit.subtract(that.toGigabit());
    case DigitalTerabit(unit): unit.subtract(that.toTerabit());
    case DigitalPetabit(unit): unit.subtract(that.toPetabit());
    case DigitalExabit(unit): unit.subtract(that.toExabit());
    case DigitalZettabit(unit): unit.subtract(that.toZettabit());
    case DigitalYottabit(unit): unit.subtract(that.toYottabit());
  }

  @:op( A*B) public function multiply(that : Decimal) : Digital return switch this {
    case DigitalByte(unit): unit.multiply(that);
    case DigitalKilobyte(unit): unit.multiply(that);
    case DigitalMegabyte(unit): unit.multiply(that);
    case DigitalGigabyte(unit): unit.multiply(that);
    case DigitalTerabyte(unit): unit.multiply(that);
    case DigitalPetabyte(unit): unit.multiply(that);
    case DigitalExabyte(unit): unit.multiply(that);
    case DigitalZettabyte(unit): unit.multiply(that);
    case DigitalYottabyte(unit): unit.multiply(that);
    case DigitalKilobit(unit): unit.multiply(that);
    case DigitalMegabit(unit): unit.multiply(that);
    case DigitalGigabit(unit): unit.multiply(that);
    case DigitalTerabit(unit): unit.multiply(that);
    case DigitalPetabit(unit): unit.multiply(that);
    case DigitalExabit(unit): unit.multiply(that);
    case DigitalZettabit(unit): unit.multiply(that);
    case DigitalYottabit(unit): unit.multiply(that);
  }

  @:op( A/B) public function divide(that : Decimal) : Digital return switch this {
    case DigitalByte(unit): unit.divide(that);
    case DigitalKilobyte(unit): unit.divide(that);
    case DigitalMegabyte(unit): unit.divide(that);
    case DigitalGigabyte(unit): unit.divide(that);
    case DigitalTerabyte(unit): unit.divide(that);
    case DigitalPetabyte(unit): unit.divide(that);
    case DigitalExabyte(unit): unit.divide(that);
    case DigitalZettabyte(unit): unit.divide(that);
    case DigitalYottabyte(unit): unit.divide(that);
    case DigitalKilobit(unit): unit.divide(that);
    case DigitalMegabit(unit): unit.divide(that);
    case DigitalGigabit(unit): unit.divide(that);
    case DigitalTerabit(unit): unit.divide(that);
    case DigitalPetabit(unit): unit.divide(that);
    case DigitalExabit(unit): unit.divide(that);
    case DigitalZettabit(unit): unit.divide(that);
    case DigitalYottabit(unit): unit.divide(that);
  }

  @:op( A%B) public function modulo(that : Decimal) : Digital return switch this {
    case DigitalByte(unit): unit.modulo(that);
    case DigitalKilobyte(unit): unit.modulo(that);
    case DigitalMegabyte(unit): unit.modulo(that);
    case DigitalGigabyte(unit): unit.modulo(that);
    case DigitalTerabyte(unit): unit.modulo(that);
    case DigitalPetabyte(unit): unit.modulo(that);
    case DigitalExabyte(unit): unit.modulo(that);
    case DigitalZettabyte(unit): unit.modulo(that);
    case DigitalYottabyte(unit): unit.modulo(that);
    case DigitalKilobit(unit): unit.modulo(that);
    case DigitalMegabit(unit): unit.modulo(that);
    case DigitalGigabit(unit): unit.modulo(that);
    case DigitalTerabit(unit): unit.modulo(that);
    case DigitalPetabit(unit): unit.modulo(that);
    case DigitalExabit(unit): unit.modulo(that);
    case DigitalZettabit(unit): unit.modulo(that);
    case DigitalYottabit(unit): unit.modulo(that);
  }

  public function min(that : Digital) : Digital return switch this {
    case DigitalByte(unit): unit.min(that.toByte());
    case DigitalKilobyte(unit): unit.min(that.toKilobyte());
    case DigitalMegabyte(unit): unit.min(that.toMegabyte());
    case DigitalGigabyte(unit): unit.min(that.toGigabyte());
    case DigitalTerabyte(unit): unit.min(that.toTerabyte());
    case DigitalPetabyte(unit): unit.min(that.toPetabyte());
    case DigitalExabyte(unit): unit.min(that.toExabyte());
    case DigitalZettabyte(unit): unit.min(that.toZettabyte());
    case DigitalYottabyte(unit): unit.min(that.toYottabyte());
    case DigitalKilobit(unit): unit.min(that.toKilobit());
    case DigitalMegabit(unit): unit.min(that.toMegabit());
    case DigitalGigabit(unit): unit.min(that.toGigabit());
    case DigitalTerabit(unit): unit.min(that.toTerabit());
    case DigitalPetabit(unit): unit.min(that.toPetabit());
    case DigitalExabit(unit): unit.min(that.toExabit());
    case DigitalZettabit(unit): unit.min(that.toZettabit());
    case DigitalYottabit(unit): unit.min(that.toYottabit());
  }

  public function max(that : Digital) : Digital return switch this {
    case DigitalByte(unit): unit.max(that.toByte());
    case DigitalKilobyte(unit): unit.max(that.toKilobyte());
    case DigitalMegabyte(unit): unit.max(that.toMegabyte());
    case DigitalGigabyte(unit): unit.max(that.toGigabyte());
    case DigitalTerabyte(unit): unit.max(that.toTerabyte());
    case DigitalPetabyte(unit): unit.max(that.toPetabyte());
    case DigitalExabyte(unit): unit.max(that.toExabyte());
    case DigitalZettabyte(unit): unit.max(that.toZettabyte());
    case DigitalYottabyte(unit): unit.max(that.toYottabyte());
    case DigitalKilobit(unit): unit.max(that.toKilobit());
    case DigitalMegabit(unit): unit.max(that.toMegabit());
    case DigitalGigabit(unit): unit.max(that.toGigabit());
    case DigitalTerabit(unit): unit.max(that.toTerabit());
    case DigitalPetabit(unit): unit.max(that.toPetabit());
    case DigitalExabit(unit): unit.max(that.toExabit());
    case DigitalZettabit(unit): unit.max(that.toZettabit());
    case DigitalYottabit(unit): unit.max(that.toYottabit());
  }

  public function equalsTo(that : Digital) : Bool return switch this {
    case DigitalByte(unit): unit.equalsTo(that.toByte());
    case DigitalKilobyte(unit): unit.equalsTo(that.toKilobyte());
    case DigitalMegabyte(unit): unit.equalsTo(that.toMegabyte());
    case DigitalGigabyte(unit): unit.equalsTo(that.toGigabyte());
    case DigitalTerabyte(unit): unit.equalsTo(that.toTerabyte());
    case DigitalPetabyte(unit): unit.equalsTo(that.toPetabyte());
    case DigitalExabyte(unit): unit.equalsTo(that.toExabyte());
    case DigitalZettabyte(unit): unit.equalsTo(that.toZettabyte());
    case DigitalYottabyte(unit): unit.equalsTo(that.toYottabyte());
    case DigitalKilobit(unit): unit.equalsTo(that.toKilobit());
    case DigitalMegabit(unit): unit.equalsTo(that.toMegabit());
    case DigitalGigabit(unit): unit.equalsTo(that.toGigabit());
    case DigitalTerabit(unit): unit.equalsTo(that.toTerabit());
    case DigitalPetabit(unit): unit.equalsTo(that.toPetabit());
    case DigitalExabit(unit): unit.equalsTo(that.toExabit());
    case DigitalZettabit(unit): unit.equalsTo(that.toZettabit());
    case DigitalYottabit(unit): unit.equalsTo(that.toYottabit());
  }
  @:op(A==B)
  public static function equals(self : Digital, that : Digital) : Bool
    return self.equalsTo(that);

  public function nearEqualsTo(that : Digital) : Bool return switch this {
    case DigitalByte(unit): unit.nearEqualsTo(that.toByte());
    case DigitalKilobyte(unit): unit.nearEqualsTo(that.toKilobyte());
    case DigitalMegabyte(unit): unit.nearEqualsTo(that.toMegabyte());
    case DigitalGigabyte(unit): unit.nearEqualsTo(that.toGigabyte());
    case DigitalTerabyte(unit): unit.nearEqualsTo(that.toTerabyte());
    case DigitalPetabyte(unit): unit.nearEqualsTo(that.toPetabyte());
    case DigitalExabyte(unit): unit.nearEqualsTo(that.toExabyte());
    case DigitalZettabyte(unit): unit.nearEqualsTo(that.toZettabyte());
    case DigitalYottabyte(unit): unit.nearEqualsTo(that.toYottabyte());
    case DigitalKilobit(unit): unit.nearEqualsTo(that.toKilobit());
    case DigitalMegabit(unit): unit.nearEqualsTo(that.toMegabit());
    case DigitalGigabit(unit): unit.nearEqualsTo(that.toGigabit());
    case DigitalTerabit(unit): unit.nearEqualsTo(that.toTerabit());
    case DigitalPetabit(unit): unit.nearEqualsTo(that.toPetabit());
    case DigitalExabit(unit): unit.nearEqualsTo(that.toExabit());
    case DigitalZettabit(unit): unit.nearEqualsTo(that.toZettabit());
    case DigitalYottabit(unit): unit.nearEqualsTo(that.toYottabit());
  }
  public static function nearEquals(self : Digital, that : Digital) : Bool
    return self.nearEqualsTo(that);

  public function lessThan(that : Digital) : Bool return switch this {
    case DigitalByte(unit): unit.lessThan(that.toByte());
    case DigitalKilobyte(unit): unit.lessThan(that.toKilobyte());
    case DigitalMegabyte(unit): unit.lessThan(that.toMegabyte());
    case DigitalGigabyte(unit): unit.lessThan(that.toGigabyte());
    case DigitalTerabyte(unit): unit.lessThan(that.toTerabyte());
    case DigitalPetabyte(unit): unit.lessThan(that.toPetabyte());
    case DigitalExabyte(unit): unit.lessThan(that.toExabyte());
    case DigitalZettabyte(unit): unit.lessThan(that.toZettabyte());
    case DigitalYottabyte(unit): unit.lessThan(that.toYottabyte());
    case DigitalKilobit(unit): unit.lessThan(that.toKilobit());
    case DigitalMegabit(unit): unit.lessThan(that.toMegabit());
    case DigitalGigabit(unit): unit.lessThan(that.toGigabit());
    case DigitalTerabit(unit): unit.lessThan(that.toTerabit());
    case DigitalPetabit(unit): unit.lessThan(that.toPetabit());
    case DigitalExabit(unit): unit.lessThan(that.toExabit());
    case DigitalZettabit(unit): unit.lessThan(that.toZettabit());
    case DigitalYottabit(unit): unit.lessThan(that.toYottabit());
  }
  @:op( A<B)
  public static function less(self : Digital, that : Digital) : Bool
    return self.lessThan(that);

  public function lessEqualsTo(that : Digital) : Bool return switch this {
    case DigitalByte(unit): unit.lessEqualsTo(that.toByte());
    case DigitalKilobyte(unit): unit.lessEqualsTo(that.toKilobyte());
    case DigitalMegabyte(unit): unit.lessEqualsTo(that.toMegabyte());
    case DigitalGigabyte(unit): unit.lessEqualsTo(that.toGigabyte());
    case DigitalTerabyte(unit): unit.lessEqualsTo(that.toTerabyte());
    case DigitalPetabyte(unit): unit.lessEqualsTo(that.toPetabyte());
    case DigitalExabyte(unit): unit.lessEqualsTo(that.toExabyte());
    case DigitalZettabyte(unit): unit.lessEqualsTo(that.toZettabyte());
    case DigitalYottabyte(unit): unit.lessEqualsTo(that.toYottabyte());
    case DigitalKilobit(unit): unit.lessEqualsTo(that.toKilobit());
    case DigitalMegabit(unit): unit.lessEqualsTo(that.toMegabit());
    case DigitalGigabit(unit): unit.lessEqualsTo(that.toGigabit());
    case DigitalTerabit(unit): unit.lessEqualsTo(that.toTerabit());
    case DigitalPetabit(unit): unit.lessEqualsTo(that.toPetabit());
    case DigitalExabit(unit): unit.lessEqualsTo(that.toExabit());
    case DigitalZettabit(unit): unit.lessEqualsTo(that.toZettabit());
    case DigitalYottabit(unit): unit.lessEqualsTo(that.toYottabit());
  }
  @:op( A<B)
  public static function lessEquals(self : Digital, that : Digital) : Bool
    return self.lessEqualsTo(that);

  public function greaterThan(that : Digital) : Bool return switch this {
    case DigitalByte(unit): unit.greaterThan(that.toByte());
    case DigitalKilobyte(unit): unit.greaterThan(that.toKilobyte());
    case DigitalMegabyte(unit): unit.greaterThan(that.toMegabyte());
    case DigitalGigabyte(unit): unit.greaterThan(that.toGigabyte());
    case DigitalTerabyte(unit): unit.greaterThan(that.toTerabyte());
    case DigitalPetabyte(unit): unit.greaterThan(that.toPetabyte());
    case DigitalExabyte(unit): unit.greaterThan(that.toExabyte());
    case DigitalZettabyte(unit): unit.greaterThan(that.toZettabyte());
    case DigitalYottabyte(unit): unit.greaterThan(that.toYottabyte());
    case DigitalKilobit(unit): unit.greaterThan(that.toKilobit());
    case DigitalMegabit(unit): unit.greaterThan(that.toMegabit());
    case DigitalGigabit(unit): unit.greaterThan(that.toGigabit());
    case DigitalTerabit(unit): unit.greaterThan(that.toTerabit());
    case DigitalPetabit(unit): unit.greaterThan(that.toPetabit());
    case DigitalExabit(unit): unit.greaterThan(that.toExabit());
    case DigitalZettabit(unit): unit.greaterThan(that.toZettabit());
    case DigitalYottabit(unit): unit.greaterThan(that.toYottabit());
  }
  @:op( A>B)
  public static function greater(self : Digital, that : Digital) : Bool
    return self.greaterThan(that);

  public function greaterEqualsTo(that : Digital) : Bool return switch this {
    case DigitalByte(unit): unit.greaterEqualsTo(that.toByte());
    case DigitalKilobyte(unit): unit.greaterEqualsTo(that.toKilobyte());
    case DigitalMegabyte(unit): unit.greaterEqualsTo(that.toMegabyte());
    case DigitalGigabyte(unit): unit.greaterEqualsTo(that.toGigabyte());
    case DigitalTerabyte(unit): unit.greaterEqualsTo(that.toTerabyte());
    case DigitalPetabyte(unit): unit.greaterEqualsTo(that.toPetabyte());
    case DigitalExabyte(unit): unit.greaterEqualsTo(that.toExabyte());
    case DigitalZettabyte(unit): unit.greaterEqualsTo(that.toZettabyte());
    case DigitalYottabyte(unit): unit.greaterEqualsTo(that.toYottabyte());
    case DigitalKilobit(unit): unit.greaterEqualsTo(that.toKilobit());
    case DigitalMegabit(unit): unit.greaterEqualsTo(that.toMegabit());
    case DigitalGigabit(unit): unit.greaterEqualsTo(that.toGigabit());
    case DigitalTerabit(unit): unit.greaterEqualsTo(that.toTerabit());
    case DigitalPetabit(unit): unit.greaterEqualsTo(that.toPetabit());
    case DigitalExabit(unit): unit.greaterEqualsTo(that.toExabit());
    case DigitalZettabit(unit): unit.greaterEqualsTo(that.toZettabit());
    case DigitalYottabit(unit): unit.greaterEqualsTo(that.toYottabit());
  }
  @:op( A<B)
  public static function greatersEquals(self : Digital, that : Digital) : Bool
    return self.greaterEqualsTo(that);


  @:to public function toByte() : Byte return switch this {
    case DigitalByte(unit): unit.toByte();
    case DigitalKilobyte(unit): unit.toKilobyte();
    case DigitalMegabyte(unit): unit.toMegabyte();
    case DigitalGigabyte(unit): unit.toGigabyte();
    case DigitalTerabyte(unit): unit.toTerabyte();
    case DigitalPetabyte(unit): unit.toPetabyte();
    case DigitalExabyte(unit): unit.toExabyte();
    case DigitalZettabyte(unit): unit.toZettabyte();
    case DigitalYottabyte(unit): unit.toYottabyte();
    case DigitalKilobit(unit): unit.toKilobit();
    case DigitalMegabit(unit): unit.toMegabit();
    case DigitalGigabit(unit): unit.toGigabit();
    case DigitalTerabit(unit): unit.toTerabit();
    case DigitalPetabit(unit): unit.toPetabit();
    case DigitalExabit(unit): unit.toExabit();
    case DigitalZettabit(unit): unit.toZettabit();
    case DigitalYottabit(unit): unit.toYottabit();
  }

  @:to public function toKilobyte() : Kilobyte return switch this {
    case DigitalByte(unit): unit.toByte();
    case DigitalKilobyte(unit): unit.toKilobyte();
    case DigitalMegabyte(unit): unit.toMegabyte();
    case DigitalGigabyte(unit): unit.toGigabyte();
    case DigitalTerabyte(unit): unit.toTerabyte();
    case DigitalPetabyte(unit): unit.toPetabyte();
    case DigitalExabyte(unit): unit.toExabyte();
    case DigitalZettabyte(unit): unit.toZettabyte();
    case DigitalYottabyte(unit): unit.toYottabyte();
    case DigitalKilobit(unit): unit.toKilobit();
    case DigitalMegabit(unit): unit.toMegabit();
    case DigitalGigabit(unit): unit.toGigabit();
    case DigitalTerabit(unit): unit.toTerabit();
    case DigitalPetabit(unit): unit.toPetabit();
    case DigitalExabit(unit): unit.toExabit();
    case DigitalZettabit(unit): unit.toZettabit();
    case DigitalYottabit(unit): unit.toYottabit();
  }

  @:to public function toMegabyte() : Megabyte return switch this {
    case DigitalByte(unit): unit.toByte();
    case DigitalKilobyte(unit): unit.toKilobyte();
    case DigitalMegabyte(unit): unit.toMegabyte();
    case DigitalGigabyte(unit): unit.toGigabyte();
    case DigitalTerabyte(unit): unit.toTerabyte();
    case DigitalPetabyte(unit): unit.toPetabyte();
    case DigitalExabyte(unit): unit.toExabyte();
    case DigitalZettabyte(unit): unit.toZettabyte();
    case DigitalYottabyte(unit): unit.toYottabyte();
    case DigitalKilobit(unit): unit.toKilobit();
    case DigitalMegabit(unit): unit.toMegabit();
    case DigitalGigabit(unit): unit.toGigabit();
    case DigitalTerabit(unit): unit.toTerabit();
    case DigitalPetabit(unit): unit.toPetabit();
    case DigitalExabit(unit): unit.toExabit();
    case DigitalZettabit(unit): unit.toZettabit();
    case DigitalYottabit(unit): unit.toYottabit();
  }

  @:to public function toGigabyte() : Gigabyte return switch this {
    case DigitalByte(unit): unit.toByte();
    case DigitalKilobyte(unit): unit.toKilobyte();
    case DigitalMegabyte(unit): unit.toMegabyte();
    case DigitalGigabyte(unit): unit.toGigabyte();
    case DigitalTerabyte(unit): unit.toTerabyte();
    case DigitalPetabyte(unit): unit.toPetabyte();
    case DigitalExabyte(unit): unit.toExabyte();
    case DigitalZettabyte(unit): unit.toZettabyte();
    case DigitalYottabyte(unit): unit.toYottabyte();
    case DigitalKilobit(unit): unit.toKilobit();
    case DigitalMegabit(unit): unit.toMegabit();
    case DigitalGigabit(unit): unit.toGigabit();
    case DigitalTerabit(unit): unit.toTerabit();
    case DigitalPetabit(unit): unit.toPetabit();
    case DigitalExabit(unit): unit.toExabit();
    case DigitalZettabit(unit): unit.toZettabit();
    case DigitalYottabit(unit): unit.toYottabit();
  }

  @:to public function toTerabyte() : Terabyte return switch this {
    case DigitalByte(unit): unit.toByte();
    case DigitalKilobyte(unit): unit.toKilobyte();
    case DigitalMegabyte(unit): unit.toMegabyte();
    case DigitalGigabyte(unit): unit.toGigabyte();
    case DigitalTerabyte(unit): unit.toTerabyte();
    case DigitalPetabyte(unit): unit.toPetabyte();
    case DigitalExabyte(unit): unit.toExabyte();
    case DigitalZettabyte(unit): unit.toZettabyte();
    case DigitalYottabyte(unit): unit.toYottabyte();
    case DigitalKilobit(unit): unit.toKilobit();
    case DigitalMegabit(unit): unit.toMegabit();
    case DigitalGigabit(unit): unit.toGigabit();
    case DigitalTerabit(unit): unit.toTerabit();
    case DigitalPetabit(unit): unit.toPetabit();
    case DigitalExabit(unit): unit.toExabit();
    case DigitalZettabit(unit): unit.toZettabit();
    case DigitalYottabit(unit): unit.toYottabit();
  }

  @:to public function toPetabyte() : Petabyte return switch this {
    case DigitalByte(unit): unit.toByte();
    case DigitalKilobyte(unit): unit.toKilobyte();
    case DigitalMegabyte(unit): unit.toMegabyte();
    case DigitalGigabyte(unit): unit.toGigabyte();
    case DigitalTerabyte(unit): unit.toTerabyte();
    case DigitalPetabyte(unit): unit.toPetabyte();
    case DigitalExabyte(unit): unit.toExabyte();
    case DigitalZettabyte(unit): unit.toZettabyte();
    case DigitalYottabyte(unit): unit.toYottabyte();
    case DigitalKilobit(unit): unit.toKilobit();
    case DigitalMegabit(unit): unit.toMegabit();
    case DigitalGigabit(unit): unit.toGigabit();
    case DigitalTerabit(unit): unit.toTerabit();
    case DigitalPetabit(unit): unit.toPetabit();
    case DigitalExabit(unit): unit.toExabit();
    case DigitalZettabit(unit): unit.toZettabit();
    case DigitalYottabit(unit): unit.toYottabit();
  }

  @:to public function toExabyte() : Exabyte return switch this {
    case DigitalByte(unit): unit.toByte();
    case DigitalKilobyte(unit): unit.toKilobyte();
    case DigitalMegabyte(unit): unit.toMegabyte();
    case DigitalGigabyte(unit): unit.toGigabyte();
    case DigitalTerabyte(unit): unit.toTerabyte();
    case DigitalPetabyte(unit): unit.toPetabyte();
    case DigitalExabyte(unit): unit.toExabyte();
    case DigitalZettabyte(unit): unit.toZettabyte();
    case DigitalYottabyte(unit): unit.toYottabyte();
    case DigitalKilobit(unit): unit.toKilobit();
    case DigitalMegabit(unit): unit.toMegabit();
    case DigitalGigabit(unit): unit.toGigabit();
    case DigitalTerabit(unit): unit.toTerabit();
    case DigitalPetabit(unit): unit.toPetabit();
    case DigitalExabit(unit): unit.toExabit();
    case DigitalZettabit(unit): unit.toZettabit();
    case DigitalYottabit(unit): unit.toYottabit();
  }

  @:to public function toZettabyte() : Zettabyte return switch this {
    case DigitalByte(unit): unit.toByte();
    case DigitalKilobyte(unit): unit.toKilobyte();
    case DigitalMegabyte(unit): unit.toMegabyte();
    case DigitalGigabyte(unit): unit.toGigabyte();
    case DigitalTerabyte(unit): unit.toTerabyte();
    case DigitalPetabyte(unit): unit.toPetabyte();
    case DigitalExabyte(unit): unit.toExabyte();
    case DigitalZettabyte(unit): unit.toZettabyte();
    case DigitalYottabyte(unit): unit.toYottabyte();
    case DigitalKilobit(unit): unit.toKilobit();
    case DigitalMegabit(unit): unit.toMegabit();
    case DigitalGigabit(unit): unit.toGigabit();
    case DigitalTerabit(unit): unit.toTerabit();
    case DigitalPetabit(unit): unit.toPetabit();
    case DigitalExabit(unit): unit.toExabit();
    case DigitalZettabit(unit): unit.toZettabit();
    case DigitalYottabit(unit): unit.toYottabit();
  }

  @:to public function toYottabyte() : Yottabyte return switch this {
    case DigitalByte(unit): unit.toByte();
    case DigitalKilobyte(unit): unit.toKilobyte();
    case DigitalMegabyte(unit): unit.toMegabyte();
    case DigitalGigabyte(unit): unit.toGigabyte();
    case DigitalTerabyte(unit): unit.toTerabyte();
    case DigitalPetabyte(unit): unit.toPetabyte();
    case DigitalExabyte(unit): unit.toExabyte();
    case DigitalZettabyte(unit): unit.toZettabyte();
    case DigitalYottabyte(unit): unit.toYottabyte();
    case DigitalKilobit(unit): unit.toKilobit();
    case DigitalMegabit(unit): unit.toMegabit();
    case DigitalGigabit(unit): unit.toGigabit();
    case DigitalTerabit(unit): unit.toTerabit();
    case DigitalPetabit(unit): unit.toPetabit();
    case DigitalExabit(unit): unit.toExabit();
    case DigitalZettabit(unit): unit.toZettabit();
    case DigitalYottabit(unit): unit.toYottabit();
  }

  @:to public function toKilobit() : Kilobit return switch this {
    case DigitalByte(unit): unit.toByte();
    case DigitalKilobyte(unit): unit.toKilobyte();
    case DigitalMegabyte(unit): unit.toMegabyte();
    case DigitalGigabyte(unit): unit.toGigabyte();
    case DigitalTerabyte(unit): unit.toTerabyte();
    case DigitalPetabyte(unit): unit.toPetabyte();
    case DigitalExabyte(unit): unit.toExabyte();
    case DigitalZettabyte(unit): unit.toZettabyte();
    case DigitalYottabyte(unit): unit.toYottabyte();
    case DigitalKilobit(unit): unit.toKilobit();
    case DigitalMegabit(unit): unit.toMegabit();
    case DigitalGigabit(unit): unit.toGigabit();
    case DigitalTerabit(unit): unit.toTerabit();
    case DigitalPetabit(unit): unit.toPetabit();
    case DigitalExabit(unit): unit.toExabit();
    case DigitalZettabit(unit): unit.toZettabit();
    case DigitalYottabit(unit): unit.toYottabit();
  }

  @:to public function toMegabit() : Megabit return switch this {
    case DigitalByte(unit): unit.toByte();
    case DigitalKilobyte(unit): unit.toKilobyte();
    case DigitalMegabyte(unit): unit.toMegabyte();
    case DigitalGigabyte(unit): unit.toGigabyte();
    case DigitalTerabyte(unit): unit.toTerabyte();
    case DigitalPetabyte(unit): unit.toPetabyte();
    case DigitalExabyte(unit): unit.toExabyte();
    case DigitalZettabyte(unit): unit.toZettabyte();
    case DigitalYottabyte(unit): unit.toYottabyte();
    case DigitalKilobit(unit): unit.toKilobit();
    case DigitalMegabit(unit): unit.toMegabit();
    case DigitalGigabit(unit): unit.toGigabit();
    case DigitalTerabit(unit): unit.toTerabit();
    case DigitalPetabit(unit): unit.toPetabit();
    case DigitalExabit(unit): unit.toExabit();
    case DigitalZettabit(unit): unit.toZettabit();
    case DigitalYottabit(unit): unit.toYottabit();
  }

  @:to public function toGigabit() : Gigabit return switch this {
    case DigitalByte(unit): unit.toByte();
    case DigitalKilobyte(unit): unit.toKilobyte();
    case DigitalMegabyte(unit): unit.toMegabyte();
    case DigitalGigabyte(unit): unit.toGigabyte();
    case DigitalTerabyte(unit): unit.toTerabyte();
    case DigitalPetabyte(unit): unit.toPetabyte();
    case DigitalExabyte(unit): unit.toExabyte();
    case DigitalZettabyte(unit): unit.toZettabyte();
    case DigitalYottabyte(unit): unit.toYottabyte();
    case DigitalKilobit(unit): unit.toKilobit();
    case DigitalMegabit(unit): unit.toMegabit();
    case DigitalGigabit(unit): unit.toGigabit();
    case DigitalTerabit(unit): unit.toTerabit();
    case DigitalPetabit(unit): unit.toPetabit();
    case DigitalExabit(unit): unit.toExabit();
    case DigitalZettabit(unit): unit.toZettabit();
    case DigitalYottabit(unit): unit.toYottabit();
  }

  @:to public function toTerabit() : Terabit return switch this {
    case DigitalByte(unit): unit.toByte();
    case DigitalKilobyte(unit): unit.toKilobyte();
    case DigitalMegabyte(unit): unit.toMegabyte();
    case DigitalGigabyte(unit): unit.toGigabyte();
    case DigitalTerabyte(unit): unit.toTerabyte();
    case DigitalPetabyte(unit): unit.toPetabyte();
    case DigitalExabyte(unit): unit.toExabyte();
    case DigitalZettabyte(unit): unit.toZettabyte();
    case DigitalYottabyte(unit): unit.toYottabyte();
    case DigitalKilobit(unit): unit.toKilobit();
    case DigitalMegabit(unit): unit.toMegabit();
    case DigitalGigabit(unit): unit.toGigabit();
    case DigitalTerabit(unit): unit.toTerabit();
    case DigitalPetabit(unit): unit.toPetabit();
    case DigitalExabit(unit): unit.toExabit();
    case DigitalZettabit(unit): unit.toZettabit();
    case DigitalYottabit(unit): unit.toYottabit();
  }

  @:to public function toPetabit() : Petabit return switch this {
    case DigitalByte(unit): unit.toByte();
    case DigitalKilobyte(unit): unit.toKilobyte();
    case DigitalMegabyte(unit): unit.toMegabyte();
    case DigitalGigabyte(unit): unit.toGigabyte();
    case DigitalTerabyte(unit): unit.toTerabyte();
    case DigitalPetabyte(unit): unit.toPetabyte();
    case DigitalExabyte(unit): unit.toExabyte();
    case DigitalZettabyte(unit): unit.toZettabyte();
    case DigitalYottabyte(unit): unit.toYottabyte();
    case DigitalKilobit(unit): unit.toKilobit();
    case DigitalMegabit(unit): unit.toMegabit();
    case DigitalGigabit(unit): unit.toGigabit();
    case DigitalTerabit(unit): unit.toTerabit();
    case DigitalPetabit(unit): unit.toPetabit();
    case DigitalExabit(unit): unit.toExabit();
    case DigitalZettabit(unit): unit.toZettabit();
    case DigitalYottabit(unit): unit.toYottabit();
  }

  @:to public function toExabit() : Exabit return switch this {
    case DigitalByte(unit): unit.toByte();
    case DigitalKilobyte(unit): unit.toKilobyte();
    case DigitalMegabyte(unit): unit.toMegabyte();
    case DigitalGigabyte(unit): unit.toGigabyte();
    case DigitalTerabyte(unit): unit.toTerabyte();
    case DigitalPetabyte(unit): unit.toPetabyte();
    case DigitalExabyte(unit): unit.toExabyte();
    case DigitalZettabyte(unit): unit.toZettabyte();
    case DigitalYottabyte(unit): unit.toYottabyte();
    case DigitalKilobit(unit): unit.toKilobit();
    case DigitalMegabit(unit): unit.toMegabit();
    case DigitalGigabit(unit): unit.toGigabit();
    case DigitalTerabit(unit): unit.toTerabit();
    case DigitalPetabit(unit): unit.toPetabit();
    case DigitalExabit(unit): unit.toExabit();
    case DigitalZettabit(unit): unit.toZettabit();
    case DigitalYottabit(unit): unit.toYottabit();
  }

  @:to public function toZettabit() : Zettabit return switch this {
    case DigitalByte(unit): unit.toByte();
    case DigitalKilobyte(unit): unit.toKilobyte();
    case DigitalMegabyte(unit): unit.toMegabyte();
    case DigitalGigabyte(unit): unit.toGigabyte();
    case DigitalTerabyte(unit): unit.toTerabyte();
    case DigitalPetabyte(unit): unit.toPetabyte();
    case DigitalExabyte(unit): unit.toExabyte();
    case DigitalZettabyte(unit): unit.toZettabyte();
    case DigitalYottabyte(unit): unit.toYottabyte();
    case DigitalKilobit(unit): unit.toKilobit();
    case DigitalMegabit(unit): unit.toMegabit();
    case DigitalGigabit(unit): unit.toGigabit();
    case DigitalTerabit(unit): unit.toTerabit();
    case DigitalPetabit(unit): unit.toPetabit();
    case DigitalExabit(unit): unit.toExabit();
    case DigitalZettabit(unit): unit.toZettabit();
    case DigitalYottabit(unit): unit.toYottabit();
  }

  @:to public function toYottabit() : Yottabit return switch this {
    case DigitalByte(unit): unit.toByte();
    case DigitalKilobyte(unit): unit.toKilobyte();
    case DigitalMegabyte(unit): unit.toMegabyte();
    case DigitalGigabyte(unit): unit.toGigabyte();
    case DigitalTerabyte(unit): unit.toTerabyte();
    case DigitalPetabyte(unit): unit.toPetabyte();
    case DigitalExabyte(unit): unit.toExabyte();
    case DigitalZettabyte(unit): unit.toZettabyte();
    case DigitalYottabyte(unit): unit.toYottabyte();
    case DigitalKilobit(unit): unit.toKilobit();
    case DigitalMegabit(unit): unit.toMegabit();
    case DigitalGigabit(unit): unit.toGigabit();
    case DigitalTerabit(unit): unit.toTerabit();
    case DigitalPetabit(unit): unit.toPetabit();
    case DigitalExabit(unit): unit.toExabit();
    case DigitalZettabit(unit): unit.toZettabit();
    case DigitalYottabit(unit): unit.toYottabit();
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

enum DigitalImpl {
  DigitalByte(unit : Byte);
  DigitalKilobyte(unit : Kilobyte);
  DigitalMegabyte(unit : Megabyte);
  DigitalGigabyte(unit : Gigabyte);
  DigitalTerabyte(unit : Terabyte);
  DigitalPetabyte(unit : Petabyte);
  DigitalExabyte(unit : Exabyte);
  DigitalZettabyte(unit : Zettabyte);
  DigitalYottabyte(unit : Yottabyte);
  DigitalKilobit(unit : Kilobit);
  DigitalMegabit(unit : Megabit);
  DigitalGigabit(unit : Gigabit);
  DigitalTerabit(unit : Terabit);
  DigitalPetabit(unit : Petabit);
  DigitalExabit(unit : Exabit);
  DigitalZettabit(unit : Zettabit);
  DigitalYottabit(unit : Yottabit);
}
