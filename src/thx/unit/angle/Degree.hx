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
		return this + '̊';

	@:to inline public function toRadians() : Radian
		return new Radian(this / TO_DEGREE);
}