package thx.unit.angle;

// TODO parse string

abstract MinuteOfArc(Float) {
  @:from inline static public function floatToMinuteOfArc(value : Float) : MinuteOfArc
    return new MinuteOfArc(value);

  function new(value : Float)
    this = value;


  inline public function cos()
    return toRadians().cos();

  inline public function sin()
    return toRadians().sin();


  @:op( -A ) inline public function negate() : MinuteOfArc
    return -this;
  @:op( A+B) inline public function add(other : MinuteOfArc) : MinuteOfArc
    return this + other.toFloat();
  @:op( A-B) inline public function subtract(other : MinuteOfArc) : MinuteOfArc
    return this - other.toFloat();
  @:op( A*B) inline public function multiply(other : Float) : MinuteOfArc
    return this * other;
  @:op( A/B) inline public function divide(other : Float) : MinuteOfArc
    return this / other;
  @:op( A%B) inline public function modulo(other : Float) : MinuteOfArc
    return this % other;
  @:op(A==B) inline public function equal(other : MinuteOfArc) : Bool
    return this == other;
  @:op(A!=B) inline public function notEqual(other : MinuteOfArc) : Bool
    return this != other;
  @:op( A<B) inline public function less(other : MinuteOfArc) : Bool
    return this < other.toFloat();
  @:op(A<=B) inline public function lessEqual(other : MinuteOfArc) : Bool
    return this <= other.toFloat();
  @:op( A>B) inline public function more(other : MinuteOfArc) : Bool
    return this > other.toFloat();
  @:op(A>=B) inline public function moreEqual(other : MinuteOfArc) : Bool
    return this >= other.toFloat();

  inline public function toFloat() : Float
    return this;

  @:to inline public function toBinaryDegree() : BinaryDegree
    return this * 84.375;
  @:to inline public function toDegree() : Degree
    return this * 60;
  @:to inline public function toGrad() : Grad
    return this * 54;
  @:to inline public function toHourAngle() : HourAngle
    return this * 900;
  @:to inline public function toPoint() : Point
    return this * 675;
  @:to inline public function toQuadrant() : Quadrant
    return this * 5400;
  @:to inline public function toRadian() : Radian
    return this * 3437.74677078494;
  @:to inline public function toRevolution() : Revolution
    return this * 21600;
  @:to inline public function toSecondOfArc() : SecondOfArc
    return this * 0.0166666666666667;
  @:to inline public function toSextant() : Sextant
    return this * 3600;
  @:to inline public function toTurn() : Turn
    return this * 21600;

  @:to inline public function toString() : String
    return this + symbol;

  public static inline var symbol : String = "′";
}