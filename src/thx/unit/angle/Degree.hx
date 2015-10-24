package thx.unit.angle;


import thx.Floats;

abstract Degree(Float) {
  static var ofUnit : Float = 1.0/360.0; 
  public static var turn(default, null) : Degree = 360.0;

  @:from inline static public function fromFloat(value : Float) : Degree
    return new Degree(value);

  @:from inline static public function fromInt(value : Int) : Degree 
    return fromFloat(value);
  

  inline function new(value : Float)
    this = value;

  inline public function abs() : Degree
    return Math.abs(this);

  inline public function min(that : Degree) : Degree
    return Floats.min(this,that.toFloat());

  inline public function max(that : Degree) : Degree
    return Floats.max(this,that.toFloat());

  @:op( -A ) inline public function negate() : Degree
    return -this;
  @:op( A+B) inline public function add(that : Degree) : Degree
    return this + that.toFloat();
  @:op( A-B) inline public function subtract(that : Degree) : Degree
    return this - that.toFloat();
  @:op( A*B) inline public function multiply(that : Float) : Degree
    return this * that;
  @:op( A/B) inline public function divide(that : Float) : Degree
    return this / that;
  @:op( A%B) inline public function modulo(that : Float) : Degree
    return this % that;

  inline public function equalsTo(that : Degree) : Bool
    return this == that.toFloat();
  @:op(A==B)
  inline static public function equals(self : Degree, that : Degree) : Bool
    return self.toFloat() == that.toFloat();

  public function nearEqualsTo(that : Degree) : Bool 
    return Floats.nearEquals(this, that.toFloat());
  
  public static function nearEquals(self : Degree, that : Degree) : Bool 
    return Floats.nearEquals(self.toFloat(), that.toFloat());
  

  inline public function notEqualsTo(that : Degree) : Bool
    return this != that.toFloat();
  @:op(A!=B)
  inline static public function notEquals(self : Degree, that : Degree) : Bool
    return self.toFloat() != that.toFloat();

  inline public function lessThan(that : Degree) : Bool
    return this < that.toFloat();
  @:op( A<B)
  inline static public function less(self : Degree, that : Degree) : Bool
    return self.toFloat() < that.toFloat();

  inline public function lessEqualsTo(that : Degree) : Bool
    return this <= that.toFloat();
  @:op(A<=B)
  inline static public function lessEquals(self : Degree, that : Degree) : Bool
    return self.toFloat() <= that.toFloat();

  inline public function greaterThan(that : Degree) : Bool
    return this > that.toFloat();
  @:op( A>B)
  inline static public function greater(self : Degree, that : Degree) : Bool
    return self.toFloat() >= that.toFloat();

  inline public function greaterEqualsTo(that : Degree) : Bool
    return this >= that.toFloat();
  @:op(A>=B)
  inline static public function greaterEquals(self : Degree, that : Degree) : Bool
    return self.toFloat() >= that.toFloat();

  @:to
 inline public function toFloat() : Float
    return this;


  static var dividerBinaryDegree : Float = 1.0/256.0;
  @:to inline public function toBinaryDegree() : BinaryDegree
      return (this * ofUnit) / dividerBinaryDegree;
    
  static var dividerDegree : Float = 1.0/360.0;
  @:to inline public function toDegree() : Degree
      return this;
    
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

  public static inline var symbol : String = "°";

  inline static public function pointToDegree(x : Float, y : Float) : Degree
    return (Math.atan2(y, x) : Radian);


  inline public function cos() : Float
    return toRadian().cos();

  inline public function sin() : Float
    return toRadian().sin();


  public function normalize() : Degree {
    var n = this % (turn : Float);
    return n < 0 ? (turn : Float) + n : n;
  }

  public function normalizeDirection() : Degree {
    var normalized = normalize();
    return normalized > (turn : Float) / 2 ? normalized - (turn : Float) : normalized;
  }
}
