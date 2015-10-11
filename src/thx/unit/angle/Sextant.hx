package thx.unit.angle;

import thx.Floats;

// TODO parse string

abstract Sextant(Float) {
  public static var turn(default, null) : Sextant = 6;

  inline static public function pointToSextant(x : Float, y : Float) : Sextant
    return (Math.atan2(y, x) : Radian);

  @:from inline static public function floatToSextant(value : Float) : Sextant
    return new Sextant(value);

  function new(value : Float)
    this = value;


  inline public function cos()
    return toRadian().cos();

  inline public function sin()
    return toRadian().sin();


  inline public function abs() : Sextant
    return Math.abs(this);

  inline public function min(that : Sextant) : Sextant
    return Math.min(this, that.toFloat());

  inline public function max(that : Sextant) : Sextant
    return Math.max(this, that.toFloat());

  public function normalize() : Sextant {
    var a = this % turn.toFloat();
    return a < 0 ? turn + a : a;
  }

  public function normalizeDirection() : Sextant {
    var a = normalize();
    return a > 180 ? a - turn : a;
  }

  @:op( -A ) inline public function negate() : Sextant
    return -this;
  @:op( A+B) inline public function add(that : Sextant) : Sextant
    return this + that.toFloat();
  @:op( A-B) inline public function subtract(that : Sextant) : Sextant
    return this - that.toFloat();
  @:op( A*B) inline public function multiply(that : Float) : Sextant
    return this * that;
  @:op( A/B) inline public function divide(that : Float) : Sextant
    return this / that;
  @:op( A%B) inline public function modulo(that : Float) : Sextant
    return this % that;
  @:op(A==B) inline public function equal(that : Sextant) : Bool
    return this == that;
  public function nearEquals(that : Sextant) : Bool
    return Floats.nearEquals(this, that.toFloat());
  @:op(A!=B) inline public function notEqual(that : Sextant) : Bool
    return this != that;
  @:op( A<B) inline public function less(that : Sextant) : Bool
    return this < that.toFloat();
  @:op(A<=B) inline public function lessEqual(that : Sextant) : Bool
    return this <= that.toFloat();
  @:op( A>B) inline public function more(that : Sextant) : Bool
    return this > that.toFloat();
  @:op(A>=B) inline public function moreEqual(that : Sextant) : Bool
    return this >= that.toFloat();

  @:to inline public function toFloat() : Float
    return this;

  @:to inline public function toBinaryDegree() : BinaryDegree
    return this * 42.6666666666667;
  @:to inline public function toDegree() : Degree
    return this * 60;
  @:to inline public function toGrad() : Grad
    return this * 66.6666666666667;
  @:to inline public function toHourAngle() : HourAngle
    return this * 4;
  @:to inline public function toMinuteOfArc() : MinuteOfArc
    return this * 3600;
  @:to inline public function toPoint() : Point
    return this * 5.33333333333333;
  @:to inline public function toQuadrant() : Quadrant
    return this * 0.666666666666667;
  @:to inline public function toRadian() : Radian
    return this * 1.0471975511966;
  @:to inline public function toRevolution() : Revolution
    return this * 0.166666666666667;
  @:to inline public function toSecondOfArc() : SecondOfArc
    return this * 216000;
  @:to inline public function toSextant() : Sextant
    return this * 1;
  @:to inline public function toTurn() : Turn
    return this * 0.166666666666667;

  @:to inline public function toString() : String
    return this + symbol;

  public static inline var symbol : String = "sextant";
}
