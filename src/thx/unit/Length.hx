package thx.unit;

import thx.unit.length.*;

abstract Length(LengthImpl) from LengthImpl to LengthImpl {

  @:from inline static public function fromKilometre(value : Kilometre) : Length
    return LengthKilometre(value);

  @:from inline static public function fromMetre(value : Metre) : Length
    return LengthMetre(value);

  @:from inline static public function fromCentimetre(value : Centimetre) : Length
    return LengthCentimetre(value);

  @:from inline static public function fromMillimetre(value : Millimetre) : Length
    return LengthMillimetre(value);

  @:from inline static public function fromMicrometre(value : Micrometre) : Length
    return LengthMicrometre(value);

  @:from inline static public function fromNanometre(value : Nanometre) : Length
    return LengthNanometre(value);

  @:from inline static public function fromLeague(value : League) : Length
    return LengthLeague(value);

  @:from inline static public function fromMile(value : Mile) : Length
    return LengthMile(value);

  @:from inline static public function fromFurlong(value : Furlong) : Length
    return LengthFurlong(value);

  @:from inline static public function fromChain(value : Chain) : Length
    return LengthChain(value);

  @:from inline static public function fromYard(value : Yard) : Length
    return LengthYard(value);

  @:from inline static public function fromFoot(value : Foot) : Length
    return LengthFoot(value);

  @:from inline static public function fromInch(value : Inch) : Length
    return LengthInch(value);

  @:from inline static public function fromLine(value : Line) : Length
    return LengthLine(value);

  @:from inline static public function fromThou(value : Thou) : Length
    return LengthThou(value);

  @:from inline static public function fromFathom(value : Fathom) : Length
    return LengthFathom(value);

  @:from inline static public function fromNauticalMile(value : NauticalMile) : Length
    return LengthNauticalMile(value);

  @:from inline static public function fromEarthRadius(value : EarthRadius) : Length
    return LengthEarthRadius(value);

  @:from inline static public function fromAstronomicalUnit(value : AstronomicalUnit) : Length
    return LengthAstronomicalUnit(value);

  @:from inline static public function fromLightYear(value : LightYear) : Length
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


  @:to inline public function toKilometre() : Kilometre return switch this {
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

  @:to inline public function toMetre() : Metre return switch this {
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

  @:to inline public function toCentimetre() : Centimetre return switch this {
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

  @:to inline public function toMillimetre() : Millimetre return switch this {
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

  @:to inline public function toMicrometre() : Micrometre return switch this {
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

  @:to inline public function toNanometre() : Nanometre return switch this {
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

  @:to inline public function toLeague() : League return switch this {
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

  @:to inline public function toMile() : Mile return switch this {
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

  @:to inline public function toFurlong() : Furlong return switch this {
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

  @:to inline public function toChain() : Chain return switch this {
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

  @:to inline public function toYard() : Yard return switch this {
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

  @:to inline public function toFoot() : Foot return switch this {
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

  @:to inline public function toInch() : Inch return switch this {
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

  @:to inline public function toLine() : Line return switch this {
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

  @:to inline public function toThou() : Thou return switch this {
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

  @:to inline public function toFathom() : Fathom return switch this {
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

  @:to inline public function toNauticalMile() : NauticalMile return switch this {
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

  @:to inline public function toEarthRadius() : EarthRadius return switch this {
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

  @:to inline public function toAstronomicalUnit() : AstronomicalUnit return switch this {
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

  @:to inline public function toLightYear() : LightYear return switch this {
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
