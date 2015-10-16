package thx.unit.${unit};

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

  inline public function equalsTo(that : $type) : Bool
    return this.equalsTo(that.to${baseType}());
  @:op(A==B)
  inline static public function equals(self : $type, that : $type) : Bool
    return self.equalsTo(that.to${baseType}());

  public function nearEqualsTo(that : $type) : Bool
    return Floats.nearEquals(this.toFloat(), that.toFloat());
  public static function nearEquals(self : $type, that : $type) : Bool
    return Floats.nearEquals(self.toFloat(), that.toFloat());

  inline public function notEqualsTo(that : $type) : Bool
    return !this.equalsTo(that.to${baseType}());
  @:op(A!=B)
  inline static public function notEquals(self : $type, that : $type) : Bool
    return !self.equalsTo(that.to${baseType}());

  inline public function lessThan(that : $type) : Bool
    return this.lessThan(that.to${baseType}());
  @:op( A<B)
  inline static public function less(self : $type, that : $type) : Bool
    return self.lessThan(that.to${baseType}());

  inline public function lessEqualsTo(that : $type) : Bool
    return this.lessEqualsTo(that.to${baseType}());
  @:op(A<=B)
  inline static public function lessEquals(self : $type, that : $type) : Bool
    return self.lessEqualsTo(that.to${baseType}());

  inline public function greaterThan(that : $type) : Bool
    return this.greaterThan(that.to${baseType}());
  @:op( A>B)
  inline static public function greater(self : $type, that : $type) : Bool
    return self.greaterThan(that.to${baseType}());

  inline public function greaterEqualsTo(that : $type) : Bool
    return this.greaterEqualsTo(that.to${baseType}());
  @:op(A>=B)
  inline public function greaterEquals(that : $type) : Bool
    return this.greaterEqualsTo(that.to${baseType}());

  inline public function to${baseType}() : $baseType
    return this;

  inline public function toFloat() : Float
    return this.toFloat();

$for(value in units) {
  static var divider${value.type} : $baseType = "$value.ofUnit";
  @:to inline public function to${value.type}() : $value.type$if(value.type == type) {
      return this;
    } else if(baseType == "Decimal") {
      return ((this * ofUnit) / divider${value.type}).trim();
    } else {
      return (this * ofUnit) / divider${value.type};
    }}
  @:to inline public function toString() : String
    return this.toString() + symbol;

  public static inline var symbol : String = "$symbol";
}
