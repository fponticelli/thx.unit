$(
var units = [];
for(value in values) {
  if(value.unit == unit)
    units.push(value);
})package thx.unit.${unit};

using thx.Floats;
import $importBaseType;

abstract ${type}($baseType) {
  static var ofUnit : ${baseType} = "${ofUnit}";

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
  @:op(A==B) inline public function equals(that : $type) : Bool
    return this.equalsTo(that.to${baseType}());
  public function nearEquals(that : $type) : Bool
    return Floats.nearEquals(this.toFloat(), that.toFloat());
  @:op(A!=B) inline public function notEquals(that : $type) : Bool
    return !this.equalsTo(that.to${baseType}());
  @:op( A<B) inline public function less(that : $type) : Bool
    return this.lessThan(that.to${baseType}());
  @:op(A<=B) inline public function lessEquals(that : $type) : Bool
    return this.lessEqualsTo(that.to${baseType}());
  @:op( A>B) inline public function greater(that : $type) : Bool
    return this.greaterThan(that.to${baseType}());
  @:op(A>=B) inline public function greaterEquals(that : $type) : Bool
    return this.greaterEqualsTo(that.to${baseType}());

  inline public function to${baseType}() : $baseType
    return this;

  inline public function toFloat() : Float
    return this.toFloat();

$for(value in units) {
  static var divider${value.type} : $baseType = "$value.ofUnit";
  @:to inline public function to${value.type}() : $value.type
    return (this * ofUnit) / divider${value.type};
}

  @:to inline public function toString() : String
    return this.toString() + symbol;

  public static inline var symbol : String = "$symbol";
}
