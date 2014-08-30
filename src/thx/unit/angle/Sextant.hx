package thx.unit.angle;

// TODO parse string

abstract Sextant(Float) {
  @:from inline static public function floatToSextant(value : Float) : Sextant
    return new Sextant(value);

  function new(value : Float)
    this = value;


  inline public function cos()
    return toRadians().cos();

  inline public function sin()
    return toRadians().sin();


  @:op( -A ) inline public function negate() : Sextant
    return -this;
  @:op( A+B) inline public function add(other : Sextant) : Sextant
    return this + other.toFloat();
  @:op( A-B) inline public function subtract(other : Sextant) : Sextant
    return this - other.toFloat();
  @:op( A*B) inline public function multiply(other : Float) : Sextant
    return this * other;
  @:op( A/B) inline public function divide(other : Float) : Sextant
    return this / other;
  @:op( A%B) inline public function modulo(other : Float) : Sextant
    return this % other;
  @:op(A==B) inline public function equal(other : Sextant) : Bool
    return this == other;
  @:op(A!=B) inline public function notEqual(other : Sextant) : Bool
    return this != other;
  @:op( A<B) inline public function less(other : Sextant) : Bool
    return this < other.toFloat();
  @:op(A<=B) inline public function lessEqual(other : Sextant) : Bool
    return this <= other.toFloat();
  @:op( A>B) inline public function more(other : Sextant) : Bool
    return this > other.toFloat();
  @:op(A>=B) inline public function moreEqual(other : Sextant) : Bool
    return this >= other.toFloat();

  inline public function toFloat() : Float
    return this;

  @:to inline public function toBinaryDegree() : BinaryDegree
    return this * 0.0234375;
  @:to inline public function toDegree() : Degree
    return this * 0.0166666666666667;
  @:to inline public function toGrad() : Grad
    return this * 0.015;
  @:to inline public function toHourAngle() : HourAngle
    return this * 0.25;
  @:to inline public function toMinuteOfArc() : MinuteOfArc
    return this * 0.000277777777777778;
  @:to inline public function toPoint() : Point
    return this * 0.1875;
  @:to inline public function toQuadrant() : Quadrant
    return this * 1.5;
  @:to inline public function toRadian() : Radian
    return this * 0.954929658551372;
  @:to inline public function toRevolution() : Revolution
    return this * 6;
  @:to inline public function toSecondOfArc() : SecondOfArc
    return this * 4.62962962962963e-06;
  @:to inline public function toTurn() : Turn
    return this * 6;

  @:to inline public function toString() : String
    return this + symbol;

  public static inline var symbol : String = "sextant";
}