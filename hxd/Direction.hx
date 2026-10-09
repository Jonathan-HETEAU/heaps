package hxd;

/**
	One of the 4 directions on a 2D grid, with Y pointing down.
	The value encodes the offsets as `(x + 1) | ((y + 1) << 2)`.
**/
enum abstract Direction(Int) {

	/**
		`x = 0, y = -1`.
	**/
	public var Up = 1;
	/**
		`x = -1, y = 0`.
	**/
	public var Left = 4;
	/**
		`x = 1, y = 0`.
	**/
	public var Right = 6;
	/**
		`x = 0, y = 1`.
	**/
	public var Down = 9;

	/**
		The X offset of the direction (`-1`, `0` or `1`).
	**/
	public var x(get, never) : Int;
	/**
		The Y offset of the direction (`-1`, `0` or `1`).
	**/
	public var y(get, never) : Int;
	/**
		The angle of the direction in radians, as given by `atan2(y, x)`.
	**/
	public var angle(get, never) : Float;
	/**
		The lowercase name of the direction (`"up"`, `"left"`, `"right"` or `"down"`).
	**/
	public var name(get, never) : String;

	inline function new(v) {
		this = v;
	}

	inline function get_x() {
		return (this & 3) - 1;
	}

	inline function get_y() {
		return (this >> 2) - 1;
	}

	inline function get_name() {
		return VALUES[this];
	}

	inline function get_angle() {
		return Math.atan2(y, x);
	}

	/**
		Returns the opposite direction.
	**/
	public inline function inverse() {
		return INVERT[this];
	}

	static var VALUES = ["none", "up", null, null, "left", null, "right", null, null, "down"];
	static var INVERT = [ffrom(1, 1), Down, ffrom(1, -1), ffrom(0, 0), Right, ffrom(0, 0), Left, ffrom(0, 0), ffrom( -1, 1), Up, ffrom( -1, -1), ffrom(0, 0)];
	inline function toString() {
		return name;
	}

	/**
		Creates a direction from offsets in the `[-1, 1]` range. No check is done, so it can return a diagonal value that is not one of the 4 named directions.
	**/
	public static inline function ffrom(dx:Int, dy:Int) {
		return new Direction((dx + 1) | ((dy + 1) << 2));
	}

	/**
		Returns the direction of the vector `(x, y)`, keeping only its dominant axis (the vertical one on ties).
	**/
	public static function from(x:Float, y:Float) : Direction {
		if( x != 0 && y != 0 ) {
			if( Math.abs(x) > Math.abs(y) )
				y = 0;
			else
				x = 0;
		}
		var ix = if( x < 0 ) -1 else if( x > 0 ) 1 else 0;
		var iy = if( y < 0 ) -1 else if( y > 0 ) 1 else 0;
		return cast ((ix + 1) | ((iy + 1) << 2));
	}
}
