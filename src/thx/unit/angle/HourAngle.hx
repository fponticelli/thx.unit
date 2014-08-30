package thx.unit.angle;

// TODO parse string

abstract HourAngle(Float) {
  @:from inline static public function floatToHourAngle(value : Float) : HourAngle
    return new HourAngle(value);

  function new(value : Float)
    this = value;


  inline public function cos()
    return toRadians().cos();

  inline public function sin()
    return toRadians().sin();


  @:op( -A ) inline public function negate() : HourAngle
    return -this;
  @:op( A+B) inline public function add(other : HourAngle) : HourAngle
    return this + other.toFloat();
  @:op( A-B) inline public function subtract(other : HourAngle) : HourAngle
    return this - other.toFloat();
  @:op( A*B) inline public function multiply(other : Float) : HourAngle
    return this * other;
  @:op( A/B) inline public function divide(other : Float) : HourAngle
    return this / other;
  @:op( A%B) inline public function modulo(other : Float) : HourAngle
    return this % other;
  @:op(A==B) inline public function equal(other : HourAngle) : Bool
    return this == other;
  @:op(A!=B) inline public function notEqual(other : HourAngle) : Bool
    return this != other;
  @:op( A<B) inline public function less(other : HourAngle) : Bool
    return this < other.toFloat();
  @:op(A<=B) inline public function lessEqual(other : HourAngle) : Bool
    return this <= other.toFloat();
  @:op( A>B) inline public function more(other : HourAngle) : Bool
    return this > other.toFloat();
  @:op(A>=B) inline public function moreEqual(other : HourAngle) : Bool
    return this >= other.toFloat();

  inline public function toFloat() : Float
    return this;

  @:to inline public function toBinaryDegree() : BinaryDegree
    return this * 0.09375;
  @:to inline public function toDegree() : Degree
    return this * 0.0666666666666667;
  @:to inline public function toGrad() : Grad
    return this * 0.06;
  @:to inline public function toMinuteOfArc() : MinuteOfArc
    return this * 0.00111111111111111;
  @:to inline public function toPoint() : Point
    return this * 0.75;
  @:to inline public function toQuadrant() : Quadrant
    return this * 6;
  @:to inline public function toRadian() : Radian
    return this * 3.81971863420549;
  @:to inline public function toRevolution() : Revolution
    return this * 24;
  @:to inline public function toSecondOfArc() : SecondOfArc
    return this * 1.85185185185185e-05;
  @:to inline public function toSextant() : Sextant
    return this * 4;
  @:to inline public function toTurn() : Turn
    return this * 24;

  @:to inline public function toString() : String
    return this + symbol;

  public static inline var symbol : String = "hour";
}