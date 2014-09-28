package thx.unit.angle;

import thx.core.Floats;

// TODO parse string

abstract Degree(Float) {
  @:from inline static public function floatToDegree(value : Float) : Degree
    return new Degree(value);

  function new(value : Float)
    this = value;


  inline public function cos()
    return toRadian().cos();

  inline public function sin()
    return toRadian().sin();


  @:op( -A ) inline public function negate() : Degree
    return -this;
  @:op( A+B) inline public function add(other : Degree) : Degree
    return this + other.toFloat();
  @:op( A-B) inline public function subtract(other : Degree) : Degree
    return this - other.toFloat();
  @:op( A*B) inline public function multiply(other : Float) : Degree
    return this * other;
  @:op( A/B) inline public function divide(other : Float) : Degree
    return this / other;
  @:op( A%B) inline public function modulo(other : Float) : Degree
    return this % other;
  @:op(A==B) inline public function equal(other : Degree) : Bool
    return this == other;
  public function nearEquals(other : Degree) : Bool
    return Floats.nearEquals(this, other.toFloat());
  @:op(A!=B) inline public function notEqual(other : Degree) : Bool
    return this != other;
  @:op( A<B) inline public function less(other : Degree) : Bool
    return this < other.toFloat();
  @:op(A<=B) inline public function lessEqual(other : Degree) : Bool
    return this <= other.toFloat();
  @:op( A>B) inline public function more(other : Degree) : Bool
    return this > other.toFloat();
  @:op(A>=B) inline public function moreEqual(other : Degree) : Bool
    return this >= other.toFloat();

  @:to inline public function toFloat() : Float
    return this;

  @:to inline public function toBinaryDegree() : BinaryDegree
    return this * 0.711111111111111;
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