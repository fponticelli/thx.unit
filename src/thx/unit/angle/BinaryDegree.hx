package thx.unit.angle;

import thx.core.Floats;

// TODO parse string

abstract BinaryDegree(Float) {
  @:from inline static public function floatToBinaryDegree(value : Float) : BinaryDegree
    return new BinaryDegree(value);

  function new(value : Float)
    this = value;


  inline public function cos()
    return toRadian().cos();

  inline public function sin()
    return toRadian().sin();


  @:op( -A ) inline public function negate() : BinaryDegree
    return -this;
  @:op( A+B) inline public function add(other : BinaryDegree) : BinaryDegree
    return this + other.toFloat();
  @:op( A-B) inline public function subtract(other : BinaryDegree) : BinaryDegree
    return this - other.toFloat();
  @:op( A*B) inline public function multiply(other : Float) : BinaryDegree
    return this * other;
  @:op( A/B) inline public function divide(other : Float) : BinaryDegree
    return this / other;
  @:op( A%B) inline public function modulo(other : Float) : BinaryDegree
    return this % other;
  @:op(A==B) inline public function equal(other : BinaryDegree) : Bool
    return this == other;
  public function nearEqual(other : BinaryDegree) : Bool
    return Floats.nearEqual(this, other.toFloat());
  @:op(A!=B) inline public function notEqual(other : BinaryDegree) : Bool
    return this != other;
  @:op( A<B) inline public function less(other : BinaryDegree) : Bool
    return this < other.toFloat();
  @:op(A<=B) inline public function lessEqual(other : BinaryDegree) : Bool
    return this <= other.toFloat();
  @:op( A>B) inline public function more(other : BinaryDegree) : Bool
    return this > other.toFloat();
  @:op(A>=B) inline public function moreEqual(other : BinaryDegree) : Bool
    return this >= other.toFloat();

  inline public function toFloat() : Float
    return this;

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