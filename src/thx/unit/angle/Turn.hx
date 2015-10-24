package thx.unit.angle;


import thx.Floats;

abstract Turn(Float) {
  static var ofUnit : Float = 1.0/1.0; 
  public static var turn(default, null) : Turn = 1.0;

  @:from inline static public function fromFloat(value : Float) : Turn
    return new Turn(value);

  @:from inline static public function fromInt(value : Int) : Turn 
    return fromFloat(value);
  

  inline function new(value : Float)
    this = value;

  inline public function abs() : Turn
    return Math.abs(this);

  inline public function min(that : Turn) : Turn
    return Floats.min(this,that.toFloat());

  inline public function max(that : Turn) : Turn
    return Floats.max(this,that.toFloat());

  @:op( -A ) inline public function negate() : Turn
    return -this;
  @:op( A+B) inline public function add(that : Turn) : Turn
    return this + that.toFloat();
  @:op( A-B) inline public function subtract(that : Turn) : Turn
    return this - that.toFloat();
  @:op( A*B) inline public function multiply(that : Float) : Turn
    return this * that;
  @:op( A/B) inline public function divide(that : Float) : Turn
    return this / that;
  @:op( A%B) inline public function modulo(that : Float) : Turn
    return this % that;

  inline public function equalsTo(that : Turn) : Bool
    return this == that.toFloat();
  @:op(A==B)
  inline static public function equals(self : Turn, that : Turn) : Bool
    return self.toFloat() == that.toFloat();

  public function nearEqualsTo(that : Turn) : Bool 
    return Floats.nearEquals(this, that.toFloat());
  
  public static function nearEquals(self : Turn, that : Turn) : Bool 
    return Floats.nearEquals(self.toFloat(), that.toFloat());
  

  inline public function notEqualsTo(that : Turn) : Bool
    return this != that.toFloat();
  @:op(A!=B)
  inline static public function notEquals(self : Turn, that : Turn) : Bool
    return self.toFloat() != that.toFloat();

  inline public function lessThan(that : Turn) : Bool
    return this < that.toFloat();
  @:op( A<B)
  inline static public function less(self : Turn, that : Turn) : Bool
    return self.toFloat() < that.toFloat();

  inline public function lessEqualsTo(that : Turn) : Bool
    return this <= that.toFloat();
  @:op(A<=B)
  inline static public function lessEquals(self : Turn, that : Turn) : Bool
    return self.toFloat() <= that.toFloat();

  inline public function greaterThan(that : Turn) : Bool
    return this > that.toFloat();
  @:op( A>B)
  inline static public function greater(self : Turn, that : Turn) : Bool
    return self.toFloat() >= that.toFloat();

  inline public function greaterEqualsTo(that : Turn) : Bool
    return this >= that.toFloat();
  @:op(A>=B)
  inline static public function greaterEquals(self : Turn, that : Turn) : Bool
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
      return (this * ofUnit) / dividerRevolution;
    
  static var dividerSecondOfArc : Float = 1.0/1296000.0;
  @:to inline public function toSecondOfArc() : SecondOfArc
      return (this * ofUnit) / dividerSecondOfArc;
    
  static var dividerSextant : Float = 1.0/6.0;
  @:to inline public function toSextant() : Sextant
      return (this * ofUnit) / dividerSextant;
    
  static var dividerTurn : Float = 1.0/1.0;
  @:to inline public function toTurn() : Turn
      return this;
    
  @:to inline public function toString() : String
    return "" + this + symbol;

  public static inline var symbol : String = "τ";

  inline static public function pointToTurn(x : Float, y : Float) : Turn
    return (Math.atan2(y, x) : Radian);


  inline public function cos() : Float
    return toRadian().cos();

  inline public function sin() : Float
    return toRadian().sin();


  public function normalize() : Turn {
    var n = this % (turn : Float);
    return n < 0 ? (turn : Float) + n : n;
  }

  public function normalizeDirection() : Turn {
    var normalized = normalize();
    return normalized > (turn : Float) / 2 ? normalized - (turn : Float) : normalized;
  }
}
