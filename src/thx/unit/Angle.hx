package thx.unit;

import thx.unit.angle.*;
import thx.Error;

abstract Angle(AngleImpl) from AngleImpl to AngleImpl {
  @:from static public function fromString(s : String) : Angle {
    var o = Units.parseUnitFloat(s);
    if(null == o) throw new Error("unable to parse " + s + " to Angle");
    return fromPair(o);
  }

  @:from inline static public function binaryDegree(value : BinaryDegree) : Angle
    return AngleBinaryDegree(value);

  @:from inline static public function degree(value : Degree) : Angle
    return AngleDegree(value);

  @:from inline static public function grad(value : Grad) : Angle
    return AngleGrad(value);

  @:from inline static public function hourAngle(value : HourAngle) : Angle
    return AngleHourAngle(value);

  @:from inline static public function minuteOfArc(value : MinuteOfArc) : Angle
    return AngleMinuteOfArc(value);

  @:from inline static public function point(value : Point) : Angle
    return AnglePoint(value);

  @:from inline static public function quadrant(value : Quadrant) : Angle
    return AngleQuadrant(value);

  @:from inline static public function radian(value : Radian) : Angle
    return AngleRadian(value);

  @:from inline static public function revolution(value : Revolution) : Angle
    return AngleRevolution(value);

  @:from inline static public function secondOfArc(value : SecondOfArc) : Angle
    return AngleSecondOfArc(value);

  @:from inline static public function sextant(value : Sextant) : Angle
    return AngleSextant(value);

  @:from inline static public function turn(value : Turn) : Angle
    return AngleTurn(value);

  public static function fromPair(info : { value : Float, symbol : String}, ?pos : haxe.PosInfos) : Angle return switch info.symbol {
    case "binary degree", "binary degree": AngleBinaryDegree(info.value);
    case "°", "degree": AngleDegree(info.value);
    case "grad", "grad": AngleGrad(info.value);
    case "hour", "hour angle": AngleHourAngle(info.value);
    case "′", "minute of arc": AngleMinuteOfArc(info.value);
    case "point", "point": AnglePoint(info.value);
    case "quad.", "quadrant": AngleQuadrant(info.value);
    case "rad", "radian": AngleRadian(info.value);
    case "r", "revolution": AngleRevolution(info.value);
    case "″", "second of arc": AngleSecondOfArc(info.value);
    case "sextant", "sextant": AngleSextant(info.value);
    case "τ", "turn": AngleTurn(info.value);
    case _: throw new thx.Error("invalid symbol " + info.symbol, pos);
  }

  public var value(get, never) : Float;
  public var symbol(get, never) : String;

  function getInfo() return switch this {
  case AngleBinaryDegree(unit): { value : unit.toFloat(), symbol : BinaryDegree.symbol };
  case AngleDegree(unit): { value : unit.toFloat(), symbol : Degree.symbol };
  case AngleGrad(unit): { value : unit.toFloat(), symbol : Grad.symbol };
  case AngleHourAngle(unit): { value : unit.toFloat(), symbol : HourAngle.symbol };
  case AngleMinuteOfArc(unit): { value : unit.toFloat(), symbol : MinuteOfArc.symbol };
  case AnglePoint(unit): { value : unit.toFloat(), symbol : Point.symbol };
  case AngleQuadrant(unit): { value : unit.toFloat(), symbol : Quadrant.symbol };
  case AngleRadian(unit): { value : unit.toFloat(), symbol : Radian.symbol };
  case AngleRevolution(unit): { value : unit.toFloat(), symbol : Revolution.symbol };
  case AngleSecondOfArc(unit): { value : unit.toFloat(), symbol : SecondOfArc.symbol };
  case AngleSextant(unit): { value : unit.toFloat(), symbol : Sextant.symbol };
  case AngleTurn(unit): { value : unit.toFloat(), symbol : Turn.symbol };
  }

  public function abs() : Angle return switch this {
    case AngleBinaryDegree(unit): unit.abs();
    case AngleDegree(unit): unit.abs();
    case AngleGrad(unit): unit.abs();
    case AngleHourAngle(unit): unit.abs();
    case AngleMinuteOfArc(unit): unit.abs();
    case AnglePoint(unit): unit.abs();
    case AngleQuadrant(unit): unit.abs();
    case AngleRadian(unit): unit.abs();
    case AngleRevolution(unit): unit.abs();
    case AngleSecondOfArc(unit): unit.abs();
    case AngleSextant(unit): unit.abs();
    case AngleTurn(unit): unit.abs();
  }

  @:op( -A ) public function negate() : Angle return switch this {
    case AngleBinaryDegree(unit): unit.negate();
    case AngleDegree(unit): unit.negate();
    case AngleGrad(unit): unit.negate();
    case AngleHourAngle(unit): unit.negate();
    case AngleMinuteOfArc(unit): unit.negate();
    case AnglePoint(unit): unit.negate();
    case AngleQuadrant(unit): unit.negate();
    case AngleRadian(unit): unit.negate();
    case AngleRevolution(unit): unit.negate();
    case AngleSecondOfArc(unit): unit.negate();
    case AngleSextant(unit): unit.negate();
    case AngleTurn(unit): unit.negate();
  }

  @:op( A+B) public function add(that : Angle) : Angle return switch this {
    case AngleBinaryDegree(unit): unit.add(that.toBinaryDegree());
    case AngleDegree(unit): unit.add(that.toDegree());
    case AngleGrad(unit): unit.add(that.toGrad());
    case AngleHourAngle(unit): unit.add(that.toHourAngle());
    case AngleMinuteOfArc(unit): unit.add(that.toMinuteOfArc());
    case AnglePoint(unit): unit.add(that.toPoint());
    case AngleQuadrant(unit): unit.add(that.toQuadrant());
    case AngleRadian(unit): unit.add(that.toRadian());
    case AngleRevolution(unit): unit.add(that.toRevolution());
    case AngleSecondOfArc(unit): unit.add(that.toSecondOfArc());
    case AngleSextant(unit): unit.add(that.toSextant());
    case AngleTurn(unit): unit.add(that.toTurn());
  }

  @:op( A-B) public function subtract(that : Angle) : Angle return switch this {
    case AngleBinaryDegree(unit): unit.subtract(that.toBinaryDegree());
    case AngleDegree(unit): unit.subtract(that.toDegree());
    case AngleGrad(unit): unit.subtract(that.toGrad());
    case AngleHourAngle(unit): unit.subtract(that.toHourAngle());
    case AngleMinuteOfArc(unit): unit.subtract(that.toMinuteOfArc());
    case AnglePoint(unit): unit.subtract(that.toPoint());
    case AngleQuadrant(unit): unit.subtract(that.toQuadrant());
    case AngleRadian(unit): unit.subtract(that.toRadian());
    case AngleRevolution(unit): unit.subtract(that.toRevolution());
    case AngleSecondOfArc(unit): unit.subtract(that.toSecondOfArc());
    case AngleSextant(unit): unit.subtract(that.toSextant());
    case AngleTurn(unit): unit.subtract(that.toTurn());
  }

  @:op( A*B) public function multiply(that : Float) : Angle return switch this {
    case AngleBinaryDegree(unit): unit.multiply(that);
    case AngleDegree(unit): unit.multiply(that);
    case AngleGrad(unit): unit.multiply(that);
    case AngleHourAngle(unit): unit.multiply(that);
    case AngleMinuteOfArc(unit): unit.multiply(that);
    case AnglePoint(unit): unit.multiply(that);
    case AngleQuadrant(unit): unit.multiply(that);
    case AngleRadian(unit): unit.multiply(that);
    case AngleRevolution(unit): unit.multiply(that);
    case AngleSecondOfArc(unit): unit.multiply(that);
    case AngleSextant(unit): unit.multiply(that);
    case AngleTurn(unit): unit.multiply(that);
  }

  @:op( A/B) public function divide(that : Float) : Angle return switch this {
    case AngleBinaryDegree(unit): unit.divide(that);
    case AngleDegree(unit): unit.divide(that);
    case AngleGrad(unit): unit.divide(that);
    case AngleHourAngle(unit): unit.divide(that);
    case AngleMinuteOfArc(unit): unit.divide(that);
    case AnglePoint(unit): unit.divide(that);
    case AngleQuadrant(unit): unit.divide(that);
    case AngleRadian(unit): unit.divide(that);
    case AngleRevolution(unit): unit.divide(that);
    case AngleSecondOfArc(unit): unit.divide(that);
    case AngleSextant(unit): unit.divide(that);
    case AngleTurn(unit): unit.divide(that);
  }

  @:op( A%B) public function modulo(that : Float) : Angle return switch this {
    case AngleBinaryDegree(unit): unit.modulo(that);
    case AngleDegree(unit): unit.modulo(that);
    case AngleGrad(unit): unit.modulo(that);
    case AngleHourAngle(unit): unit.modulo(that);
    case AngleMinuteOfArc(unit): unit.modulo(that);
    case AnglePoint(unit): unit.modulo(that);
    case AngleQuadrant(unit): unit.modulo(that);
    case AngleRadian(unit): unit.modulo(that);
    case AngleRevolution(unit): unit.modulo(that);
    case AngleSecondOfArc(unit): unit.modulo(that);
    case AngleSextant(unit): unit.modulo(that);
    case AngleTurn(unit): unit.modulo(that);
  }

  public function min(that : Angle) : Angle return switch this {
    case AngleBinaryDegree(unit): unit.min(that.toBinaryDegree());
    case AngleDegree(unit): unit.min(that.toDegree());
    case AngleGrad(unit): unit.min(that.toGrad());
    case AngleHourAngle(unit): unit.min(that.toHourAngle());
    case AngleMinuteOfArc(unit): unit.min(that.toMinuteOfArc());
    case AnglePoint(unit): unit.min(that.toPoint());
    case AngleQuadrant(unit): unit.min(that.toQuadrant());
    case AngleRadian(unit): unit.min(that.toRadian());
    case AngleRevolution(unit): unit.min(that.toRevolution());
    case AngleSecondOfArc(unit): unit.min(that.toSecondOfArc());
    case AngleSextant(unit): unit.min(that.toSextant());
    case AngleTurn(unit): unit.min(that.toTurn());
  }

  public function max(that : Angle) : Angle return switch this {
    case AngleBinaryDegree(unit): unit.max(that.toBinaryDegree());
    case AngleDegree(unit): unit.max(that.toDegree());
    case AngleGrad(unit): unit.max(that.toGrad());
    case AngleHourAngle(unit): unit.max(that.toHourAngle());
    case AngleMinuteOfArc(unit): unit.max(that.toMinuteOfArc());
    case AnglePoint(unit): unit.max(that.toPoint());
    case AngleQuadrant(unit): unit.max(that.toQuadrant());
    case AngleRadian(unit): unit.max(that.toRadian());
    case AngleRevolution(unit): unit.max(that.toRevolution());
    case AngleSecondOfArc(unit): unit.max(that.toSecondOfArc());
    case AngleSextant(unit): unit.max(that.toSextant());
    case AngleTurn(unit): unit.max(that.toTurn());
  }

  public function equalsTo(that : Angle) : Bool return switch this {
    case AngleBinaryDegree(unit): unit.equalsTo(that.toBinaryDegree());
    case AngleDegree(unit): unit.equalsTo(that.toDegree());
    case AngleGrad(unit): unit.equalsTo(that.toGrad());
    case AngleHourAngle(unit): unit.equalsTo(that.toHourAngle());
    case AngleMinuteOfArc(unit): unit.equalsTo(that.toMinuteOfArc());
    case AnglePoint(unit): unit.equalsTo(that.toPoint());
    case AngleQuadrant(unit): unit.equalsTo(that.toQuadrant());
    case AngleRadian(unit): unit.equalsTo(that.toRadian());
    case AngleRevolution(unit): unit.equalsTo(that.toRevolution());
    case AngleSecondOfArc(unit): unit.equalsTo(that.toSecondOfArc());
    case AngleSextant(unit): unit.equalsTo(that.toSextant());
    case AngleTurn(unit): unit.equalsTo(that.toTurn());
  }
  @:op(A==B)
  public static function equals(self : Angle, that : Angle) : Bool
    return self.equalsTo(that);

  public function nearEqualsTo(that : Angle) : Bool return switch this {
    case AngleBinaryDegree(unit): unit.nearEqualsTo(that.toBinaryDegree());
    case AngleDegree(unit): unit.nearEqualsTo(that.toDegree());
    case AngleGrad(unit): unit.nearEqualsTo(that.toGrad());
    case AngleHourAngle(unit): unit.nearEqualsTo(that.toHourAngle());
    case AngleMinuteOfArc(unit): unit.nearEqualsTo(that.toMinuteOfArc());
    case AnglePoint(unit): unit.nearEqualsTo(that.toPoint());
    case AngleQuadrant(unit): unit.nearEqualsTo(that.toQuadrant());
    case AngleRadian(unit): unit.nearEqualsTo(that.toRadian());
    case AngleRevolution(unit): unit.nearEqualsTo(that.toRevolution());
    case AngleSecondOfArc(unit): unit.nearEqualsTo(that.toSecondOfArc());
    case AngleSextant(unit): unit.nearEqualsTo(that.toSextant());
    case AngleTurn(unit): unit.nearEqualsTo(that.toTurn());
  }
  public static function nearEquals(self : Angle, that : Angle) : Bool
    return self.nearEqualsTo(that);

  public function lessThan(that : Angle) : Bool return switch this {
    case AngleBinaryDegree(unit): unit.lessThan(that.toBinaryDegree());
    case AngleDegree(unit): unit.lessThan(that.toDegree());
    case AngleGrad(unit): unit.lessThan(that.toGrad());
    case AngleHourAngle(unit): unit.lessThan(that.toHourAngle());
    case AngleMinuteOfArc(unit): unit.lessThan(that.toMinuteOfArc());
    case AnglePoint(unit): unit.lessThan(that.toPoint());
    case AngleQuadrant(unit): unit.lessThan(that.toQuadrant());
    case AngleRadian(unit): unit.lessThan(that.toRadian());
    case AngleRevolution(unit): unit.lessThan(that.toRevolution());
    case AngleSecondOfArc(unit): unit.lessThan(that.toSecondOfArc());
    case AngleSextant(unit): unit.lessThan(that.toSextant());
    case AngleTurn(unit): unit.lessThan(that.toTurn());
  }
  @:op( A<B)
  public static function less(self : Angle, that : Angle) : Bool
    return self.lessThan(that);

  public function lessEqualsTo(that : Angle) : Bool return switch this {
    case AngleBinaryDegree(unit): unit.lessEqualsTo(that.toBinaryDegree());
    case AngleDegree(unit): unit.lessEqualsTo(that.toDegree());
    case AngleGrad(unit): unit.lessEqualsTo(that.toGrad());
    case AngleHourAngle(unit): unit.lessEqualsTo(that.toHourAngle());
    case AngleMinuteOfArc(unit): unit.lessEqualsTo(that.toMinuteOfArc());
    case AnglePoint(unit): unit.lessEqualsTo(that.toPoint());
    case AngleQuadrant(unit): unit.lessEqualsTo(that.toQuadrant());
    case AngleRadian(unit): unit.lessEqualsTo(that.toRadian());
    case AngleRevolution(unit): unit.lessEqualsTo(that.toRevolution());
    case AngleSecondOfArc(unit): unit.lessEqualsTo(that.toSecondOfArc());
    case AngleSextant(unit): unit.lessEqualsTo(that.toSextant());
    case AngleTurn(unit): unit.lessEqualsTo(that.toTurn());
  }
  @:op( A<B)
  public static function lessEquals(self : Angle, that : Angle) : Bool
    return self.lessEqualsTo(that);

  public function greaterThan(that : Angle) : Bool return switch this {
    case AngleBinaryDegree(unit): unit.greaterThan(that.toBinaryDegree());
    case AngleDegree(unit): unit.greaterThan(that.toDegree());
    case AngleGrad(unit): unit.greaterThan(that.toGrad());
    case AngleHourAngle(unit): unit.greaterThan(that.toHourAngle());
    case AngleMinuteOfArc(unit): unit.greaterThan(that.toMinuteOfArc());
    case AnglePoint(unit): unit.greaterThan(that.toPoint());
    case AngleQuadrant(unit): unit.greaterThan(that.toQuadrant());
    case AngleRadian(unit): unit.greaterThan(that.toRadian());
    case AngleRevolution(unit): unit.greaterThan(that.toRevolution());
    case AngleSecondOfArc(unit): unit.greaterThan(that.toSecondOfArc());
    case AngleSextant(unit): unit.greaterThan(that.toSextant());
    case AngleTurn(unit): unit.greaterThan(that.toTurn());
  }
  @:op( A>B)
  public static function greater(self : Angle, that : Angle) : Bool
    return self.greaterThan(that);

  public function greaterEqualsTo(that : Angle) : Bool return switch this {
    case AngleBinaryDegree(unit): unit.greaterEqualsTo(that.toBinaryDegree());
    case AngleDegree(unit): unit.greaterEqualsTo(that.toDegree());
    case AngleGrad(unit): unit.greaterEqualsTo(that.toGrad());
    case AngleHourAngle(unit): unit.greaterEqualsTo(that.toHourAngle());
    case AngleMinuteOfArc(unit): unit.greaterEqualsTo(that.toMinuteOfArc());
    case AnglePoint(unit): unit.greaterEqualsTo(that.toPoint());
    case AngleQuadrant(unit): unit.greaterEqualsTo(that.toQuadrant());
    case AngleRadian(unit): unit.greaterEqualsTo(that.toRadian());
    case AngleRevolution(unit): unit.greaterEqualsTo(that.toRevolution());
    case AngleSecondOfArc(unit): unit.greaterEqualsTo(that.toSecondOfArc());
    case AngleSextant(unit): unit.greaterEqualsTo(that.toSextant());
    case AngleTurn(unit): unit.greaterEqualsTo(that.toTurn());
  }
  @:op( A<B)
  public static function greatersEquals(self : Angle, that : Angle) : Bool
    return self.greaterEqualsTo(that);


  @:to public function toBinaryDegree() : BinaryDegree return switch this {
    case AngleBinaryDegree(unit): unit.toBinaryDegree();
    case AngleDegree(unit): unit.toDegree();
    case AngleGrad(unit): unit.toGrad();
    case AngleHourAngle(unit): unit.toHourAngle();
    case AngleMinuteOfArc(unit): unit.toMinuteOfArc();
    case AnglePoint(unit): unit.toPoint();
    case AngleQuadrant(unit): unit.toQuadrant();
    case AngleRadian(unit): unit.toRadian();
    case AngleRevolution(unit): unit.toRevolution();
    case AngleSecondOfArc(unit): unit.toSecondOfArc();
    case AngleSextant(unit): unit.toSextant();
    case AngleTurn(unit): unit.toTurn();
  }

  @:to public function toDegree() : Degree return switch this {
    case AngleBinaryDegree(unit): unit.toBinaryDegree();
    case AngleDegree(unit): unit.toDegree();
    case AngleGrad(unit): unit.toGrad();
    case AngleHourAngle(unit): unit.toHourAngle();
    case AngleMinuteOfArc(unit): unit.toMinuteOfArc();
    case AnglePoint(unit): unit.toPoint();
    case AngleQuadrant(unit): unit.toQuadrant();
    case AngleRadian(unit): unit.toRadian();
    case AngleRevolution(unit): unit.toRevolution();
    case AngleSecondOfArc(unit): unit.toSecondOfArc();
    case AngleSextant(unit): unit.toSextant();
    case AngleTurn(unit): unit.toTurn();
  }

  @:to public function toGrad() : Grad return switch this {
    case AngleBinaryDegree(unit): unit.toBinaryDegree();
    case AngleDegree(unit): unit.toDegree();
    case AngleGrad(unit): unit.toGrad();
    case AngleHourAngle(unit): unit.toHourAngle();
    case AngleMinuteOfArc(unit): unit.toMinuteOfArc();
    case AnglePoint(unit): unit.toPoint();
    case AngleQuadrant(unit): unit.toQuadrant();
    case AngleRadian(unit): unit.toRadian();
    case AngleRevolution(unit): unit.toRevolution();
    case AngleSecondOfArc(unit): unit.toSecondOfArc();
    case AngleSextant(unit): unit.toSextant();
    case AngleTurn(unit): unit.toTurn();
  }

  @:to public function toHourAngle() : HourAngle return switch this {
    case AngleBinaryDegree(unit): unit.toBinaryDegree();
    case AngleDegree(unit): unit.toDegree();
    case AngleGrad(unit): unit.toGrad();
    case AngleHourAngle(unit): unit.toHourAngle();
    case AngleMinuteOfArc(unit): unit.toMinuteOfArc();
    case AnglePoint(unit): unit.toPoint();
    case AngleQuadrant(unit): unit.toQuadrant();
    case AngleRadian(unit): unit.toRadian();
    case AngleRevolution(unit): unit.toRevolution();
    case AngleSecondOfArc(unit): unit.toSecondOfArc();
    case AngleSextant(unit): unit.toSextant();
    case AngleTurn(unit): unit.toTurn();
  }

  @:to public function toMinuteOfArc() : MinuteOfArc return switch this {
    case AngleBinaryDegree(unit): unit.toBinaryDegree();
    case AngleDegree(unit): unit.toDegree();
    case AngleGrad(unit): unit.toGrad();
    case AngleHourAngle(unit): unit.toHourAngle();
    case AngleMinuteOfArc(unit): unit.toMinuteOfArc();
    case AnglePoint(unit): unit.toPoint();
    case AngleQuadrant(unit): unit.toQuadrant();
    case AngleRadian(unit): unit.toRadian();
    case AngleRevolution(unit): unit.toRevolution();
    case AngleSecondOfArc(unit): unit.toSecondOfArc();
    case AngleSextant(unit): unit.toSextant();
    case AngleTurn(unit): unit.toTurn();
  }

  @:to public function toPoint() : Point return switch this {
    case AngleBinaryDegree(unit): unit.toBinaryDegree();
    case AngleDegree(unit): unit.toDegree();
    case AngleGrad(unit): unit.toGrad();
    case AngleHourAngle(unit): unit.toHourAngle();
    case AngleMinuteOfArc(unit): unit.toMinuteOfArc();
    case AnglePoint(unit): unit.toPoint();
    case AngleQuadrant(unit): unit.toQuadrant();
    case AngleRadian(unit): unit.toRadian();
    case AngleRevolution(unit): unit.toRevolution();
    case AngleSecondOfArc(unit): unit.toSecondOfArc();
    case AngleSextant(unit): unit.toSextant();
    case AngleTurn(unit): unit.toTurn();
  }

  @:to public function toQuadrant() : Quadrant return switch this {
    case AngleBinaryDegree(unit): unit.toBinaryDegree();
    case AngleDegree(unit): unit.toDegree();
    case AngleGrad(unit): unit.toGrad();
    case AngleHourAngle(unit): unit.toHourAngle();
    case AngleMinuteOfArc(unit): unit.toMinuteOfArc();
    case AnglePoint(unit): unit.toPoint();
    case AngleQuadrant(unit): unit.toQuadrant();
    case AngleRadian(unit): unit.toRadian();
    case AngleRevolution(unit): unit.toRevolution();
    case AngleSecondOfArc(unit): unit.toSecondOfArc();
    case AngleSextant(unit): unit.toSextant();
    case AngleTurn(unit): unit.toTurn();
  }

  @:to public function toRadian() : Radian return switch this {
    case AngleBinaryDegree(unit): unit.toBinaryDegree();
    case AngleDegree(unit): unit.toDegree();
    case AngleGrad(unit): unit.toGrad();
    case AngleHourAngle(unit): unit.toHourAngle();
    case AngleMinuteOfArc(unit): unit.toMinuteOfArc();
    case AnglePoint(unit): unit.toPoint();
    case AngleQuadrant(unit): unit.toQuadrant();
    case AngleRadian(unit): unit.toRadian();
    case AngleRevolution(unit): unit.toRevolution();
    case AngleSecondOfArc(unit): unit.toSecondOfArc();
    case AngleSextant(unit): unit.toSextant();
    case AngleTurn(unit): unit.toTurn();
  }

  @:to public function toRevolution() : Revolution return switch this {
    case AngleBinaryDegree(unit): unit.toBinaryDegree();
    case AngleDegree(unit): unit.toDegree();
    case AngleGrad(unit): unit.toGrad();
    case AngleHourAngle(unit): unit.toHourAngle();
    case AngleMinuteOfArc(unit): unit.toMinuteOfArc();
    case AnglePoint(unit): unit.toPoint();
    case AngleQuadrant(unit): unit.toQuadrant();
    case AngleRadian(unit): unit.toRadian();
    case AngleRevolution(unit): unit.toRevolution();
    case AngleSecondOfArc(unit): unit.toSecondOfArc();
    case AngleSextant(unit): unit.toSextant();
    case AngleTurn(unit): unit.toTurn();
  }

  @:to public function toSecondOfArc() : SecondOfArc return switch this {
    case AngleBinaryDegree(unit): unit.toBinaryDegree();
    case AngleDegree(unit): unit.toDegree();
    case AngleGrad(unit): unit.toGrad();
    case AngleHourAngle(unit): unit.toHourAngle();
    case AngleMinuteOfArc(unit): unit.toMinuteOfArc();
    case AnglePoint(unit): unit.toPoint();
    case AngleQuadrant(unit): unit.toQuadrant();
    case AngleRadian(unit): unit.toRadian();
    case AngleRevolution(unit): unit.toRevolution();
    case AngleSecondOfArc(unit): unit.toSecondOfArc();
    case AngleSextant(unit): unit.toSextant();
    case AngleTurn(unit): unit.toTurn();
  }

  @:to public function toSextant() : Sextant return switch this {
    case AngleBinaryDegree(unit): unit.toBinaryDegree();
    case AngleDegree(unit): unit.toDegree();
    case AngleGrad(unit): unit.toGrad();
    case AngleHourAngle(unit): unit.toHourAngle();
    case AngleMinuteOfArc(unit): unit.toMinuteOfArc();
    case AnglePoint(unit): unit.toPoint();
    case AngleQuadrant(unit): unit.toQuadrant();
    case AngleRadian(unit): unit.toRadian();
    case AngleRevolution(unit): unit.toRevolution();
    case AngleSecondOfArc(unit): unit.toSecondOfArc();
    case AngleSextant(unit): unit.toSextant();
    case AngleTurn(unit): unit.toTurn();
  }

  @:to public function toTurn() : Turn return switch this {
    case AngleBinaryDegree(unit): unit.toBinaryDegree();
    case AngleDegree(unit): unit.toDegree();
    case AngleGrad(unit): unit.toGrad();
    case AngleHourAngle(unit): unit.toHourAngle();
    case AngleMinuteOfArc(unit): unit.toMinuteOfArc();
    case AnglePoint(unit): unit.toPoint();
    case AngleQuadrant(unit): unit.toQuadrant();
    case AngleRadian(unit): unit.toRadian();
    case AngleRevolution(unit): unit.toRevolution();
    case AngleSecondOfArc(unit): unit.toSecondOfArc();
    case AngleSextant(unit): unit.toSextant();
    case AngleTurn(unit): unit.toTurn();
  }

  function get_value() : Float
    return getInfo().value;

  function get_symbol() : String
    return getInfo().symbol;

  public function toString() {
    var info = getInfo();
    return "" + info.value + info.symbol;
  }

  inline static public function pointToAngle(x : Float, y : Float) : Angle
    return (Math.atan2(y, x) : Radian);

  inline public function cos() : Float
    return toRadian().cos();

  inline public function sin() : Float
    return toRadian().sin();

  public function normalize() : Angle return switch this {
    case AngleBinaryDegree(unit): unit.normalize();
    case AngleDegree(unit): unit.normalize();
    case AngleGrad(unit): unit.normalize();
    case AngleHourAngle(unit): unit.normalize();
    case AngleMinuteOfArc(unit): unit.normalize();
    case AnglePoint(unit): unit.normalize();
    case AngleQuadrant(unit): unit.normalize();
    case AngleRadian(unit): unit.normalize();
    case AngleRevolution(unit): unit.normalize();
    case AngleSecondOfArc(unit): unit.normalize();
    case AngleSextant(unit): unit.normalize();
    case AngleTurn(unit): unit.normalize();
  }

  public function normalizeDirection() : Angle return switch this {
    case AngleBinaryDegree(unit): unit.normalizeDirection();
    case AngleDegree(unit): unit.normalizeDirection();
    case AngleGrad(unit): unit.normalizeDirection();
    case AngleHourAngle(unit): unit.normalizeDirection();
    case AngleMinuteOfArc(unit): unit.normalizeDirection();
    case AnglePoint(unit): unit.normalizeDirection();
    case AngleQuadrant(unit): unit.normalizeDirection();
    case AngleRadian(unit): unit.normalizeDirection();
    case AngleRevolution(unit): unit.normalizeDirection();
    case AngleSecondOfArc(unit): unit.normalizeDirection();
    case AngleSextant(unit): unit.normalizeDirection();
    case AngleTurn(unit): unit.normalizeDirection();
  }
}

enum AngleImpl {
  AngleBinaryDegree(unit : BinaryDegree);
  AngleDegree(unit : Degree);
  AngleGrad(unit : Grad);
  AngleHourAngle(unit : HourAngle);
  AngleMinuteOfArc(unit : MinuteOfArc);
  AnglePoint(unit : Point);
  AngleQuadrant(unit : Quadrant);
  AngleRadian(unit : Radian);
  AngleRevolution(unit : Revolution);
  AngleSecondOfArc(unit : SecondOfArc);
  AngleSextant(unit : Sextant);
  AngleTurn(unit : Turn);
}
