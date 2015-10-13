package thx.unit.angle;

import thx.Floats;

// TODO parse string

abstract Revolution(Float) {
  public static var turn(default, null) : Revolution = 1;

  inline static public function pointToRevolution(x : Float, y : Float) : Revolution
    return (Math.atan2(y, x) : Radian);

  @:from inline static public function floatToRevolution(value : Float) : Revolution
    return new Revolution(value);

  function new(value : Float)
    this = value;


  inline public function cos()
    return toRadian().cos();

  inline public function sin()
    return toRadian().sin();


  inline public function abs() : Revolution
    return Math.abs(this);

  inline public function min(that : Revolution) : Revolution
    return Math.min(this, that.toFloat());

  inline public function max(that : Revolution) : Revolution
    return Math.max(this, that.toFloat());

  public function normalize() : Revolution {
    var a = this % turn.toFloat();
    return a < 0 ? turn + a : a;
  }

  public function normalizeDirection() : Revolution {
    var a = normalize();
    return a > 180 ? a - turn : a;
  }

  @:op( -A ) inline public function negate() : Revolution
    return -this;
  @:op( A+B) inline public function add(that : Revolution) : Revolution
    return this + that.toFloat();
  @:op( A-B) inline public function subtract(that : Revolution) : Revolution
    return this - that.toFloat();
  @:op( A*B) inline public function multiply(that : Float) : Revolution
    return this * that;
  @:op( A/B) inline public function divide(that : Float) : Revolution
    return this / that;
  @:op( A%B) inline public function modulo(that : Float) : Revolution
    return this % that;
  @:op(A==B) inline public function equals(that : Revolution) : Bool
    return this == that;
  public function nearEquals(that : Revolution) : Bool
    return Floats.nearEquals(this, that.toFloat());
  @:op(A!=B) inline public function notEquals(that : Revolution) : Bool
    return this != that;
  @:op( A<B) inline public function less(that : Revolution) : Bool
    return this < that.toFloat();
  @:op(A<=B) inline public function lessEquals(that : Revolution) : Bool
    return this <= that.toFloat();
  @:op( A>B) inline public function greater(that : Revolution) : Bool
    return this > that.toFloat();
  @:op(A>=B) inline public function greaterEquals(that : Revolution) : Bool
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

  public static inline var symbol : String = "r";
}
