package thx.unit.angle;

// TODO parse string

abstract Point(Float) {
  @:from inline static public function floatToPoint(value : Float) : Point
    return new Point(value);

  function new(value : Float)
    this = value;


  inline public function cos()
    return toRadians().cos();

  inline public function sin()
    return toRadians().sin();


  @:op( -A ) inline public function negate() : Point
    return -this;
  @:op( A+B) inline public function add(other : Point) : Point
    return this + other.toFloat();
  @:op( A-B) inline public function subtract(other : Point) : Point
    return this - other.toFloat();
  @:op( A*B) inline public function multiply(other : Float) : Point
    return this * other;
  @:op( A/B) inline public function divide(other : Float) : Point
    return this / other;
  @:op( A%B) inline public function modulo(other : Float) : Point
    return this % other;
  @:op(A==B) inline public function equal(other : Point) : Bool
    return this == other;
  @:op(A!=B) inline public function notEqual(other : Point) : Bool
    return this != other;
  @:op( A<B) inline public function less(other : Point) : Bool
    return this < other.toFloat();
  @:op(A<=B) inline public function lessEqual(other : Point) : Bool
    return this <= other.toFloat();
  @:op( A>B) inline public function more(other : Point) : Bool
    return this > other.toFloat();
  @:op(A>=B) inline public function moreEqual(other : Point) : Bool
    return this >= other.toFloat();

  inline public function toFloat() : Float
    return this;

  @:to inline public function toBinaryDegree() : BinaryDegree
    return this * 0.125;
  @:to inline public function toDegree() : Degree
    return this * 0.0888888888888889;
  @:to inline public function toGrad() : Grad
    return this * 0.08;
  @:to inline public function toHourAngle() : HourAngle
    return this * 1.33333333333333;
  @:to inline public function toMinuteOfArc() : MinuteOfArc
    return this * 0.00148148148148148;
  @:to inline public function toQuadrant() : Quadrant
    return this * 8;
  @:to inline public function toRadian() : Radian
    return this * 5.09295817894065;
  @:to inline public function toRevolution() : Revolution
    return this * 32;
  @:to inline public function toSecondOfArc() : SecondOfArc
    return this * 2.46913580246914e-05;
  @:to inline public function toSextant() : Sextant
    return this * 5.33333333333333;
  @:to inline public function toTurn() : Turn
    return this * 32;

  @:to inline public function toString() : String
    return this + symbol;

  public static inline var symbol : String = "point";
}