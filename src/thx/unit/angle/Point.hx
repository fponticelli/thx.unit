package thx.unit.angle;

import thx.core.Floats;

// TODO parse string

abstract Point(Float) {
  public static var turn(default, null) : Point = 32;

  inline static public function pointToPoint(x : Float, y : Float) : Point
    return (Math.atan2(y, x) : Radian);

  @:from inline static public function floatToPoint(value : Float) : Point
    return new Point(value);

  function new(value : Float)
    this = value;


  inline public function cos()
    return toRadian().cos();

  inline public function sin()
    return toRadian().sin();


  inline public function abs() : Point
    return Math.abs(this);

  inline public function min(other : Point) : Point
    return Math.min(this, other.toFloat());

  inline public function max(other : Point) : Point
    return Math.max(this, other.toFloat());

  public function normalize() : Point {
    var a = this % turn.toFloat();
    return a < 0 ? turn + a : a;
  }

  public function normalizeDirection() : Point {
    var a = normalize();
    return a > 180 ? a - turn : a;
  }

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
  public function nearEquals(other : Point) : Bool
    return Floats.nearEquals(this, other.toFloat());
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

  @:to inline public function toFloat() : Float
    return this;

  @:to inline public function toBinaryDegree() : BinaryDegree
    return this * 8;
  @:to inline public function toDegree() : Degree
    return this * 11.25;
  @:to inline public function toGrad() : Grad
    return this * 12.5;
  @:to inline public function toHourAngle() : HourAngle
    return this * 0.75;
  @:to inline public function toMinuteOfArc() : MinuteOfArc
    return this * 675;
  @:to inline public function toQuadrant() : Quadrant
    return this * 0.125;
  @:to inline public function toRadian() : Radian
    return this * 0.196349540849362;
  @:to inline public function toRevolution() : Revolution
    return this * 0.03125;
  @:to inline public function toSecondOfArc() : SecondOfArc
    return this * 40500;
  @:to inline public function toSextant() : Sextant
    return this * 0.1875;
  @:to inline public function toTurn() : Turn
    return this * 0.03125;

  @:to inline public function toString() : String
    return this + symbol;

  public static inline var symbol : String = "point";
}