package h3d.col;

/**
	A sphere collider, defined by its center and radius.
**/
class Sphere extends Collider {

	/**
		The X position of the center.
	**/
	public var x : Float;
	/**
		The Y position of the center.
	**/
	public var y : Float;
	/**
		The Z position of the center.
	**/
	public var z : Float;
	/**
		The radius.
	**/
	public var r : Float;

	/**
		Creates a sphere.
	**/
	public inline function new(x=0., y=0., z=0., r=1.) {
		load(x, y, z, r);
	}

	/**
		Sets the center and radius.
	**/
	public inline function load(sx=0., sy=0., sz=0., sr=0.) {
		this.x = sx;
		this.y = sy;
		this.z = sz;
		this.r = sr;
	}

	/**
		Returns the center.
	**/
	public inline function getCenter() {
		return new Point(x, y, z);
	}

	/**
		Returns the distance from `p` to the surface of the sphere (negative inside).
	**/
	public inline function distance( p : Point ) {
		var d = distanceSq(p);
		return d < 0 ? -Math.sqrt(-d) : Math.sqrt(d);
	}

	/**
		Returns the squared distance from `p` to the center minus the squared radius (negative inside).
	**/
	public inline function distanceSq( p : Point ) {
		var dx = p.x - x;
		var dy = p.y - y;
		var dz = p.z - z;
		return dx * dx + dy * dy + dz * dz - r * r;
	}

	/**
		Tells if the point `p` is inside the shape.
	**/
	public inline function contains( p : Point ) {
		return distanceSq(p) < 0;
	}

	/**
		Returns the distance along the ray `r` to the first intersection with the shape, or a negative value if there is none.
		If `bestMatch` is `false`, any intersection can be returned (faster).
	**/
	public function rayIntersection( r : Ray, bestMatch : Bool ) : Float {
		var mx = r.px - x;
		var my = r.py - y;
		var mz = r.pz - z;
		var b = mx * r.lx + my * r.ly + mz * r.lz;
		var c = mx * mx + my * my + mz * mz - this.r * this.r;
		if ( c > 0.0 && b > 0.0 )
			return -1;
		var d = b * b - c;
		if ( d < 0.0 )
			return -1;
		var t = -b - Math.sqrt(d);
		return t < 0.0 ? 0.0 : t;
	}

	/**
		Tells if the shape intersects the frustum `f`, optionally transformed by `localMatrix`.
	**/
	public inline function inFrustum( f : Frustum, ?m : h3d.Matrix ) {
		if( m != null ) return inFrustumMatrix(f,m);
		return f.hasSphere(this);
	}

	function inFrustumMatrix( f : Frustum, m : h3d.Matrix ) {
		var oldX = x, oldY = y, oldZ = z, oldR = r;
		var v = getCenter();
		v.transform(m);
		x = v.x;
		y = v.y;
		z = v.z;
		var scale = m.getScale();
		r *= Math.abs(Math.max(Math.max(scale.x, scale.y), scale.z));
		var res = f.hasSphere(this);
		x = oldX;
		y = oldY;
		z = oldZ;
		r = oldR;
		return res;
	}

	/**
		Transforms the sphere by `m` (the radius is multiplied by the largest scale).
	**/
	public function transform( m : h3d.Matrix ) {
		var s = m.getScale();
		var smax = hxd.Math.max(hxd.Math.max(hxd.Math.abs(s.x), hxd.Math.abs(s.y)), hxd.Math.abs(s.z));
		r *= smax;
		var pt = new h3d.col.Point(x,y,z);
		pt.transform(m);
		x = pt.x;
		y = pt.y;
		z = pt.z;
	}

	/**
		Tells if the shape intersects the sphere `s`.
	**/
	public inline function inSphere( s : Sphere ) {
		return new Point(x,y,z).distanceSq(new Point(s.x,s.y,s.z)) < (s.r + r)*(s.r + r);
	}

	/**
		Returns a string representation.
	**/
	public function toString() {
		return "Sphere{" + getCenter()+","+ hxd.Math.fmt(r) + "}";
	}

	/**
		Returns the largest size of the shape, used to compare collider sizes.
	**/
	public inline function dimension() {
		return r;
	}

	/**
		Returns the point of the shape closest to `p`.
	**/
	public inline function closestPoint( p : h3d.col.Point ) {
		var d = p.sub(getCenter()).normalized().scaled(r);
		return d.add(getCenter());
	}

	/**
		Returns a copy.
	**/
	public inline function clone() {
		var s = new Sphere();
		s.x = x;
		s.y = y;
		s.z = z;
		s.r = r;
		return s;
	}

	#if !macro
	/**
		Creates an object displaying the shape (debug), or `null` if not supported.
	**/
	public function makeDebugObj() : h3d.scene.Object {
		var prim = h3d.prim.Sphere.defaultUnitSphere();
		var mesh = new h3d.scene.Mesh(prim);
		mesh.scale(r);
		mesh.setPosition(x,y,z);
		return mesh;
	}
	#end

}