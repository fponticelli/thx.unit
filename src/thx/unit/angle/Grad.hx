package thx.unit.angle;

import thx.Floats;

// TODO parse string

abstract Grad(Float) {
  public static var turn(default, null) : Grad = 400;

  inline static public function pointToGrad(x : Float, y : Float) : Grad
    return (Math.atan2(y, x) : Radian);

  @:from inline static public function floatToGrad(value : Float) : Grad
    return new Grad(value);

  function new(value : Float)
    this = value;


  inline public function cos()
    return toRadian().cos();

  inline public function sin()
    return toRadian().sin();


  inline public function abs() : Grad
    return Math.abs(this);

  inline public function min(that : Grad) : Grad
    return Math.min(this, that.toFloat());

  inline public function max(that : Grad) : Grad
    return Math.max(this, that.toFloat());

  public function normalize() : Grad {
    var a = this % turn.toFloat();
    return a < 0 ? turn + a : a;
  }

  public function normalizeDirection() : Grad {
    var a = normalize();
    return a > 180 ? a - turn : a;
  }

  @:op( -A ) inline public function negate() : Grad
    return -this;
  @:op( A+B) inline public function add(that : Grad) : Grad
    return this + that.toFloat();
  @:op( A-B) inline public function subtract(that : Grad) : Grad
    return this - that.toFloat();
  @:op( A*B) inline public function multiply(that : Float) : Grad
    return this * that;
  @:op( A/B) inline public function divide(that : Float) : Grad
    return this / that;
  @:op( A%B) inline public function modulo(that : Float) : Grad
    return this % that;
  @:op(A==B) inline public function equals(that : Grad) : Bool
    return this == that;
  public function nearEquals(that : Grad) : Bool
    return Floats.nearEquals(this, that.toFloat());
  @:op(A!=B) inline public function notEquals(that : Grad) : Bool
    return this != that;
  @:op( A<B) inline public function less(that : Grad) : Bool
    return this < that.toFloat();
  @:op(A<=B) inline public function lessEquals(that : Grad) : Bool
    return this <= that.toFloat();
  @:op( A>B) inline public function greater(that : Grad) : Bool
    return this > that.toFloat();
  @:op(A>=B) inline public function greaterEquals(that : Grad) : Bool
    return this >= that.toFloat();

  @:to inline public function toFloat() : Float
    return this;

  @:to inline public function toBinaryDegree() : BinaryDegree
    return this * 0.64;
  @:to inline public function toDegree() : Degree
    return this * 0.9;
  @:to inline public function toGrad() : Grad
    return this * 1;
  @:to inline public function toHourAngle() : HourAngle
    return this * 0.06;
  @:to inline public function toMinuteOfArc() : MinuteOfArc
    return this * 54;
  @:to inline public function toPoint() : Point
    return this * 0.08;
  @:to inline public function toQuadrant() : Quadrant
    return this * 0.01;
  @:to inline public function toRadian() : Radian
    return this * 0.015707963267949;
  @:to inline public function toRevolution() : Revolution
    return this * 0.0025;
  @:to inline public function toSecondOfArc() : SecondOfArc
    return this * 3240;
  @:to inline public function toSextant() : Sextant
    return this * 0.015;
  @:to inline public function toTurn() : Turn
    return this * 0.0025;

  @:to inline public function toString() : String
    return this + symbol;

  public static inline var symbol : String = "grad";
}
