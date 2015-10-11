package thx.unit.angle;

import thx.Floats;

// TODO parse string

abstract Quadrant(Float) {
  public static var turn(default, null) : Quadrant = 4;

  inline static public function pointToQuadrant(x : Float, y : Float) : Quadrant
    return (Math.atan2(y, x) : Radian);

  @:from inline static public function floatToQuadrant(value : Float) : Quadrant
    return new Quadrant(value);

  function new(value : Float)
    this = value;


  inline public function cos()
    return toRadian().cos();

  inline public function sin()
    return toRadian().sin();


  inline public function abs() : Quadrant
    return Math.abs(this);

  inline public function min(that : Quadrant) : Quadrant
    return Math.min(this, that.toFloat());

  inline public function max(that : Quadrant) : Quadrant
    return Math.max(this, that.toFloat());

  public function normalize() : Quadrant {
    var a = this % turn.toFloat();
    return a < 0 ? turn + a : a;
  }

  public function normalizeDirection() : Quadrant {
    var a = normalize();
    return a > 180 ? a - turn : a;
  }

  @:op( -A ) inline public function negate() : Quadrant
    return -this;
  @:op( A+B) inline public function add(that : Quadrant) : Quadrant
    return this + that.toFloat();
  @:op( A-B) inline public function subtract(that : Quadrant) : Quadrant
    return this - that.toFloat();
  @:op( A*B) inline public function multiply(that : Float) : Quadrant
    return this * that;
  @:op( A/B) inline public function divide(that : Float) : Quadrant
    return this / that;
  @:op( A%B) inline public function modulo(that : Float) : Quadrant
    return this % that;
  @:op(A==B) inline public function equals(that : Quadrant) : Bool
    return this == that;
  public function nearEquals(that : Quadrant) : Bool
    return Floats.nearEquals(this, that.toFloat());
  @:op(A!=B) inline public function notEquals(that : Quadrant) : Bool
    return this != that;
  @:op( A<B) inline public function less(that : Quadrant) : Bool
    return this < that.toFloat();
  @:op(A<=B) inline public function lessEquals(that : Quadrant) : Bool
    return this <= that.toFloat();
  @:op( A>B) inline public function greater(that : Quadrant) : Bool
    return this > that.toFloat();
  @:op(A>=B) inline public function greaterEquals(that : Quadrant) : Bool
    return this >= that.toFloat();

  @:to inline public function toFloat() : Float
    return this;

  @:to inline public function toBinaryDegree() : BinaryDegree
    return this * 64;
  @:to inline public function toDegree() : Degree
    return this * 90;
  @:to inline public function toGrad() : Grad
    return this * 100;
  @:to inline public function toHourAngle() : HourAngle
    return this * 6;
  @:to inline public function toMinuteOfArc() : MinuteOfArc
    return this * 5400;
  @:to inline public function toPoint() : Point
    return this * 8;
  @:to inline public function toQuadrant() : Quadrant
    return this * 1;
  @:to inline public function toRadian() : Radian
    return this * 1.5707963267949;
  @:to inline public function toRevolution() : Revolution
    return this * 0.25;
  @:to inline public function toSecondOfArc() : SecondOfArc
    return this * 324000;
  @:to inline public function toSextant() : Sextant
    return this * 1.5;
  @:to inline public function toTurn() : Turn
    return this * 0.25;

  @:to inline public function toString() : String
    return this + symbol;

  public static inline var symbol : String = "quad.";
}
