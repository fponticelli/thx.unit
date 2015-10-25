package thx.unit;

import thx.unit.temperature.*;
import thx.Error;

abstract Temperature(TemperatureImpl) from TemperatureImpl to TemperatureImpl {
  @:from static public function fromString(s : String) : Temperature {
    var o = Units.parseUnitDecimal(s);
    if(null == o) throw new Error("unable to parse " + s + " to Temperature");
    return fromPair(o);
  }

  @:from inline static public function celsius(value : Celsius) : Temperature
    return TemperatureCelsius(value);

  @:from inline static public function fahrenheit(value : Fahrenheit) : Temperature
    return TemperatureFahrenheit(value);

  @:from inline static public function kelvin(value : Kelvin) : Temperature
    return TemperatureKelvin(value);

  @:from inline static public function rankine(value : Rankine) : Temperature
    return TemperatureRankine(value);

  @:from inline static public function delisle(value : Delisle) : Temperature
    return TemperatureDelisle(value);

  @:from inline static public function newton(value : Newton) : Temperature
    return TemperatureNewton(value);

  @:from inline static public function reaumur(value : Reaumur) : Temperature
    return TemperatureReaumur(value);

  @:from inline static public function romer(value : Romer) : Temperature
    return TemperatureRomer(value);

  public static function fromPair(info : { value : Decimal, symbol : String}, ?pos : haxe.PosInfos) : Temperature return switch info.symbol {
    case "°C", "celsius": TemperatureCelsius(info.value);
    case "°F", "fahrenheit": TemperatureFahrenheit(info.value);
    case "K", "kelvin": TemperatureKelvin(info.value);
    case "°R", "rankine": TemperatureRankine(info.value);
    case "°De", "delisle": TemperatureDelisle(info.value);
    case "°N", "newton": TemperatureNewton(info.value);
    case "°Ré", "reaumur": TemperatureReaumur(info.value);
    case "°Rø", "romer": TemperatureRomer(info.value);
    case _: throw new thx.Error("invalid symbol " + info.symbol, pos);
  }

  public var value(get, never) : Decimal;
  public var symbol(get, never) : String;

  function getInfo() return switch this {
  case TemperatureCelsius(unit): { value : unit.toDecimal(), symbol : Celsius.symbol };
  case TemperatureFahrenheit(unit): { value : unit.toDecimal(), symbol : Fahrenheit.symbol };
  case TemperatureKelvin(unit): { value : unit.toDecimal(), symbol : Kelvin.symbol };
  case TemperatureRankine(unit): { value : unit.toDecimal(), symbol : Rankine.symbol };
  case TemperatureDelisle(unit): { value : unit.toDecimal(), symbol : Delisle.symbol };
  case TemperatureNewton(unit): { value : unit.toDecimal(), symbol : Newton.symbol };
  case TemperatureReaumur(unit): { value : unit.toDecimal(), symbol : Reaumur.symbol };
  case TemperatureRomer(unit): { value : unit.toDecimal(), symbol : Romer.symbol };
  }

  public function abs() : Temperature return switch this {
    case TemperatureCelsius(unit): unit.abs();
    case TemperatureFahrenheit(unit): unit.abs();
    case TemperatureKelvin(unit): unit.abs();
    case TemperatureRankine(unit): unit.abs();
    case TemperatureDelisle(unit): unit.abs();
    case TemperatureNewton(unit): unit.abs();
    case TemperatureReaumur(unit): unit.abs();
    case TemperatureRomer(unit): unit.abs();
  }

  @:op( -A ) public function negate() : Temperature return switch this {
    case TemperatureCelsius(unit): unit.negate();
    case TemperatureFahrenheit(unit): unit.negate();
    case TemperatureKelvin(unit): unit.negate();
    case TemperatureRankine(unit): unit.negate();
    case TemperatureDelisle(unit): unit.negate();
    case TemperatureNewton(unit): unit.negate();
    case TemperatureReaumur(unit): unit.negate();
    case TemperatureRomer(unit): unit.negate();
  }

  @:op( A+B) public function add(that : Temperature) : Temperature return switch this {
    case TemperatureCelsius(unit): unit.add(that.toCelsius());
    case TemperatureFahrenheit(unit): unit.add(that.toFahrenheit());
    case TemperatureKelvin(unit): unit.add(that.toKelvin());
    case TemperatureRankine(unit): unit.add(that.toRankine());
    case TemperatureDelisle(unit): unit.add(that.toDelisle());
    case TemperatureNewton(unit): unit.add(that.toNewton());
    case TemperatureReaumur(unit): unit.add(that.toReaumur());
    case TemperatureRomer(unit): unit.add(that.toRomer());
  }

  @:op( A-B) public function subtract(that : Temperature) : Temperature return switch this {
    case TemperatureCelsius(unit): unit.subtract(that.toCelsius());
    case TemperatureFahrenheit(unit): unit.subtract(that.toFahrenheit());
    case TemperatureKelvin(unit): unit.subtract(that.toKelvin());
    case TemperatureRankine(unit): unit.subtract(that.toRankine());
    case TemperatureDelisle(unit): unit.subtract(that.toDelisle());
    case TemperatureNewton(unit): unit.subtract(that.toNewton());
    case TemperatureReaumur(unit): unit.subtract(that.toReaumur());
    case TemperatureRomer(unit): unit.subtract(that.toRomer());
  }

  @:op( A*B) public function multiply(that : Decimal) : Temperature return switch this {
    case TemperatureCelsius(unit): unit.multiply(that);
    case TemperatureFahrenheit(unit): unit.multiply(that);
    case TemperatureKelvin(unit): unit.multiply(that);
    case TemperatureRankine(unit): unit.multiply(that);
    case TemperatureDelisle(unit): unit.multiply(that);
    case TemperatureNewton(unit): unit.multiply(that);
    case TemperatureReaumur(unit): unit.multiply(that);
    case TemperatureRomer(unit): unit.multiply(that);
  }

  @:op( A/B) public function divide(that : Decimal) : Temperature return switch this {
    case TemperatureCelsius(unit): unit.divide(that);
    case TemperatureFahrenheit(unit): unit.divide(that);
    case TemperatureKelvin(unit): unit.divide(that);
    case TemperatureRankine(unit): unit.divide(that);
    case TemperatureDelisle(unit): unit.divide(that);
    case TemperatureNewton(unit): unit.divide(that);
    case TemperatureReaumur(unit): unit.divide(that);
    case TemperatureRomer(unit): unit.divide(that);
  }

  @:op( A%B) public function modulo(that : Decimal) : Temperature return switch this {
    case TemperatureCelsius(unit): unit.modulo(that);
    case TemperatureFahrenheit(unit): unit.modulo(that);
    case TemperatureKelvin(unit): unit.modulo(that);
    case TemperatureRankine(unit): unit.modulo(that);
    case TemperatureDelisle(unit): unit.modulo(that);
    case TemperatureNewton(unit): unit.modulo(that);
    case TemperatureReaumur(unit): unit.modulo(that);
    case TemperatureRomer(unit): unit.modulo(that);
  }

  public function min(that : Temperature) : Temperature return switch this {
    case TemperatureCelsius(unit): unit.min(that.toCelsius());
    case TemperatureFahrenheit(unit): unit.min(that.toFahrenheit());
    case TemperatureKelvin(unit): unit.min(that.toKelvin());
    case TemperatureRankine(unit): unit.min(that.toRankine());
    case TemperatureDelisle(unit): unit.min(that.toDelisle());
    case TemperatureNewton(unit): unit.min(that.toNewton());
    case TemperatureReaumur(unit): unit.min(that.toReaumur());
    case TemperatureRomer(unit): unit.min(that.toRomer());
  }

  public function max(that : Temperature) : Temperature return switch this {
    case TemperatureCelsius(unit): unit.max(that.toCelsius());
    case TemperatureFahrenheit(unit): unit.max(that.toFahrenheit());
    case TemperatureKelvin(unit): unit.max(that.toKelvin());
    case TemperatureRankine(unit): unit.max(that.toRankine());
    case TemperatureDelisle(unit): unit.max(that.toDelisle());
    case TemperatureNewton(unit): unit.max(that.toNewton());
    case TemperatureReaumur(unit): unit.max(that.toReaumur());
    case TemperatureRomer(unit): unit.max(that.toRomer());
  }

  public function equalsTo(that : Temperature) : Bool return switch this {
    case TemperatureCelsius(unit): unit.equalsTo(that.toCelsius());
    case TemperatureFahrenheit(unit): unit.equalsTo(that.toFahrenheit());
    case TemperatureKelvin(unit): unit.equalsTo(that.toKelvin());
    case TemperatureRankine(unit): unit.equalsTo(that.toRankine());
    case TemperatureDelisle(unit): unit.equalsTo(that.toDelisle());
    case TemperatureNewton(unit): unit.equalsTo(that.toNewton());
    case TemperatureReaumur(unit): unit.equalsTo(that.toReaumur());
    case TemperatureRomer(unit): unit.equalsTo(that.toRomer());
  }
  @:op(A==B)
  public static function equals(self : Temperature, that : Temperature) : Bool
    return self.equalsTo(that);

  public function nearEqualsTo(that : Temperature) : Bool return switch this {
    case TemperatureCelsius(unit): unit.nearEqualsTo(that.toCelsius());
    case TemperatureFahrenheit(unit): unit.nearEqualsTo(that.toFahrenheit());
    case TemperatureKelvin(unit): unit.nearEqualsTo(that.toKelvin());
    case TemperatureRankine(unit): unit.nearEqualsTo(that.toRankine());
    case TemperatureDelisle(unit): unit.nearEqualsTo(that.toDelisle());
    case TemperatureNewton(unit): unit.nearEqualsTo(that.toNewton());
    case TemperatureReaumur(unit): unit.nearEqualsTo(that.toReaumur());
    case TemperatureRomer(unit): unit.nearEqualsTo(that.toRomer());
  }
  public static function nearEquals(self : Temperature, that : Temperature) : Bool
    return self.nearEqualsTo(that);

  public function lessThan(that : Temperature) : Bool return switch this {
    case TemperatureCelsius(unit): unit.lessThan(that.toCelsius());
    case TemperatureFahrenheit(unit): unit.lessThan(that.toFahrenheit());
    case TemperatureKelvin(unit): unit.lessThan(that.toKelvin());
    case TemperatureRankine(unit): unit.lessThan(that.toRankine());
    case TemperatureDelisle(unit): unit.lessThan(that.toDelisle());
    case TemperatureNewton(unit): unit.lessThan(that.toNewton());
    case TemperatureReaumur(unit): unit.lessThan(that.toReaumur());
    case TemperatureRomer(unit): unit.lessThan(that.toRomer());
  }
  @:op( A<B)
  public static function less(self : Temperature, that : Temperature) : Bool
    return self.lessThan(that);

  public function lessEqualsTo(that : Temperature) : Bool return switch this {
    case TemperatureCelsius(unit): unit.lessEqualsTo(that.toCelsius());
    case TemperatureFahrenheit(unit): unit.lessEqualsTo(that.toFahrenheit());
    case TemperatureKelvin(unit): unit.lessEqualsTo(that.toKelvin());
    case TemperatureRankine(unit): unit.lessEqualsTo(that.toRankine());
    case TemperatureDelisle(unit): unit.lessEqualsTo(that.toDelisle());
    case TemperatureNewton(unit): unit.lessEqualsTo(that.toNewton());
    case TemperatureReaumur(unit): unit.lessEqualsTo(that.toReaumur());
    case TemperatureRomer(unit): unit.lessEqualsTo(that.toRomer());
  }
  @:op( A<B)
  public static function lessEquals(self : Temperature, that : Temperature) : Bool
    return self.lessEqualsTo(that);

  public function greaterThan(that : Temperature) : Bool return switch this {
    case TemperatureCelsius(unit): unit.greaterThan(that.toCelsius());
    case TemperatureFahrenheit(unit): unit.greaterThan(that.toFahrenheit());
    case TemperatureKelvin(unit): unit.greaterThan(that.toKelvin());
    case TemperatureRankine(unit): unit.greaterThan(that.toRankine());
    case TemperatureDelisle(unit): unit.greaterThan(that.toDelisle());
    case TemperatureNewton(unit): unit.greaterThan(that.toNewton());
    case TemperatureReaumur(unit): unit.greaterThan(that.toReaumur());
    case TemperatureRomer(unit): unit.greaterThan(that.toRomer());
  }
  @:op( A>B)
  public static function greater(self : Temperature, that : Temperature) : Bool
    return self.greaterThan(that);

  public function greaterEqualsTo(that : Temperature) : Bool return switch this {
    case TemperatureCelsius(unit): unit.greaterEqualsTo(that.toCelsius());
    case TemperatureFahrenheit(unit): unit.greaterEqualsTo(that.toFahrenheit());
    case TemperatureKelvin(unit): unit.greaterEqualsTo(that.toKelvin());
    case TemperatureRankine(unit): unit.greaterEqualsTo(that.toRankine());
    case TemperatureDelisle(unit): unit.greaterEqualsTo(that.toDelisle());
    case TemperatureNewton(unit): unit.greaterEqualsTo(that.toNewton());
    case TemperatureReaumur(unit): unit.greaterEqualsTo(that.toReaumur());
    case TemperatureRomer(unit): unit.greaterEqualsTo(that.toRomer());
  }
  @:op( A<B)
  public static function greatersEquals(self : Temperature, that : Temperature) : Bool
    return self.greaterEqualsTo(that);


  @:to public function toCelsius() : Celsius return switch this {
    case TemperatureCelsius(unit): unit.toCelsius();
    case TemperatureFahrenheit(unit): unit.toFahrenheit();
    case TemperatureKelvin(unit): unit.toKelvin();
    case TemperatureRankine(unit): unit.toRankine();
    case TemperatureDelisle(unit): unit.toDelisle();
    case TemperatureNewton(unit): unit.toNewton();
    case TemperatureReaumur(unit): unit.toReaumur();
    case TemperatureRomer(unit): unit.toRomer();
  }

  @:to public function toFahrenheit() : Fahrenheit return switch this {
    case TemperatureCelsius(unit): unit.toCelsius();
    case TemperatureFahrenheit(unit): unit.toFahrenheit();
    case TemperatureKelvin(unit): unit.toKelvin();
    case TemperatureRankine(unit): unit.toRankine();
    case TemperatureDelisle(unit): unit.toDelisle();
    case TemperatureNewton(unit): unit.toNewton();
    case TemperatureReaumur(unit): unit.toReaumur();
    case TemperatureRomer(unit): unit.toRomer();
  }

  @:to public function toKelvin() : Kelvin return switch this {
    case TemperatureCelsius(unit): unit.toCelsius();
    case TemperatureFahrenheit(unit): unit.toFahrenheit();
    case TemperatureKelvin(unit): unit.toKelvin();
    case TemperatureRankine(unit): unit.toRankine();
    case TemperatureDelisle(unit): unit.toDelisle();
    case TemperatureNewton(unit): unit.toNewton();
    case TemperatureReaumur(unit): unit.toReaumur();
    case TemperatureRomer(unit): unit.toRomer();
  }

  @:to public function toRankine() : Rankine return switch this {
    case TemperatureCelsius(unit): unit.toCelsius();
    case TemperatureFahrenheit(unit): unit.toFahrenheit();
    case TemperatureKelvin(unit): unit.toKelvin();
    case TemperatureRankine(unit): unit.toRankine();
    case TemperatureDelisle(unit): unit.toDelisle();
    case TemperatureNewton(unit): unit.toNewton();
    case TemperatureReaumur(unit): unit.toReaumur();
    case TemperatureRomer(unit): unit.toRomer();
  }

  @:to public function toDelisle() : Delisle return switch this {
    case TemperatureCelsius(unit): unit.toCelsius();
    case TemperatureFahrenheit(unit): unit.toFahrenheit();
    case TemperatureKelvin(unit): unit.toKelvin();
    case TemperatureRankine(unit): unit.toRankine();
    case TemperatureDelisle(unit): unit.toDelisle();
    case TemperatureNewton(unit): unit.toNewton();
    case TemperatureReaumur(unit): unit.toReaumur();
    case TemperatureRomer(unit): unit.toRomer();
  }

  @:to public function toNewton() : Newton return switch this {
    case TemperatureCelsius(unit): unit.toCelsius();
    case TemperatureFahrenheit(unit): unit.toFahrenheit();
    case TemperatureKelvin(unit): unit.toKelvin();
    case TemperatureRankine(unit): unit.toRankine();
    case TemperatureDelisle(unit): unit.toDelisle();
    case TemperatureNewton(unit): unit.toNewton();
    case TemperatureReaumur(unit): unit.toReaumur();
    case TemperatureRomer(unit): unit.toRomer();
  }

  @:to public function toReaumur() : Reaumur return switch this {
    case TemperatureCelsius(unit): unit.toCelsius();
    case TemperatureFahrenheit(unit): unit.toFahrenheit();
    case TemperatureKelvin(unit): unit.toKelvin();
    case TemperatureRankine(unit): unit.toRankine();
    case TemperatureDelisle(unit): unit.toDelisle();
    case TemperatureNewton(unit): unit.toNewton();
    case TemperatureReaumur(unit): unit.toReaumur();
    case TemperatureRomer(unit): unit.toRomer();
  }

  @:to public function toRomer() : Romer return switch this {
    case TemperatureCelsius(unit): unit.toCelsius();
    case TemperatureFahrenheit(unit): unit.toFahrenheit();
    case TemperatureKelvin(unit): unit.toKelvin();
    case TemperatureRankine(unit): unit.toRankine();
    case TemperatureDelisle(unit): unit.toDelisle();
    case TemperatureNewton(unit): unit.toNewton();
    case TemperatureReaumur(unit): unit.toReaumur();
    case TemperatureRomer(unit): unit.toRomer();
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

enum TemperatureImpl {
  TemperatureCelsius(unit : Celsius);
  TemperatureFahrenheit(unit : Fahrenheit);
  TemperatureKelvin(unit : Kelvin);
  TemperatureRankine(unit : Rankine);
  TemperatureDelisle(unit : Delisle);
  TemperatureNewton(unit : Newton);
  TemperatureReaumur(unit : Reaumur);
  TemperatureRomer(unit : Romer);
}
