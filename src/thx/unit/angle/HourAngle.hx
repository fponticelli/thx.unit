package thx.unit.angle;

import thx.Floats;

// TODO parse string

abstract HourAngle(Float) {
  public static var turn(default, null) : HourAngle = 24;

  inline static public function pointToHourAngle(x : Float, y : Float) : HourAngle
    return (Math.atan2(y, x) : Radian);

  @:from inline static public function floatToHourAngle(value : Float) : HourAngle
    return new HourAngle(value);

  function new(value : Float)
    this = value;


  inline public function cos()
    return toRadian().cos();

  inline public function sin()
    return toRadian().sin();


  inline public function abs() : HourAngle
    return Math.abs(this);

  inline public function min(that : HourAngle) : HourAngle
    return Math.min(this, that.toFloat());

  inline public function max(that : HourAngle) : HourAngle
    return Math.max(this, that.toFloat());

  public function normalize() : HourAngle {
    var a = this % turn.toFloat();
    return a < 0 ? turn + a : a;
  }

  public function normalizeDirection() : HourAngle {
    var a = normalize();
    return a > 180 ? a - turn : a;
  }

  @:op( -A ) inline public function negate() : HourAngle
    return -this;
  @:op( A+B) inline public function add(that : HourAngle) : HourAngle
    return this + that.toFloat();
  @:op( A-B) inline public function subtract(that : HourAngle) : HourAngle
    return this - that.toFloat();
  @:op( A*B) inline public function multiply(that : Float) : HourAngle
    return this * that;
  @:op( A/B) inline public function divide(that : Float) : HourAngle
    return this / that;
  @:op( A%B) inline public function modulo(that : Float) : HourAngle
    return this % that;
  @:op(A==B) inline public function equal(that : HourAngle) : Bool
    return this == that;
  public function nearEquals(that : HourAngle) : Bool
    return Floats.nearEquals(this, that.toFloat());
  @:op(A!=B) inline public function notEqual(that : HourAngle) : Bool
    return this != that;
  @:op( A<B) inline public function less(that : HourAngle) : Bool
    return this < that.toFloat();
  @:op(A<=B) inline public function lessEqual(that : HourAngle) : Bool
    return this <= that.toFloat();
  @:op( A>B) inline public function more(that : HourAngle) : Bool
    return this > that.toFloat();
  @:op(A>=B) inline public function moreEqual(that : HourAngle) : Bool
    return this >= that.toFloat();

  @:to inline public function toFloat() : Float
    return this;

  @:to inline public function toBinaryDegree() : BinaryDegree
    return this * 10.6666666666667;
  @:to inline public function toDegree() : Degree
    return this * 15;
  @:to inline public function toGrad() : Grad
    return this * 16.6666666666667;
  @:to inline public function toHourAngle() : HourAngle
    return this * 1;
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
