package thx.unit.temperature;

import thx.Decimal;

abstract Celsius(Decimal) {
  @:from inline static public function fromDecimal(value : Decimal) : Celsius
    return new Celsius(value);

  @:from inline static public function fromInt(value : Int) : Celsius
    return fromDecimal(Decimal.fromInt(value));

  @:from inline static public function fromFloat(value : Float) : Celsius
    return fromDecimal(Decimal.fromFloat(value));

  inline function new(value : Decimal)
    this = value;

  inline public function abs() : Celsius
    return this.abs();

  inline public function min(that : Celsius) : Celsius
    return this.min(that.toDecimal());

  inline public function max(that : Celsius) : Celsius
    return this.max(that.toDecimal());

  @:op( -A ) inline public function negate() : Celsius
    return -this;
  @:op( A+B) inline public function add(that : Celsius) : Celsius
    return this.add(that.toDecimal());
  @:op( A-B) inline public function subtract(that : Celsius) : Celsius
    return this.subtract(that.toDecimal());
  @:op( A*B) inline public function multiply(that : Decimal) : Celsius
    return this.multiply(that);
  @:op( A/B) inline public function divide(that : Decimal) : Celsius
    return this.divide(that);
  @:op( A%B) inline public function modulo(that : Decimal) : Celsius
    return this.modulo(that);

  inline public function equalsTo(that : Celsius) : Bool
    return this.equalsTo(that.toDecimal());
  @:op(A==B)
  inline static public function equals(self : Celsius, that : Celsius) : Bool
    return self.equalsTo(that.toDecimal());

  public function nearEqualsTo(that : Celsius) : Bool
    return Floats.nearEquals(this.toFloat(), that.toFloat());
  public static function nearEquals(self : Celsius, that : Celsius) : Bool
    return Floats.nearEquals(self.toFloat(), that.toFloat());

  inline public function notEqualsTo(that : Celsius) : Bool
    return !this.equalsTo(that.toDecimal());
  @:op(A!=B)
  inline static public function notEquals(self : Celsius, that : Celsius) : Bool
    return !self.equalsTo(that.toDecimal());

  inline public function lessThan(that : Celsius) : Bool
    return this.lessThan(that.toDecimal());
  @:op( A<B)
  inline static public function less(self : Celsius, that : Celsius) : Bool
    return self.lessThan(that.toDecimal());

  inline public function lessEqualsTo(that : Celsius) : Bool
    return this.lessEqualsTo(that.toDecimal());
  @:op(A<=B)
  inline static public function lessEquals(self : Celsius, that : Celsius) : Bool
    return self.lessEqualsTo(that.toDecimal());

  inline public function greaterThan(that : Celsius) : Bool
    return this.greaterThan(that.toDecimal());
  @:op( A>B)
  inline static public function greater(self : Celsius, that : Celsius) : Bool
    return self.greaterThan(that.toDecimal());

  inline public function greaterEqualsTo(that : Celsius) : Bool
    return this.greaterEqualsTo(that.toDecimal());
  @:op(A>=B)
  inline public function greaterEquals(that : Celsius) : Bool
    return this.greaterEqualsTo(that.toDecimal());

  inline public function toDecimal() : Decimal
    return this;

  inline public function toFloat() : Float
    return this.toFloat();


  @:to inline public function toCelsius() : Celsius {
    return this;
  }

  @:to inline public function toFahrenheit() : Fahrenheit {
    var value = toCelsius().toDecimal(),
        result = (value / 5 * 9) + 32;
    return result;
  }

  @:to inline public function toKelvin() : Kelvin {
    var value = toCelsius().toDecimal(),
        result = value + 273.15;
    return result;
  }

  @:to inline public function toRankine() : Rankine {
    var value = toCelsius().toDecimal(),
        result = (value / 5 * 9) + 491.67;
    return result;
  }

  @:to inline public function toDelisle() : Delisle {
    var value = toCelsius().toDecimal(),
        result = (value / 2 * 3) + 100;
    return result;
  }

  @:to inline public function toNewton() : Newton {
    var value = toCelsius().toDecimal(),
        result = value / 100 * 33;
    return result;
  }

  @:to inline public function toReaumur() : Reaumur {
    var value = toCelsius().toDecimal(),
        result = value / 5 * 4;
    return result;
  }

  @:to inline public function toRomer() : Romer {
    var value = toCelsius().toDecimal(),
        result = (value / 40 * 21) + 7.5;
    return result;
  }

  @:to inline public function toString() : String
    return "" + this + symbol;

  public static inline var symbol : String = "°C";
}
