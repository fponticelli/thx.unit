package thx.unit.angle;

import thx.core.Floats;

// TODO parse string

abstract Quadrant(Float) {
  @:from inline static public function floatToQuadrant(value : Float) : Quadrant
    return new Quadrant(value);

  function new(value : Float)
    this = value;


  inline public function cos()
    return toRadian().cos();

  inline public function sin()
    return toRadian().sin();


  @:op( -A ) inline public function negate() : Quadrant
    return -this;
  @:op( A+B) inline public function add(other : Quadrant) : Quadrant
    return this + other.toFloat();
  @:op( A-B) inline public function subtract(other : Quadrant) : Quadrant
    return this - other.toFloat();
  @:op( A*B) inline public function multiply(other : Float) : Quadrant
    return this * other;
  @:op( A/B) inline public function divide(other : Float) : Quadrant
    return this / other;
  @:op( A%B) inline public function modulo(other : Float) : Quadrant
    return this % other;
  @:op(A==B) inline public function equal(other : Quadrant) : Bool
    return this == other;
  public function nearEqual(other : Quadrant) : Bool
    return Floats.nearEqual(this, other.toFloat());
  @:op(A!=B) inline public function notEqual(other : Quadrant) : Bool
    return this != other;
  @:op( A<B) inline public function less(other : Quadrant) : Bool
    return this < other.toFloat();
  @:op(A<=B) inline public function lessEqual(other : Quadrant) : Bool
    return this <= other.toFloat();
  @:op( A>B) inline public function more(other : Quadrant) : Bool
    return this > other.toFloat();
  @:op(A>=B) inline public function moreEqual(other : Quadrant) : Bool
    return this >= other.toFloat();

  inline public function toFloat() : Float
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