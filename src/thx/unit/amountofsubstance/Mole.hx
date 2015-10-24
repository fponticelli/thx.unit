package thx.unit.amountofsubstance;

import thx.Decimal;

abstract Mole(Decimal) {
  static var ofUnit : Decimal = "1"; 
  @:from inline static public function fromDecimal(value : Decimal) : Mole
    return new Mole(value);

  @:from inline static public function fromInt(value : Int) : Mole 
    return fromDecimal(Decimal.fromInt(value));
  

  @:from inline static public function fromFloat(value : Float) : Mole
    return new Mole(value);


  inline function new(value : Decimal)
    this = value;

  inline public function abs() : Mole
    return this.abs();

  inline public function min(that : Mole) : Mole
    return this.min(that.toDecimal());

  inline public function max(that : Mole) : Mole
    return this.max(that.toDecimal());

  @:op( -A ) inline public function negate() : Mole
    return -this;
  @:op( A+B) inline public function add(that : Mole) : Mole
    return this + that.toDecimal();
  @:op( A-B) inline public function subtract(that : Mole) : Mole
    return this - that.toDecimal();
  @:op( A*B) inline public function multiply(that : Decimal) : Mole
    return this * that;
  @:op( A/B) inline public function divide(that : Decimal) : Mole
    return this / that;
  @:op( A%B) inline public function modulo(that : Decimal) : Mole
    return this % that;

  inline public function equalsTo(that : Mole) : Bool
    return this == that.toDecimal();
  @:op(A==B)
  inline static public function equals(self : Mole, that : Mole) : Bool
    return self.toDecimal() == that.toDecimal();

  public function nearEqualsTo(that : Mole) : Bool 
    return Floats.nearEquals(this.toFloat(), that.toFloat());
  
  public static function nearEquals(self : Mole, that : Mole) : Bool 
    return Floats.nearEquals(self.toFloat(), that.toFloat());
  

  inline public function notEqualsTo(that : Mole) : Bool
    return this != that.toDecimal();
  @:op(A!=B)
  inline static public function notEquals(self : Mole, that : Mole) : Bool
    return self.toDecimal() != that.toDecimal();

  inline public function lessThan(that : Mole) : Bool
    return this < that.toDecimal();
  @:op( A<B)
  inline static public function less(self : Mole, that : Mole) : Bool
    return self.toDecimal() < that.toDecimal();

  inline public function lessEqualsTo(that : Mole) : Bool
    return this <= that.toDecimal();
  @:op(A<=B)
  inline static public function lessEquals(self : Mole, that : Mole) : Bool
    return self.toDecimal() <= that.toDecimal();

  inline public function greaterThan(that : Mole) : Bool
    return this > that.toDecimal();
  @:op( A>B)
  inline static public function greater(self : Mole, that : Mole) : Bool
    return self.toDecimal() >= that.toDecimal();

  inline public function greaterEqualsTo(that : Mole) : Bool
    return this >= that.toDecimal();
  @:op(A>=B)
  inline static public function greaterEquals(self : Mole, that : Mole) : Bool
    return self.toDecimal() >= that.toDecimal();
 inline public function toDecimal() : Decimal
    return this;

  inline public function toFloat() : Float
    return this.toFloat();



  static var dividerMole : Decimal = "1";
  @:to inline public function toMole() : Mole
      return this;
    
  static var dividerPoundMole : Decimal = "453.59237";
  @:to inline public function toPoundMole() : PoundMole
      return ((this * ofUnit) / dividerPoundMole).trim();
    
  @:to inline public function toString() : String
    return "" + this + symbol;

  public static inline var symbol : String = "mol";
}
