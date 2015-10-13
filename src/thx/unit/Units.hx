package thx.unit;

using thx.Strings;
import thx.Decimal;
import thx.Error;

class Units {
  static var parse_pattern = ~/([+-]?\d+(?:\.\d+)?(?:[eE]-?\d+)?)/;

  public static function parseUnit(s : String, ?pos : haxe.PosInfos) {
    if(!parse_pattern.match(s))
      return null;
    var value  = Decimal.fromString(parse_pattern.matched(1)),
        symbol = parse_pattern.matchedLeft();
    if(null == symbol || (symbol = symbol.trim()) == "") {
      symbol = parse_pattern.matchedRight();
      if(null == symbol)
        throw new Error('cannot parse a unit without a symbol: $s', pos);
      symbol = symbol.trim();
    }
    return {
      value : value,
      symbol : symbol,
    };
  }
}
