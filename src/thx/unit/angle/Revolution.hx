package thx.unit.angle;

// TODO parse string

abstract Revolution(Float) {
  @:from inline static public function floatToRevolution(value : Float) : Revolution
    return new Revolution(value);

  function new(value : Float)
    this = value;


  inline public function cos()
    return toRadians().cos();

  inline public function sin()
    return toRadians().sin();


  @:op( -A ) inline public function negate() : Revolution
    return -this;
  @:op( A+B) inline public function add(other : Revolution) : Revolution
    return this + other.toFloat();
  @:op( A-B) inline public function subtract(other : Revolution) : Revolution
    return this - other.toFloat();
  @:op( A*B) inline public function multiply(other : Float) : Revolution
    return this * other;
  @:op( A/B) inline public function divide(other : Float) : Revolution
    return this / other;
  @:op( A%B) inline public function modulo(other : Float) : Revolution
    return this % other;
  @:op(A==B) inline public function equal(other : Revolution) : Bool
    return this == other;
  @:op(A!=B) inline public function notEqual(other : Revolution) : Bool
    return this != other;
  @:op( A<B) inline public function less(other : Revolution) : Bool
    return this < other.toFloat();
  @:op(A<=B) inline public function lessEqual(other : Revolution) : Bool
    return this <= other.toFloat();
  @:op( A>B) inline public function more(other : Revolution) : Bool
    return this > other.toFloat();
  @:op(A>=B) inline public function moreEqual(other : Revolution) : Bool
    return this >= other.toFloat();

  inline public function toFloat() : Float
    return this;

  @:to inline public function toBinaryDegree() : BinaryDegree
    return this * 0.00390625;
  @:to inline public function toDegree() : Degree
    return this * 0.00277777777777778;
  @:to inline public function toGrad() : Grad
    return this * 0.0025;
  @:to inline public function toHourAngle() : HourAngle
    return this * 0.0416666666666667;
  @:to inline public function toMinuteOfArc() : MinuteOfArc
    return this * 4.62962962962963e-05;
  @:to inline public function toPoint() : Point
    return this * 0.03125;
  @:to inline public function toQuadrant() : Quadrant
    return this * 0.25;
  @:to inline public function toRadian() : Radian
    return this * 0.159154943091895;
  @:to inline public function toSecondOfArc() : SecondOfArc
    return this * 7.71604938271605e-07;
  @:to inline public function toSextant() : Sextant
    return this * 0.166666666666667;
  @:to inline public function toTurn() : Turn
    return this * 1;

  @:to inline public function toString() : String
    return this + symbol;

  public static inline var symbol : String = "r";
}