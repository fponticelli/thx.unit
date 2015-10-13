$(
  var unitTypeImpl = unitType + "Impl";
  for(value in units) {
    value.enumConstructor = unitType + value.type;
  }
)package thx.unit;

import thx.unit.${unit}.*;
import thx.Error;

abstract ${unitType}(${unitTypeImpl}) from ${unitTypeImpl} to ${unitTypeImpl} {
  @:from static public function fromString(s : String) : ${unitType} {
    var o = Units.parseUnit(s);
    if(null == o) throw new Error("unable to parse " + s + " to ${unitType}");
    return fromPair(o);
  }
$for(value in units) {
  @:from inline static public function ${value.type.substring(0, 1).toLowerCase() + value.type.substring(1)}(value : $value.type) : $unitType
    return ${value.enumConstructor}(value);
}
  public static function fromPair(info : { value : Decimal, symbol : String}, ?pos : haxe.PosInfos) : ${unitType} return switch info.symbol.toLowerCase() {$for(value in units) {
    case "${value.symbol.toLowerCase()}", "${Strings.humanize(value.type)}": ${value.enumConstructor}(info.value);}
    case _: throw new thx.Error("invalid symbol " + info.symbol, pos);
  }

  public var value(get, never) : Decimal;
  public var symbol(get, never) : String;

  function getInfo() return switch this {$for(value in units) {
    case ${value.enumConstructor}(unit): { value : unit.toDecimal(), symbol : ${value.type}.symbol };}
  }

  public function abs() : $unitType return switch this {$for(value in units) {
    case ${value.enumConstructor}(unit): unit.abs();}
  }

  @:op( -A ) public function negate() : $unitType return switch this {$for(value in units) {
    case ${value.enumConstructor}(unit): unit.negate();}
  }

  @:op( A+B) public function add(that : $unitType) : $unitType return switch this {$for(value in units) {
    case ${value.enumConstructor}(unit): unit.add(that.to${value.type}());}
  }

  @:op( A-B) public function subtract(that : $unitType) : $unitType return switch this {$for(value in units) {
    case ${value.enumConstructor}(unit): unit.subtract(that.to${value.type}());}
  }

  @:op( A*B) public function multiply(that : Decimal) : $unitType return switch this {$for(value in units) {
    case ${value.enumConstructor}(unit): unit.multiply(that);}
  }

  @:op( A/B) public function divide(that : Decimal) : $unitType return switch this {$for(value in units) {
    case ${value.enumConstructor}(unit): unit.divide(that);}
  }

  @:op( A%B) public function modulo(that : Decimal) : $unitType return switch this {$for(value in units) {
    case ${value.enumConstructor}(unit): unit.modulo(that);}
  }

$for(value in units) {
  @:to public function to${value.type}() : ${value.type} return switch this {$for(value in units) {
    case ${value.enumConstructor}(unit): unit.to${value.type}();}
  }
}
  function get_value() : Decimal
    return getInfo().value;

  function get_symbol() : String
    return getInfo().symbol;

  public function toString() {
    var info = getInfo();
    return info.value.toString() + info.symbol;
  }
}

enum ${unitTypeImpl} {$for(value in units) {
  ${value.enumConstructor}(unit : ${value.type});}
}

$(/*
    inline public function min(that : $type) : $type
      return this.min(that.to${baseType}());

    inline public function max(that : $type) : $type
      return this.max(that.to${baseType}());

    inline public function equalsTo(that : $type) : Bool
      return this.equalsTo(that.to${baseType}());
    @:op(A==B)
    inline public function equals(that : $type) : Bool
      return this.equalsTo(that.to${baseType}());

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
  }
*/)
