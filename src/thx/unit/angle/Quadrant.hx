package thx.unit.angle;

// TODO parse string

abstract Quadrant(Float) {
  @:from inline static public function floatToQuadrant(value : Float) : Quadrant
    return new Quadrant(value);

  function new(value : Float)
    this = value;


  inline public function cos()
    return toRadians().cos();

  inline public function sin()
    return toRadians().sin();


  @:op( -A ) inline public function negate() : Quadrant
    return -this;
  @:op( A+B) inline public function add(other : Quadrant) : Quadrant
    return this + other.toFloat();
  @:op( A-B) inline public function subtract(other : Quadrant) : Quadrant
    return this - other.toFloat();
  @:op( A*B) inline public function multiply(other : Float) : Quadrant
    return this * other;
  @:op( A/B) inline public function divide(other : Float) : Quadrant
    return this / other;
  @:op( A%B) inline public function modulo(other : Float) : Quadrant
    return this % other;
  @:op(A==B) inline public function equal(other : Quadrant) : Bool
    return this == other;
  @:op(A!=B) inline public function notEqual(other : Quadrant) : Bool
    return this != other;
  @:op( A<B) inline public function less(other : Quadrant) : Bool
    return this < other.toFloat();
  @:op(A<=B) inline public function lessEqual(other : Quadrant) : Bool
    return this <= other.toFloat();
  @:op( A>B) inline public function more(other : Quadrant) : Bool
    return this > other.toFloat();
  @:op(A>=B) inline public function moreEqual(other : Quadrant) : Bool
    return this >= other.toFloat();

  inline public function toFloat() : Float
    return this;

  @:to inline public function toBinaryDegree() : BinaryDegree
    return this * 0.015625;
  @:to inline public function toDegree() : Degree
    return this * 0.0111111111111111;
  @:to inline public function toGrad() : Grad
    return this * 0.01;
  @:to inline public function toHourAngle() : HourAngle
    return this * 0.166666666666667;
  @:to inline public function toMinuteOfArc() : MinuteOfArc
    return this * 0.000185185185185185;
  @:to inline public function toPoint() : Point
    return this * 0.125;
  @:to inline public function toRadian() : Radian
    return this * 0.636619772367581;
  @:to inline public function toRevolution() : Revolution
    return this * 4;
  @:to inline public function toSecondOfArc() : SecondOfArc
    return this * 3.08641975308642e-06;
  @:to inline public function toSextant() : Sextant
    return this * 0.666666666666667;
  @:to inline public function toTurn() : Turn
    return this * 4;

  @:to inline public function toString() : String
    return this + symbol;

  public static inline var symbol : String = "quad.";
}