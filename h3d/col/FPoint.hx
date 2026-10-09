package h3d.col;
using hxd.Math;

/**
	A 3D point stored with 32-bit floats (smaller in memory than `Point`).
**/
class FPoint {

	/**
		The X coordinate.
	**/
	public var x : hxd.impl.Float32;
	/**
		The Y coordinate.
	**/
	public var y : hxd.impl.Float32;
	/**
		The Z coordinate.
	**/
	public var z : hxd.impl.Float32;

	/**
		Creates a point.
	**/
	public inline function new(x=0.,y=0.,z=0.) {
		this.x = x;
		this.y = y;
		this.z = z;
	}

	/**
		Sets the coordinates.
	**/
	public inline function set(x=0.,y=0.,z=0.) {
		this.x = x;
		this.y = y;
		this.z = z;
	}

	/**
		Returns `this - p` as a new point.
	**/
	public inline function sub( p : FPoint ) {
		return new FPoint(x - p.x, y - p.y, z - p.z);
	}

	/**
		Returns `this + p` as a new point.
	**/
	public inline function add( p : FPoint ) {
		return new FPoint(x + p.x, y + p.y, z + p.z);
	}

	/**
		Returns the cross product with `p`.
	**/
	public inline function cross( p : FPoint ) {
		return new FPoint(y * p.z - z * p.y, z * p.x - x * p.z,  x * p.y - y * p.x);
	}

	/**
		Returns the dot product with `p`.
	**/
	public inline function dot( p : FPoint ) {
		return x * p.x + y * p.y + z * p.z;
	}

	/**
		Returns the squared distance to the other point.
	**/
	public inline function distanceSq( v : FPoint ) {
		var dx = v.x - x;
		var dy = v.y - y;
		var dz = v.z - z;
		return dx * dx + dy * dy + dz * dz;
	}

	/**
		Returns the squared length.
	**/
	public inline function lengthSq() {
		return x * x + y * y + z * z;
	}

	/**
		Returns a copy scaled to a length of 1.
	**/
	public inline function normalized() {
		var k = lengthSq();
		if ( k < hxd.Math.EPSILON2 ) k = 0 else k = k.invSqrt();
		return new FPoint(x * k, y * k, z * k);
	}

	/**
		Returns a copy multiplied by `v`.
	**/
	public inline function scaled(v : Float) {
		return new FPoint(x * v, y * v, z * v);
	}

	/**
		Returns a string representation.
	**/
	public function toString() {
		return 'FPoint{${x.fmt()},${y.fmt()},${z.fmt()}}';
	}

}