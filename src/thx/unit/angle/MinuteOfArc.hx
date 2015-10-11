package thx.unit.angle;

import thx.Floats;

// TODO parse string

abstract MinuteOfArc(Float) {
  public static var turn(default, null) : MinuteOfArc = 21600;

  inline static public function pointToMinuteOfArc(x : Float, y : Float) : MinuteOfArc
    return (Math.atan2(y, x) : Radian);

  @:from inline static public function floatToMinuteOfArc(value : Float) : MinuteOfArc
    return new MinuteOfArc(value);

  function new(value : Float)
    this = value;


  inline public function cos()
    return toRadian().cos();

  inline public function sin()
    return toRadian().sin();


  inline public function abs() : MinuteOfArc
    return Math.abs(this);

  inline public function min(that : MinuteOfArc) : MinuteOfArc
    return Math.min(this, that.toFloat());

  inline public function max(that : MinuteOfArc) : MinuteOfArc
    return Math.max(this, that.toFloat());

  public function normalize() : MinuteOfArc {
    var a = this % turn.toFloat();
    return a < 0 ? turn + a : a;
  }

  public function normalizeDirection() : MinuteOfArc {
    var a = normalize();
    return a > 180 ? a - turn : a;
  }

  @:op( -A ) inline public function negate() : MinuteOfArc
    return -this;
  @:op( A+B) inline public function add(that : MinuteOfArc) : MinuteOfArc
    return this + that.toFloat();
  @:op( A-B) inline public function subtract(that : MinuteOfArc) : MinuteOfArc
    return this - that.toFloat();
  @:op( A*B) inline public function multiply(that : Float) : MinuteOfArc
    return this * that;
  @:op( A/B) inline public function divide(that : Float) : MinuteOfArc
    return this / that;
  @:op( A%B) inline public function modulo(that : Float) : MinuteOfArc
    return this % that;
  @:op(A==B) inline public function equals(that : MinuteOfArc) : Bool
    return this == that;
  public function nearEquals(that : MinuteOfArc) : Bool
    return Floats.nearEquals(this, that.toFloat());
  @:op(A!=B) inline public function notEquals(that : MinuteOfArc) : Bool
    return this != that;
  @:op( A<B) inline public function less(that : MinuteOfArc) : Bool
    return this < that.toFloat();
  @:op(A<=B) inline public function lessEquals(that : MinuteOfArc) : Bool
    return this <= that.toFloat();
  @:op( A>B) inline public function greater(that : MinuteOfArc) : Bool
    return this > that.toFloat();
  @:op(A>=B) inline public function greaterEquals(that : MinuteOfArc) : Bool
    return this >= that.toFloat();

  @:to inline public function toFloat() : Float
    return this;

  @:to inline public function toBinaryDegree() : BinaryDegree
    return this * 0.0118518518518519;
  @:to inline public function toDegree() : Degree
    return this * 0.0166666666666667;
  @:to inline public function toGrad() : Grad
    return this * 0.0185185185185185;
  @:to inline public function toHourAngle() : HourAngle
    return this * 0.00111111111111111;
  @:to inline public function toMinuteOfArc() : MinuteOfArc
    return this * 1;
  @:to inline public function toPoint() : Point
    return this * 0.00148148148148148;
  @:to inline public function toQuadrant() : Quadrant
    return this * 0.000185185185185185;
  @:to inline public function toRadian() : Radian
    return this * 0.000290888208665722;
  @:to inline public function toRevolution() : Revolution
    return this * 4.62962962962963e-05;
  @:to inline public function toSecondOfArc() : SecondOfArc
    return this * 60;
  @:to inline public function toSextant() : Sextant
    return this * 0.000277777777777778;
  @:to inline public function toTurn() : Turn
    return this * 4.62962962962963e-05;

  @:to inline public function toString() : String
    return this + symbol;

  public static inline var symbol : String = "′";
}
