package thx.unit.angle;

// TODO parse string

abstract ${type}(Float) {
  @:from inline static public function floatTo${type}(value : Float) : $type
    return new ${type}(value);

  function new(value : Float)
    this = value;

$if(type == 'Radians') {
  inline public function cos()
    return Math.cos(this);

  inline public function sin()
    return Math.sin(this);
} else {
  inline public function cos()
    return toRadians().cos();

  inline public function sin()
    return toRadians().sin();
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

  inline public function toFloat() : Float
    return this;
$for(value in values) {
  @:to inline public function to${value.type}() : $value.type
    return this * ${ofTurn / value.ofTurn};}

  @:to inline public function toString() : String
    return this + symbol;

  public static inline var symbol : String = "$symbol";
}