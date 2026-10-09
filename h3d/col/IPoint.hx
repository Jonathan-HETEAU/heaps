package h3d.col;
using hxd.Math;

/**
	A 3D point with integer coordinates.
**/
class IPoint #if apicheck implements h2d.impl.PointApi.IPointApi<IPoint> #end {

	/**
		The X coordinate.
	**/
	public var x : Int;
	/**
		The Y coordinate.
	**/
	public var y : Int;
	/**
		The Z coordinate.
	**/
	public var z : Int;

	// -- gen api

	/**
		Creates a point.
	**/
	public inline function new(x=0,y=0,z=0) {
		this.x = x;
		this.y = y;
		this.z = z;
	}

	/**
		Returns a string representation.
	**/
	public function toString() {
		return 'IPoint{$x,$y,$z}';
	}

	/**
		Returns a copy multiplied by `v`.
	**/
	public inline function scaled( v : Int ) {
		return new IPoint(x * v, y * v, z * v);
	}

	/**
		Sets the coordinates.
	**/
	public inline function set(x=0, y=0, z=0) {
		this.x = x;
		this.y = y;
		this.z = z;
	}

	/**
		Tells if the coordinates are equal to those of `other`.
	**/
	public inline function equals( other : IPoint ) : Bool {
		return x == other.x && y == other.y && z == other.z;
	}

	/**
		Copies the values of another instance.
	**/
	public inline function load( p : IPoint ) {
		this.x = p.x;
		this.y = p.y;
		this.z = p.z;
	}

	/**
		Returns the squared distance to the other point.
	**/
	public inline function distanceSq( p : IPoint ) {
		var dx = p.x - x;
		var dy = p.y - y;
		var dz = p.z - z;
		return dx * dx + dy * dy + dz * dz;
	}

	/**
		Returns the distance to the other point.
	**/
	public inline function distance( p : IPoint ) {
		return Math.sqrt(distanceSq(p));
	}

	/**
		Returns the squared length.
	**/
	public inline function lengthSq() {
		return x * x + y * y + z * z;
	}

	/**
		Returns the length.
	**/
	public inline function length() {
		return Math.sqrt(x * x + y * y + z * z);
	}

	/**
		Returns a copy.
	**/
	public inline function clone() {
		return new IPoint(x,y,z);
	}

	/**
		Multiplies the coordinates by `v`.
	**/
	public inline function scale( v : Int ) {
		x *= v;
		y *= v;
		z *= v;
	}

	/**
		Returns `this + p` as a new point.
	**/
	public inline function add( p : IPoint ) {
		return new IPoint(x + p.x, y + p.y, z + p.z);
	}

	/**
		Returns `this - p` as a new point.
	**/
	public inline function sub( p : IPoint ) {
		return new IPoint(x - p.x, y - p.y, z - p.z);
	}

	/**
		Returns the dot product with `p`.
	**/
	public inline function dot( p : IPoint ) {
		return x * p.x + y * p.y + z * p.z;
	}

	/**
		Returns the cross product with `p`.
	**/
	public inline function cross( p : IPoint ) {
		return new IPoint(y * p.z - z * p.y, z * p.x - x * p.z,  x * p.y - y * p.x);
	}

}