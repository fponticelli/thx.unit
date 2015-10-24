package thx.unit.time;

import thx.Decimal;

abstract Terasecond(Decimal) {
  static var ofUnit : Decimal = "1000000000000"; 
  @:from inline static public function fromDecimal(value : Decimal) : Terasecond
    return new Terasecond(value);

  @:from inline static public function fromInt(value : Int) : Terasecond 
    return fromDecimal(Decimal.fromInt(value));
  

  @:from inline static public function fromFloat(value : Float) : Terasecond
    return new Terasecond(value);


  inline function new(value : Decimal)
    this = value;

  inline public function abs() : Terasecond
    return this.abs();

  inline public function min(that : Terasecond) : Terasecond
    return this.min(that.toDecimal());

  inline public function max(that : Terasecond) : Terasecond
    return this.max(that.toDecimal());

  @:op( -A ) inline public function negate() : Terasecond
    return -this;
  @:op( A+B) inline public function add(that : Terasecond) : Terasecond
    return this + that.toDecimal();
  @:op( A-B) inline public function subtract(that : Terasecond) : Terasecond
    return this - that.toDecimal();
  @:op( A*B) inline public function multiply(that : Decimal) : Terasecond
    return this * that;
  @:op( A/B) inline public function divide(that : Decimal) : Terasecond
    return this / that;
  @:op( A%B) inline public function modulo(that : Decimal) : Terasecond
    return this % that;

  inline public function equalsTo(that : Terasecond) : Bool
    return this == that.toDecimal();
  @:op(A==B)
  inline static public function equals(self : Terasecond, that : Terasecond) : Bool
    return self.toDecimal() == that.toDecimal();

  public function nearEqualsTo(that : Terasecond) : Bool 
    return Floats.nearEquals(this.toFloat(), that.toFloat());
  
  public static function nearEquals(self : Terasecond, that : Terasecond) : Bool 
    return Floats.nearEquals(self.toFloat(), that.toFloat());
  

  inline public function notEqualsTo(that : Terasecond) : Bool
    return this != that.toDecimal();
  @:op(A!=B)
  inline static public function notEquals(self : Terasecond, that : Terasecond) : Bool
    return self.toDecimal() != that.toDecimal();

  inline public function lessThan(that : Terasecond) : Bool
    return this < that.toDecimal();
  @:op( A<B)
  inline static public function less(self : Terasecond, that : Terasecond) : Bool
    return self.toDecimal() < that.toDecimal();

  inline public function lessEqualsTo(that : Terasecond) : Bool
    return this <= that.toDecimal();
  @:op(A<=B)
  inline static public function lessEquals(self : Terasecond, that : Terasecond) : Bool
    return self.toDecimal() <= that.toDecimal();

  inline public function greaterThan(that : Terasecond) : Bool
    return this > that.toDecimal();
  @:op( A>B)
  inline static public function greater(self : Terasecond, that : Terasecond) : Bool
    return self.toDecimal() >= that.toDecimal();

  inline public function greaterEqualsTo(that : Terasecond) : Bool
    return this >= that.toDecimal();
  @:op(A>=B)
  inline static public function greaterEquals(self : Terasecond, that : Terasecond) : Bool
    return self.toDecimal() >= that.toDecimal();
 inline public function toDecimal() : Decimal
    return this;

  inline public function toFloat() : Float
    return this.toFloat();



  static var dividerPlankTimeUnit : Decimal = "5.39e-44";
  @:to inline public function toPlankTimeUnit() : PlankTimeUnit
      return ((this * ofUnit) / dividerPlankTimeUnit).trim();
    
  static var dividerJiffyPhysics : Decimal = "3e-24";
  @:to inline public function toJiffyPhysics() : JiffyPhysics
      return ((this * ofUnit) / dividerJiffyPhysics).trim();
    
  static var dividerSvedberg : Decimal = "1e-13";
  @:to inline public function toSvedberg() : Svedberg
      return ((this * ofUnit) / dividerSvedberg).trim();
    
  static var dividerPicosecond : Decimal = "1e-12";
  @:to inline public function toPicosecond() : Picosecond
      return ((this * ofUnit) / dividerPicosecond).trim();
    
  static var dividerNanosecond : Decimal = "1e-9";
  @:to inline public function toNanosecond() : Nanosecond
      return ((this * ofUnit) / dividerNanosecond).trim();
    
  static var dividerShake : Decimal = "1e-8";
  @:to inline public function toShake() : Shake
      return ((this * ofUnit) / dividerShake).trim();
    
  static var dividerTick : Decimal = "1e-7";
  @:to inline public function toTick() : Tick
      return ((this * ofUnit) / dividerTick).trim();
    
  static var dividerMicrosecond : Decimal = "1e-6";
  @:to inline public function toMicrosecond() : Microsecond
      return ((this * ofUnit) / dividerMicrosecond).trim();
    
  static var dividerFourth : Decimal = "0.00027777777778";
  @:to inline public function toFourth() : Fourth
      return ((this * ofUnit) / dividerFourth).trim();
    
  static var dividerMillisecond : Decimal = "0.001";
  @:to inline public function toMillisecond() : Millisecond
      return ((this * ofUnit) / dividerMillisecond).trim();
    
  static var dividerThird : Decimal = "0.01666666666667";
  @:to inline public function toThird() : Third
      return ((this * ofUnit) / dividerThird).trim();
    
  static var dividerSecond : Decimal = "1";
  @:to inline public function toSecond() : Second
      return ((this * ofUnit) / dividerSecond).trim();
    
  static var dividerMinute : Decimal = "60";
  @:to inline public function toMinute() : Minute
      return ((this * ofUnit) / dividerMinute).trim();
    
  static var dividerKe : Decimal = "864";
  @:to inline public function toKe() : Ke
      return ((this * ofUnit) / dividerKe).trim();
    
  static var dividerKilosecond : Decimal = "1000";
  @:to inline public function toKilosecond() : Kilosecond
      return ((this * ofUnit) / dividerKilosecond).trim();
    
  static var dividerHour : Decimal = "3600";
  @:to inline public function toHour() : Hour
      return ((this * ofUnit) / dividerHour).trim();
    
  static var dividerDay : Decimal = "86400";
  @:to inline public function toDay() : Day
      return ((this * ofUnit) / dividerDay).trim();
    
  static var dividerWeek : Decimal = "604800";
  @:to inline public function toWeek() : Week
      return ((this * ofUnit) / dividerWeek).trim();
    
  static var dividerMegasecond : Decimal = "1000000";
  @:to inline public function toMegasecond() : Megasecond
      return ((this * ofUnit) / dividerMegasecond).trim();
    
  static var dividerFortnight : Decimal = "1209600";
  @:to inline public function toFortnight() : Fortnight
      return ((this * ofUnit) / dividerFortnight).trim();
    
  static var dividerSynodicMonth : Decimal = "2551442.976";
  @:to inline public function toSynodicMonth() : SynodicMonth
      return ((this * ofUnit) / dividerSynodicMonth).trim();
    
  static var dividerTropicalMonth : Decimal = "2360584.512";
  @:to inline public function toTropicalMonth() : TropicalMonth
      return ((this * ofUnit) / dividerTropicalMonth).trim();
    
  static var dividerJulianYear : Decimal = "31557600";
  @:to inline public function toJulianYear() : JulianYear
      return ((this * ofUnit) / dividerJulianYear).trim();
    
  static var dividerGigasecond : Decimal = "1000000000";
  @:to inline public function toGigasecond() : Gigasecond
      return ((this * ofUnit) / dividerGigasecond).trim();
    
  static var dividerTerasecond : Decimal = "1000000000000";
  @:to inline public function toTerasecond() : Terasecond
      return this;
    
  @:to inline public function toString() : String
    return "" + this + symbol;

  public static inline var symbol : String = "Ts";

  @:from static public function fromTime(time : thx.Time) : Terasecond
    return Tick.fromDecimal(thx.Decimal.fromInt64(time.ticks)).toTerasecond();

  @:to public function toTime() : thx.Time
    return new thx.Time(toTick().toDecimal().toInt64());
}
