package thx.unit.angle;

import thx.Floats;

// TODO parse string

abstract SecondOfArc(Float) {
  public static var turn(default, null) : SecondOfArc = 1296000;

  inline static public function pointToSecondOfArc(x : Float, y : Float) : SecondOfArc
    return (Math.atan2(y, x) : Radian);

  @:from inline static public function floatToSecondOfArc(value : Float) : SecondOfArc
    return new SecondOfArc(value);

  function new(value : Float)
    this = value;


  inline public function cos()
    return toRadian().cos();

  inline public function sin()
    return toRadian().sin();


  inline public function abs() : SecondOfArc
    return Math.abs(this);

  inline public function min(other : SecondOfArc) : SecondOfArc
    return Math.min(this, other.toFloat());

  inline public function max(other : SecondOfArc) : SecondOfArc
    return Math.max(this, other.toFloat());

  public function normalize() : SecondOfArc {
    var a = this % turn.toFloat();
    return a < 0 ? turn + a : a;
  }

  public function normalizeDirection() : SecondOfArc {
    var a = normalize();
    return a > 180 ? a - turn : a;
  }

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
  public function nearEquals(other : SecondOfArc) : Bool
    return Floats.nearEquals(this, other.toFloat());
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

  @:to inline public function toFloat() : Float
    return this;

  @:to inline public function toBinaryDegree() : BinaryDegree
    return this * 0.000197530864197531;
  @:to inline public function toDegree() : Degree
    return this * 0.000277777777777778;
  @:to inline public function toGrad() : Grad
    return this * 0.000308641975308642;
  @:to inline public function toHourAngle() : HourAngle
    return this * 1.85185185185185e-05;
  @:to inline public function toMinuteOfArc() : MinuteOfArc
    return this * 0.0166666666666667;
  @:to inline public function toPoint() : Point
    return this * 2.46913580246914e-05;
  @:to inline public function toQuadrant() : Quadrant
    return this * 3.08641975308642e-06;
  @:to inline public function toRadian() : Radian
    return this * 4.84813681109536e-06;
  @:to inline public function toRevolution() : Revolution
    return this * 7.71604938271605e-07;
  @:to inline public function toSextant() : Sextant
    return this * 4.62962962962963e-06;
  @:to inline public function toTurn() : Turn
    return this * 7.71604938271605e-07;

  @:to inline public function toString() : String
    return this + symbol;

  public static inline var symbol : String = "″";
}