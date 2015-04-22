package thx.unit.angle;

import thx.Floats;

// TODO parse string

abstract ${type}(Float) {
  public static var turn(default, null) : $type = $ofTurn;

  inline static public function pointTo${type}(x : Float, y : Float) : $type
    return (Math.atan2(y, x) : Radian);

  @:from inline static public function floatTo${type}(value : Float) : $type
    return new ${type}(value);

  function new(value : Float)
    this = value;

$if(type == 'Radian') {
  inline public function cos()
    return Math.cos(this);

  inline public function sin()
    return Math.sin(this);
} else {
  inline public function cos()
    return toRadian().cos();

  inline public function sin()
    return toRadian().sin();
}

  inline public function abs() : $type
    return Math.abs(this);

  inline public function min(other : $type) : $type
    return Math.min(this, other.toFloat());

  inline public function max(other : $type) : $type
    return Math.max(this, other.toFloat());

  public function normalize() : $type {
    var a = this % turn.toFloat();
    return a < 0 ? turn + a : a;
  }

  public function normalizeDirection() : $type {
    var a = normalize();
    return a > 180 ? a - turn : a;
  }

  @:op( -A ) inline public function negate() : $type
    return -this;
  @:op( A+B) inline public function add(other : $type) : $type
    return this + other.toFloat();
  @:op( A-B) inline public function subtract(other : $type) : $type
    return this - other.toFloat();
  @:op( A*B) inline public function multiply(other : Float) : $type
    return this * other;
  @:op( A/B) inline public function divide(other : Float) : $type
    return this / other;
  @:op( A%B) inline public function modulo(other : Float) : $type
    return this % other;
  @:op(A==B) inline public function equal(other : $type) : Bool
    return this == other;
  public function nearEquals(other : $type) : Bool
    return Floats.nearEquals(this, other.toFloat());
  @:op(A!=B) inline public function notEqual(other : $type) : Bool
    return this != other;
  @:op( A<B) inline public function less(other : $type) : Bool
    return this < other.toFloat();
  @:op(A<=B) inline public function lessEqual(other : $type) : Bool
    return this <= other.toFloat();
  @:op( A>B) inline public function more(other : $type) : Bool
    return this > other.toFloat();
  @:op(A>=B) inline public function moreEqual(other : $type) : Bool
    return this >= other.toFloat();

  @:to inline public function toFloat() : Float
    return this;
$for(value in values) {
  @:to inline public function to${value.type}() : $value.type
    return this * ${value.ofTurn / ofTurn};}

  @:to inline public function toString() : String
    return this + symbol;

  public static inline var symbol : String = "$symbol";
}