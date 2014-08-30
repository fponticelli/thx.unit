package thx.unit.angle;

// TODO parse string

abstract BinaryDegree(Float) {
  @:from inline static public function floatToBinaryDegree(value : Float) : BinaryDegree
    return new BinaryDegree(value);

  function new(value : Float)
    this = value;


  inline public function cos()
    return toRadians().cos();

  inline public function sin()
    return toRadians().sin();


  @:op( -A ) inline public function negate() : BinaryDegree
    return -this;
  @:op( A+B) inline public function add(other : BinaryDegree) : BinaryDegree
    return this + other.toFloat();
  @:op( A-B) inline public function subtract(other : BinaryDegree) : BinaryDegree
    return this - other.toFloat();
  @:op( A*B) inline public function multiply(other : Float) : BinaryDegree
    return this * other;
  @:op( A/B) inline public function divide(other : Float) : BinaryDegree
    return this / other;
  @:op( A%B) inline public function modulo(other : Float) : BinaryDegree
    return this % other;
  @:op(A==B) inline public function equal(other : BinaryDegree) : Bool
    return this == other;
  @:op(A!=B) inline public function notEqual(other : BinaryDegree) : Bool
    return this != other;
  @:op( A<B) inline public function less(other : BinaryDegree) : Bool
    return this < other.toFloat();
  @:op(A<=B) inline public function lessEqual(other : BinaryDegree) : Bool
    return this <= other.toFloat();
  @:op( A>B) inline public function more(other : BinaryDegree) : Bool
    return this > other.toFloat();
  @:op(A>=B) inline public function moreEqual(other : BinaryDegree) : Bool
    return this >= other.toFloat();

  inline public function toFloat() : Float
    return this;

  @:to inline public function toDegree() : Degree
    return this * 0.711111111111111;
  @:to inline public function toGrad() : Grad
    return this * 0.64;
  @:to inline public function toHourAngle() : HourAngle
    return this * 10.6666666666667;
  @:to inline public function toMinuteOfArc() : MinuteOfArc
    return this * 0.0118518518518519;
  @:to inline public function toPoint() : Point
    return this * 8;
  @:to inline public function toQuadrant() : Quadrant
    return this * 64;
  @:to inline public function toRadian() : Radian
    return this * 40.7436654315252;
  @:to inline public function toRevolution() : Revolution
    return this * 256;
  @:to inline public function toSecondOfArc() : SecondOfArc
    return this * 0.000197530864197531;
  @:to inline public function toSextant() : Sextant
    return this * 42.6666666666667;
  @:to inline public function toTurn() : Turn
    return this * 256;

  @:to inline public function toString() : String
    return this + symbol;

  public static inline var symbol : String = "binary degree";
}