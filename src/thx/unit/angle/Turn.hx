package thx.unit.angle;

import thx.Floats;

// TODO parse string

abstract Turn(Float) {
  public static var turn(default, null) : Turn = 1;

  inline static public function pointToTurn(x : Float, y : Float) : Turn
    return (Math.atan2(y, x) : Radian);

  @:from inline static public function floatToTurn(value : Float) : Turn
    return new Turn(value);

  function new(value : Float)
    this = value;


  inline public function cos()
    return toRadian().cos();

  inline public function sin()
    return toRadian().sin();


  inline public function abs() : Turn
    return Math.abs(this);

  inline public function min(that : Turn) : Turn
    return Math.min(this, that.toFloat());

  inline public function max(that : Turn) : Turn
    return Math.max(this, that.toFloat());

  public function normalize() : Turn {
    var a = this % turn.toFloat();
    return a < 0 ? turn + a : a;
  }

  public function normalizeDirection() : Turn {
    var a = normalize();
    return a > 180 ? a - turn : a;
  }

  @:op( -A ) inline public function negate() : Turn
    return -this;
  @:op( A+B) inline public function add(that : Turn) : Turn
    return this + that.toFloat();
  @:op( A-B) inline public function subtract(that : Turn) : Turn
    return this - that.toFloat();
  @:op( A*B) inline public function multiply(that : Float) : Turn
    return this * that;
  @:op( A/B) inline public function divide(that : Float) : Turn
    return this / that;
  @:op( A%B) inline public function modulo(that : Float) : Turn
    return this % that;
  @:op(A==B) inline public function equals(that : Turn) : Bool
    return this == that;
  public function nearEquals(that : Turn) : Bool
    return Floats.nearEquals(this, that.toFloat());
  @:op(A!=B) inline public function notEquals(that : Turn) : Bool
    return this != that;
  @:op( A<B) inline public function less(that : Turn) : Bool
    return this < that.toFloat();
  @:op(A<=B) inline public function lessEquals(that : Turn) : Bool
    return this <= that.toFloat();
  @:op( A>B) inline public function greater(that : Turn) : Bool
    return this > that.toFloat();
  @:op(A>=B) inline public function greaterEquals(that : Turn) : Bool
    return this >= that.toFloat();

  @:to inline public function toFloat() : Float
    return this;

  @:to inline public function toBinaryDegree() : BinaryDegree
    return this * 256;
  @:to inline public function toDegree() : Degree
    return this * 360;
  @:to inline public function toGrad() : Grad
    return this * 400;
  @:to inline public function toHourAngle() : HourAngle
    return this * 24;
  @:to inline public function toMinuteOfArc() : MinuteOfArc
    return this * 21600;
  @:to inline public function toPoint() : Point
    return this * 32;
  @:to inline public function toQuadrant() : Quadrant
    return this * 4;
  @:to inline public function toRadian() : Radian
    return this * 6.28318530717959;
  @:to inline public function toRevolution() : Revolution
    return this * 1;
  @:to inline public function toSecondOfArc() : SecondOfArc
    return this * 1296000;
  @:to inline public function toSextant() : Sextant
    return this * 6;
  @:to inline public function toTurn() : Turn
    return this * 1;

  @:to inline public function toString() : String
    return this + symbol;

  public static inline var symbol : String = "τ";
}
