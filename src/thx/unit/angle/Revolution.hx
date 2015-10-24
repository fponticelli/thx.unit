package thx.unit.angle;


import thx.Floats;

abstract Revolution(Float) {
  static var ofUnit : Float = 1.0/1.0; 
  public static var turn(default, null) : Revolution = 1.0;

  @:from inline static public function fromFloat(value : Float) : Revolution
    return new Revolution(value);

  @:from inline static public function fromInt(value : Int) : Revolution 
    return fromFloat(value);
  

  inline function new(value : Float)
    this = value;

  inline public function abs() : Revolution
    return Math.abs(this);

  inline public function min(that : Revolution) : Revolution
    return Floats.min(this,that.toFloat());

  inline public function max(that : Revolution) : Revolution
    return Floats.max(this,that.toFloat());

  @:op( -A ) inline public function negate() : Revolution
    return -this;
  @:op( A+B) inline public function add(that : Revolution) : Revolution
    return this + that.toFloat();
  @:op( A-B) inline public function subtract(that : Revolution) : Revolution
    return this - that.toFloat();
  @:op( A*B) inline public function multiply(that : Float) : Revolution
    return this * that;
  @:op( A/B) inline public function divide(that : Float) : Revolution
    return this / that;
  @:op( A%B) inline public function modulo(that : Float) : Revolution
    return this % that;

  inline public function equalsTo(that : Revolution) : Bool
    return this == that.toFloat();
  @:op(A==B)
  inline static public function equals(self : Revolution, that : Revolution) : Bool
    return self.toFloat() == that.toFloat();

  public function nearEqualsTo(that : Revolution) : Bool 
    return Floats.nearEquals(this, that.toFloat());
  
  public static function nearEquals(self : Revolution, that : Revolution) : Bool 
    return Floats.nearEquals(self.toFloat(), that.toFloat());
  

  inline public function notEqualsTo(that : Revolution) : Bool
    return this != that.toFloat();
  @:op(A!=B)
  inline static public function notEquals(self : Revolution, that : Revolution) : Bool
    return self.toFloat() != that.toFloat();

  inline public function lessThan(that : Revolution) : Bool
    return this < that.toFloat();
  @:op( A<B)
  inline static public function less(self : Revolution, that : Revolution) : Bool
    return self.toFloat() < that.toFloat();

  inline public function lessEqualsTo(that : Revolution) : Bool
    return this <= that.toFloat();
  @:op(A<=B)
  inline static public function lessEquals(self : Revolution, that : Revolution) : Bool
    return self.toFloat() <= that.toFloat();

  inline public function greaterThan(that : Revolution) : Bool
    return this > that.toFloat();
  @:op( A>B)
  inline static public function greater(self : Revolution, that : Revolution) : Bool
    return self.toFloat() >= that.toFloat();

  inline public function greaterEqualsTo(that : Revolution) : Bool
    return this >= that.toFloat();
  @:op(A>=B)
  inline static public function greaterEquals(self : Revolution, that : Revolution) : Bool
    return self.toFloat() >= that.toFloat();

  @:to
 inline public function toFloat() : Float
    return this;


  static var dividerBinaryDegree : Float = 1.0/256.0;
  @:to inline public function toBinaryDegree() : BinaryDegree
      return (this * ofUnit) / dividerBinaryDegree;
    
  static var dividerDegree : Float = 1.0/360.0;
  @:to inline public function toDegree() : Degree
      return (this * ofUnit) / dividerDegree;
    
  static var dividerGrad : Float = 1.0/400.0;
  @:to inline public function toGrad() : Grad
      return (this * ofUnit) / dividerGrad;
    
  static var dividerHourAngle : Float = 1.0/24.0;
  @:to inline public function toHourAngle() : HourAngle
      return (this * ofUnit) / dividerHourAngle;
    
  static var dividerMinuteOfArc : Float = 1.0/21600.0;
  @:to inline public function toMinuteOfArc() : MinuteOfArc
      return (this * ofUnit) / dividerMinuteOfArc;
    
  static var dividerPoint : Float = 1.0/32.0;
  @:to inline public function toPoint() : Point
      return (this * ofUnit) / dividerPoint;
    
  static var dividerQuadrant : Float = 1.0/4.0;
  @:to inline public function toQuadrant() : Quadrant
      return (this * ofUnit) / dividerQuadrant;
    
  static var dividerRadian : Float = 1.0/6.283185307179586;
  @:to inline public function toRadian() : Radian
      return (this * ofUnit) / dividerRadian;
    
  static var dividerRevolution : Float = 1.0/1.0;
  @:to inline public function toRevolution() : Revolution
      return this;
    
  static var dividerSecondOfArc : Float = 1.0/1296000.0;
  @:to inline public function toSecondOfArc() : SecondOfArc
      return (this * ofUnit) / dividerSecondOfArc;
    
  static var dividerSextant : Float = 1.0/6.0;
  @:to inline public function toSextant() : Sextant
      return (this * ofUnit) / dividerSextant;
    
  static var dividerTurn : Float = 1.0/1.0;
  @:to inline public function toTurn() : Turn
      return (this * ofUnit) / dividerTurn;
    
  @:to inline public function toString() : String
    return "" + this + symbol;

  public static inline var symbol : String = "r";

  inline static public function pointToRevolution(x : Float, y : Float) : Revolution
    return (Math.atan2(y, x) : Radian);


  inline public function cos() : Float
    return toRadian().cos();

  inline public function sin() : Float
    return toRadian().sin();


  public function normalize() : Revolution {
    var n = this % (turn : Float);
    return n < 0 ? (turn : Float) + n : n;
  }

  public function normalizeDirection() : Revolution {
    var normalized = normalize();
    return normalized > (turn : Float) / 2 ? normalized - (turn : Float) : normalized;
  }
}
