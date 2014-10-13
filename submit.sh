#!/bin/sh
rm thx.unit.zip
zip -r thx.unit.zip hxml src test doc/ImportUnit.hx extraParams.hxml haxelib.json LICENSE README.md
haxelib submit thx.unit.zip