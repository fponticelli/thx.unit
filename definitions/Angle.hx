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

  inline public function min(that : $type) : $type
    return Math.min(this, that.toFloat());

  inline public function max(that : $type) : $type
    return Math.max(this, that.toFloat());

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
  @:op( A+B) inline public function add(that : $type) : $type
    return this + that.toFloat();
  @:op( A-B) inline public function subtract(that : $type) : $type
    return this - that.toFloat();
  @:op( A*B) inline public function multiply(that : Float) : $type
    return this * that;
  @:op( A/B) inline public function divide(that : Float) : $type
    return this / that;
  @:op( A%B) inline public function modulo(that : Float) : $type
    return this % that;
  @:op(A==B) inline public function equals(that : $type) : Bool
    return this == that;
  public function nearEquals(that : $type) : Bool
    return Floats.nearEquals(this, that.toFloat());
  @:op(A!=B) inline public function notEquals(that : $type) : Bool
    return this != that;
  @:op( A<B) inline public function less(that : $type) : Bool
    return this < that.toFloat();
  @:op(A<=B) inline public function lessEquals(that : $type) : Bool
    return this <= that.toFloat();
  @:op( A>B) inline public function greater(that : $type) : Bool
    return this > that.toFloat();
  @:op(A>=B) inline public function greaterEquals(that : $type) : Bool
    return this >= that.toFloat();

  @:to inline public function toFloat() : Float
    return this;
$for(value in units) {
  @:to inline public function to${value.type}() : $value.type
    return this * ${value.ofTurn / ofTurn};}

  @:to inline public function toString() : String
    return this + symbol;

  public static inline var symbol : String = "$symbol";
}
