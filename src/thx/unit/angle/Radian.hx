package thx.unit.angle;


import thx.Floats;

abstract Radian(Float) {
  static var ofUnit : Float = 1.0/6.283185307179586; 
  public static var turn(default, null) : Radian = 6.283185307179586;

  @:from inline static public function fromFloat(value : Float) : Radian
    return new Radian(value);

  @:from inline static public function fromInt(value : Int) : Radian 
    return fromFloat(value);
  

  inline function new(value : Float)
    this = value;

  inline public function abs() : Radian
    return Math.abs(this);

  inline public function min(that : Radian) : Radian
    return Floats.min(this,that.toFloat());

  inline public function max(that : Radian) : Radian
    return Floats.max(this,that.toFloat());

  @:op( -A ) inline public function negate() : Radian
    return -this;
  @:op( A+B) inline public function add(that : Radian) : Radian
    return this + that.toFloat();
  @:op( A-B) inline public function subtract(that : Radian) : Radian
    return this - that.toFloat();
  @:op( A*B) inline public function multiply(that : Float) : Radian
    return this * that;
  @:op( A/B) inline public function divide(that : Float) : Radian
    return this / that;
  @:op( A%B) inline public function modulo(that : Float) : Radian
    return this % that;

  inline public function equalsTo(that : Radian) : Bool
    return this == that.toFloat();
  @:op(A==B)
  inline static public function equals(self : Radian, that : Radian) : Bool
    return self.toFloat() == that.toFloat();

  public function nearEqualsTo(that : Radian) : Bool 
    return Floats.nearEquals(this, that.toFloat());
  
  public static function nearEquals(self : Radian, that : Radian) : Bool 
    return Floats.nearEquals(self.toFloat(), that.toFloat());
  

  inline public function notEqualsTo(that : Radian) : Bool
    return this != that.toFloat();
  @:op(A!=B)
  inline static public function notEquals(self : Radian, that : Radian) : Bool
    return self.toFloat() != that.toFloat();

  inline public function lessThan(that : Radian) : Bool
    return this < that.toFloat();
  @:op( A<B)
  inline static public function less(self : Radian, that : Radian) : Bool
    return self.toFloat() < that.toFloat();

  inline public function lessEqualsTo(that : Radian) : Bool
    return this <= that.toFloat();
  @:op(A<=B)
  inline static public function lessEquals(self : Radian, that : Radian) : Bool
    return self.toFloat() <= that.toFloat();

  inline public function greaterThan(that : Radian) : Bool
    return this > that.toFloat();
  @:op( A>B)
  inline static public function greater(self : Radian, that : Radian) : Bool
    return self.toFloat() >= that.toFloat();

  inline public function greaterEqualsTo(that : Radian) : Bool
    return this >= that.toFloat();
  @:op(A>=B)
  inline static public function greaterEquals(self : Radian, that : Radian) : Bool
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
      return this;
    
  static var dividerRevolution : Float = 1.0/1.0;
  @:to inline public function toRevolution() : Revolution
      return (this * ofUnit) / dividerRevolution;
    
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

  public static inline var symbol : String = "rad";

  inline static public function pointToRadian(x : Float, y : Float) : Radian
    return (Math.atan2(y, x) : Radian);


  inline public function cos() : Float
    return Math.cos(this);

  inline public function sin() : Float
    return Math.sin(this);


  public function normalize() : Radian {
    var n = this % (turn : Float);
    return n < 0 ? (turn : Float) + n : n;
  }

  public function normalizeDirection() : Radian {
    var normalized = normalize();
    return normalized > (turn : Float) / 2 ? normalized - (turn : Float) : normalized;
  }
}
