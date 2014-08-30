package thx.unit.angle;

// TODO parse string

abstract Grad(Float) {
  @:from inline static public function floatToGrad(value : Float) : Grad
    return new Grad(value);

  function new(value : Float)
    this = value;


  inline public function cos()
    return toRadians().cos();

  inline public function sin()
    return toRadians().sin();


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

  inline public function toFloat() : Float
    return this;

  @:to inline public function toBinaryDegree() : BinaryDegree
    return this * 1.5625;
  @:to inline public function toDegree() : Degree
    return this * 1.11111111111111;
  @:to inline public function toHourAngle() : HourAngle
    return this * 16.6666666666667;
  @:to inline public function toMinuteOfArc() : MinuteOfArc
    return this * 0.0185185185185185;
  @:to inline public function toPoint() : Point
    return this * 12.5;
  @:to inline public function toQuadrant() : Quadrant
    return this * 100;
  @:to inline public function toRadian() : Radian
    return this * 63.6619772367581;
  @:to inline public function toRevolution() : Revolution
    return this * 400;
  @:to inline public function toSecondOfArc() : SecondOfArc
    return this * 0.000308641975308642;
  @:to inline public function toSextant() : Sextant
    return this * 66.6666666666667;
  @:to inline public function toTurn() : Turn
    return this * 400;

  @:to inline public function toString() : String
    return this + symbol;

  public static inline var symbol : String = "grad";
}