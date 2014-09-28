package thx.unit.angle;

import thx.core.Floats;

// TODO parse string

abstract Grad(Float) {
  @:from inline static public function floatToGrad(value : Float) : Grad
    return new Grad(value);

  function new(value : Float)
    this = value;


  inline public function cos()
    return toRadian().cos();

  inline public function sin()
    return toRadian().sin();


  @:op( -A ) inline public function negate() : Grad
    return -this;
  @:op( A+B) inline public function add(other : Grad) : Grad
    return this + other.toFloat();
  @:op( A-B) inline public function subtract(other : Grad) : Grad
    return this - other.toFloat();
  @:op( A*B) inline public function multiply(other : Float) : Grad
    return this * other;
  @:op( A/B) inline public function divide(other : Float) : Grad
    return this / other;
  @:op( A%B) inline public function modulo(other : Float) : Grad
    return this % other;
  @:op(A==B) inline public function equal(other : Grad) : Bool
    return this == other;
  public function nearEquals(other : Grad) : Bool
    return Floats.nearEquals(this, other.toFloat());
  @:op(A!=B) inline public function notEqual(other : Grad) : Bool
    return this != other;
  @:op( A<B) inline public function less(other : Grad) : Bool
    return this < other.toFloat();
  @:op(A<=B) inline public function lessEqual(other : Grad) : Bool
    return this <= other.toFloat();
  @:op( A>B) inline public function more(other : Grad) : Bool
    return this > other.toFloat();
  @:op(A>=B) inline public function moreEqual(other : Grad) : Bool
    return this >= other.toFloat();

  @:to inline public function toFloat() : Float
    return this;

  @:to inline public function toBinaryDegree() : BinaryDegree
    return this * 0.64;
  @:to inline public function toDegree() : Degree
    return this * 0.9;
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