package thx.unit.angle;

import thx.Floats;

// TODO parse string

abstract BinaryDegree(Float) {
  public static var turn(default, null) : BinaryDegree = 256;

  inline static public function pointToBinaryDegree(x : Float, y : Float) : BinaryDegree
    return (Math.atan2(y, x) : Radian);

  @:from inline static public function floatToBinaryDegree(value : Float) : BinaryDegree
    return new BinaryDegree(value);

  function new(value : Float)
    this = value;


  inline public function cos()
    return toRadian().cos();

  inline public function sin()
    return toRadian().sin();


  inline public function abs() : BinaryDegree
    return Math.abs(this);

  inline public function min(that : BinaryDegree) : BinaryDegree
    return Math.min(this, that.toFloat());

  inline public function max(that : BinaryDegree) : BinaryDegree
    return Math.max(this, that.toFloat());

  public function normalize() : BinaryDegree {
    var a = this % turn.toFloat();
    return a < 0 ? turn + a : a;
  }

  public function normalizeDirection() : BinaryDegree {
    var a = normalize();
    return a > 180 ? a - turn : a;
  }

  @:op( -A ) inline public function negate() : BinaryDegree
    return -this;
  @:op( A+B) inline public function add(that : BinaryDegree) : BinaryDegree
    return this + that.toFloat();
  @:op( A-B) inline public function subtract(that : BinaryDegree) : BinaryDegree
    return this - that.toFloat();
  @:op( A*B) inline public function multiply(that : Float) : BinaryDegree
    return this * that;
  @:op( A/B) inline public function divide(that : Float) : BinaryDegree
    return this / that;
  @:op( A%B) inline public function modulo(that : Float) : BinaryDegree
    return this % that;
  @:op(A==B) inline public function equals(that : BinaryDegree) : Bool
    return this == that;
  public function nearEquals(that : BinaryDegree) : Bool
    return Floats.nearEquals(this, that.toFloat());
  @:op(A!=B) inline public function notEquals(that : BinaryDegree) : Bool
    return this != that;
  @:op( A<B) inline public function less(that : BinaryDegree) : Bool
    return this < that.toFloat();
  @:op(A<=B) inline public function lessEquals(that : BinaryDegree) : Bool
    return this <= that.toFloat();
  @:op( A>B) inline public function greater(that : BinaryDegree) : Bool
    return this > that.toFloat();
  @:op(A>=B) inline public function greaterEquals(that : BinaryDegree) : Bool
    return this >= that.toFloat();

  @:to inline public function toFloat() : Float
    return this;

  @:to inline public function toBinaryDegree() : BinaryDegree
    return this * 1;
  @:to inline public function toDegree() : Degree
    return this * 1.40625;
  @:to inline public function toGrad() : Grad
    return this * 1.5625;
  @:to inline public function toHourAngle() : HourAngle
    return this * 0.09375;
  @:to inline public function toMinuteOfArc() : MinuteOfArc
    return this * 84.375;
  @:to inline public function toPoint() : Point
    return this * 0.125;
  @:to inline public function toQuadrant() : Quadrant
    return this * 0.015625;
  @:to inline public function toRadian() : Radian
    return this * 0.0245436926061703;
  @:to inline public function toRevolution() : Revolution
    return this * 0.00390625;
  @:to inline public function toSecondOfArc() : SecondOfArc
    return this * 5062.5;
  @:to inline public function toSextant() : Sextant
    return this * 0.0234375;
  @:to inline public function toTurn() : Turn
    return this * 0.00390625;

  @:to inline public function toString() : String
    return this + symbol;

  public static inline var symbol : String = "binary degree";
}
