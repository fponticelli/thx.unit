package thx.unit;

import thx.unit.length.*;
import thx.Error;

abstract Length(LengthImpl) from LengthImpl to LengthImpl {
  @:from static public function fromString(s : String) : Length {
    var o = Units.parseUnitDecimal(s);
    if(null == o) throw new Error("unable to parse " + s + " to Length");
    return fromPair(o);
  }

  @:from inline static public function kilometre(value : Kilometre) : Length
    return LengthKilometre(value);

  @:from inline static public function metre(value : Metre) : Length
    return LengthMetre(value);

  @:from inline static public function centimetre(value : Centimetre) : Length
    return LengthCentimetre(value);

  @:from inline static public function millimetre(value : Millimetre) : Length
    return LengthMillimetre(value);

  @:from inline static public function micrometre(value : Micrometre) : Length
    return LengthMicrometre(value);

  @:from inline static public function nanometre(value : Nanometre) : Length
    return LengthNanometre(value);

  @:from inline static public function league(value : League) : Length
    return LengthLeague(value);

  @:from inline static public function mile(value : Mile) : Length
    return LengthMile(value);

  @:from inline static public function furlong(value : Furlong) : Length
    return LengthFurlong(value);

  @:from inline static public function chain(value : Chain) : Length
    return LengthChain(value);

  @:from inline static public function yard(value : Yard) : Length
    return LengthYard(value);

  @:from inline static public function foot(value : Foot) : Length
    return LengthFoot(value);

  @:from inline static public function inch(value : Inch) : Length
    return LengthInch(value);

  @:from inline static public function line(value : Line) : Length
    return LengthLine(value);

  @:from inline static public function thou(value : Thou) : Length
    return LengthThou(value);

  @:from inline static public function fathom(value : Fathom) : Length
    return LengthFathom(value);

  @:from inline static public function nauticalMile(value : NauticalMile) : Length
    return LengthNauticalMile(value);

  @:from inline static public function earthRadius(value : EarthRadius) : Length
    return LengthEarthRadius(value);

  @:from inline static public function astronomicalUnit(value : AstronomicalUnit) : Length
    return LengthAstronomicalUnit(value);

  @:from inline static public function lightYear(value : LightYear) : Length
    return LengthLightYear(value);

  public static function fromPair(info : { value : Decimal, symbol : String}, ?pos : haxe.PosInfos) : Length return switch info.symbol.toLowerCase() {
    case "km", "kilometre": LengthKilometre(info.value);
    case "m", "metre": LengthMetre(info.value);
    case "cm", "centimetre": LengthCentimetre(info.value);
    case "mm", "millimetre": LengthMillimetre(info.value);
    case "µm", "micrometre": LengthMicrometre(info.value);
    case "nm", "nanometre": LengthNanometre(info.value);
    case "lea", "league": LengthLeague(info.value);
    case "mi", "mile": LengthMile(info.value);
    case "fur", "furlong": LengthFurlong(info.value);
    case "ch", "chain": LengthChain(info.value);
    case "yd", "yard": LengthYard(info.value);
    case "ft", "foot": LengthFoot(info.value);
    case "in", "inch": LengthInch(info.value);
    case "line", "line": LengthLine(info.value);
    case "th", "thou": LengthThou(info.value);
    case "ftm", "fathom": LengthFathom(info.value);
    case "m", "nautical mile": LengthNauticalMile(info.value);
    case "earth radius", "earth radius": LengthEarthRadius(info.value);
    case "au", "astronomical unit": LengthAstronomicalUnit(info.value);
    case "ly", "light year": LengthLightYear(info.value);
    case _: throw new thx.Error("invalid symbol " + info.symbol, pos);
  }

  public var value(get, never) : Decimal;
  public var symbol(get, never) : String;

  function getInfo() return switch this {
  case LengthKilometre(unit): { value : unit.toDecimal(), symbol : Kilometre.symbol };
  case LengthMetre(unit): { value : unit.toDecimal(), symbol : Metre.symbol };
  case LengthCentimetre(unit): { value : unit.toDecimal(), symbol : Centimetre.symbol };
  case LengthMillimetre(unit): { value : unit.toDecimal(), symbol : Millimetre.symbol };
  case LengthMicrometre(unit): { value : unit.toDecimal(), symbol : Micrometre.symbol };
  case LengthNanometre(unit): { value : unit.toDecimal(), symbol : Nanometre.symbol };
  case LengthLeague(unit): { value : unit.toDecimal(), symbol : League.symbol };
  case LengthMile(unit): { value : unit.toDecimal(), symbol : Mile.symbol };
  case LengthFurlong(unit): { value : unit.toDecimal(), symbol : Furlong.symbol };
  case LengthChain(unit): { value : unit.toDecimal(), symbol : Chain.symbol };
  case LengthYard(unit): { value : unit.toDecimal(), symbol : Yard.symbol };
  case LengthFoot(unit): { value : unit.toDecimal(), symbol : Foot.symbol };
  case LengthInch(unit): { value : unit.toDecimal(), symbol : Inch.symbol };
  case LengthLine(unit): { value : unit.toDecimal(), symbol : Line.symbol };
  case LengthThou(unit): { value : unit.toDecimal(), symbol : Thou.symbol };
  case LengthFathom(unit): { value : unit.toDecimal(), symbol : Fathom.symbol };
  case LengthNauticalMile(unit): { value : unit.toDecimal(), symbol : NauticalMile.symbol };
  case LengthEarthRadius(unit): { value : unit.toDecimal(), symbol : EarthRadius.symbol };
  case LengthAstronomicalUnit(unit): { value : unit.toDecimal(), symbol : AstronomicalUnit.symbol };
  case LengthLightYear(unit): { value : unit.toDecimal(), symbol : LightYear.symbol };
  }

  public function abs() : Length return switch this {
    case LengthKilometre(unit): unit.abs();
    case LengthMetre(unit): unit.abs();
    case LengthCentimetre(unit): unit.abs();
    case LengthMillimetre(unit): unit.abs();
    case LengthMicrometre(unit): unit.abs();
    case LengthNanometre(unit): unit.abs();
    case LengthLeague(unit): unit.abs();
    case LengthMile(unit): unit.abs();
    case LengthFurlong(unit): unit.abs();
    case LengthChain(unit): unit.abs();
    case LengthYard(unit): unit.abs();
    case LengthFoot(unit): unit.abs();
    case LengthInch(unit): unit.abs();
    case LengthLine(unit): unit.abs();
    case LengthThou(unit): unit.abs();
    case LengthFathom(unit): unit.abs();
    case LengthNauticalMile(unit): unit.abs();
    case LengthEarthRadius(unit): unit.abs();
    case LengthAstronomicalUnit(unit): unit.abs();
    case LengthLightYear(unit): unit.abs();
  }

  @:op( -A ) public function negate() : Length return switch this {
    case LengthKilometre(unit): unit.negate();
    case LengthMetre(unit): unit.negate();
    case LengthCentimetre(unit): unit.negate();
    case LengthMillimetre(unit): unit.negate();
    case LengthMicrometre(unit): unit.negate();
    case LengthNanometre(unit): unit.negate();
    case LengthLeague(unit): unit.negate();
    case LengthMile(unit): unit.negate();
    case LengthFurlong(unit): unit.negate();
    case LengthChain(unit): unit.negate();
    case LengthYard(unit): unit.negate();
    case LengthFoot(unit): unit.negate();
    case LengthInch(unit): unit.negate();
    case LengthLine(unit): unit.negate();
    case LengthThou(unit): unit.negate();
    case LengthFathom(unit): unit.negate();
    case LengthNauticalMile(unit): unit.negate();
    case LengthEarthRadius(unit): unit.negate();
    case LengthAstronomicalUnit(unit): unit.negate();
    case LengthLightYear(unit): unit.negate();
  }

  @:op( A+B) public function add(that : Length) : Length return switch this {
    case LengthKilometre(unit): unit.add(that.toKilometre());
    case LengthMetre(unit): unit.add(that.toMetre());
    case LengthCentimetre(unit): unit.add(that.toCentimetre());
    case LengthMillimetre(unit): unit.add(that.toMillimetre());
    case LengthMicrometre(unit): unit.add(that.toMicrometre());
    case LengthNanometre(unit): unit.add(that.toNanometre());
    case LengthLeague(unit): unit.add(that.toLeague());
    case LengthMile(unit): unit.add(that.toMile());
    case LengthFurlong(unit): unit.add(that.toFurlong());
    case LengthChain(unit): unit.add(that.toChain());
    case LengthYard(unit): unit.add(that.toYard());
    case LengthFoot(unit): unit.add(that.toFoot());
    case LengthInch(unit): unit.add(that.toInch());
    case LengthLine(unit): unit.add(that.toLine());
    case LengthThou(unit): unit.add(that.toThou());
    case LengthFathom(unit): unit.add(that.toFathom());
    case LengthNauticalMile(unit): unit.add(that.toNauticalMile());
    case LengthEarthRadius(unit): unit.add(that.toEarthRadius());
    case LengthAstronomicalUnit(unit): unit.add(that.toAstronomicalUnit());
    case LengthLightYear(unit): unit.add(that.toLightYear());
  }

  @:op( A-B) public function subtract(that : Length) : Length return switch this {
    case LengthKilometre(unit): unit.subtract(that.toKilometre());
    case LengthMetre(unit): unit.subtract(that.toMetre());
    case LengthCentimetre(unit): unit.subtract(that.toCentimetre());
    case LengthMillimetre(unit): unit.subtract(that.toMillimetre());
    case LengthMicrometre(unit): unit.subtract(that.toMicrometre());
    case LengthNanometre(unit): unit.subtract(that.toNanometre());
    case LengthLeague(unit): unit.subtract(that.toLeague());
    case LengthMile(unit): unit.subtract(that.toMile());
    case LengthFurlong(unit): unit.subtract(that.toFurlong());
    case LengthChain(unit): unit.subtract(that.toChain());
    case LengthYard(unit): unit.subtract(that.toYard());
    case LengthFoot(unit): unit.subtract(that.toFoot());
    case LengthInch(unit): unit.subtract(that.toInch());
    case LengthLine(unit): unit.subtract(that.toLine());
    case LengthThou(unit): unit.subtract(that.toThou());
    case LengthFathom(unit): unit.subtract(that.toFathom());
    case LengthNauticalMile(unit): unit.subtract(that.toNauticalMile());
    case LengthEarthRadius(unit): unit.subtract(that.toEarthRadius());
    case LengthAstronomicalUnit(unit): unit.subtract(that.toAstronomicalUnit());
    case LengthLightYear(unit): unit.subtract(that.toLightYear());
  }

  @:op( A*B) public function multiply(that : Decimal) : Length return switch this {
    case LengthKilometre(unit): unit.multiply(that);
    case LengthMetre(unit): unit.multiply(that);
    case LengthCentimetre(unit): unit.multiply(that);
    case LengthMillimetre(unit): unit.multiply(that);
    case LengthMicrometre(unit): unit.multiply(that);
    case LengthNanometre(unit): unit.multiply(that);
    case LengthLeague(unit): unit.multiply(that);
    case LengthMile(unit): unit.multiply(that);
    case LengthFurlong(unit): unit.multiply(that);
    case LengthChain(unit): unit.multiply(that);
    case LengthYard(unit): unit.multiply(that);
    case LengthFoot(unit): unit.multiply(that);
    case LengthInch(unit): unit.multiply(that);
    case LengthLine(unit): unit.multiply(that);
    case LengthThou(unit): unit.multiply(that);
    case LengthFathom(unit): unit.multiply(that);
    case LengthNauticalMile(unit): unit.multiply(that);
    case LengthEarthRadius(unit): unit.multiply(that);
    case LengthAstronomicalUnit(unit): unit.multiply(that);
    case LengthLightYear(unit): unit.multiply(that);
  }

  @:op( A/B) public function divide(that : Decimal) : Length return switch this {
    case LengthKilometre(unit): unit.divide(that);
    case LengthMetre(unit): unit.divide(that);
    case LengthCentimetre(unit): unit.divide(that);
    case LengthMillimetre(unit): unit.divide(that);
    case LengthMicrometre(unit): unit.divide(that);
    case LengthNanometre(unit): unit.divide(that);
    case LengthLeague(unit): unit.divide(that);
    case LengthMile(unit): unit.divide(that);
    case LengthFurlong(unit): unit.divide(that);
    case LengthChain(unit): unit.divide(that);
    case LengthYard(unit): unit.divide(that);
    case LengthFoot(unit): unit.divide(that);
    case LengthInch(unit): unit.divide(that);
    case LengthLine(unit): unit.divide(that);
    case LengthThou(unit): unit.divide(that);
    case LengthFathom(unit): unit.divide(that);
    case LengthNauticalMile(unit): unit.divide(that);
    case LengthEarthRadius(unit): unit.divide(that);
    case LengthAstronomicalUnit(unit): unit.divide(that);
    case LengthLightYear(unit): unit.divide(that);
  }

  @:op( A%B) public function modulo(that : Decimal) : Length return switch this {
    case LengthKilometre(unit): unit.modulo(that);
    case LengthMetre(unit): unit.modulo(that);
    case LengthCentimetre(unit): unit.modulo(that);
    case LengthMillimetre(unit): unit.modulo(that);
    case LengthMicrometre(unit): unit.modulo(that);
    case LengthNanometre(unit): unit.modulo(that);
    case LengthLeague(unit): unit.modulo(that);
    case LengthMile(unit): unit.modulo(that);
    case LengthFurlong(unit): unit.modulo(that);
    case LengthChain(unit): unit.modulo(that);
    case LengthYard(unit): unit.modulo(that);
    case LengthFoot(unit): unit.modulo(that);
    case LengthInch(unit): unit.modulo(that);
    case LengthLine(unit): unit.modulo(that);
    case LengthThou(unit): unit.modulo(that);
    case LengthFathom(unit): unit.modulo(that);
    case LengthNauticalMile(unit): unit.modulo(that);
    case LengthEarthRadius(unit): unit.modulo(that);
    case LengthAstronomicalUnit(unit): unit.modulo(that);
    case LengthLightYear(unit): unit.modulo(that);
  }

  public function min(that : Length) : Length return switch this {
    case LengthKilometre(unit): unit.min(that.toKilometre());
    case LengthMetre(unit): unit.min(that.toMetre());
    case LengthCentimetre(unit): unit.min(that.toCentimetre());
    case LengthMillimetre(unit): unit.min(that.toMillimetre());
    case LengthMicrometre(unit): unit.min(that.toMicrometre());
    case LengthNanometre(unit): unit.min(that.toNanometre());
    case LengthLeague(unit): unit.min(that.toLeague());
    case LengthMile(unit): unit.min(that.toMile());
    case LengthFurlong(unit): unit.min(that.toFurlong());
    case LengthChain(unit): unit.min(that.toChain());
    case LengthYard(unit): unit.min(that.toYard());
    case LengthFoot(unit): unit.min(that.toFoot());
    case LengthInch(unit): unit.min(that.toInch());
    case LengthLine(unit): unit.min(that.toLine());
    case LengthThou(unit): unit.min(that.toThou());
    case LengthFathom(unit): unit.min(that.toFathom());
    case LengthNauticalMile(unit): unit.min(that.toNauticalMile());
    case LengthEarthRadius(unit): unit.min(that.toEarthRadius());
    case LengthAstronomicalUnit(unit): unit.min(that.toAstronomicalUnit());
    case LengthLightYear(unit): unit.min(that.toLightYear());
  }

  public function max(that : Length) : Length return switch this {
    case LengthKilometre(unit): unit.max(that.toKilometre());
    case LengthMetre(unit): unit.max(that.toMetre());
    case LengthCentimetre(unit): unit.max(that.toCentimetre());
    case LengthMillimetre(unit): unit.max(that.toMillimetre());
    case LengthMicrometre(unit): unit.max(that.toMicrometre());
    case LengthNanometre(unit): unit.max(that.toNanometre());
    case LengthLeague(unit): unit.max(that.toLeague());
    case LengthMile(unit): unit.max(that.toMile());
    case LengthFurlong(unit): unit.max(that.toFurlong());
    case LengthChain(unit): unit.max(that.toChain());
    case LengthYard(unit): unit.max(that.toYard());
    case LengthFoot(unit): unit.max(that.toFoot());
    case LengthInch(unit): unit.max(that.toInch());
    case LengthLine(unit): unit.max(that.toLine());
    case LengthThou(unit): unit.max(that.toThou());
    case LengthFathom(unit): unit.max(that.toFathom());
    case LengthNauticalMile(unit): unit.max(that.toNauticalMile());
    case LengthEarthRadius(unit): unit.max(that.toEarthRadius());
    case LengthAstronomicalUnit(unit): unit.max(that.toAstronomicalUnit());
    case LengthLightYear(unit): unit.max(that.toLightYear());
  }

  public function equalsTo(that : Length) : Bool return switch this {
    case LengthKilometre(unit): unit.equalsTo(that.toKilometre());
    case LengthMetre(unit): unit.equalsTo(that.toMetre());
    case LengthCentimetre(unit): unit.equalsTo(that.toCentimetre());
    case LengthMillimetre(unit): unit.equalsTo(that.toMillimetre());
    case LengthMicrometre(unit): unit.equalsTo(that.toMicrometre());
    case LengthNanometre(unit): unit.equalsTo(that.toNanometre());
    case LengthLeague(unit): unit.equalsTo(that.toLeague());
    case LengthMile(unit): unit.equalsTo(that.toMile());
    case LengthFurlong(unit): unit.equalsTo(that.toFurlong());
    case LengthChain(unit): unit.equalsTo(that.toChain());
    case LengthYard(unit): unit.equalsTo(that.toYard());
    case LengthFoot(unit): unit.equalsTo(that.toFoot());
    case LengthInch(unit): unit.equalsTo(that.toInch());
    case LengthLine(unit): unit.equalsTo(that.toLine());
    case LengthThou(unit): unit.equalsTo(that.toThou());
    case LengthFathom(unit): unit.equalsTo(that.toFathom());
    case LengthNauticalMile(unit): unit.equalsTo(that.toNauticalMile());
    case LengthEarthRadius(unit): unit.equalsTo(that.toEarthRadius());
    case LengthAstronomicalUnit(unit): unit.equalsTo(that.toAstronomicalUnit());
    case LengthLightYear(unit): unit.equalsTo(that.toLightYear());
  }
  @:op(A==B)
  public static function equals(self : Length, that : Length) : Bool
    return self.equalsTo(that);

  public function nearEqualsTo(that : Length) : Bool return switch this {
    case LengthKilometre(unit): unit.nearEqualsTo(that.toKilometre());
    case LengthMetre(unit): unit.nearEqualsTo(that.toMetre());
    case LengthCentimetre(unit): unit.nearEqualsTo(that.toCentimetre());
    case LengthMillimetre(unit): unit.nearEqualsTo(that.toMillimetre());
    case LengthMicrometre(unit): unit.nearEqualsTo(that.toMicrometre());
    case LengthNanometre(unit): unit.nearEqualsTo(that.toNanometre());
    case LengthLeague(unit): unit.nearEqualsTo(that.toLeague());
    case LengthMile(unit): unit.nearEqualsTo(that.toMile());
    case LengthFurlong(unit): unit.nearEqualsTo(that.toFurlong());
    case LengthChain(unit): unit.nearEqualsTo(that.toChain());
    case LengthYard(unit): unit.nearEqualsTo(that.toYard());
    case LengthFoot(unit): unit.nearEqualsTo(that.toFoot());
    case LengthInch(unit): unit.nearEqualsTo(that.toInch());
    case LengthLine(unit): unit.nearEqualsTo(that.toLine());
    case LengthThou(unit): unit.nearEqualsTo(that.toThou());
    case LengthFathom(unit): unit.nearEqualsTo(that.toFathom());
    case LengthNauticalMile(unit): unit.nearEqualsTo(that.toNauticalMile());
    case LengthEarthRadius(unit): unit.nearEqualsTo(that.toEarthRadius());
    case LengthAstronomicalUnit(unit): unit.nearEqualsTo(that.toAstronomicalUnit());
    case LengthLightYear(unit): unit.nearEqualsTo(that.toLightYear());
  }
  public static function nearEquals(self : Length, that : Length) : Bool
    return self.nearEqualsTo(that);

  public function lessThan(that : Length) : Bool return switch this {
    case LengthKilometre(unit): unit.lessThan(that.toKilometre());
    case LengthMetre(unit): unit.lessThan(that.toMetre());
    case LengthCentimetre(unit): unit.lessThan(that.toCentimetre());
    case LengthMillimetre(unit): unit.lessThan(that.toMillimetre());
    case LengthMicrometre(unit): unit.lessThan(that.toMicrometre());
    case LengthNanometre(unit): unit.lessThan(that.toNanometre());
    case LengthLeague(unit): unit.lessThan(that.toLeague());
    case LengthMile(unit): unit.lessThan(that.toMile());
    case LengthFurlong(unit): unit.lessThan(that.toFurlong());
    case LengthChain(unit): unit.lessThan(that.toChain());
    case LengthYard(unit): unit.lessThan(that.toYard());
    case LengthFoot(unit): unit.lessThan(that.toFoot());
    case LengthInch(unit): unit.lessThan(that.toInch());
    case LengthLine(unit): unit.lessThan(that.toLine());
    case LengthThou(unit): unit.lessThan(that.toThou());
    case LengthFathom(unit): unit.lessThan(that.toFathom());
    case LengthNauticalMile(unit): unit.lessThan(that.toNauticalMile());
    case LengthEarthRadius(unit): unit.lessThan(that.toEarthRadius());
    case LengthAstronomicalUnit(unit): unit.lessThan(that.toAstronomicalUnit());
    case LengthLightYear(unit): unit.lessThan(that.toLightYear());
  }
  @:op( A<B)
  public static function less(self : Length, that : Length) : Bool
    return self.lessThan(that);

  public function lessEqualsTo(that : Length) : Bool return switch this {
    case LengthKilometre(unit): unit.lessEqualsTo(that.toKilometre());
    case LengthMetre(unit): unit.lessEqualsTo(that.toMetre());
    case LengthCentimetre(unit): unit.lessEqualsTo(that.toCentimetre());
    case LengthMillimetre(unit): unit.lessEqualsTo(that.toMillimetre());
    case LengthMicrometre(unit): unit.lessEqualsTo(that.toMicrometre());
    case LengthNanometre(unit): unit.lessEqualsTo(that.toNanometre());
    case LengthLeague(unit): unit.lessEqualsTo(that.toLeague());
    case LengthMile(unit): unit.lessEqualsTo(that.toMile());
    case LengthFurlong(unit): unit.lessEqualsTo(that.toFurlong());
    case LengthChain(unit): unit.lessEqualsTo(that.toChain());
    case LengthYard(unit): unit.lessEqualsTo(that.toYard());
    case LengthFoot(unit): unit.lessEqualsTo(that.toFoot());
    case LengthInch(unit): unit.lessEqualsTo(that.toInch());
    case LengthLine(unit): unit.lessEqualsTo(that.toLine());
    case LengthThou(unit): unit.lessEqualsTo(that.toThou());
    case LengthFathom(unit): unit.lessEqualsTo(that.toFathom());
    case LengthNauticalMile(unit): unit.lessEqualsTo(that.toNauticalMile());
    case LengthEarthRadius(unit): unit.lessEqualsTo(that.toEarthRadius());
    case LengthAstronomicalUnit(unit): unit.lessEqualsTo(that.toAstronomicalUnit());
    case LengthLightYear(unit): unit.lessEqualsTo(that.toLightYear());
  }
  @:op( A<B)
  public static function lessEquals(self : Length, that : Length) : Bool
    return self.lessEqualsTo(that);

  public function greaterThan(that : Length) : Bool return switch this {
    case LengthKilometre(unit): unit.greaterThan(that.toKilometre());
    case LengthMetre(unit): unit.greaterThan(that.toMetre());
    case LengthCentimetre(unit): unit.greaterThan(that.toCentimetre());
    case LengthMillimetre(unit): unit.greaterThan(that.toMillimetre());
    case LengthMicrometre(unit): unit.greaterThan(that.toMicrometre());
    case LengthNanometre(unit): unit.greaterThan(that.toNanometre());
    case LengthLeague(unit): unit.greaterThan(that.toLeague());
    case LengthMile(unit): unit.greaterThan(that.toMile());
    case LengthFurlong(unit): unit.greaterThan(that.toFurlong());
    case LengthChain(unit): unit.greaterThan(that.toChain());
    case LengthYard(unit): unit.greaterThan(that.toYard());
    case LengthFoot(unit): unit.greaterThan(that.toFoot());
    case LengthInch(unit): unit.greaterThan(that.toInch());
    case LengthLine(unit): unit.greaterThan(that.toLine());
    case LengthThou(unit): unit.greaterThan(that.toThou());
    case LengthFathom(unit): unit.greaterThan(that.toFathom());
    case LengthNauticalMile(unit): unit.greaterThan(that.toNauticalMile());
    case LengthEarthRadius(unit): unit.greaterThan(that.toEarthRadius());
    case LengthAstronomicalUnit(unit): unit.greaterThan(that.toAstronomicalUnit());
    case LengthLightYear(unit): unit.greaterThan(that.toLightYear());
  }
  @:op( A>B)
  public static function greater(self : Length, that : Length) : Bool
    return self.greaterThan(that);

  public function greaterEqualsTo(that : Length) : Bool return switch this {
    case LengthKilometre(unit): unit.greaterEqualsTo(that.toKilometre());
    case LengthMetre(unit): unit.greaterEqualsTo(that.toMetre());
    case LengthCentimetre(unit): unit.greaterEqualsTo(that.toCentimetre());
    case LengthMillimetre(unit): unit.greaterEqualsTo(that.toMillimetre());
    case LengthMicrometre(unit): unit.greaterEqualsTo(that.toMicrometre());
    case LengthNanometre(unit): unit.greaterEqualsTo(that.toNanometre());
    case LengthLeague(unit): unit.greaterEqualsTo(that.toLeague());
    case LengthMile(unit): unit.greaterEqualsTo(that.toMile());
    case LengthFurlong(unit): unit.greaterEqualsTo(that.toFurlong());
    case LengthChain(unit): unit.greaterEqualsTo(that.toChain());
    case LengthYard(unit): unit.greaterEqualsTo(that.toYard());
    case LengthFoot(unit): unit.greaterEqualsTo(that.toFoot());
    case LengthInch(unit): unit.greaterEqualsTo(that.toInch());
    case LengthLine(unit): unit.greaterEqualsTo(that.toLine());
    case LengthThou(unit): unit.greaterEqualsTo(that.toThou());
    case LengthFathom(unit): unit.greaterEqualsTo(that.toFathom());
    case LengthNauticalMile(unit): unit.greaterEqualsTo(that.toNauticalMile());
    case LengthEarthRadius(unit): unit.greaterEqualsTo(that.toEarthRadius());
    case LengthAstronomicalUnit(unit): unit.greaterEqualsTo(that.toAstronomicalUnit());
    case LengthLightYear(unit): unit.greaterEqualsTo(that.toLightYear());
  }
  @:op( A<B)
  public static function greatersEquals(self : Length, that : Length) : Bool
    return self.greaterEqualsTo(that);


  @:to public function toKilometre() : Kilometre return switch this {
    case LengthKilometre(unit): unit.toKilometre();
    case LengthMetre(unit): unit.toMetre();
    case LengthCentimetre(unit): unit.toCentimetre();
    case LengthMillimetre(unit): unit.toMillimetre();
    case LengthMicrometre(unit): unit.toMicrometre();
    case LengthNanometre(unit): unit.toNanometre();
    case LengthLeague(unit): unit.toLeague();
    case LengthMile(unit): unit.toMile();
    case LengthFurlong(unit): unit.toFurlong();
    case LengthChain(unit): unit.toChain();
    case LengthYard(unit): unit.toYard();
    case LengthFoot(unit): unit.toFoot();
    case LengthInch(unit): unit.toInch();
    case LengthLine(unit): unit.toLine();
    case LengthThou(unit): unit.toThou();
    case LengthFathom(unit): unit.toFathom();
    case LengthNauticalMile(unit): unit.toNauticalMile();
    case LengthEarthRadius(unit): unit.toEarthRadius();
    case LengthAstronomicalUnit(unit): unit.toAstronomicalUnit();
    case LengthLightYear(unit): unit.toLightYear();
  }

  @:to public function toMetre() : Metre return switch this {
    case LengthKilometre(unit): unit.toKilometre();
    case LengthMetre(unit): unit.toMetre();
    case LengthCentimetre(unit): unit.toCentimetre();
    case LengthMillimetre(unit): unit.toMillimetre();
    case LengthMicrometre(unit): unit.toMicrometre();
    case LengthNanometre(unit): unit.toNanometre();
    case LengthLeague(unit): unit.toLeague();
    case LengthMile(unit): unit.toMile();
    case LengthFurlong(unit): unit.toFurlong();
    case LengthChain(unit): unit.toChain();
    case LengthYard(unit): unit.toYard();
    case LengthFoot(unit): unit.toFoot();
    case LengthInch(unit): unit.toInch();
    case LengthLine(unit): unit.toLine();
    case LengthThou(unit): unit.toThou();
    case LengthFathom(unit): unit.toFathom();
    case LengthNauticalMile(unit): unit.toNauticalMile();
    case LengthEarthRadius(unit): unit.toEarthRadius();
    case LengthAstronomicalUnit(unit): unit.toAstronomicalUnit();
    case LengthLightYear(unit): unit.toLightYear();
  }

  @:to public function toCentimetre() : Centimetre return switch this {
    case LengthKilometre(unit): unit.toKilometre();
    case LengthMetre(unit): unit.toMetre();
    case LengthCentimetre(unit): unit.toCentimetre();
    case LengthMillimetre(unit): unit.toMillimetre();
    case LengthMicrometre(unit): unit.toMicrometre();
    case LengthNanometre(unit): unit.toNanometre();
    case LengthLeague(unit): unit.toLeague();
    case LengthMile(unit): unit.toMile();
    case LengthFurlong(unit): unit.toFurlong();
    case LengthChain(unit): unit.toChain();
    case LengthYard(unit): unit.toYard();
    case LengthFoot(unit): unit.toFoot();
    case LengthInch(unit): unit.toInch();
    case LengthLine(unit): unit.toLine();
    case LengthThou(unit): unit.toThou();
    case LengthFathom(unit): unit.toFathom();
    case LengthNauticalMile(unit): unit.toNauticalMile();
    case LengthEarthRadius(unit): unit.toEarthRadius();
    case LengthAstronomicalUnit(unit): unit.toAstronomicalUnit();
    case LengthLightYear(unit): unit.toLightYear();
  }

  @:to public function toMillimetre() : Millimetre return switch this {
    case LengthKilometre(unit): unit.toKilometre();
    case LengthMetre(unit): unit.toMetre();
    case LengthCentimetre(unit): unit.toCentimetre();
    case LengthMillimetre(unit): unit.toMillimetre();
    case LengthMicrometre(unit): unit.toMicrometre();
    case LengthNanometre(unit): unit.toNanometre();
    case LengthLeague(unit): unit.toLeague();
    case LengthMile(unit): unit.toMile();
    case LengthFurlong(unit): unit.toFurlong();
    case LengthChain(unit): unit.toChain();
    case LengthYard(unit): unit.toYard();
    case LengthFoot(unit): unit.toFoot();
    case LengthInch(unit): unit.toInch();
    case LengthLine(unit): unit.toLine();
    case LengthThou(unit): unit.toThou();
    case LengthFathom(unit): unit.toFathom();
    case LengthNauticalMile(unit): unit.toNauticalMile();
    case LengthEarthRadius(unit): unit.toEarthRadius();
    case LengthAstronomicalUnit(unit): unit.toAstronomicalUnit();
    case LengthLightYear(unit): unit.toLightYear();
  }

  @:to public function toMicrometre() : Micrometre return switch this {
    case LengthKilometre(unit): unit.toKilometre();
    case LengthMetre(unit): unit.toMetre();
    case LengthCentimetre(unit): unit.toCentimetre();
    case LengthMillimetre(unit): unit.toMillimetre();
    case LengthMicrometre(unit): unit.toMicrometre();
    case LengthNanometre(unit): unit.toNanometre();
    case LengthLeague(unit): unit.toLeague();
    case LengthMile(unit): unit.toMile();
    case LengthFurlong(unit): unit.toFurlong();
    case LengthChain(unit): unit.toChain();
    case LengthYard(unit): unit.toYard();
    case LengthFoot(unit): unit.toFoot();
    case LengthInch(unit): unit.toInch();
    case LengthLine(unit): unit.toLine();
    case LengthThou(unit): unit.toThou();
    case LengthFathom(unit): unit.toFathom();
    case LengthNauticalMile(unit): unit.toNauticalMile();
    case LengthEarthRadius(unit): unit.toEarthRadius();
    case LengthAstronomicalUnit(unit): unit.toAstronomicalUnit();
    case LengthLightYear(unit): unit.toLightYear();
  }

  @:to public function toNanometre() : Nanometre return switch this {
    case LengthKilometre(unit): unit.toKilometre();
    case LengthMetre(unit): unit.toMetre();
    case LengthCentimetre(unit): unit.toCentimetre();
    case LengthMillimetre(unit): unit.toMillimetre();
    case LengthMicrometre(unit): unit.toMicrometre();
    case LengthNanometre(unit): unit.toNanometre();
    case LengthLeague(unit): unit.toLeague();
    case LengthMile(unit): unit.toMile();
    case LengthFurlong(unit): unit.toFurlong();
    case LengthChain(unit): unit.toChain();
    case LengthYard(unit): unit.toYard();
    case LengthFoot(unit): unit.toFoot();
    case LengthInch(unit): unit.toInch();
    case LengthLine(unit): unit.toLine();
    case LengthThou(unit): unit.toThou();
    case LengthFathom(unit): unit.toFathom();
    case LengthNauticalMile(unit): unit.toNauticalMile();
    case LengthEarthRadius(unit): unit.toEarthRadius();
    case LengthAstronomicalUnit(unit): unit.toAstronomicalUnit();
    case LengthLightYear(unit): unit.toLightYear();
  }

  @:to public function toLeague() : League return switch this {
    case LengthKilometre(unit): unit.toKilometre();
    case LengthMetre(unit): unit.toMetre();
    case LengthCentimetre(unit): unit.toCentimetre();
    case LengthMillimetre(unit): unit.toMillimetre();
    case LengthMicrometre(unit): unit.toMicrometre();
    case LengthNanometre(unit): unit.toNanometre();
    case LengthLeague(unit): unit.toLeague();
    case LengthMile(unit): unit.toMile();
    case LengthFurlong(unit): unit.toFurlong();
    case LengthChain(unit): unit.toChain();
    case LengthYard(unit): unit.toYard();
    case LengthFoot(unit): unit.toFoot();
    case LengthInch(unit): unit.toInch();
    case LengthLine(unit): unit.toLine();
    case LengthThou(unit): unit.toThou();
    case LengthFathom(unit): unit.toFathom();
    case LengthNauticalMile(unit): unit.toNauticalMile();
    case LengthEarthRadius(unit): unit.toEarthRadius();
    case LengthAstronomicalUnit(unit): unit.toAstronomicalUnit();
    case LengthLightYear(unit): unit.toLightYear();
  }

  @:to public function toMile() : Mile return switch this {
    case LengthKilometre(unit): unit.toKilometre();
    case LengthMetre(unit): unit.toMetre();
    case LengthCentimetre(unit): unit.toCentimetre();
    case LengthMillimetre(unit): unit.toMillimetre();
    case LengthMicrometre(unit): unit.toMicrometre();
    case LengthNanometre(unit): unit.toNanometre();
    case LengthLeague(unit): unit.toLeague();
    case LengthMile(unit): unit.toMile();
    case LengthFurlong(unit): unit.toFurlong();
    case LengthChain(unit): unit.toChain();
    case LengthYard(unit): unit.toYard();
    case LengthFoot(unit): unit.toFoot();
    case LengthInch(unit): unit.toInch();
    case LengthLine(unit): unit.toLine();
    case LengthThou(unit): unit.toThou();
    case LengthFathom(unit): unit.toFathom();
    case LengthNauticalMile(unit): unit.toNauticalMile();
    case LengthEarthRadius(unit): unit.toEarthRadius();
    case LengthAstronomicalUnit(unit): unit.toAstronomicalUnit();
    case LengthLightYear(unit): unit.toLightYear();
  }

  @:to public function toFurlong() : Furlong return switch this {
    case LengthKilometre(unit): unit.toKilometre();
    case LengthMetre(unit): unit.toMetre();
    case LengthCentimetre(unit): unit.toCentimetre();
    case LengthMillimetre(unit): unit.toMillimetre();
    case LengthMicrometre(unit): unit.toMicrometre();
    case LengthNanometre(unit): unit.toNanometre();
    case LengthLeague(unit): unit.toLeague();
    case LengthMile(unit): unit.toMile();
    case LengthFurlong(unit): unit.toFurlong();
    case LengthChain(unit): unit.toChain();
    case LengthYard(unit): unit.toYard();
    case LengthFoot(unit): unit.toFoot();
    case LengthInch(unit): unit.toInch();
    case LengthLine(unit): unit.toLine();
    case LengthThou(unit): unit.toThou();
    case LengthFathom(unit): unit.toFathom();
    case LengthNauticalMile(unit): unit.toNauticalMile();
    case LengthEarthRadius(unit): unit.toEarthRadius();
    case LengthAstronomicalUnit(unit): unit.toAstronomicalUnit();
    case LengthLightYear(unit): unit.toLightYear();
  }

  @:to public function toChain() : Chain return switch this {
    case LengthKilometre(unit): unit.toKilometre();
    case LengthMetre(unit): unit.toMetre();
    case LengthCentimetre(unit): unit.toCentimetre();
    case LengthMillimetre(unit): unit.toMillimetre();
    case LengthMicrometre(unit): unit.toMicrometre();
    case LengthNanometre(unit): unit.toNanometre();
    case LengthLeague(unit): unit.toLeague();
    case LengthMile(unit): unit.toMile();
    case LengthFurlong(unit): unit.toFurlong();
    case LengthChain(unit): unit.toChain();
    case LengthYard(unit): unit.toYard();
    case LengthFoot(unit): unit.toFoot();
    case LengthInch(unit): unit.toInch();
    case LengthLine(unit): unit.toLine();
    case LengthThou(unit): unit.toThou();
    case LengthFathom(unit): unit.toFathom();
    case LengthNauticalMile(unit): unit.toNauticalMile();
    case LengthEarthRadius(unit): unit.toEarthRadius();
    case LengthAstronomicalUnit(unit): unit.toAstronomicalUnit();
    case LengthLightYear(unit): unit.toLightYear();
  }

  @:to public function toYard() : Yard return switch this {
    case LengthKilometre(unit): unit.toKilometre();
    case LengthMetre(unit): unit.toMetre();
    case LengthCentimetre(unit): unit.toCentimetre();
    case LengthMillimetre(unit): unit.toMillimetre();
    case LengthMicrometre(unit): unit.toMicrometre();
    case LengthNanometre(unit): unit.toNanometre();
    case LengthLeague(unit): unit.toLeague();
    case LengthMile(unit): unit.toMile();
    case LengthFurlong(unit): unit.toFurlong();
    case LengthChain(unit): unit.toChain();
    case LengthYard(unit): unit.toYard();
    case LengthFoot(unit): unit.toFoot();
    case LengthInch(unit): unit.toInch();
    case LengthLine(unit): unit.toLine();
    case LengthThou(unit): unit.toThou();
    case LengthFathom(unit): unit.toFathom();
    case LengthNauticalMile(unit): unit.toNauticalMile();
    case LengthEarthRadius(unit): unit.toEarthRadius();
    case LengthAstronomicalUnit(unit): unit.toAstronomicalUnit();
    case LengthLightYear(unit): unit.toLightYear();
  }

  @:to public function toFoot() : Foot return switch this {
    case LengthKilometre(unit): unit.toKilometre();
    case LengthMetre(unit): unit.toMetre();
    case LengthCentimetre(unit): unit.toCentimetre();
    case LengthMillimetre(unit): unit.toMillimetre();
    case LengthMicrometre(unit): unit.toMicrometre();
    case LengthNanometre(unit): unit.toNanometre();
    case LengthLeague(unit): unit.toLeague();
    case LengthMile(unit): unit.toMile();
    case LengthFurlong(unit): unit.toFurlong();
    case LengthChain(unit): unit.toChain();
    case LengthYard(unit): unit.toYard();
    case LengthFoot(unit): unit.toFoot();
    case LengthInch(unit): unit.toInch();
    case LengthLine(unit): unit.toLine();
    case LengthThou(unit): unit.toThou();
    case LengthFathom(unit): unit.toFathom();
    case LengthNauticalMile(unit): unit.toNauticalMile();
    case LengthEarthRadius(unit): unit.toEarthRadius();
    case LengthAstronomicalUnit(unit): unit.toAstronomicalUnit();
    case LengthLightYear(unit): unit.toLightYear();
  }

  @:to public function toInch() : Inch return switch this {
    case LengthKilometre(unit): unit.toKilometre();
    case LengthMetre(unit): unit.toMetre();
    case LengthCentimetre(unit): unit.toCentimetre();
    case LengthMillimetre(unit): unit.toMillimetre();
    case LengthMicrometre(unit): unit.toMicrometre();
    case LengthNanometre(unit): unit.toNanometre();
    case LengthLeague(unit): unit.toLeague();
    case LengthMile(unit): unit.toMile();
    case LengthFurlong(unit): unit.toFurlong();
    case LengthChain(unit): unit.toChain();
    case LengthYard(unit): unit.toYard();
    case LengthFoot(unit): unit.toFoot();
    case LengthInch(unit): unit.toInch();
    case LengthLine(unit): unit.toLine();
    case LengthThou(unit): unit.toThou();
    case LengthFathom(unit): unit.toFathom();
    case LengthNauticalMile(unit): unit.toNauticalMile();
    case LengthEarthRadius(unit): unit.toEarthRadius();
    case LengthAstronomicalUnit(unit): unit.toAstronomicalUnit();
    case LengthLightYear(unit): unit.toLightYear();
  }

  @:to public function toLine() : Line return switch this {
    case LengthKilometre(unit): unit.toKilometre();
    case LengthMetre(unit): unit.toMetre();
    case LengthCentimetre(unit): unit.toCentimetre();
    case LengthMillimetre(unit): unit.toMillimetre();
    case LengthMicrometre(unit): unit.toMicrometre();
    case LengthNanometre(unit): unit.toNanometre();
    case LengthLeague(unit): unit.toLeague();
    case LengthMile(unit): unit.toMile();
    case LengthFurlong(unit): unit.toFurlong();
    case LengthChain(unit): unit.toChain();
    case LengthYard(unit): unit.toYard();
    case LengthFoot(unit): unit.toFoot();
    case LengthInch(unit): unit.toInch();
    case LengthLine(unit): unit.toLine();
    case LengthThou(unit): unit.toThou();
    case LengthFathom(unit): unit.toFathom();
    case LengthNauticalMile(unit): unit.toNauticalMile();
    case LengthEarthRadius(unit): unit.toEarthRadius();
    case LengthAstronomicalUnit(unit): unit.toAstronomicalUnit();
    case LengthLightYear(unit): unit.toLightYear();
  }

  @:to public function toThou() : Thou return switch this {
    case LengthKilometre(unit): unit.toKilometre();
    case LengthMetre(unit): unit.toMetre();
    case LengthCentimetre(unit): unit.toCentimetre();
    case LengthMillimetre(unit): unit.toMillimetre();
    case LengthMicrometre(unit): unit.toMicrometre();
    case LengthNanometre(unit): unit.toNanometre();
    case LengthLeague(unit): unit.toLeague();
    case LengthMile(unit): unit.toMile();
    case LengthFurlong(unit): unit.toFurlong();
    case LengthChain(unit): unit.toChain();
    case LengthYard(unit): unit.toYard();
    case LengthFoot(unit): unit.toFoot();
    case LengthInch(unit): unit.toInch();
    case LengthLine(unit): unit.toLine();
    case LengthThou(unit): unit.toThou();
    case LengthFathom(unit): unit.toFathom();
    case LengthNauticalMile(unit): unit.toNauticalMile();
    case LengthEarthRadius(unit): unit.toEarthRadius();
    case LengthAstronomicalUnit(unit): unit.toAstronomicalUnit();
    case LengthLightYear(unit): unit.toLightYear();
  }

  @:to public function toFathom() : Fathom return switch this {
    case LengthKilometre(unit): unit.toKilometre();
    case LengthMetre(unit): unit.toMetre();
    case LengthCentimetre(unit): unit.toCentimetre();
    case LengthMillimetre(unit): unit.toMillimetre();
    case LengthMicrometre(unit): unit.toMicrometre();
    case LengthNanometre(unit): unit.toNanometre();
    case LengthLeague(unit): unit.toLeague();
    case LengthMile(unit): unit.toMile();
    case LengthFurlong(unit): unit.toFurlong();
    case LengthChain(unit): unit.toChain();
    case LengthYard(unit): unit.toYard();
    case LengthFoot(unit): unit.toFoot();
    case LengthInch(unit): unit.toInch();
    case LengthLine(unit): unit.toLine();
    case LengthThou(unit): unit.toThou();
    case LengthFathom(unit): unit.toFathom();
    case LengthNauticalMile(unit): unit.toNauticalMile();
    case LengthEarthRadius(unit): unit.toEarthRadius();
    case LengthAstronomicalUnit(unit): unit.toAstronomicalUnit();
    case LengthLightYear(unit): unit.toLightYear();
  }

  @:to public function toNauticalMile() : NauticalMile return switch this {
    case LengthKilometre(unit): unit.toKilometre();
    case LengthMetre(unit): unit.toMetre();
    case LengthCentimetre(unit): unit.toCentimetre();
    case LengthMillimetre(unit): unit.toMillimetre();
    case LengthMicrometre(unit): unit.toMicrometre();
    case LengthNanometre(unit): unit.toNanometre();
    case LengthLeague(unit): unit.toLeague();
    case LengthMile(unit): unit.toMile();
    case LengthFurlong(unit): unit.toFurlong();
    case LengthChain(unit): unit.toChain();
    case LengthYard(unit): unit.toYard();
    case LengthFoot(unit): unit.toFoot();
    case LengthInch(unit): unit.toInch();
    case LengthLine(unit): unit.toLine();
    case LengthThou(unit): unit.toThou();
    case LengthFathom(unit): unit.toFathom();
    case LengthNauticalMile(unit): unit.toNauticalMile();
    case LengthEarthRadius(unit): unit.toEarthRadius();
    case LengthAstronomicalUnit(unit): unit.toAstronomicalUnit();
    case LengthLightYear(unit): unit.toLightYear();
  }

  @:to public function toEarthRadius() : EarthRadius return switch this {
    case LengthKilometre(unit): unit.toKilometre();
    case LengthMetre(unit): unit.toMetre();
    case LengthCentimetre(unit): unit.toCentimetre();
    case LengthMillimetre(unit): unit.toMillimetre();
    case LengthMicrometre(unit): unit.toMicrometre();
    case LengthNanometre(unit): unit.toNanometre();
    case LengthLeague(unit): unit.toLeague();
    case LengthMile(unit): unit.toMile();
    case LengthFurlong(unit): unit.toFurlong();
    case LengthChain(unit): unit.toChain();
    case LengthYard(unit): unit.toYard();
    case LengthFoot(unit): unit.toFoot();
    case LengthInch(unit): unit.toInch();
    case LengthLine(unit): unit.toLine();
    case LengthThou(unit): unit.toThou();
    case LengthFathom(unit): unit.toFathom();
    case LengthNauticalMile(unit): unit.toNauticalMile();
    case LengthEarthRadius(unit): unit.toEarthRadius();
    case LengthAstronomicalUnit(unit): unit.toAstronomicalUnit();
    case LengthLightYear(unit): unit.toLightYear();
  }

  @:to public function toAstronomicalUnit() : AstronomicalUnit return switch this {
    case LengthKilometre(unit): unit.toKilometre();
    case LengthMetre(unit): unit.toMetre();
    case LengthCentimetre(unit): unit.toCentimetre();
    case LengthMillimetre(unit): unit.toMillimetre();
    case LengthMicrometre(unit): unit.toMicrometre();
    case LengthNanometre(unit): unit.toNanometre();
    case LengthLeague(unit): unit.toLeague();
    case LengthMile(unit): unit.toMile();
    case LengthFurlong(unit): unit.toFurlong();
    case LengthChain(unit): unit.toChain();
    case LengthYard(unit): unit.toYard();
    case LengthFoot(unit): unit.toFoot();
    case LengthInch(unit): unit.toInch();
    case LengthLine(unit): unit.toLine();
    case LengthThou(unit): unit.toThou();
    case LengthFathom(unit): unit.toFathom();
    case LengthNauticalMile(unit): unit.toNauticalMile();
    case LengthEarthRadius(unit): unit.toEarthRadius();
    case LengthAstronomicalUnit(unit): unit.toAstronomicalUnit();
    case LengthLightYear(unit): unit.toLightYear();
  }

  @:to public function toLightYear() : LightYear return switch this {
    case LengthKilometre(unit): unit.toKilometre();
    case LengthMetre(unit): unit.toMetre();
    case LengthCentimetre(unit): unit.toCentimetre();
    case LengthMillimetre(unit): unit.toMillimetre();
    case LengthMicrometre(unit): unit.toMicrometre();
    case LengthNanometre(unit): unit.toNanometre();
    case LengthLeague(unit): unit.toLeague();
    case LengthMile(unit): unit.toMile();
    case LengthFurlong(unit): unit.toFurlong();
    case LengthChain(unit): unit.toChain();
    case LengthYard(unit): unit.toYard();
    case LengthFoot(unit): unit.toFoot();
    case LengthInch(unit): unit.toInch();
    case LengthLine(unit): unit.toLine();
    case LengthThou(unit): unit.toThou();
    case LengthFathom(unit): unit.toFathom();
    case LengthNauticalMile(unit): unit.toNauticalMile();
    case LengthEarthRadius(unit): unit.toEarthRadius();
    case LengthAstronomicalUnit(unit): unit.toAstronomicalUnit();
    case LengthLightYear(unit): unit.toLightYear();
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

enum LengthImpl {
  LengthKilometre(unit : Kilometre);
  LengthMetre(unit : Metre);
  LengthCentimetre(unit : Centimetre);
  LengthMillimetre(unit : Millimetre);
  LengthMicrometre(unit : Micrometre);
  LengthNanometre(unit : Nanometre);
  LengthLeague(unit : League);
  LengthMile(unit : Mile);
  LengthFurlong(unit : Furlong);
  LengthChain(unit : Chain);
  LengthYard(unit : Yard);
  LengthFoot(unit : Foot);
  LengthInch(unit : Inch);
  LengthLine(unit : Line);
  LengthThou(unit : Thou);
  LengthFathom(unit : Fathom);
  LengthNauticalMile(unit : NauticalMile);
  LengthEarthRadius(unit : EarthRadius);
  LengthAstronomicalUnit(unit : AstronomicalUnit);
  LengthLightYear(unit : LightYear);
}
