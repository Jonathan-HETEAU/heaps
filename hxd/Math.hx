package hxd;

/**
	Math helpers, inlined where possible: most functions call `std.Math`, with `Int` and `Float` variants and game-oriented additions (angles, interpolation, random).
**/
class Math {

	/**
		The ratio of a circle's circumference to its diameter.
	**/
	public static inline var PI = 3.14159265358979323;
	/**
		A very small value (`1e-10`), used to compare floats.
	**/
	public static inline var EPSILON = 1e-10;
	/**
		The square of `EPSILON`, used to compare squared distances.
	**/
	public static inline var EPSILON2 = 1e-20;

	/**
		The positive infinity value.
	**/
	public static var POSITIVE_INFINITY(get, never) : Float;
	/**
		The negative infinity value.
	**/
	public static var NEGATIVE_INFINITY(get, never) : Float;
	/**
		The "not a number" value.
	**/
	public static var NaN(get, never) : Float;

	static inline function get_POSITIVE_INFINITY() {
		return std.Math.POSITIVE_INFINITY;
	}

	static inline function get_NEGATIVE_INFINITY() {
		return std.Math.NEGATIVE_INFINITY;
	}

	static inline function get_NaN() {
		return std.Math.NaN;
	}

	/**
		Tells if `v` is `NaN`.
	**/
	public static inline function isNaN(v:Float) {
		return std.Math.isNaN(v);
	}

	/**
		Tells if `v` is neither infinite nor `NaN`.
	**/
	public static inline function isFinite(v:Float) {
		return std.Math.isFinite(v);
	}

	/**
		Rounds `v` to 4 significant digits, and returns `0` for values under `1e-6`. Useful to print values.
	**/
	public static function fmt( v : Float ) {
		var neg;
		if( v < 0 ) {
			neg = -1.0;
			v = -v;
		} else
			neg = 1.0;
		if( std.Math.isNaN(v) || !std.Math.isFinite(v) )
			return v;
		var digits = Std.int(4 - log10(v));
		if( digits < 1 )
			digits = 1;
		else if( digits >= 10 )
			return 0.;
		var exp = pow(10,digits);
		return std.Math.ffloor(v * exp + .49999) * neg / exp;
	}

	/**
		Returns e raised to the power `f`.
	**/
	public static inline function exp( f : Float ) {
		return std.Math.exp(f);
	}

	/**
		Returns the natural logarithm of `f`.
	**/
	public static inline function log( f : Float ) {
		return std.Math.log(f);
	}

	/**
		Returns the base 2 logarithm of `f`.
	**/
	public static inline function log2( f : Float ) {
		return logBase(f, 2.0);
	}

	/**
		Returns the base 10 logarithm of `f`.
	**/
	public static inline function log10( f : Float ) {
		return logBase(f, 10.0);
	}

	/**
		Returns the logarithm of `f` in the given base.
	**/
	public static inline function logBase( f : Float, base : Float ) {
		return log(f) / log(base);
	}

	/**
		Returns the largest integer less than or equal to `f`.
	**/
	public static inline function floor( f : Float ) {
		return std.Math.floor(f);
	}

	/**
		Returns the largest integer less than or equal to `f`, as a `Float`.
	**/
	public static inline function ffloor( f : Float ) {
		return std.Math.ffloor(f);
	}

	/**
		Returns the smallest integer greater than or equal to `f`.
	**/
	public static inline function ceil( f : Float ) {
		return std.Math.ceil(f);
	}

	/**
		Returns `f` rounded to the nearest integer.
	**/
	public static inline function round( f : Float ) {
		return std.Math.round(f);
	}

	/**
		Returns `f` rounded to the nearest integer, as a `Float`.
	**/
	public static inline function fround( f : Float ) {
		return std.Math.fround(f);
	}

	/**
		Returns `f` limited to the `[min, max]` range (`[0, 1]` by default).
	**/
	public static inline function clamp( f : Float, min = 0., max = 1. ) {
		return f < min ? min : f > max ? max : f;
	}

	/**
		Returns `v` raised to the power `p`.
	**/
	public static inline function pow( v : Float, p : Float ) {
		return std.Math.pow(v,p);
	}

	/**
		Returns the cosine of the angle `f`, in radians.
	**/
	public static inline function cos( f : Float ) {
		return std.Math.cos(f);
	}

	/**
		Returns the sine of the angle `f`, in radians.
	**/
	public static inline function sin( f : Float ) {
		return std.Math.sin(f);
	}

