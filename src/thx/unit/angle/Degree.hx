package thx.unit.angle;

import thx.Floats;

// TODO parse string

abstract Degree(Float) {
  public static var turn(default, null) : Degree = 360;

  inline static public function pointToDegree(x : Float, y : Float) : Degree
    return (Math.atan2(y, x) : Radian);

  @:from inline static public function floatToDegree(value : Float) : Degree
    return new Degree(value);

  function new(value : Float)
    this = value;


  inline public function cos()
    return toRadian().cos();

  inline public function sin()
    return toRadian().sin();


  inline public function abs() : Degree
    return Math.abs(this);

  inline public function min(that : Degree) : Degree
    return Math.min(this, that.toFloat());

  inline public function max(that : Degree) : Degree
    return Math.max(this, that.toFloat());

  public function normalize() : Degree {
    var a = this % turn.toFloat();
    return a < 0 ? turn + a : a;
  }

  public function normalizeDirection() : Degree {
    var a = normalize();
    return a > 180 ? a - turn : a;
  }

  @:op( -A ) inline public function negate() : Degree
    return -this;
  @:op( A+B) inline public function add(that : Degree) : Degree
    return this + that.toFloat();
  @:op( A-B) inline public function subtract(that : Degree) : Degree
    return this - that.toFloat();
  @:op( A*B) inline public function multiply(that : Float) : Degree
    return this * that;
  @:op( A/B) inline public function divide(that : Float) : Degree
    return this / that;
  @:op( A%B) inline public function modulo(that : Float) : Degree
    return this % that;
  @:op(A==B) inline public function equals(that : Degree) : Bool
    return this == that;
  public function nearEquals(that : Degree) : Bool
    return Floats.nearEquals(this, that.toFloat());
  @:op(A!=B) inline public function notEquals(that : Degree) : Bool
    return this != that;
  @:op( A<B) inline public function less(that : Degree) : Bool
    return this < that.toFloat();
  @:op(A<=B) inline public function lessEquals(that : Degree) : Bool
    return this <= that.toFloat();
  @:op( A>B) inline public function greater(that : Degree) : Bool
    return this > that.toFloat();
  @:op(A>=B) inline public function greaterEquals(that : Degree) : Bool
    return this >= that.toFloat();

  @:to inline public function toFloat() : Float
    return this;

  @:to inline public function toBinaryDegree() : BinaryDegree
    return this * 0.711111111111111;
  @:to inline public function toDegree() : Degree
    return this * 1;
  @:to inline public function toGrad() : Grad
    return this * 1.11111111111111;
  @:to inline public function toHourAngle() : HourAngle
    return this * 0.0666666666666667;
  @:to inline public function toMinuteOfArc() : MinuteOfArc
    return this * 60;
  @:to inline public function toPoint() : Point
    return this * 0.0888888888888889;
  @:to inline public function toQuadrant() : Quadrant
    return this * 0.0111111111111111;
  @:to inline public function toRadian() : Radian
    return this * 0.0174532925199433;
  @:to inline public function toRevolution() : Revolution
    return this * 0.00277777777777778;
  @:to inline public function toSecondOfArc() : SecondOfArc
    return this * 3600;
  @:to inline public function toSextant() : Sextant
    return this * 0.0166666666666667;
  @:to inline public function toTurn() : Turn
    return this * 0.00277777777777778;

  @:to inline public function toString() : String
    return this + symbol;

  public static inline var symbol : String = "°";
}
