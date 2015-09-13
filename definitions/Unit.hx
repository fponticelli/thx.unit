$(
var units = [];
for(value in values) {
  if(value.unit == unit)
    units.push(value);
})package thx.unit.${unit};

using thx.Floats;
import $importBaseType;

abstract ${type}($baseType) {
  @:from inline static public function from${baseType}(value : $baseType) : $type
    return new ${type}(value);

  @:from inline static public function fromInt(value : Int) : $type
    return from${baseType}(${baseType}.fromInt(value));

  @:from inline static public function fromFloat(value : Float) : $type
    return from${baseType}(${baseType}.fromFloat(value));

  inline function new(value : $baseType)
    this = value;

  inline public function abs() : $type
    return this.abs();

  inline public function min(that : $type) : $type
    return this.min(that.to${baseType}());

  inline public function max(that : $type) : $type
    return this.max(that.to${baseType}());

  @:op( -A ) inline public function negate() : $type
    return -this;
  @:op( A+B) inline public function add(that : $type) : $type
    return this.add(that.to${baseType}());
  @:op( A-B) inline public function subtract(that : $type) : $type
    return this.subtract(that.to${baseType}());
  @:op( A*B) inline public function multiply(that : $baseType) : $type
    return this.multiply(that);
  @:op( A/B) inline public function divide(that : $baseType) : $type
    return this.divide(that);
  @:op( A%B) inline public function modulo(that : $baseType) : $type
    return this.modulo(that);
  @:op(A==B) inline public function equal(that : $type) : Bool
    return this.equals(that.to${baseType}());
  public function nearEquals(that : $type) : Bool
    return Floats.nearEquals(this.toFloat(), that.toFloat());
  @:op(A!=B) inline public function notEqual(that : $type) : Bool
    return !this.equals(that.to${baseType}());
  @:op( A<B) inline public function less(that : $type) : Bool
    return this.less(that.to${baseType}());
  @:op(A<=B) inline public function lessEqual(that : $type) : Bool
    return this.lessEqual(that.to${baseType}());
  @:deprecated("use greater instead or simply >")
  inline public function more(that : $type) : Bool
    return greater(that);
  @:op( A>B) inline public function greater(that : $type) : Bool
    return this.greater(that.to${baseType}());
  @:deprecated("use greaterEqual instead or simply >=")
  inline public function moreEqual(that : $type) : Bool
    return greaterEqual(that);
  @:op(A>=B) inline public function greaterEqual(that : $type) : Bool
    return this.greaterEqual(that.to${baseType}());

  inline public function to${baseType}() : $baseType
    return this;

  inline public function toFloat() : Float
    return this.toFloat();

$for(value in units) {
  @:to inline public function to${value.type}() : $value.type
    return this * ${ofUnit / value.ofUnit};}

  @:to inline public function toString() : String
    return this.toString() + symbol;

  public static inline var symbol : String = "$symbol";
}
