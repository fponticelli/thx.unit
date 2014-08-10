package thx.unit.angle;

import thx.unit.angle.Const.*;

abstract Radian(Float) {
	@:from public static inline function fromFloat(angle : Float)
		return new Radian(angle);

	inline public function new(radians : Float)
		this = radians;

	inline public function cos()
		return Math.cos(this);

	inline public function sin()
		return Math.sin(this);

	@:to inline public function toString()
		return '${this}rad';

	@:to inline public function toDegrees() : Degree
		return new Degree(this * TO_DEGREE);

	@:to inline public function toFloat() : Float
		return this;

	@:op(-A) inline public function negate()
		return new Radian(-this);

	@:op(A*B) inline public function multiply(v : Float)
		return new Radian(this * v);

	@:op(A/B) inline public function divide(v : Float)
		return new Radian(this / v);

	@:op(A+B) inline public function add(r : Radian)
		return new Radian(this + r.toFloat());

	@:op(A-B) inline public function subtract(r : Radian)
		return add(-r);
}

class FloatRadian {
	inline public static function toRadians(v : Float)
		return Radian.fromFloat(v);
}