	/**
		Returns the tangent of the angle `f`, in radians.
	**/
	public static inline function tan( f : Float ) {
		return std.Math.tan(f);
	}

	/**
		Returns the arc cosine of `f`, in radians.
	**/
	public static inline function acos( f : Float ) {
		return std.Math.acos(f);
	}

	/**
		Returns the arc sine of `f`, in radians.
	**/
	public static inline function asin( f : Float ) {
		return std.Math.asin(f);
	}

	/**
		Returns the arc tangent of `f`, in radians.
	**/
	public static inline function atan( f : Float ) {
		return std.Math.atan(f);
	}

	/**
		Returns the square root of `f`.
	**/
	public static inline function sqrt( f : Float ) {
		return std.Math.sqrt(f);
	}

	/**
		Returns `1 / sqrt(f)`.
	**/
	public static inline function invSqrt( f : Float ) {
		return 1. / sqrt(f);
	}

	/**
		Returns the angle of the vector `(dx, dy)`, in radians in the `[-PI, PI]` range.
	**/
	public static inline function atan2( dy : Float, dx : Float ) {
		return std.Math.atan2(dy,dx);
	}

	/**
		Returns the absolute value of `f`.
	**/
	public static inline function abs( f : Float ) {
		return f < 0 ? -f : f;
	}

	/**
		Returns the greatest of `a` and `b`.
	**/
	public static inline function max( a : Float, b : Float ) {
		return a < b ? b : a;
	}

	/**
		Returns the smallest of `a` and `b`.
	**/
	public static inline function min( a : Float, b : Float ) {
		return a > b ? b : a;
	}

	/**
		Returns the absolute value of the integer `i`.
	**/
	public static inline function iabs( i : Int ) {
		return i < 0 ? -i : i;
	}

	/**
		Returns the greatest of the integers `a` and `b`.
	**/
	public static inline function imax( a : Int, b : Int ) {
		return a < b ? b : a;
	}

	/**
		Returns the smallest of the integers `a` and `b`.
	**/
	public static inline function imin( a : Int, b : Int ) {
		return a > b ? b : a;
	}

	/**
		Returns the integer `v` limited to the `[min, max]` range.
	**/
	public static inline function iclamp( v : Int, min : Int, max : Int ) {
		return v < min ? min : (v > max ? max : v);
	}

	/**
		Linear interpolation between two values. When k is 0 a is returned, when it's 1, b is returned.
	**/
	public inline static function lerp(a:Float, b:Float, k:Float) {
		return a + k * (b - a);
	}

	/**
		Returns a value between 0 and 1, that determines where val lies between a and b.
	 */
	public inline static function inverseLerp(a:Float, b:Float, val:Float) {
		return (val - a) / (b - a);
	}

	/**
	 	Similar to linear interpolation (k is between [0,1]), but can be controled with easing parameter. When easing is 0 it's linear.
	**/
	public inline static function ease(a:Float, b:Float, k:Float, easing:Float) {
		return lerp(a, b, easeFactor(k, easing));
	}

	/**
		ease = lerp(a,b,easeFactor(k,easing))
	**/
	public inline static function easeFactor( k : Float, easing : Float ) {
		var p = Math.pow(k, 1 + easing);
		return p / (p + Math.pow(1 - k, easing + 1));
	}

	/**
		Same as lerp but is scaled based on current FPS, using current elapsed time in seconds.
	**/
	public inline static function lerpTime(a:Float, b:Float, k:Float, dt:Float) {
		return lerp(a, b, 1 - Math.pow(1 - k, dt * hxd.Timer.wantedFPS));
	}

	/**
		Returns the number of bits set to 1 in `v`.
	**/
	public inline static function bitCount(v:Int) {
		v = v - ((v >> 1) & 0x55555555);
		v = (v & 0x33333333) + ((v >> 2) & 0x33333333);
		return (((v + (v >> 4)) & 0x0F0F0F0F) * 0x01010101) >> 24;
	}

	/**
		Tells if `v` is a power of two (also true for `0`).
	**/
	public static inline function isPOT(v : Int) : Bool {
		return (v & (v - 1)) == 0;
	}

	/**
		Returns the smallest power of two greater than or equal to `v`.
	**/
	public static inline function nextPOT(v : Int) : Int {
		--v;
		v |= v >> 1;
		v |= v >> 2;
		v |= v >> 4;
		v |= v >> 8;
		v |= v >> 16;
		return ++v;
	}

