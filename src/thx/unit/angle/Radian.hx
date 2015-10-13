package thx.unit.angle;

import thx.Floats;

// TODO parse string

abstract Radian(Float) {
  public static var turn(default, null) : Radian = 6.28318530717959;

  inline static public function pointToRadian(x : Float, y : Float) : Radian
    return (Math.atan2(y, x) : Radian);

  @:from inline static public function floatToRadian(value : Float) : Radian
    return new Radian(value);

  function new(value : Float)
    this = value;


  inline public function cos()
    return Math.cos(this);

  inline public function sin()
    return Math.sin(this);


  inline public function abs() : Radian
    return Math.abs(this);

  inline public function min(that : Radian) : Radian
    return Math.min(this, that.toFloat());

  inline public function max(that : Radian) : Radian
    return Math.max(this, that.toFloat());

  public function normalize() : Radian {
    var a = this % turn.toFloat();
    return a < 0 ? turn + a : a;
  }

  public function normalizeDirection() : Radian {
    var a = normalize();
    return a > 180 ? a - turn : a;
  }

  @:op( -A ) inline public function negate() : Radian
    return -this;
  @:op( A+B) inline public function add(that : Radian) : Radian
    return this + that.toFloat();
  @:op( A-B) inline public function subtract(that : Radian) : Radian
    return this - that.toFloat();
  @:op( A*B) inline public function multiply(that : Float) : Radian
    return this * that;
  @:op( A/B) inline public function divide(that : Float) : Radian
    return this / that;
  @:op( A%B) inline public function modulo(that : Float) : Radian
    return this % that;
  @:op(A==B) inline public function equals(that : Radian) : Bool
    return this == that;
  public function nearEquals(that : Radian) : Bool
    return Floats.nearEquals(this, that.toFloat());
  @:op(A!=B) inline public function notEquals(that : Radian) : Bool
    return this != that;
  @:op( A<B) inline public function less(that : Radian) : Bool
    return this < that.toFloat();
  @:op(A<=B) inline public function lessEquals(that : Radian) : Bool
    return this <= that.toFloat();
  @:op( A>B) inline public function greater(that : Radian) : Bool
    return this > that.toFloat();
  @:op(A>=B) inline public function greaterEquals(that : Radian) : Bool
    return this >= that.toFloat();

  @:to inline public function toFloat() : Float
    return this;

  @:to inline public function toBinaryDegree() : BinaryDegree
    return this * 40.7436654315252;
  @:to inline public function toDegree() : Degree
    return this * 57.2957795130823;
  @:to inline public function toGrad() : Grad
    return this * 63.6619772367581;
  @:to inline public function toHourAngle() : HourAngle
    return this * 3.81971863420549;
  @:to inline public function toMinuteOfArc() : MinuteOfArc
    return this * 3437.74677078494;
  @:to inline public function toPoint() : Point
    return this * 5.09295817894065;
  @:to inline public function toQuadrant() : Quadrant
    return this * 0.636619772367581;
  @:to inline public function toRadian() : Radian
    return this * 1;
  @:to inline public function toRevolution() : Revolution
    return this * 0.159154943091895;
  @:to inline public function toSecondOfArc() : SecondOfArc
    return this * 206264.806247096;
  @:to inline public function toSextant() : Sextant
    return this * 0.954929658551372;
  @:to inline public function toTurn() : Turn
    return this * 0.159154943091895;

  @:to inline public function toString() : String
    return this + symbol;

  public static inline var symbol : String = "rad";
}
