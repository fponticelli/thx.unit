package thx.unit.angle;

// TODO parse string

abstract Radian(Float) {
  @:from inline static public function floatToRadian(value : Float) : Radian
    return new Radian(value);

  function new(value : Float)
    this = value;


  inline public function cos()
    return toRadians().cos();

  inline public function sin()
    return toRadians().sin();


  @:op( -A ) inline public function negate() : Radian
    return -this;
  @:op( A+B) inline public function add(other : Radian) : Radian
    return this + other.toFloat();
  @:op( A-B) inline public function subtract(other : Radian) : Radian
    return this - other.toFloat();
  @:op( A*B) inline public function multiply(other : Float) : Radian
    return this * other;
  @:op( A/B) inline public function divide(other : Float) : Radian
    return this / other;
  @:op( A%B) inline public function modulo(other : Float) : Radian
    return this % other;
  @:op(A==B) inline public function equal(other : Radian) : Bool
    return this == other;
  @:op(A!=B) inline public function notEqual(other : Radian) : Bool
    return this != other;
  @:op( A<B) inline public function less(other : Radian) : Bool
    return this < other.toFloat();
  @:op(A<=B) inline public function lessEqual(other : Radian) : Bool
    return this <= other.toFloat();
  @:op( A>B) inline public function more(other : Radian) : Bool
    return this > other.toFloat();
  @:op(A>=B) inline public function moreEqual(other : Radian) : Bool
    return this >= other.toFloat();

  inline public function toFloat() : Float
    return this;

  @:to inline public function toBinaryDegree() : BinaryDegree
    return this * 0.0245436926061703;
  @:to inline public function toDegree() : Degree
    return this * 0.0174532925199433;
  @:to inline public function toGrad() : Grad
    return this * 0.015707963267949;
  @:to inline public function toHourAngle() : HourAngle
    return this * 0.261799387799149;
  @:to inline public function toMinuteOfArc() : MinuteOfArc
    return this * 0.000290888208665722;
  @:to inline public function toPoint() : Point
    return this * 0.196349540849362;
  @:to inline public function toQuadrant() : Quadrant
    return this * 1.5707963267949;
  @:to inline public function toRevolution() : Revolution
    return this * 6.28318530717959;
  @:to inline public function toSecondOfArc() : SecondOfArc
    return this * 4.84813681109536e-06;
  @:to inline public function toSextant() : Sextant
    return this * 1.0471975511966;
  @:to inline public function toTurn() : Turn
    return this * 6.28318530717959;

  @:to inline public function toString() : String
    return this + symbol;

  public static inline var symbol : String = "rad";
}