	/**
		Returns the squared length of the vector `(dx, dy, dz)`.
	**/
	public static inline function distanceSq( dx : Float, dy : Float, dz = 0. ) {
		return dx * dx + dy * dy + dz * dz;
	}

	/**
		Returns the length of the vector `(dx, dy, dz)`.
	**/
	public static inline function distance( dx : Float, dy : Float, dz = 0. ) {
		return sqrt(distanceSq(dx,dy,dz));
	}

	/**
		Linear interpolation between two colors (ARGB).
	**/
	public static function colorLerp( c1 : Int, c2 : Int, k : Float ) {
		var a1 = c1 >>> 24;
		var r1 = (c1 >> 16) & 0xFF;
		var g1 = (c1 >> 8) & 0xFF;
		var b1 = c1 & 0xFF;
		var a2 = c2 >>> 24;
		var r2 = (c2 >> 16) & 0xFF;
		var g2 = (c2 >> 8) & 0xFF;
		var b2 = c2 & 0xFF;
		var a = Std.int(a1 * (1-k) + a2 * k);
		var r = Std.int(r1 * (1-k) + r2 * k);
		var g = Std.int(g1 * (1-k) + g2 * k);
		var b = Std.int(b1 * (1 - k) + b2 * k);
		return (a << 24) | (r << 16) | (g << 8) | b;
	}

	/**
		Wraps an angle into the `]-PI, PI]` range. Can be used to measure the direction between two angles : if Math.angle(A-B) < 0 go left else go right.
	**/
	public static inline function angle( da : Float ) {
		da %= PI * 2;
		if( da > PI ) da -= 2 * PI else if( da <= -PI ) da += 2 * PI;
		return da;
	}

	/**
		Interpolates from angle `a` to angle `b` by `k`, using the shortest way around the circle.
	**/
	public static inline function angleLerp( a : Float, b : Float, k : Float ) {
		return a + angle(b - a) * k;
	}

	/**
		Move angle a towards angle b with a max increment. Return the new angle.
	**/
	public static inline function angleMove( a : Float, b : Float, max : Float ) {
		var da = angle(b - a);
		return if( da > -max && da < max ) b else a + (da < 0 ? -max : max);
	}

	/**
		Move a value towards the given target using the max increment. Return the new value.
	**/
	public static inline function valueMove( v : Float, target : Float, max : Float ) {
		if( v < target ) {
			v += max;
			if( v > target ) v = target;
		} else if( v > target ) {
			v -= max;
			if( v < target ) v = target;
		}
		return v;
	}

	/**
		Shuffles the array in place, using `Std.random`.
	**/
	public static inline function shuffle<T>( a : Array<T> ) {
		var len = a.length;
		for( i in 0...len ) {
			var x = Std.random(len);
			var y = Std.random(len);
			var tmp = a[x];
			a[x] = a[y];
			a[y] = tmp;
		}
	}

	/**
		Returns a random float between `0` (included) and `max` (excluded).
	**/
	public inline static function random( max = 1.0 ) {
		return std.Math.random() * max;
	}

	/**
		Returns a signed random between -max and max (both included).
	**/
	public static function srand( max = 1.0 ) {
		return (std.Math.random() - 0.5) * (max * 2);
	}


	/**
	 * takes an int , masks it and devide so that it safely maps 0...255 to 0...1.0
	 * @paramv an int between 0 and 255 will be masked
	 * @return a float between( 0 and 1)
	 */
	public static inline function b2f( v:Int ) :Float {
		return (v&0xFF) * 0.0039215686274509803921568627451;
	}

	/**
	 * takes a float , clamps it and multipy so that it safely maps 0...1 to 0...255.0
	 * @param	f a float
	 * @return an int [0...255]
	 */
	public static inline function f2b( v:Float ) : Int {
		return Std.int(clamp(v) * 255.0);
	}

	/**
	 * returns the modulo but always positive
	 */
	public static inline function umod( value : Int, modulo : Int ) {
		var r = value % modulo;
		return r >= 0 ? r : r + modulo;
	}

	/**
	 * returns the modulo but always positive
	 */
	public static inline function ufmod( value : Float, modulo : Float ) {
		var r = value % modulo;
		return r >= 0 ? r : r + modulo;
	}

	/**
	 * Convert degrees to radians
	**/
	public static inline function degToRad( deg : Float) {
		return deg * PI / 180.0;
	}

	/**
	 * Convert radians to degrees
	 */
	public static inline function radToDeg( rad : Float) {
		return rad * 180.0 / PI;
	}
}