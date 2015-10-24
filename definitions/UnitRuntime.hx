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
    var o = Units.parseUnit${baseType}(s);
    if(null == o) throw new Error("unable to parse " + s + " to ${unitType}");
    return fromPair(o);
  }
$for(value in units) {
  @:from inline static public function ${value.type.substring(0, 1).toLowerCase() + value.type.substring(1)}(value : $value.type) : $unitType
    return ${value.enumConstructor}(value);
}
  public static function fromPair(info : { value : ${baseType}, symbol : String}, ?pos : haxe.PosInfos) : ${unitType} return switch info.symbol.toLowerCase() {$for(value in units) {
    case "${value.symbol.toLowerCase()}", "${Strings.humanize(value.type)}": ${value.enumConstructor}(info.value);}
    case _: throw new thx.Error("invalid symbol " + info.symbol, pos);
  }

  public var value(get, never) : ${baseType};
  public var symbol(get, never) : String;

  function getInfo() return switch this {$for(value in units) {
  case ${value.enumConstructor}(unit): { value : unit.to${baseType}(), symbol : ${value.type}.symbol };}
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

  @:op( A*B) public function multiply(that : $baseType) : $unitType return switch this {$for(value in units) {
    case ${value.enumConstructor}(unit): unit.multiply(that);}
  }

  @:op( A/B) public function divide(that : $baseType) : $unitType return switch this {$for(value in units) {
    case ${value.enumConstructor}(unit): unit.divide(that);}
  }

  @:op( A%B) public function modulo(that : $baseType) : $unitType return switch this {$for(value in units) {
    case ${value.enumConstructor}(unit): unit.modulo(that);}
  }

  public function min(that : $unitType) : $unitType return switch this {$for(value in units) {
    case ${value.enumConstructor}(unit): unit.min(that.to${value.type}());}
  }

  public function max(that : $unitType) : $unitType return switch this {$for(value in units) {
    case ${value.enumConstructor}(unit): unit.max(that.to${value.type}());}
  }

  public function equalsTo(that : $unitType) : Bool return switch this {$for(value in units) {
    case ${value.enumConstructor}(unit): unit.equalsTo(that.to${value.type}());}
  }
  @:op(A==B)
  public static function equals(self : $unitType, that : $unitType) : Bool
    return self.equalsTo(that);

  public function nearEqualsTo(that : $unitType) : Bool return switch this {$for(value in units) {
    case ${value.enumConstructor}(unit): unit.nearEqualsTo(that.to${value.type}());}
  }
  public static function nearEquals(self : $unitType, that : $unitType) : Bool
    return self.nearEqualsTo(that);

  public function lessThan(that : $unitType) : Bool return switch this {$for(value in units) {
    case ${value.enumConstructor}(unit): unit.lessThan(that.to${value.type}());}
  }
  @:op( A<B)
  public static function less(self : $unitType, that : $unitType) : Bool
    return self.lessThan(that);

  public function lessEqualsTo(that : $unitType) : Bool return switch this {$for(value in units) {
    case ${value.enumConstructor}(unit): unit.lessEqualsTo(that.to${value.type}());}
  }
  @:op( A<B)
  public static function lessEquals(self : $unitType, that : $unitType) : Bool
    return self.lessEqualsTo(that);

  public function greaterThan(that : $unitType) : Bool return switch this {$for(value in units) {
    case ${value.enumConstructor}(unit): unit.greaterThan(that.to${value.type}());}
  }
  @:op( A>B)
  public static function greater(self : $unitType, that : $unitType) : Bool
    return self.greaterThan(that);

  public function greaterEqualsTo(that : $unitType) : Bool return switch this {$for(value in units) {
    case ${value.enumConstructor}(unit): unit.greaterEqualsTo(that.to${value.type}());}
  }
  @:op( A<B)
  public static function greatersEquals(self : $unitType, that : $unitType) : Bool
    return self.greaterEqualsTo(that);

$for(value in units) {
  @:to public function to${value.type}() : ${value.type} return switch this {$for(value in units) {
    case ${value.enumConstructor}(unit): unit.to${value.type}();}
  }
}
  function get_value() : $baseType
    return getInfo().value;

  function get_symbol() : String
    return getInfo().symbol;

  public function toString() {
    var info = getInfo();
    return "" + info.value + info.symbol;
  }
$if(unit == "time") {
  @:from static public function fromTime(time : thx.Time) : $type
    return Tick.fromDecimal(thx.Decimal.fromInt64(time.ticks));

  @:to public function toTime() : thx.Time
    return new thx.Time(toTick().toDecimal().toInt64());
} else if(unit == "angle") {

}}

enum ${unitTypeImpl} {$for(value in units) {
  ${value.enumConstructor}(unit : ${value.type});}
}
