package thx.unit.angle;


import thx.Floats;

abstract Quadrant(Float) {
  static var ofUnit : Float = 1.0/4.0; 
  public static var turn(default, null) : Quadrant = 4.0;

  @:from inline static public function fromFloat(value : Float) : Quadrant
    return new Quadrant(value);

  @:from inline static public function fromInt(value : Int) : Quadrant 
    return fromFloat(value);
  

  inline function new(value : Float)
    this = value;

  inline public function abs() : Quadrant
    return Math.abs(this);

  inline public function min(that : Quadrant) : Quadrant
    return Floats.min(this,that.toFloat());

  inline public function max(that : Quadrant) : Quadrant
    return Floats.max(this,that.toFloat());

  @:op( -A ) inline public function negate() : Quadrant
    return -this;
  @:op( A+B) inline public function add(that : Quadrant) : Quadrant
    return this + that.toFloat();
  @:op( A-B) inline public function subtract(that : Quadrant) : Quadrant
    return this - that.toFloat();
  @:op( A*B) inline public function multiply(that : Float) : Quadrant
    return this * that;
  @:op( A/B) inline public function divide(that : Float) : Quadrant
    return this / that;
  @:op( A%B) inline public function modulo(that : Float) : Quadrant
    return this % that;

  inline public function equalsTo(that : Quadrant) : Bool
    return this == that.toFloat();
  @:op(A==B)
  inline static public function equals(self : Quadrant, that : Quadrant) : Bool
    return self.toFloat() == that.toFloat();

  public function nearEqualsTo(that : Quadrant) : Bool 
    return Floats.nearEquals(this, that.toFloat());
  
  public static function nearEquals(self : Quadrant, that : Quadrant) : Bool 
    return Floats.nearEquals(self.toFloat(), that.toFloat());
  

  inline public function notEqualsTo(that : Quadrant) : Bool
    return this != that.toFloat();
  @:op(A!=B)
  inline static public function notEquals(self : Quadrant, that : Quadrant) : Bool
    return self.toFloat() != that.toFloat();

  inline public function lessThan(that : Quadrant) : Bool
    return this < that.toFloat();
  @:op( A<B)
  inline static public function less(self : Quadrant, that : Quadrant) : Bool
    return self.toFloat() < that.toFloat();

  inline public function lessEqualsTo(that : Quadrant) : Bool
    return this <= that.toFloat();
  @:op(A<=B)
  inline static public function lessEquals(self : Quadrant, that : Quadrant) : Bool
    return self.toFloat() <= that.toFloat();

  inline public function greaterThan(that : Quadrant) : Bool
    return this > that.toFloat();
  @:op( A>B)
  inline static public function greater(self : Quadrant, that : Quadrant) : Bool
    return self.toFloat() >= that.toFloat();

  inline public function greaterEqualsTo(that : Quadrant) : Bool
    return this >= that.toFloat();
  @:op(A>=B)
  inline static public function greaterEquals(self : Quadrant, that : Quadrant) : Bool
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
      return this;
    
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

  public static inline var symbol : String = "quad.";

  inline static public function pointToQuadrant(x : Float, y : Float) : Quadrant
    return (Math.atan2(y, x) : Radian);


  inline public function cos() : Float
    return toRadian().cos();

  inline public function sin() : Float
    return toRadian().sin();


  public function normalize() : Quadrant {
    var n = this % (turn : Float);
    return n < 0 ? (turn : Float) + n : n;
  }

  public function normalizeDirection() : Quadrant {
    var normalized = normalize();
    return normalized > (turn : Float) / 2 ? normalized - (turn : Float) : normalized;
  }
}
