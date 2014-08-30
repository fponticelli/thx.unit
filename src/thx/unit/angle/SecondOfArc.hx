package thx.unit.angle;

// TODO parse string

abstract SecondOfArc(Float) {
  @:from inline static public function floatToSecondOfArc(value : Float) : SecondOfArc
    return new SecondOfArc(value);

  function new(value : Float)
    this = value;


  inline public function cos()
    return toRadians().cos();

  inline public function sin()
    return toRadians().sin();


  @:op( -A ) inline public function negate() : SecondOfArc
    return -this;
  @:op( A+B) inline public function add(other : SecondOfArc) : SecondOfArc
    return this + other.toFloat();
  @:op( A-B) inline public function subtract(other : SecondOfArc) : SecondOfArc
    return this - other.toFloat();
  @:op( A*B) inline public function multiply(other : Float) : SecondOfArc
    return this * other;
  @:op( A/B) inline public function divide(other : Float) : SecondOfArc
    return this / other;
  @:op( A%B) inline public function modulo(other : Float) : SecondOfArc
    return this % other;
  @:op(A==B) inline public function equal(other : SecondOfArc) : Bool
    return this == other;
  @:op(A!=B) inline public function notEqual(other : SecondOfArc) : Bool
    return this != other;
  @:op( A<B) inline public function less(other : SecondOfArc) : Bool
    return this < other.toFloat();
  @:op(A<=B) inline public function lessEqual(other : SecondOfArc) : Bool
    return this <= other.toFloat();
  @:op( A>B) inline public function more(other : SecondOfArc) : Bool
    return this > other.toFloat();
  @:op(A>=B) inline public function moreEqual(other : SecondOfArc) : Bool
    return this >= other.toFloat();

  inline public function toFloat() : Float
    return this;

  @:to inline public function toBinaryDegree() : BinaryDegree
    return this * 5062.5;
  @:to inline public function toDegree() : Degree
    return this * 3600;
  @:to inline public function toGrad() : Grad
    return this * 3240;
  @:to inline public function toHourAngle() : HourAngle
    return this * 54000;
  @:to inline public function toMinuteOfArc() : MinuteOfArc
    return this * 60;
  @:to inline public function toPoint() : Point
    return this * 40500;
  @:to inline public function toQuadrant() : Quadrant
    return this * 324000;
  @:to inline public function toRadian() : Radian
    return this * 206264.806247096;
  @:to inline public function toRevolution() : Revolution
    return this * 1296000;
  @:to inline public function toSextant() : Sextant
    return this * 216000;
  @:to inline public function toTurn() : Turn
    return this * 1296000;

  @:to inline public function toString() : String
    return this + symbol;

  public static inline var symbol : String = "″";
}