package thx.unit.digital;

import thx.Decimal;

abstract Terabit(Decimal) {
  static var ofUnit : Decimal = "1000000000000"; 
  @:from inline static public function fromDecimal(value : Decimal) : Terabit
    return new Terabit(value);

  @:from inline static public function fromInt(value : Int) : Terabit 
    return fromDecimal(Decimal.fromInt(value));
  

  @:from inline static public function fromFloat(value : Float) : Terabit
    return new Terabit(value);


  inline function new(value : Decimal)
    this = value;

  inline public function abs() : Terabit
    return this.abs();

  inline public function min(that : Terabit) : Terabit
    return this.min(that.toDecimal());

  inline public function max(that : Terabit) : Terabit
    return this.max(that.toDecimal());

  @:op( -A ) inline public function negate() : Terabit
    return -this;
  @:op( A+B) inline public function add(that : Terabit) : Terabit
    return this + that.toDecimal();
  @:op( A-B) inline public function subtract(that : Terabit) : Terabit
    return this - that.toDecimal();
  @:op( A*B) inline public function multiply(that : Decimal) : Terabit
    return this * that;
  @:op( A/B) inline public function divide(that : Decimal) : Terabit
    return this / that;
  @:op( A%B) inline public function modulo(that : Decimal) : Terabit
    return this % that;

  inline public function equalsTo(that : Terabit) : Bool
    return this == that.toDecimal();
  @:op(A==B)
  inline static public function equals(self : Terabit, that : Terabit) : Bool
    return self.toDecimal() == that.toDecimal();

  public function nearEqualsTo(that : Terabit) : Bool 
    return Floats.nearEquals(this.toFloat(), that.toFloat());
  
  public static function nearEquals(self : Terabit, that : Terabit) : Bool 
    return Floats.nearEquals(self.toFloat(), that.toFloat());
  

  inline public function notEqualsTo(that : Terabit) : Bool
    return this != that.toDecimal();
  @:op(A!=B)
  inline static public function notEquals(self : Terabit, that : Terabit) : Bool
    return self.toDecimal() != that.toDecimal();

  inline public function lessThan(that : Terabit) : Bool
    return this < that.toDecimal();
  @:op( A<B)
  inline static public function less(self : Terabit, that : Terabit) : Bool
    return self.toDecimal() < that.toDecimal();

  inline public function lessEqualsTo(that : Terabit) : Bool
    return this <= that.toDecimal();
  @:op(A<=B)
  inline static public function lessEquals(self : Terabit, that : Terabit) : Bool
    return self.toDecimal() <= that.toDecimal();

  inline public function greaterThan(that : Terabit) : Bool
    return this > that.toDecimal();
  @:op( A>B)
  inline static public function greater(self : Terabit, that : Terabit) : Bool
    return self.toDecimal() >= that.toDecimal();

  inline public function greaterEqualsTo(that : Terabit) : Bool
    return this >= that.toDecimal();
  @:op(A>=B)
  inline static public function greaterEquals(self : Terabit, that : Terabit) : Bool
    return self.toDecimal() >= that.toDecimal();
 inline public function toDecimal() : Decimal
    return this;

  inline public function toFloat() : Float
    return this.toFloat();



  static var dividerByte : Decimal = "1";
  @:to inline public function toByte() : Byte
      return ((this * ofUnit) / dividerByte).trim();
    
  static var dividerKilobyte : Decimal = "1024";
  @:to inline public function toKilobyte() : Kilobyte
      return ((this * ofUnit) / dividerKilobyte).trim();
    
  static var dividerMegabyte : Decimal = "1048576";
  @:to inline public function toMegabyte() : Megabyte
      return ((this * ofUnit) / dividerMegabyte).trim();
    
  static var dividerGigabyte : Decimal = "1073741824";
  @:to inline public function toGigabyte() : Gigabyte
      return ((this * ofUnit) / dividerGigabyte).trim();
    
  static var dividerTerabyte : Decimal = "1099511627776";
  @:to inline public function toTerabyte() : Terabyte
      return ((this * ofUnit) / dividerTerabyte).trim();
    
  static var dividerPetabyte : Decimal = "1125899906842624";
  @:to inline public function toPetabyte() : Petabyte
      return ((this * ofUnit) / dividerPetabyte).trim();
    
  static var dividerExabyte : Decimal = "1152921504606846976";
  @:to inline public function toExabyte() : Exabyte
      return ((this * ofUnit) / dividerExabyte).trim();
    
  static var dividerZettabyte : Decimal = "1180591620717411303424";
  @:to inline public function toZettabyte() : Zettabyte
      return ((this * ofUnit) / dividerZettabyte).trim();
    
  static var dividerYottabyte : Decimal = "1208925819614629174706176";
  @:to inline public function toYottabyte() : Yottabyte
      return ((this * ofUnit) / dividerYottabyte).trim();
    
  static var dividerKilobit : Decimal = "1000";
  @:to inline public function toKilobit() : Kilobit
      return ((this * ofUnit) / dividerKilobit).trim();
    
  static var dividerMegabit : Decimal = "1000000";
  @:to inline public function toMegabit() : Megabit
      return ((this * ofUnit) / dividerMegabit).trim();
    
  static var dividerGigabit : Decimal = "1000000000";
  @:to inline public function toGigabit() : Gigabit
      return ((this * ofUnit) / dividerGigabit).trim();
    
  static var dividerTerabit : Decimal = "1000000000000";
  @:to inline public function toTerabit() : Terabit
      return this;
    
  static var dividerPetabit : Decimal = "1000000000000000";
  @:to inline public function toPetabit() : Petabit
      return ((this * ofUnit) / dividerPetabit).trim();
    
  static var dividerExabit : Decimal = "1E18";
  @:to inline public function toExabit() : Exabit
      return ((this * ofUnit) / dividerExabit).trim();
    
  static var dividerZettabit : Decimal = "1E21";
  @:to inline public function toZettabit() : Zettabit
      return ((this * ofUnit) / dividerZettabit).trim();
    
  static var dividerYottabit : Decimal = "1E24";
  @:to inline public function toYottabit() : Yottabit
      return ((this * ofUnit) / dividerYottabit).trim();
    
  @:to inline public function toString() : String
    return "" + this + symbol;

  public static inline var symbol : String = "T";
}
