package thx.unit.angle;

// TODO parse string

abstract Degree(Float) {
  @:from inline static public function floatToDegree(value : Float) : Degree
    return new Degree(value);

  function new(value : Float)
    this = value;


  inline public function cos()
    return toRadians().cos();

  inline public function sin()
    return toRadians().sin();


  @:op( -A ) inline public function negate() : Degree
    return -this;
  @:op( A+B) inline public function add(other : Degree) : Degree
    return this + other.toFloat();
  @:op( A-B) inline public function subtract(other : Degree) : Degree
    return this - other.toFloat();
  @:op( A*B) inline public function multiply(other : Float) : Degree
    return this * other;
  @:op( A/B) inline public function divide(other : Float) : Degree
    return this / other;
  @:op( A%B) inline public function modulo(other : Float) : Degree
    return this % other;
  @:op(A==B) inline public function equal(other : Degree) : Bool
    return this == other;
  @:op(A!=B) inline public function notEqual(other : Degree) : Bool
    return this != other;
  @:op( A<B) inline public function less(other : Degree) : Bool
    return this < other.toFloat();
  @:op(A<=B) inline public function lessEqual(other : Degree) : Bool
    return this <= other.toFloat();
  @:op( A>B) inline public function more(other : Degree) : Bool
    return this > other.toFloat();
  @:op(A>=B) inline public function moreEqual(other : Degree) : Bool
    return this >= other.toFloat();

  inline public function toFloat() : Float
    return this;

  @:to inline public function toBinaryDegree() : BinaryDegree
    return this * 1.40625;
  @:to inline public function toGrad() : Grad
    return this * 0.9;
  @:to inline public function toHourAngle() : HourAngle
    return this * 15;
  @:to inline public function toMinuteOfArc() : MinuteOfArc
    return this * 0.0166666666666667;
  @:to inline public function toPoint() : Point
    return this * 11.25;
  @:to inline public function toQuadrant() : Quadrant
    return this * 90;
  @:to inline public function toRadian() : Radian
    return this * 57.2957795130823;
  @:to inline public function toRevolution() : Revolution
    return this * 360;
  @:to inline public function toSecondOfArc() : SecondOfArc
    return this * 0.000277777777777778;
  @:to inline public function toSextant() : Sextant
    return this * 60;
  @:to inline public function toTurn() : Turn
    return this * 360;

  @:to inline public function toString() : String
    return this + symbol;

  public static inline var symbol : String = "°";
}