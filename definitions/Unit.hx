package thx.unit.${unit};

$if(baseType != "Float"){import $importBaseType;
} else {
import thx.Floats;
}
abstract ${type}($baseType) {
  static var ofUnit : ${baseType} = $if(baseType == "Float"){$ofUnit}else{"${ofUnit}"}; $if(unit == "angle") {
  public static var turn(default, null) : $type = ${ofUnit.split("/").pop()};
}
  @:from inline static public function from${baseType}(value : $baseType) : $type
    return new ${type}(value);

  @:from inline static public function fromInt(value : Int) : $type $if(baseType == "Float") {
    return from${baseType}(value);
  } else {
    return from${baseType}(${baseType}.fromInt(value));
  }
$if(baseType != "Float") {
  @:from inline static public function fromFloat(value : Float) : $type
    return new ${type}(value);

}
  inline function new(value : $baseType)
    this = value;

  inline public function abs() : $type
    return $if(baseType != "Float"){this.abs()}else{Math.abs(this)};

  inline public function min(that : $type) : $type
    return $if(baseType != "Float"){this.min(that.to${baseType}())}else{Floats.min(this,that.toFloat())};

  inline public function max(that : $type) : $type
    return $if(baseType != "Float"){this.max(that.to${baseType}())}else{Floats.max(this,that.toFloat())};

  @:op( -A ) inline public function negate() : $type
    return -this;
  @:op( A+B) inline public function add(that : $type) : $type
    return this + that.to${baseType}();
  @:op( A-B) inline public function subtract(that : $type) : $type
    return this - that.to${baseType}();
  @:op( A*B) inline public function multiply(that : $baseType) : $type
    return this * that;
  @:op( A/B) inline public function divide(that : $baseType) : $type
    return this / that;
  @:op( A%B) inline public function modulo(that : $baseType) : $type
    return this % that;

  inline public function equalsTo(that : $type) : Bool
    return this == that.to${baseType}();
  @:op(A==B)
  inline static public function equals(self : $type, that : $type) : Bool
    return self.to${baseType}() == that.to${baseType}();

  public function nearEqualsTo(that : $type) : Bool $if(baseType == "Float") {
    return Floats.nearEquals(this, that.toFloat());
  } else {
    return Floats.nearEquals(this.toFloat(), that.toFloat());
  }
  public static function nearEquals(self : $type, that : $type) : Bool $if(baseType == "Float") {
    return Floats.nearEquals(self.toFloat(), that.toFloat());
  } else {
    return Floats.nearEquals(self.toFloat(), that.toFloat());
  }

  inline public function notEqualsTo(that : $type) : Bool
    return this != that.to${baseType}();
  @:op(A!=B)
  inline static public function notEquals(self : $type, that : $type) : Bool
    return self.to${baseType}() != that.to${baseType}();

  inline public function lessThan(that : $type) : Bool
    return this < that.to${baseType}();
  @:op( A<B)
  inline static public function less(self : $type, that : $type) : Bool
    return self.to${baseType}() < that.to${baseType}();

  inline public function lessEqualsTo(that : $type) : Bool
    return this <= that.to${baseType}();
  @:op(A<=B)
  inline static public function lessEquals(self : $type, that : $type) : Bool
    return self.to${baseType}() <= that.to${baseType}();

  inline public function greaterThan(that : $type) : Bool
    return this > that.to${baseType}();
  @:op( A>B)
  inline static public function greater(self : $type, that : $type) : Bool
    return self.to${baseType}() >= that.to${baseType}();

  inline public function greaterEqualsTo(that : $type) : Bool
    return this >= that.to${baseType}();
  @:op(A>=B)
  inline static public function greaterEquals(self : $type, that : $type) : Bool
    return self.to${baseType}() >= that.to${baseType}();
$if(baseType == "Float") {
  @:to
} inline public function to${baseType}() : $baseType
    return this;
$if(baseType != "Float") {
  inline public function toFloat() : Float
    return this.toFloat();

}
$for(value in units) {
  static var divider${value.type} : $baseType = $if(baseType == "Float"){$value.ofUnit} else {"$value.ofUnit"};
  @:to inline public function to${value.type}() : $value.type$if(value.type == type) {
      return this;
    } else if(baseType == "Decimal") {
      return ((this * ofUnit) / divider${value.type}).trim();
    } else {
      return (this * ofUnit) / divider${value.type};
    }}
  @:to inline public function toString() : String
    return "" + this + symbol;

  public static inline var symbol : String = "$symbol";
$if(unit == "time") {
  @:from static public function fromTime(time : thx.Time) : $type
    return Tick.fromDecimal(thx.Decimal.fromInt64(time.ticks)).to${type}();

  @:to public function toTime() : thx.Time
    return new thx.Time(toTick().toDecimal().toInt64());
} else if(unit == "angle") {
  inline static public function pointTo${type}(x : Float, y : Float) : $type
    return (Math.atan2(y, x) : Radian);

$if(type == 'Radian') {
  inline public function cos() : Float
    return Math.cos(this);

  inline public function sin() : Float
    return Math.sin(this);
} else {
  inline public function cos() : Float
    return toRadian().cos();

  inline public function sin() : Float
    return toRadian().sin();
}

  public function normalize() : $type {
    var n = this % (turn : $baseType);
    return n < 0 ? (turn : $baseType) + n : n;
  }

  public function normalizeDirection() : $type {
    var normalized = normalize();
    return normalized > (turn : $baseType) / 2 ? normalized - (turn : $baseType) : normalized;
  }
}}
