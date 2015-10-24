package thx.unit;

import thx.unit.mass.*;
import thx.Error;

abstract Mass(MassImpl) from MassImpl to MassImpl {
  @:from static public function fromString(s : String) : Mass {
    var o = Units.parseUnitDecimal(s);
    if(null == o) throw new Error("unable to parse " + s + " to Mass");
    return fromPair(o);
  }

  @:from inline static public function megagram(value : Megagram) : Mass
    return MassMegagram(value);

  @:from inline static public function kilogram(value : Kilogram) : Mass
    return MassKilogram(value);

  @:from inline static public function gram(value : Gram) : Mass
    return MassGram(value);

  @:from inline static public function centigram(value : Centigram) : Mass
    return MassCentigram(value);

  @:from inline static public function milligram(value : Milligram) : Mass
    return MassMilligram(value);

  @:from inline static public function microgram(value : Microgram) : Mass
    return MassMicrogram(value);

  @:from inline static public function nanogram(value : Nanogram) : Mass
    return MassNanogram(value);

  @:from inline static public function picogram(value : Picogram) : Mass
    return MassPicogram(value);

  @:from inline static public function ton(value : Ton) : Mass
    return MassTon(value);

  @:from inline static public function hundredweight(value : Hundredweight) : Mass
    return MassHundredweight(value);

  @:from inline static public function quarter(value : Quarter) : Mass
    return MassQuarter(value);

  @:from inline static public function stone(value : Stone) : Mass
    return MassStone(value);

  @:from inline static public function pound(value : Pound) : Mass
    return MassPound(value);

  @:from inline static public function ounce(value : Ounce) : Mass
    return MassOunce(value);

  @:from inline static public function drachm(value : Drachm) : Mass
    return MassDrachm(value);

  @:from inline static public function grain(value : Grain) : Mass
    return MassGrain(value);

  @:from inline static public function unifiedAtomicMassUnit(value : UnifiedAtomicMassUnit) : Mass
    return MassUnifiedAtomicMassUnit(value);

  @:from inline static public function dalton(value : Dalton) : Mass
    return MassDalton(value);

  @:from inline static public function plankMass(value : PlankMass) : Mass
    return MassPlankMass(value);

  @:from inline static public function slug(value : Slug) : Mass
    return MassSlug(value);

  @:from inline static public function solarMass(value : SolarMass) : Mass
    return MassSolarMass(value);

  public static function fromPair(info : { value : Decimal, symbol : String}, ?pos : haxe.PosInfos) : Mass return switch info.symbol.toLowerCase() {
    case "mg", "megagram": MassMegagram(info.value);
    case "kg", "kilogram": MassKilogram(info.value);
    case "g", "gram": MassGram(info.value);
    case "cg", "centigram": MassCentigram(info.value);
    case "mg", "milligram": MassMilligram(info.value);
    case "µg", "microgram": MassMicrogram(info.value);
    case "ng", "nanogram": MassNanogram(info.value);
    case "pg", "picogram": MassPicogram(info.value);
    case "t", "ton": MassTon(info.value);
    case "cwt", "hundredweight": MassHundredweight(info.value);
    case "qr", "quarter": MassQuarter(info.value);
    case "st", "stone": MassStone(info.value);
    case "lb", "pound": MassPound(info.value);
    case "oz", "ounce": MassOunce(info.value);
    case "dr", "drachm": MassDrachm(info.value);
    case "gr", "grain": MassGrain(info.value);
    case "u", "unified atomic mass unit": MassUnifiedAtomicMassUnit(info.value);
    case "da", "dalton": MassDalton(info.value);
    case "mp", "plank mass": MassPlankMass(info.value);
    case "slug", "slug": MassSlug(info.value);
    case "m☉", "solar mass": MassSolarMass(info.value);
    case _: throw new thx.Error("invalid symbol " + info.symbol, pos);
  }

  public var value(get, never) : Decimal;
  public var symbol(get, never) : String;

  function getInfo() return switch this {
  case MassMegagram(unit): { value : unit.toDecimal(), symbol : Megagram.symbol };
  case MassKilogram(unit): { value : unit.toDecimal(), symbol : Kilogram.symbol };
  case MassGram(unit): { value : unit.toDecimal(), symbol : Gram.symbol };
  case MassCentigram(unit): { value : unit.toDecimal(), symbol : Centigram.symbol };
  case MassMilligram(unit): { value : unit.toDecimal(), symbol : Milligram.symbol };
  case MassMicrogram(unit): { value : unit.toDecimal(), symbol : Microgram.symbol };
  case MassNanogram(unit): { value : unit.toDecimal(), symbol : Nanogram.symbol };
  case MassPicogram(unit): { value : unit.toDecimal(), symbol : Picogram.symbol };
  case MassTon(unit): { value : unit.toDecimal(), symbol : Ton.symbol };
  case MassHundredweight(unit): { value : unit.toDecimal(), symbol : Hundredweight.symbol };
  case MassQuarter(unit): { value : unit.toDecimal(), symbol : Quarter.symbol };
  case MassStone(unit): { value : unit.toDecimal(), symbol : Stone.symbol };
  case MassPound(unit): { value : unit.toDecimal(), symbol : Pound.symbol };
  case MassOunce(unit): { value : unit.toDecimal(), symbol : Ounce.symbol };
  case MassDrachm(unit): { value : unit.toDecimal(), symbol : Drachm.symbol };
  case MassGrain(unit): { value : unit.toDecimal(), symbol : Grain.symbol };
  case MassUnifiedAtomicMassUnit(unit): { value : unit.toDecimal(), symbol : UnifiedAtomicMassUnit.symbol };
  case MassDalton(unit): { value : unit.toDecimal(), symbol : Dalton.symbol };
  case MassPlankMass(unit): { value : unit.toDecimal(), symbol : PlankMass.symbol };
  case MassSlug(unit): { value : unit.toDecimal(), symbol : Slug.symbol };
  case MassSolarMass(unit): { value : unit.toDecimal(), symbol : SolarMass.symbol };
  }

  public function abs() : Mass return switch this {
    case MassMegagram(unit): unit.abs();
    case MassKilogram(unit): unit.abs();
    case MassGram(unit): unit.abs();
    case MassCentigram(unit): unit.abs();
    case MassMilligram(unit): unit.abs();
    case MassMicrogram(unit): unit.abs();
    case MassNanogram(unit): unit.abs();
    case MassPicogram(unit): unit.abs();
    case MassTon(unit): unit.abs();
    case MassHundredweight(unit): unit.abs();
    case MassQuarter(unit): unit.abs();
    case MassStone(unit): unit.abs();
    case MassPound(unit): unit.abs();
    case MassOunce(unit): unit.abs();
    case MassDrachm(unit): unit.abs();
    case MassGrain(unit): unit.abs();
    case MassUnifiedAtomicMassUnit(unit): unit.abs();
    case MassDalton(unit): unit.abs();
    case MassPlankMass(unit): unit.abs();
    case MassSlug(unit): unit.abs();
    case MassSolarMass(unit): unit.abs();
  }

  @:op( -A ) public function negate() : Mass return switch this {
    case MassMegagram(unit): unit.negate();
    case MassKilogram(unit): unit.negate();
    case MassGram(unit): unit.negate();
    case MassCentigram(unit): unit.negate();
    case MassMilligram(unit): unit.negate();
    case MassMicrogram(unit): unit.negate();
    case MassNanogram(unit): unit.negate();
    case MassPicogram(unit): unit.negate();
    case MassTon(unit): unit.negate();
    case MassHundredweight(unit): unit.negate();
    case MassQuarter(unit): unit.negate();
    case MassStone(unit): unit.negate();
    case MassPound(unit): unit.negate();
    case MassOunce(unit): unit.negate();
    case MassDrachm(unit): unit.negate();
    case MassGrain(unit): unit.negate();
    case MassUnifiedAtomicMassUnit(unit): unit.negate();
    case MassDalton(unit): unit.negate();
    case MassPlankMass(unit): unit.negate();
    case MassSlug(unit): unit.negate();
    case MassSolarMass(unit): unit.negate();
  }

  @:op( A+B) public function add(that : Mass) : Mass return switch this {
    case MassMegagram(unit): unit.add(that.toMegagram());
    case MassKilogram(unit): unit.add(that.toKilogram());
    case MassGram(unit): unit.add(that.toGram());
    case MassCentigram(unit): unit.add(that.toCentigram());
    case MassMilligram(unit): unit.add(that.toMilligram());
    case MassMicrogram(unit): unit.add(that.toMicrogram());
    case MassNanogram(unit): unit.add(that.toNanogram());
    case MassPicogram(unit): unit.add(that.toPicogram());
    case MassTon(unit): unit.add(that.toTon());
    case MassHundredweight(unit): unit.add(that.toHundredweight());
    case MassQuarter(unit): unit.add(that.toQuarter());
    case MassStone(unit): unit.add(that.toStone());
    case MassPound(unit): unit.add(that.toPound());
    case MassOunce(unit): unit.add(that.toOunce());
    case MassDrachm(unit): unit.add(that.toDrachm());
    case MassGrain(unit): unit.add(that.toGrain());
    case MassUnifiedAtomicMassUnit(unit): unit.add(that.toUnifiedAtomicMassUnit());
    case MassDalton(unit): unit.add(that.toDalton());
    case MassPlankMass(unit): unit.add(that.toPlankMass());
    case MassSlug(unit): unit.add(that.toSlug());
    case MassSolarMass(unit): unit.add(that.toSolarMass());
  }

  @:op( A-B) public function subtract(that : Mass) : Mass return switch this {
    case MassMegagram(unit): unit.subtract(that.toMegagram());
    case MassKilogram(unit): unit.subtract(that.toKilogram());
    case MassGram(unit): unit.subtract(that.toGram());
    case MassCentigram(unit): unit.subtract(that.toCentigram());
    case MassMilligram(unit): unit.subtract(that.toMilligram());
    case MassMicrogram(unit): unit.subtract(that.toMicrogram());
    case MassNanogram(unit): unit.subtract(that.toNanogram());
    case MassPicogram(unit): unit.subtract(that.toPicogram());
    case MassTon(unit): unit.subtract(that.toTon());
    case MassHundredweight(unit): unit.subtract(that.toHundredweight());
    case MassQuarter(unit): unit.subtract(that.toQuarter());
    case MassStone(unit): unit.subtract(that.toStone());
    case MassPound(unit): unit.subtract(that.toPound());
    case MassOunce(unit): unit.subtract(that.toOunce());
    case MassDrachm(unit): unit.subtract(that.toDrachm());
    case MassGrain(unit): unit.subtract(that.toGrain());
    case MassUnifiedAtomicMassUnit(unit): unit.subtract(that.toUnifiedAtomicMassUnit());
    case MassDalton(unit): unit.subtract(that.toDalton());
    case MassPlankMass(unit): unit.subtract(that.toPlankMass());
    case MassSlug(unit): unit.subtract(that.toSlug());
    case MassSolarMass(unit): unit.subtract(that.toSolarMass());
  }

  @:op( A*B) public function multiply(that : Decimal) : Mass return switch this {
    case MassMegagram(unit): unit.multiply(that);
    case MassKilogram(unit): unit.multiply(that);
    case MassGram(unit): unit.multiply(that);
    case MassCentigram(unit): unit.multiply(that);
    case MassMilligram(unit): unit.multiply(that);
    case MassMicrogram(unit): unit.multiply(that);
    case MassNanogram(unit): unit.multiply(that);
    case MassPicogram(unit): unit.multiply(that);
    case MassTon(unit): unit.multiply(that);
    case MassHundredweight(unit): unit.multiply(that);
    case MassQuarter(unit): unit.multiply(that);
    case MassStone(unit): unit.multiply(that);
    case MassPound(unit): unit.multiply(that);
    case MassOunce(unit): unit.multiply(that);
    case MassDrachm(unit): unit.multiply(that);
    case MassGrain(unit): unit.multiply(that);
    case MassUnifiedAtomicMassUnit(unit): unit.multiply(that);
    case MassDalton(unit): unit.multiply(that);
    case MassPlankMass(unit): unit.multiply(that);
    case MassSlug(unit): unit.multiply(that);
    case MassSolarMass(unit): unit.multiply(that);
  }

  @:op( A/B) public function divide(that : Decimal) : Mass return switch this {
    case MassMegagram(unit): unit.divide(that);
    case MassKilogram(unit): unit.divide(that);
    case MassGram(unit): unit.divide(that);
    case MassCentigram(unit): unit.divide(that);
    case MassMilligram(unit): unit.divide(that);
    case MassMicrogram(unit): unit.divide(that);
    case MassNanogram(unit): unit.divide(that);
    case MassPicogram(unit): unit.divide(that);
    case MassTon(unit): unit.divide(that);
    case MassHundredweight(unit): unit.divide(that);
    case MassQuarter(unit): unit.divide(that);
    case MassStone(unit): unit.divide(that);
    case MassPound(unit): unit.divide(that);
    case MassOunce(unit): unit.divide(that);
    case MassDrachm(unit): unit.divide(that);
    case MassGrain(unit): unit.divide(that);
    case MassUnifiedAtomicMassUnit(unit): unit.divide(that);
    case MassDalton(unit): unit.divide(that);
    case MassPlankMass(unit): unit.divide(that);
    case MassSlug(unit): unit.divide(that);
    case MassSolarMass(unit): unit.divide(that);
  }

  @:op( A%B) public function modulo(that : Decimal) : Mass return switch this {
    case MassMegagram(unit): unit.modulo(that);
    case MassKilogram(unit): unit.modulo(that);
    case MassGram(unit): unit.modulo(that);
    case MassCentigram(unit): unit.modulo(that);
    case MassMilligram(unit): unit.modulo(that);
    case MassMicrogram(unit): unit.modulo(that);
    case MassNanogram(unit): unit.modulo(that);
    case MassPicogram(unit): unit.modulo(that);
    case MassTon(unit): unit.modulo(that);
    case MassHundredweight(unit): unit.modulo(that);
    case MassQuarter(unit): unit.modulo(that);
    case MassStone(unit): unit.modulo(that);
    case MassPound(unit): unit.modulo(that);
    case MassOunce(unit): unit.modulo(that);
    case MassDrachm(unit): unit.modulo(that);
    case MassGrain(unit): unit.modulo(that);
    case MassUnifiedAtomicMassUnit(unit): unit.modulo(that);
    case MassDalton(unit): unit.modulo(that);
    case MassPlankMass(unit): unit.modulo(that);
    case MassSlug(unit): unit.modulo(that);
    case MassSolarMass(unit): unit.modulo(that);
  }

  public function min(that : Mass) : Mass return switch this {
    case MassMegagram(unit): unit.min(that.toMegagram());
    case MassKilogram(unit): unit.min(that.toKilogram());
    case MassGram(unit): unit.min(that.toGram());
    case MassCentigram(unit): unit.min(that.toCentigram());
    case MassMilligram(unit): unit.min(that.toMilligram());
    case MassMicrogram(unit): unit.min(that.toMicrogram());
    case MassNanogram(unit): unit.min(that.toNanogram());
    case MassPicogram(unit): unit.min(that.toPicogram());
    case MassTon(unit): unit.min(that.toTon());
    case MassHundredweight(unit): unit.min(that.toHundredweight());
    case MassQuarter(unit): unit.min(that.toQuarter());
    case MassStone(unit): unit.min(that.toStone());
    case MassPound(unit): unit.min(that.toPound());
    case MassOunce(unit): unit.min(that.toOunce());
    case MassDrachm(unit): unit.min(that.toDrachm());
    case MassGrain(unit): unit.min(that.toGrain());
    case MassUnifiedAtomicMassUnit(unit): unit.min(that.toUnifiedAtomicMassUnit());
    case MassDalton(unit): unit.min(that.toDalton());
    case MassPlankMass(unit): unit.min(that.toPlankMass());
    case MassSlug(unit): unit.min(that.toSlug());
    case MassSolarMass(unit): unit.min(that.toSolarMass());
  }

  public function max(that : Mass) : Mass return switch this {
    case MassMegagram(unit): unit.max(that.toMegagram());
    case MassKilogram(unit): unit.max(that.toKilogram());
    case MassGram(unit): unit.max(that.toGram());
    case MassCentigram(unit): unit.max(that.toCentigram());
    case MassMilligram(unit): unit.max(that.toMilligram());
    case MassMicrogram(unit): unit.max(that.toMicrogram());
    case MassNanogram(unit): unit.max(that.toNanogram());
    case MassPicogram(unit): unit.max(that.toPicogram());
    case MassTon(unit): unit.max(that.toTon());
    case MassHundredweight(unit): unit.max(that.toHundredweight());
    case MassQuarter(unit): unit.max(that.toQuarter());
    case MassStone(unit): unit.max(that.toStone());
    case MassPound(unit): unit.max(that.toPound());
    case MassOunce(unit): unit.max(that.toOunce());
    case MassDrachm(unit): unit.max(that.toDrachm());
    case MassGrain(unit): unit.max(that.toGrain());
    case MassUnifiedAtomicMassUnit(unit): unit.max(that.toUnifiedAtomicMassUnit());
    case MassDalton(unit): unit.max(that.toDalton());
    case MassPlankMass(unit): unit.max(that.toPlankMass());
    case MassSlug(unit): unit.max(that.toSlug());
    case MassSolarMass(unit): unit.max(that.toSolarMass());
  }

  public function equalsTo(that : Mass) : Bool return switch this {
    case MassMegagram(unit): unit.equalsTo(that.toMegagram());
    case MassKilogram(unit): unit.equalsTo(that.toKilogram());
    case MassGram(unit): unit.equalsTo(that.toGram());
    case MassCentigram(unit): unit.equalsTo(that.toCentigram());
    case MassMilligram(unit): unit.equalsTo(that.toMilligram());
    case MassMicrogram(unit): unit.equalsTo(that.toMicrogram());
    case MassNanogram(unit): unit.equalsTo(that.toNanogram());
    case MassPicogram(unit): unit.equalsTo(that.toPicogram());
    case MassTon(unit): unit.equalsTo(that.toTon());
    case MassHundredweight(unit): unit.equalsTo(that.toHundredweight());
    case MassQuarter(unit): unit.equalsTo(that.toQuarter());
    case MassStone(unit): unit.equalsTo(that.toStone());
    case MassPound(unit): unit.equalsTo(that.toPound());
    case MassOunce(unit): unit.equalsTo(that.toOunce());
    case MassDrachm(unit): unit.equalsTo(that.toDrachm());
    case MassGrain(unit): unit.equalsTo(that.toGrain());
    case MassUnifiedAtomicMassUnit(unit): unit.equalsTo(that.toUnifiedAtomicMassUnit());
    case MassDalton(unit): unit.equalsTo(that.toDalton());
    case MassPlankMass(unit): unit.equalsTo(that.toPlankMass());
    case MassSlug(unit): unit.equalsTo(that.toSlug());
    case MassSolarMass(unit): unit.equalsTo(that.toSolarMass());
  }
  @:op(A==B)
  public static function equals(self : Mass, that : Mass) : Bool
    return self.equalsTo(that);

  public function nearEqualsTo(that : Mass) : Bool return switch this {
    case MassMegagram(unit): unit.nearEqualsTo(that.toMegagram());
    case MassKilogram(unit): unit.nearEqualsTo(that.toKilogram());
    case MassGram(unit): unit.nearEqualsTo(that.toGram());
    case MassCentigram(unit): unit.nearEqualsTo(that.toCentigram());
    case MassMilligram(unit): unit.nearEqualsTo(that.toMilligram());
    case MassMicrogram(unit): unit.nearEqualsTo(that.toMicrogram());
    case MassNanogram(unit): unit.nearEqualsTo(that.toNanogram());
    case MassPicogram(unit): unit.nearEqualsTo(that.toPicogram());
    case MassTon(unit): unit.nearEqualsTo(that.toTon());
    case MassHundredweight(unit): unit.nearEqualsTo(that.toHundredweight());
    case MassQuarter(unit): unit.nearEqualsTo(that.toQuarter());
    case MassStone(unit): unit.nearEqualsTo(that.toStone());
    case MassPound(unit): unit.nearEqualsTo(that.toPound());
    case MassOunce(unit): unit.nearEqualsTo(that.toOunce());
    case MassDrachm(unit): unit.nearEqualsTo(that.toDrachm());
    case MassGrain(unit): unit.nearEqualsTo(that.toGrain());
    case MassUnifiedAtomicMassUnit(unit): unit.nearEqualsTo(that.toUnifiedAtomicMassUnit());
    case MassDalton(unit): unit.nearEqualsTo(that.toDalton());
    case MassPlankMass(unit): unit.nearEqualsTo(that.toPlankMass());
    case MassSlug(unit): unit.nearEqualsTo(that.toSlug());
    case MassSolarMass(unit): unit.nearEqualsTo(that.toSolarMass());
  }
  public static function nearEquals(self : Mass, that : Mass) : Bool
    return self.nearEqualsTo(that);

  public function lessThan(that : Mass) : Bool return switch this {
    case MassMegagram(unit): unit.lessThan(that.toMegagram());
    case MassKilogram(unit): unit.lessThan(that.toKilogram());
    case MassGram(unit): unit.lessThan(that.toGram());
    case MassCentigram(unit): unit.lessThan(that.toCentigram());
    case MassMilligram(unit): unit.lessThan(that.toMilligram());
    case MassMicrogram(unit): unit.lessThan(that.toMicrogram());
    case MassNanogram(unit): unit.lessThan(that.toNanogram());
    case MassPicogram(unit): unit.lessThan(that.toPicogram());
    case MassTon(unit): unit.lessThan(that.toTon());
    case MassHundredweight(unit): unit.lessThan(that.toHundredweight());
    case MassQuarter(unit): unit.lessThan(that.toQuarter());
    case MassStone(unit): unit.lessThan(that.toStone());
    case MassPound(unit): unit.lessThan(that.toPound());
    case MassOunce(unit): unit.lessThan(that.toOunce());
    case MassDrachm(unit): unit.lessThan(that.toDrachm());
    case MassGrain(unit): unit.lessThan(that.toGrain());
    case MassUnifiedAtomicMassUnit(unit): unit.lessThan(that.toUnifiedAtomicMassUnit());
    case MassDalton(unit): unit.lessThan(that.toDalton());
    case MassPlankMass(unit): unit.lessThan(that.toPlankMass());
    case MassSlug(unit): unit.lessThan(that.toSlug());
    case MassSolarMass(unit): unit.lessThan(that.toSolarMass());
  }
  @:op( A<B)
  public static function less(self : Mass, that : Mass) : Bool
    return self.lessThan(that);

  public function lessEqualsTo(that : Mass) : Bool return switch this {
    case MassMegagram(unit): unit.lessEqualsTo(that.toMegagram());
    case MassKilogram(unit): unit.lessEqualsTo(that.toKilogram());
    case MassGram(unit): unit.lessEqualsTo(that.toGram());
    case MassCentigram(unit): unit.lessEqualsTo(that.toCentigram());
    case MassMilligram(unit): unit.lessEqualsTo(that.toMilligram());
    case MassMicrogram(unit): unit.lessEqualsTo(that.toMicrogram());
    case MassNanogram(unit): unit.lessEqualsTo(that.toNanogram());
    case MassPicogram(unit): unit.lessEqualsTo(that.toPicogram());
    case MassTon(unit): unit.lessEqualsTo(that.toTon());
    case MassHundredweight(unit): unit.lessEqualsTo(that.toHundredweight());
    case MassQuarter(unit): unit.lessEqualsTo(that.toQuarter());
    case MassStone(unit): unit.lessEqualsTo(that.toStone());
    case MassPound(unit): unit.lessEqualsTo(that.toPound());
    case MassOunce(unit): unit.lessEqualsTo(that.toOunce());
    case MassDrachm(unit): unit.lessEqualsTo(that.toDrachm());
    case MassGrain(unit): unit.lessEqualsTo(that.toGrain());
    case MassUnifiedAtomicMassUnit(unit): unit.lessEqualsTo(that.toUnifiedAtomicMassUnit());
    case MassDalton(unit): unit.lessEqualsTo(that.toDalton());
    case MassPlankMass(unit): unit.lessEqualsTo(that.toPlankMass());
    case MassSlug(unit): unit.lessEqualsTo(that.toSlug());
    case MassSolarMass(unit): unit.lessEqualsTo(that.toSolarMass());
  }
  @:op( A<B)
  public static function lessEquals(self : Mass, that : Mass) : Bool
    return self.lessEqualsTo(that);

  public function greaterThan(that : Mass) : Bool return switch this {
    case MassMegagram(unit): unit.greaterThan(that.toMegagram());
    case MassKilogram(unit): unit.greaterThan(that.toKilogram());
    case MassGram(unit): unit.greaterThan(that.toGram());
    case MassCentigram(unit): unit.greaterThan(that.toCentigram());
    case MassMilligram(unit): unit.greaterThan(that.toMilligram());
    case MassMicrogram(unit): unit.greaterThan(that.toMicrogram());
    case MassNanogram(unit): unit.greaterThan(that.toNanogram());
    case MassPicogram(unit): unit.greaterThan(that.toPicogram());
    case MassTon(unit): unit.greaterThan(that.toTon());
    case MassHundredweight(unit): unit.greaterThan(that.toHundredweight());
    case MassQuarter(unit): unit.greaterThan(that.toQuarter());
    case MassStone(unit): unit.greaterThan(that.toStone());
    case MassPound(unit): unit.greaterThan(that.toPound());
    case MassOunce(unit): unit.greaterThan(that.toOunce());
    case MassDrachm(unit): unit.greaterThan(that.toDrachm());
    case MassGrain(unit): unit.greaterThan(that.toGrain());
    case MassUnifiedAtomicMassUnit(unit): unit.greaterThan(that.toUnifiedAtomicMassUnit());
    case MassDalton(unit): unit.greaterThan(that.toDalton());
    case MassPlankMass(unit): unit.greaterThan(that.toPlankMass());
    case MassSlug(unit): unit.greaterThan(that.toSlug());
    case MassSolarMass(unit): unit.greaterThan(that.toSolarMass());
  }
  @:op( A>B)
  public static function greater(self : Mass, that : Mass) : Bool
    return self.greaterThan(that);

  public function greaterEqualsTo(that : Mass) : Bool return switch this {
    case MassMegagram(unit): unit.greaterEqualsTo(that.toMegagram());
    case MassKilogram(unit): unit.greaterEqualsTo(that.toKilogram());
    case MassGram(unit): unit.greaterEqualsTo(that.toGram());
    case MassCentigram(unit): unit.greaterEqualsTo(that.toCentigram());
    case MassMilligram(unit): unit.greaterEqualsTo(that.toMilligram());
    case MassMicrogram(unit): unit.greaterEqualsTo(that.toMicrogram());
    case MassNanogram(unit): unit.greaterEqualsTo(that.toNanogram());
    case MassPicogram(unit): unit.greaterEqualsTo(that.toPicogram());
    case MassTon(unit): unit.greaterEqualsTo(that.toTon());
    case MassHundredweight(unit): unit.greaterEqualsTo(that.toHundredweight());
    case MassQuarter(unit): unit.greaterEqualsTo(that.toQuarter());
    case MassStone(unit): unit.greaterEqualsTo(that.toStone());
    case MassPound(unit): unit.greaterEqualsTo(that.toPound());
    case MassOunce(unit): unit.greaterEqualsTo(that.toOunce());
    case MassDrachm(unit): unit.greaterEqualsTo(that.toDrachm());
    case MassGrain(unit): unit.greaterEqualsTo(that.toGrain());
    case MassUnifiedAtomicMassUnit(unit): unit.greaterEqualsTo(that.toUnifiedAtomicMassUnit());
    case MassDalton(unit): unit.greaterEqualsTo(that.toDalton());
    case MassPlankMass(unit): unit.greaterEqualsTo(that.toPlankMass());
    case MassSlug(unit): unit.greaterEqualsTo(that.toSlug());
    case MassSolarMass(unit): unit.greaterEqualsTo(that.toSolarMass());
  }
  @:op( A<B)
  public static function greatersEquals(self : Mass, that : Mass) : Bool
    return self.greaterEqualsTo(that);


  @:to public function toMegagram() : Megagram return switch this {
    case MassMegagram(unit): unit.toMegagram();
    case MassKilogram(unit): unit.toKilogram();
    case MassGram(unit): unit.toGram();
    case MassCentigram(unit): unit.toCentigram();
    case MassMilligram(unit): unit.toMilligram();
    case MassMicrogram(unit): unit.toMicrogram();
    case MassNanogram(unit): unit.toNanogram();
    case MassPicogram(unit): unit.toPicogram();
    case MassTon(unit): unit.toTon();
    case MassHundredweight(unit): unit.toHundredweight();
    case MassQuarter(unit): unit.toQuarter();
    case MassStone(unit): unit.toStone();
    case MassPound(unit): unit.toPound();
    case MassOunce(unit): unit.toOunce();
    case MassDrachm(unit): unit.toDrachm();
    case MassGrain(unit): unit.toGrain();
    case MassUnifiedAtomicMassUnit(unit): unit.toUnifiedAtomicMassUnit();
    case MassDalton(unit): unit.toDalton();
    case MassPlankMass(unit): unit.toPlankMass();
    case MassSlug(unit): unit.toSlug();
    case MassSolarMass(unit): unit.toSolarMass();
  }

  @:to public function toKilogram() : Kilogram return switch this {
    case MassMegagram(unit): unit.toMegagram();
    case MassKilogram(unit): unit.toKilogram();
    case MassGram(unit): unit.toGram();
    case MassCentigram(unit): unit.toCentigram();
    case MassMilligram(unit): unit.toMilligram();
    case MassMicrogram(unit): unit.toMicrogram();
    case MassNanogram(unit): unit.toNanogram();
    case MassPicogram(unit): unit.toPicogram();
    case MassTon(unit): unit.toTon();
    case MassHundredweight(unit): unit.toHundredweight();
    case MassQuarter(unit): unit.toQuarter();
    case MassStone(unit): unit.toStone();
    case MassPound(unit): unit.toPound();
    case MassOunce(unit): unit.toOunce();
    case MassDrachm(unit): unit.toDrachm();
    case MassGrain(unit): unit.toGrain();
    case MassUnifiedAtomicMassUnit(unit): unit.toUnifiedAtomicMassUnit();
    case MassDalton(unit): unit.toDalton();
    case MassPlankMass(unit): unit.toPlankMass();
    case MassSlug(unit): unit.toSlug();
    case MassSolarMass(unit): unit.toSolarMass();
  }

  @:to public function toGram() : Gram return switch this {
    case MassMegagram(unit): unit.toMegagram();
    case MassKilogram(unit): unit.toKilogram();
    case MassGram(unit): unit.toGram();
    case MassCentigram(unit): unit.toCentigram();
    case MassMilligram(unit): unit.toMilligram();
    case MassMicrogram(unit): unit.toMicrogram();
    case MassNanogram(unit): unit.toNanogram();
    case MassPicogram(unit): unit.toPicogram();
    case MassTon(unit): unit.toTon();
    case MassHundredweight(unit): unit.toHundredweight();
    case MassQuarter(unit): unit.toQuarter();
    case MassStone(unit): unit.toStone();
    case MassPound(unit): unit.toPound();
    case MassOunce(unit): unit.toOunce();
    case MassDrachm(unit): unit.toDrachm();
    case MassGrain(unit): unit.toGrain();
    case MassUnifiedAtomicMassUnit(unit): unit.toUnifiedAtomicMassUnit();
    case MassDalton(unit): unit.toDalton();
    case MassPlankMass(unit): unit.toPlankMass();
    case MassSlug(unit): unit.toSlug();
    case MassSolarMass(unit): unit.toSolarMass();
  }

  @:to public function toCentigram() : Centigram return switch this {
    case MassMegagram(unit): unit.toMegagram();
    case MassKilogram(unit): unit.toKilogram();
    case MassGram(unit): unit.toGram();
    case MassCentigram(unit): unit.toCentigram();
    case MassMilligram(unit): unit.toMilligram();
    case MassMicrogram(unit): unit.toMicrogram();
    case MassNanogram(unit): unit.toNanogram();
    case MassPicogram(unit): unit.toPicogram();
    case MassTon(unit): unit.toTon();
    case MassHundredweight(unit): unit.toHundredweight();
    case MassQuarter(unit): unit.toQuarter();
    case MassStone(unit): unit.toStone();
    case MassPound(unit): unit.toPound();
    case MassOunce(unit): unit.toOunce();
    case MassDrachm(unit): unit.toDrachm();
    case MassGrain(unit): unit.toGrain();
    case MassUnifiedAtomicMassUnit(unit): unit.toUnifiedAtomicMassUnit();
    case MassDalton(unit): unit.toDalton();
    case MassPlankMass(unit): unit.toPlankMass();
    case MassSlug(unit): unit.toSlug();
    case MassSolarMass(unit): unit.toSolarMass();
  }

  @:to public function toMilligram() : Milligram return switch this {
    case MassMegagram(unit): unit.toMegagram();
    case MassKilogram(unit): unit.toKilogram();
    case MassGram(unit): unit.toGram();
    case MassCentigram(unit): unit.toCentigram();
    case MassMilligram(unit): unit.toMilligram();
    case MassMicrogram(unit): unit.toMicrogram();
    case MassNanogram(unit): unit.toNanogram();
    case MassPicogram(unit): unit.toPicogram();
    case MassTon(unit): unit.toTon();
    case MassHundredweight(unit): unit.toHundredweight();
    case MassQuarter(unit): unit.toQuarter();
    case MassStone(unit): unit.toStone();
    case MassPound(unit): unit.toPound();
    case MassOunce(unit): unit.toOunce();
    case MassDrachm(unit): unit.toDrachm();
    case MassGrain(unit): unit.toGrain();
    case MassUnifiedAtomicMassUnit(unit): unit.toUnifiedAtomicMassUnit();
    case MassDalton(unit): unit.toDalton();
    case MassPlankMass(unit): unit.toPlankMass();
    case MassSlug(unit): unit.toSlug();
    case MassSolarMass(unit): unit.toSolarMass();
  }

  @:to public function toMicrogram() : Microgram return switch this {
    case MassMegagram(unit): unit.toMegagram();
    case MassKilogram(unit): unit.toKilogram();
    case MassGram(unit): unit.toGram();
    case MassCentigram(unit): unit.toCentigram();
    case MassMilligram(unit): unit.toMilligram();
    case MassMicrogram(unit): unit.toMicrogram();
    case MassNanogram(unit): unit.toNanogram();
    case MassPicogram(unit): unit.toPicogram();
    case MassTon(unit): unit.toTon();
    case MassHundredweight(unit): unit.toHundredweight();
    case MassQuarter(unit): unit.toQuarter();
    case MassStone(unit): unit.toStone();
    case MassPound(unit): unit.toPound();
    case MassOunce(unit): unit.toOunce();
    case MassDrachm(unit): unit.toDrachm();
    case MassGrain(unit): unit.toGrain();
    case MassUnifiedAtomicMassUnit(unit): unit.toUnifiedAtomicMassUnit();
    case MassDalton(unit): unit.toDalton();
    case MassPlankMass(unit): unit.toPlankMass();
    case MassSlug(unit): unit.toSlug();
    case MassSolarMass(unit): unit.toSolarMass();
  }

  @:to public function toNanogram() : Nanogram return switch this {
    case MassMegagram(unit): unit.toMegagram();
    case MassKilogram(unit): unit.toKilogram();
    case MassGram(unit): unit.toGram();
    case MassCentigram(unit): unit.toCentigram();
    case MassMilligram(unit): unit.toMilligram();
    case MassMicrogram(unit): unit.toMicrogram();
    case MassNanogram(unit): unit.toNanogram();
    case MassPicogram(unit): unit.toPicogram();
    case MassTon(unit): unit.toTon();
    case MassHundredweight(unit): unit.toHundredweight();
    case MassQuarter(unit): unit.toQuarter();
    case MassStone(unit): unit.toStone();
    case MassPound(unit): unit.toPound();
    case MassOunce(unit): unit.toOunce();
    case MassDrachm(unit): unit.toDrachm();
    case MassGrain(unit): unit.toGrain();
    case MassUnifiedAtomicMassUnit(unit): unit.toUnifiedAtomicMassUnit();
    case MassDalton(unit): unit.toDalton();
    case MassPlankMass(unit): unit.toPlankMass();
    case MassSlug(unit): unit.toSlug();
    case MassSolarMass(unit): unit.toSolarMass();
  }

  @:to public function toPicogram() : Picogram return switch this {
    case MassMegagram(unit): unit.toMegagram();
    case MassKilogram(unit): unit.toKilogram();
    case MassGram(unit): unit.toGram();
    case MassCentigram(unit): unit.toCentigram();
    case MassMilligram(unit): unit.toMilligram();
    case MassMicrogram(unit): unit.toMicrogram();
    case MassNanogram(unit): unit.toNanogram();
    case MassPicogram(unit): unit.toPicogram();
    case MassTon(unit): unit.toTon();
    case MassHundredweight(unit): unit.toHundredweight();
    case MassQuarter(unit): unit.toQuarter();
    case MassStone(unit): unit.toStone();
    case MassPound(unit): unit.toPound();
    case MassOunce(unit): unit.toOunce();
    case MassDrachm(unit): unit.toDrachm();
    case MassGrain(unit): unit.toGrain();
    case MassUnifiedAtomicMassUnit(unit): unit.toUnifiedAtomicMassUnit();
    case MassDalton(unit): unit.toDalton();
    case MassPlankMass(unit): unit.toPlankMass();
    case MassSlug(unit): unit.toSlug();
    case MassSolarMass(unit): unit.toSolarMass();
  }

  @:to public function toTon() : Ton return switch this {
    case MassMegagram(unit): unit.toMegagram();
    case MassKilogram(unit): unit.toKilogram();
    case MassGram(unit): unit.toGram();
    case MassCentigram(unit): unit.toCentigram();
    case MassMilligram(unit): unit.toMilligram();
    case MassMicrogram(unit): unit.toMicrogram();
    case MassNanogram(unit): unit.toNanogram();
    case MassPicogram(unit): unit.toPicogram();
    case MassTon(unit): unit.toTon();
    case MassHundredweight(unit): unit.toHundredweight();
    case MassQuarter(unit): unit.toQuarter();
    case MassStone(unit): unit.toStone();
    case MassPound(unit): unit.toPound();
    case MassOunce(unit): unit.toOunce();
    case MassDrachm(unit): unit.toDrachm();
    case MassGrain(unit): unit.toGrain();
    case MassUnifiedAtomicMassUnit(unit): unit.toUnifiedAtomicMassUnit();
    case MassDalton(unit): unit.toDalton();
    case MassPlankMass(unit): unit.toPlankMass();
    case MassSlug(unit): unit.toSlug();
    case MassSolarMass(unit): unit.toSolarMass();
  }

  @:to public function toHundredweight() : Hundredweight return switch this {
    case MassMegagram(unit): unit.toMegagram();
    case MassKilogram(unit): unit.toKilogram();
    case MassGram(unit): unit.toGram();
    case MassCentigram(unit): unit.toCentigram();
    case MassMilligram(unit): unit.toMilligram();
    case MassMicrogram(unit): unit.toMicrogram();
    case MassNanogram(unit): unit.toNanogram();
    case MassPicogram(unit): unit.toPicogram();
    case MassTon(unit): unit.toTon();
    case MassHundredweight(unit): unit.toHundredweight();
    case MassQuarter(unit): unit.toQuarter();
    case MassStone(unit): unit.toStone();
    case MassPound(unit): unit.toPound();
    case MassOunce(unit): unit.toOunce();
    case MassDrachm(unit): unit.toDrachm();
    case MassGrain(unit): unit.toGrain();
    case MassUnifiedAtomicMassUnit(unit): unit.toUnifiedAtomicMassUnit();
    case MassDalton(unit): unit.toDalton();
    case MassPlankMass(unit): unit.toPlankMass();
    case MassSlug(unit): unit.toSlug();
    case MassSolarMass(unit): unit.toSolarMass();
  }

  @:to public function toQuarter() : Quarter return switch this {
    case MassMegagram(unit): unit.toMegagram();
    case MassKilogram(unit): unit.toKilogram();
    case MassGram(unit): unit.toGram();
    case MassCentigram(unit): unit.toCentigram();
    case MassMilligram(unit): unit.toMilligram();
    case MassMicrogram(unit): unit.toMicrogram();
    case MassNanogram(unit): unit.toNanogram();
    case MassPicogram(unit): unit.toPicogram();
    case MassTon(unit): unit.toTon();
    case MassHundredweight(unit): unit.toHundredweight();
    case MassQuarter(unit): unit.toQuarter();
    case MassStone(unit): unit.toStone();
    case MassPound(unit): unit.toPound();
    case MassOunce(unit): unit.toOunce();
    case MassDrachm(unit): unit.toDrachm();
    case MassGrain(unit): unit.toGrain();
    case MassUnifiedAtomicMassUnit(unit): unit.toUnifiedAtomicMassUnit();
    case MassDalton(unit): unit.toDalton();
    case MassPlankMass(unit): unit.toPlankMass();
    case MassSlug(unit): unit.toSlug();
    case MassSolarMass(unit): unit.toSolarMass();
  }

  @:to public function toStone() : Stone return switch this {
    case MassMegagram(unit): unit.toMegagram();
    case MassKilogram(unit): unit.toKilogram();
    case MassGram(unit): unit.toGram();
    case MassCentigram(unit): unit.toCentigram();
    case MassMilligram(unit): unit.toMilligram();
    case MassMicrogram(unit): unit.toMicrogram();
    case MassNanogram(unit): unit.toNanogram();
    case MassPicogram(unit): unit.toPicogram();
    case MassTon(unit): unit.toTon();
    case MassHundredweight(unit): unit.toHundredweight();
    case MassQuarter(unit): unit.toQuarter();
    case MassStone(unit): unit.toStone();
    case MassPound(unit): unit.toPound();
    case MassOunce(unit): unit.toOunce();
    case MassDrachm(unit): unit.toDrachm();
    case MassGrain(unit): unit.toGrain();
    case MassUnifiedAtomicMassUnit(unit): unit.toUnifiedAtomicMassUnit();
    case MassDalton(unit): unit.toDalton();
    case MassPlankMass(unit): unit.toPlankMass();
    case MassSlug(unit): unit.toSlug();
    case MassSolarMass(unit): unit.toSolarMass();
  }

  @:to public function toPound() : Pound return switch this {
    case MassMegagram(unit): unit.toMegagram();
    case MassKilogram(unit): unit.toKilogram();
    case MassGram(unit): unit.toGram();
    case MassCentigram(unit): unit.toCentigram();
    case MassMilligram(unit): unit.toMilligram();
    case MassMicrogram(unit): unit.toMicrogram();
    case MassNanogram(unit): unit.toNanogram();
    case MassPicogram(unit): unit.toPicogram();
    case MassTon(unit): unit.toTon();
    case MassHundredweight(unit): unit.toHundredweight();
    case MassQuarter(unit): unit.toQuarter();
    case MassStone(unit): unit.toStone();
    case MassPound(unit): unit.toPound();
    case MassOunce(unit): unit.toOunce();
    case MassDrachm(unit): unit.toDrachm();
    case MassGrain(unit): unit.toGrain();
    case MassUnifiedAtomicMassUnit(unit): unit.toUnifiedAtomicMassUnit();
    case MassDalton(unit): unit.toDalton();
    case MassPlankMass(unit): unit.toPlankMass();
    case MassSlug(unit): unit.toSlug();
    case MassSolarMass(unit): unit.toSolarMass();
  }

  @:to public function toOunce() : Ounce return switch this {
    case MassMegagram(unit): unit.toMegagram();
    case MassKilogram(unit): unit.toKilogram();
    case MassGram(unit): unit.toGram();
    case MassCentigram(unit): unit.toCentigram();
    case MassMilligram(unit): unit.toMilligram();
    case MassMicrogram(unit): unit.toMicrogram();
    case MassNanogram(unit): unit.toNanogram();
    case MassPicogram(unit): unit.toPicogram();
    case MassTon(unit): unit.toTon();
    case MassHundredweight(unit): unit.toHundredweight();
    case MassQuarter(unit): unit.toQuarter();
    case MassStone(unit): unit.toStone();
    case MassPound(unit): unit.toPound();
    case MassOunce(unit): unit.toOunce();
    case MassDrachm(unit): unit.toDrachm();
    case MassGrain(unit): unit.toGrain();
    case MassUnifiedAtomicMassUnit(unit): unit.toUnifiedAtomicMassUnit();
    case MassDalton(unit): unit.toDalton();
    case MassPlankMass(unit): unit.toPlankMass();
    case MassSlug(unit): unit.toSlug();
    case MassSolarMass(unit): unit.toSolarMass();
  }

  @:to public function toDrachm() : Drachm return switch this {
    case MassMegagram(unit): unit.toMegagram();
    case MassKilogram(unit): unit.toKilogram();
    case MassGram(unit): unit.toGram();
    case MassCentigram(unit): unit.toCentigram();
    case MassMilligram(unit): unit.toMilligram();
    case MassMicrogram(unit): unit.toMicrogram();
    case MassNanogram(unit): unit.toNanogram();
    case MassPicogram(unit): unit.toPicogram();
    case MassTon(unit): unit.toTon();
    case MassHundredweight(unit): unit.toHundredweight();
    case MassQuarter(unit): unit.toQuarter();
    case MassStone(unit): unit.toStone();
    case MassPound(unit): unit.toPound();
    case MassOunce(unit): unit.toOunce();
    case MassDrachm(unit): unit.toDrachm();
    case MassGrain(unit): unit.toGrain();
    case MassUnifiedAtomicMassUnit(unit): unit.toUnifiedAtomicMassUnit();
    case MassDalton(unit): unit.toDalton();
    case MassPlankMass(unit): unit.toPlankMass();
    case MassSlug(unit): unit.toSlug();
    case MassSolarMass(unit): unit.toSolarMass();
  }

  @:to public function toGrain() : Grain return switch this {
    case MassMegagram(unit): unit.toMegagram();
    case MassKilogram(unit): unit.toKilogram();
    case MassGram(unit): unit.toGram();
    case MassCentigram(unit): unit.toCentigram();
    case MassMilligram(unit): unit.toMilligram();
    case MassMicrogram(unit): unit.toMicrogram();
    case MassNanogram(unit): unit.toNanogram();
    case MassPicogram(unit): unit.toPicogram();
    case MassTon(unit): unit.toTon();
    case MassHundredweight(unit): unit.toHundredweight();
    case MassQuarter(unit): unit.toQuarter();
    case MassStone(unit): unit.toStone();
    case MassPound(unit): unit.toPound();
    case MassOunce(unit): unit.toOunce();
    case MassDrachm(unit): unit.toDrachm();
    case MassGrain(unit): unit.toGrain();
    case MassUnifiedAtomicMassUnit(unit): unit.toUnifiedAtomicMassUnit();
    case MassDalton(unit): unit.toDalton();
    case MassPlankMass(unit): unit.toPlankMass();
    case MassSlug(unit): unit.toSlug();
    case MassSolarMass(unit): unit.toSolarMass();
  }

  @:to public function toUnifiedAtomicMassUnit() : UnifiedAtomicMassUnit return switch this {
    case MassMegagram(unit): unit.toMegagram();
    case MassKilogram(unit): unit.toKilogram();
    case MassGram(unit): unit.toGram();
    case MassCentigram(unit): unit.toCentigram();
    case MassMilligram(unit): unit.toMilligram();
    case MassMicrogram(unit): unit.toMicrogram();
    case MassNanogram(unit): unit.toNanogram();
    case MassPicogram(unit): unit.toPicogram();
    case MassTon(unit): unit.toTon();
    case MassHundredweight(unit): unit.toHundredweight();
    case MassQuarter(unit): unit.toQuarter();
    case MassStone(unit): unit.toStone();
    case MassPound(unit): unit.toPound();
    case MassOunce(unit): unit.toOunce();
    case MassDrachm(unit): unit.toDrachm();
    case MassGrain(unit): unit.toGrain();
    case MassUnifiedAtomicMassUnit(unit): unit.toUnifiedAtomicMassUnit();
    case MassDalton(unit): unit.toDalton();
    case MassPlankMass(unit): unit.toPlankMass();
    case MassSlug(unit): unit.toSlug();
    case MassSolarMass(unit): unit.toSolarMass();
  }

  @:to public function toDalton() : Dalton return switch this {
    case MassMegagram(unit): unit.toMegagram();
    case MassKilogram(unit): unit.toKilogram();
    case MassGram(unit): unit.toGram();
    case MassCentigram(unit): unit.toCentigram();
    case MassMilligram(unit): unit.toMilligram();
    case MassMicrogram(unit): unit.toMicrogram();
    case MassNanogram(unit): unit.toNanogram();
    case MassPicogram(unit): unit.toPicogram();
    case MassTon(unit): unit.toTon();
    case MassHundredweight(unit): unit.toHundredweight();
    case MassQuarter(unit): unit.toQuarter();
    case MassStone(unit): unit.toStone();
    case MassPound(unit): unit.toPound();
    case MassOunce(unit): unit.toOunce();
    case MassDrachm(unit): unit.toDrachm();
    case MassGrain(unit): unit.toGrain();
    case MassUnifiedAtomicMassUnit(unit): unit.toUnifiedAtomicMassUnit();
    case MassDalton(unit): unit.toDalton();
    case MassPlankMass(unit): unit.toPlankMass();
    case MassSlug(unit): unit.toSlug();
    case MassSolarMass(unit): unit.toSolarMass();
  }

  @:to public function toPlankMass() : PlankMass return switch this {
    case MassMegagram(unit): unit.toMegagram();
    case MassKilogram(unit): unit.toKilogram();
    case MassGram(unit): unit.toGram();
    case MassCentigram(unit): unit.toCentigram();
    case MassMilligram(unit): unit.toMilligram();
    case MassMicrogram(unit): unit.toMicrogram();
    case MassNanogram(unit): unit.toNanogram();
    case MassPicogram(unit): unit.toPicogram();
    case MassTon(unit): unit.toTon();
    case MassHundredweight(unit): unit.toHundredweight();
    case MassQuarter(unit): unit.toQuarter();
    case MassStone(unit): unit.toStone();
    case MassPound(unit): unit.toPound();
    case MassOunce(unit): unit.toOunce();
    case MassDrachm(unit): unit.toDrachm();
    case MassGrain(unit): unit.toGrain();
    case MassUnifiedAtomicMassUnit(unit): unit.toUnifiedAtomicMassUnit();
    case MassDalton(unit): unit.toDalton();
    case MassPlankMass(unit): unit.toPlankMass();
    case MassSlug(unit): unit.toSlug();
    case MassSolarMass(unit): unit.toSolarMass();
  }

  @:to public function toSlug() : Slug return switch this {
    case MassMegagram(unit): unit.toMegagram();
    case MassKilogram(unit): unit.toKilogram();
    case MassGram(unit): unit.toGram();
    case MassCentigram(unit): unit.toCentigram();
    case MassMilligram(unit): unit.toMilligram();
    case MassMicrogram(unit): unit.toMicrogram();
    case MassNanogram(unit): unit.toNanogram();
    case MassPicogram(unit): unit.toPicogram();
    case MassTon(unit): unit.toTon();
    case MassHundredweight(unit): unit.toHundredweight();
    case MassQuarter(unit): unit.toQuarter();
    case MassStone(unit): unit.toStone();
    case MassPound(unit): unit.toPound();
    case MassOunce(unit): unit.toOunce();
    case MassDrachm(unit): unit.toDrachm();
    case MassGrain(unit): unit.toGrain();
    case MassUnifiedAtomicMassUnit(unit): unit.toUnifiedAtomicMassUnit();
    case MassDalton(unit): unit.toDalton();
    case MassPlankMass(unit): unit.toPlankMass();
    case MassSlug(unit): unit.toSlug();
    case MassSolarMass(unit): unit.toSolarMass();
  }

  @:to public function toSolarMass() : SolarMass return switch this {
    case MassMegagram(unit): unit.toMegagram();
    case MassKilogram(unit): unit.toKilogram();
    case MassGram(unit): unit.toGram();
    case MassCentigram(unit): unit.toCentigram();
    case MassMilligram(unit): unit.toMilligram();
    case MassMicrogram(unit): unit.toMicrogram();
    case MassNanogram(unit): unit.toNanogram();
    case MassPicogram(unit): unit.toPicogram();
    case MassTon(unit): unit.toTon();
    case MassHundredweight(unit): unit.toHundredweight();
    case MassQuarter(unit): unit.toQuarter();
    case MassStone(unit): unit.toStone();
    case MassPound(unit): unit.toPound();
    case MassOunce(unit): unit.toOunce();
    case MassDrachm(unit): unit.toDrachm();
    case MassGrain(unit): unit.toGrain();
    case MassUnifiedAtomicMassUnit(unit): unit.toUnifiedAtomicMassUnit();
    case MassDalton(unit): unit.toDalton();
    case MassPlankMass(unit): unit.toPlankMass();
    case MassSlug(unit): unit.toSlug();
    case MassSolarMass(unit): unit.toSolarMass();
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

enum MassImpl {
  MassMegagram(unit : Megagram);
  MassKilogram(unit : Kilogram);
  MassGram(unit : Gram);
  MassCentigram(unit : Centigram);
  MassMilligram(unit : Milligram);
  MassMicrogram(unit : Microgram);
  MassNanogram(unit : Nanogram);
  MassPicogram(unit : Picogram);
  MassTon(unit : Ton);
  MassHundredweight(unit : Hundredweight);
  MassQuarter(unit : Quarter);
  MassStone(unit : Stone);
  MassPound(unit : Pound);
  MassOunce(unit : Ounce);
  MassDrachm(unit : Drachm);
  MassGrain(unit : Grain);
  MassUnifiedAtomicMassUnit(unit : UnifiedAtomicMassUnit);
  MassDalton(unit : Dalton);
  MassPlankMass(unit : PlankMass);
  MassSlug(unit : Slug);
  MassSolarMass(unit : SolarMass);
}
