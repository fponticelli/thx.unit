package thx.unit.angle;

import thx.unit.angle.Const.*;

abstract Degree(Float) {
	@:from public static inline function fromFloat(angle : Float)
		return new Degree(angle);

	inline public function new(degrees : Float)
		this = degrees;

	inline public function cos()
		return toRadians().cos();

	inline public function sin()
		return toRadians().sin();

	@:to inline public function toString()
		return '${this}̊';

	@:to inline public function toRadians() : Radian
		return new Radian(this / TO_DEGREE);

	@:to inline public function toFloat() : Float
		return this;

	@:op(-A) inline public function negate()
		return new Degree(-this);

	@:op(A*B) inline public function multiply(v : Float)
		return new Degree(this * v);

	@:op(A/B) inline public function divide(v : Float)
		return new Degree(this / v);

	@:op(A+B) inline public function add(r : Degree)
		return new Degree(this + r.toFloat());

	@:op(A+B) inline public function addFloat(v : Float)
		return new Degree(this + v);

	@:op(A-B) inline public function subtract(r : Degree)
		return add(-r);

	@:op(A-B) inline public function subtractFloat(v : Float)
		return addFloat(-v);
}

class FloatDegree {
	inline public static function toDegrees(v : Float)
		return Degree.fromFloat(v);
}