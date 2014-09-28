package thx.unit.angle;

import thx.core.Floats;

// TODO parse string

abstract HourAngle(Float) {
  @:from inline static public function floatToHourAngle(value : Float) : HourAngle
    return new HourAngle(value);

  function new(value : Float)
    this = value;


  inline public function cos()
    return toRadian().cos();

  inline public function sin()
    return toRadian().sin();


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
  public function nearEquals(other : HourAngle) : Bool
    return Floats.nearEquals(this, other.toFloat());
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

  @:to inline public function toFloat() : Float
    return this;

  @:to inline public function toBinaryDegree() : BinaryDegree
    return this * 10.6666666666667;
  @:to inline public function toDegree() : Degree
    return this * 15;
  @:to inline public function toGrad() : Grad
    return this * 16.6666666666667;
  @:to inline public function toMinuteOfArc() : MinuteOfArc
    return this * 900;
  @:to inline public function toPoint() : Point
    return this * 1.33333333333333;
  @:to inline public function toQuadrant() : Quadrant
    return this * 0.166666666666667;
  @:to inline public function toRadian() : Radian
    return this * 0.261799387799149;
  @:to inline public function toRevolution() : Revolution
    return this * 0.0416666666666667;
  @:to inline public function toSecondOfArc() : SecondOfArc
    return this * 54000;
  @:to inline public function toSextant() : Sextant
    return this * 0.25;
  @:to inline public function toTurn() : Turn
    return this * 0.0416666666666667;

  @:to inline public function toString() : String
    return this + symbol;

  public static inline var symbol : String = "hour";
}