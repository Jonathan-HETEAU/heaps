package h3d.col;
import hxd.Math;

/**
	An axis aligned bounding box (AABB), defined by its minimum and maximum coordinates.
	Also used as a collider and for culling.

	```haxe
	var b = obj.getBounds();
	trace(b.getCenter() + " size " + b.getSize());
	```
**/
class Bounds extends Collider {

	/**
		The minimum X coordinate.
	**/
	public var xMin : Float;
	/**
		The maximum X coordinate.
	**/
	public var xMax : Float;
	/**
		The minimum Y coordinate.
	**/
	public var yMin : Float;
	/**
		The maximum Y coordinate.
	**/
	public var yMax : Float;
	/**
		The minimum Z coordinate.
	**/
	public var zMin : Float;
	/**
		The maximum Z coordinate.
	**/
	public var zMax : Float;

	/**
		The size along X. Setting it moves `xMax`.
	**/
	public var xSize(get,set) : Float;
	/**
		The size along Y. Setting it moves `yMax`.
	**/
	public var ySize(get,set) : Float;
	/**
		The size along Z. Setting it moves `zMax`.
	**/
	public var zSize(get,set) : Float;

	/**
		Creates empty bounds (see `empty`).
	**/
	public inline function new() {
		empty();
	}

	/**
		Tells if the shape intersects the frustum `f`, optionally transformed by `localMatrix`.
	**/
	public inline function inFrustum( f : Frustum, ?m: h3d.Matrix ) {
		if( m != null )
			throw "Not implemented";
		return f.hasBounds(this);
	}

	/**
		Tells if the shape intersects the sphere `s`.
	**/
	public inline function inSphere( s : Sphere ) {
		var c = new Point(s.x,s.y,s.z);
		var p = new Point(Math.max(xMin, Math.min(s.x, xMax)), Math.max(yMin, Math.min(s.y, yMax)), Math.max(zMin, Math.min(s.z, zMax)));
		return c.distanceSq(p) < s.r*s.r;
	}

	inline function testPlane( p : Plane ) {
		var a = p.nx;
		var b = p.ny;
		var c = p.nz;
		var dd = a * (xMax + xMin) + b * (yMax + yMin) + c * (zMax + zMin);
		if( a < 0 ) a = -a;
		if( b < 0 ) b = -b;
		if( c < 0 ) c = -c;
		var rr = a * (xMax - xMin) + b * (yMax - yMin) + c * (zMax - zMin);
		return dd + rr - p.d*2;
	}

	/**
		Returns the distance along the ray `r` to the first intersection with the shape, or a negative value if there is none.
		If `bestMatch` is `false`, any intersection can be returned (faster).
	**/
	public inline function rayIntersection( r : Ray, bestMatch : Bool ) : Float {
		var minTx = (xMin - r.px) / r.lx;
		var minTy = (yMin - r.py) / r.ly;
		var minTz = (zMin - r.pz) / r.lz;
		var maxTx = (xMax - r.px) / r.lx;
		var maxTy = (yMax - r.py) / r.ly;
		var maxTz = (zMax - r.pz) / r.lz;

		var realMinTx = Math.min(minTx, maxTx);
		var realMinTy = Math.min(minTy, maxTy);
		var realMinTz = Math.min(minTz, maxTz);
		var realMaxTx = Math.max(minTx, maxTx);
		var realMaxTy = Math.max(minTy, maxTy);
		var realMaxTz = Math.max(minTz, maxTz);

		var minmax = Math.min( Math.min(realMaxTx, realMaxTy), realMaxTz);
		var maxmin = Math.max( Math.max(realMinTx, realMinTy), realMinTz);

		return if(minmax < maxmin) -1 else maxmin;
	}

	/**
	 * Check if the camera model-view-projection Matrix intersects with the Bounds. Returns -1 if outside, 0 if intersects and 1 if fully inside.
	 * @param	mvp : the model-view-projection matrix to test against
	 * @param	checkZ : tells if we will check against the near/far plane
	 */
	public function inFrustumDetails( mvp : Matrix, checkZ = true ) {
		var ret = 1;

		// left
		var p = new Plane(mvp._14 + mvp._11, mvp._24 + mvp._21 , mvp._34 + mvp._31, mvp._44 + mvp._41);
		var m = p.nx * (p.nx > 0 ? xMax : xMin) + p.ny * (p.ny > 0 ? yMax : yMin) + p.nz * (p.nz > 0 ? zMax : zMin);
		if( m + p.d < 0 )
			return -1;
		var n = p.nx * (p.nx > 0 ? xMin : xMax) + p.ny * (p.ny > 0 ? yMin : yMax) + p.nz * (p.nz > 0 ? zMin : zMax);
		if( n + p.d < 0 ) ret = 0;
		// right
		var p = new Plane(mvp._14 - mvp._11, mvp._24 - mvp._21 , mvp._34 - mvp._31, mvp._44 - mvp._41);
		var m = p.nx * (p.nx > 0 ? xMax : xMin) + p.ny * (p.ny > 0 ? yMax : yMin) + p.nz * (p.nz > 0 ? zMax : zMin);
		if( m + p.d < 0 )
			return -1;
		var n = p.nx * (p.nx > 0 ? xMin : xMax) + p.ny * (p.ny > 0 ? yMin : yMax) + p.nz * (p.nz > 0 ? zMin : zMax);
		if( n + p.d < 0 ) ret = 0;
		// bottom
		var p = new Plane(mvp._14 + mvp._12, mvp._24 + mvp._22 , mvp._34 + mvp._32, mvp._44 + mvp._42);
		var m = p.nx * (p.nx > 0 ? xMax : xMin) + p.ny * (p.ny > 0 ? yMax : yMin) + p.nz * (p.nz > 0 ? zMax : zMin);
		if( m + p.d < 0 )
			return -1;
		var n = p.nx * (p.nx > 0 ? xMin : xMax) + p.ny * (p.ny > 0 ? yMin : yMax) + p.nz * (p.nz > 0 ? zMin : zMax);
		if( n + p.d < 0 ) ret = 0;

		// top
		var p = new Plane(mvp._14 - mvp._12, mvp._24 - mvp._22 , mvp._34 - mvp._32, mvp._44 - mvp._42);
		var m = p.nx * (p.nx > 0 ? xMax : xMin) + p.ny * (p.ny > 0 ? yMax : yMin) + p.nz * (p.nz > 0 ? zMax : zMin);
		if( m + p.d < 0 )
			return -1;
		var n = p.nx * (p.nx > 0 ? xMin : xMax) + p.ny * (p.ny > 0 ? yMin : yMax) + p.nz * (p.nz > 0 ? zMin : zMax);
		if( n + p.d < 0 ) ret = 0;

		if( checkZ ) {
			// nea
			var p = new Plane(mvp._13, mvp._23, mvp._33, mvp._43);
			var m = p.nx * (p.nx > 0 ? xMax : xMin) + p.ny * (p.ny > 0 ? yMax : yMin) + p.nz * (p.nz > 0 ? zMax : zMin);
			if( m + p.d < 0 )
				return -1;
			var n = p.nx * (p.nx > 0 ? xMin : xMax) + p.ny * (p.ny > 0 ? yMin : yMax) + p.nz * (p.nz > 0 ? zMin : zMax);
			if( n + p.d < 0 ) ret = 0;

			var p = new Plane(mvp._14 - mvp._13, mvp._24 - mvp._23, mvp._34 - mvp._33, mvp._44 - mvp._43);
			var m = p.nx * (p.nx > 0 ? xMax : xMin) + p.ny * (p.ny > 0 ? yMax : yMin) + p.nz * (p.nz > 0 ? zMax : zMin);
			if( m + p.d < 0 )
				return -1;
			var n = p.nx * (p.nx > 0 ? xMin : xMax) + p.ny * (p.ny > 0 ? yMin : yMax) + p.nz * (p.nz > 0 ? zMin : zMax);
			if( n + p.d < 0 ) ret = 0;
		}

		return ret;
	}

	/**
		Transforms the bounds by the rotation and scale of `m`: the result is the box containing the transformed box.
	**/
	public function transform3x3( m : Matrix ) {
		var xMin = xMin, yMin = yMin, zMin = zMin, xMax = xMax, yMax = yMax, zMax = zMax;
		empty();
		var v = new h3d.col.Point();
		v.set(xMin, yMin, zMin);
		v.transform3x3(m);
		addPoint(v);
		v.set(xMin, yMin, zMax);
		v.transform3x3(m);
		addPoint(v);
		v.set(xMin, yMax, zMin);
		v.transform3x3(m);
		addPoint(v);
		v.set(xMin, yMax, zMax);
		v.transform3x3(m);
		addPoint(v);
		v.set(xMax, yMin, zMin);
		v.transform3x3(m);
		addPoint(v);
		v.set(xMax, yMin, zMax);
		v.transform3x3(m);
		addPoint(v);
		v.set(xMax, yMax, zMin);
		v.transform3x3(m);
		addPoint(v);
		v.set(xMax, yMax, zMax);
		v.transform3x3(m);
		addPoint(v);
	}

	/**
		Transforms the bounds by `m`: the result is the box containing the transformed box.
	**/
	public function transform( m : Matrix ) {
		var xMin = xMin, yMin = yMin, zMin = zMin, xMax = xMax, yMax = yMax, zMax = zMax;
		empty();
		// if empty, keep empty
		if( xMax < xMin && yMax < yMin && zMax < zMin )
			return;
		var v = new h3d.col.Point();
		v.set(xMin, yMin, zMin);
		v.transform(m);
		addPoint(v);
		v.set(xMin, yMin, zMax);
		v.transform(m);
		addPoint(v);
		v.set(xMin, yMax, zMin);
		v.transform(m);
		addPoint(v);
		v.set(xMin, yMax, zMax);
		v.transform(m);
		addPoint(v);
		v.set(xMax, yMin, zMin);
		v.transform(m);
		addPoint(v);
		v.set(xMax, yMin, zMax);
		v.transform(m);
		addPoint(v);
		v.set(xMax, yMax, zMin);
		v.transform(m);
		addPoint(v);
		v.set(xMax, yMax, zMax);
		v.transform(m);
		addPoint(v);
	}

	/**
		Tells if the bounds intersect `b`.
	**/
	public inline function collide( b : Bounds ) {
		return !(xMin > b.xMax || yMin > b.yMax || zMin > b.zMax || xMax < b.xMin || yMax < b.yMin || zMax < b.zMin);
	}

	/**
		Tells if the point `p` is inside the shape.
	**/
	public inline function contains( p : Point ) {
		return p.x >= xMin && p.x < xMax && p.y >= yMin && p.y < yMax && p.z >= zMin && p.z < zMax;
	}

	/**
		Tells if `b` is fully inside the bounds.
	**/
	public inline function containsBounds( b : Bounds ) {
		return xMin <= b.xMin && yMin <= b.yMin && zMin <= b.zMin && xMax >= b.xMax && yMax >= b.yMax && zMax >= b.zMax;
	}

	/**
		Tells if the sphere `s` is fully inside the bounds.
	**/
	public inline function containsSphere( s : Sphere ) {
		return xMin <= s.x - s.r  && yMin <= s.y - s.r && zMin <= s.z - s.r && xMax >= s.x + s.r && yMax >= s.y + s.r && zMax >= s.z + s.r;
	}

	/**
		Extends the bounds to contain `b`.
	**/
	public inline function add( b : Bounds ) {
		if( b.xMin < xMin ) xMin = b.xMin;
		if( b.xMax > xMax ) xMax = b.xMax;
		if( b.yMin < yMin ) yMin = b.yMin;
		if( b.yMax > yMax ) yMax = b.yMax;
		if( b.zMin < zMin ) zMin = b.zMin;
		if( b.zMax > zMax ) zMax = b.zMax;
	}

	/**
		Extends the bounds to contain `b` transformed by `m`.
	**/
	public inline function addTransform( b : Bounds, m : h3d.Matrix ) {
		var tmp = b.clone();
		tmp.transform(m);
		add(tmp);
	}

	/**
		Extends the bounds to contain the point `p`.
	**/
	public inline function addPoint( p : Point ) {
		if( p.x < xMin ) xMin = p.x;
		if( p.x > xMax ) xMax = p.x;
		if( p.y < yMin ) yMin = p.y;
		if( p.y > yMax ) yMax = p.y;
		if( p.z < zMin ) zMin = p.z;
		if( p.z > zMax ) zMax = p.z;
	}

	/**
		Extends the bounds to contain the position (`x`, `y`, `z`).
	**/
	public inline function addPos( x : Float, y : Float, z : Float ) {
		if( x < xMin ) xMin = x;
		if( x > xMax ) xMax = x;
		if( y < yMin ) yMin = y;
		if( y > yMax ) yMax = y;
		if( z < zMin ) zMin = z;
		if( z > zMax ) zMax = z;
	}

	/**
		Extends the bounds to contain the sphere `s`.
	**/
	public inline function addSphere( s : Sphere ) {
		addSpherePos(s.x, s.y, s.z, s.r);
	}

	/**
		Extends the bounds to contain the sphere of center (`x`, `y`, `z`) and radius `r`.
	**/
	public inline function addSpherePos( x : Float, y : Float, z : Float, r : Float ) {
		if( x - r < xMin ) xMin = x - r;
		if( x + r > xMax ) xMax = x + r;
		if( y - r < yMin ) yMin = y - r;
		if( y + r > yMax ) yMax = y + r;
		if( z - r < zMin ) zMin = z - r;
		if( z + r > zMax ) zMax = z + r;
	}

	/**
		Sets the bounds to the intersection of `a` and `b` (empty if they do not intersect).
	**/
	public function intersection( a : Bounds, b : Bounds ) {
		var xMin = Math.max(a.xMin, b.xMin);
		var yMin = Math.max(a.yMin, b.yMin);
		var zMin = Math.max(a.zMin, b.zMin);
		var xMax = Math.min(a.xMax, b.xMax);
		var yMax = Math.min(a.yMax, b.yMax);
		var zMax = Math.min(a.zMax, b.zMax);
		this.xMin = xMin;
		this.xMax = xMax;
		this.yMin = yMin;
		this.yMax = yMax;
		this.zMin = zMin;
		this.zMax = zMax;
	}

	/**
		Moves the bounds.
	**/
	public inline function offset( dx : Float, dy : Float, dz : Float ) {
		xMin += dx;
		xMax += dx;
		yMin += dy;
		yMax += dy;
		zMin += dz;
		zMax += dz;
	}

	/**
		Sets the minimum coordinates.
	**/
	public inline function setMin( p : Point ) {
		xMin = p.x;
		yMin = p.y;
		zMin = p.z;
	}

	/**
		Sets the maximum coordinates.
	**/
	public inline function setMax( p : Point ) {
		xMax = p.x;
		yMax = p.y;
		zMax = p.z;
	}

	/**
		Copies the values of another instance.
	**/
	public function load( b : Bounds ) {
		xMin = b.xMin;
		xMax = b.xMax;
		yMin = b.yMin;
		yMax = b.yMax;
		zMin = b.zMin;
		zMax = b.zMax;
	}

	/**
		Scales the coordinates by `v`, relative to the origin.
	**/
	public inline function scalePivot( v : Float ) {
		xMin *= v;
		yMin *= v;
		zMin *= v;
		xMax *= v;
		yMax *= v;
		zMax *= v;
	}


	/**
		Scales the size by `v`, relative to the center.
	**/
	public function scaleCenter( v : Float ) {
		var dx = (xMax - xMin) * 0.5 * v;
		var dy = (yMax - yMin) * 0.5 * v;
		var dz = (zMax - zMin) * 0.5 * v;
		var mx = (xMax + xMin) * 0.5;
		var my = (yMax + yMin) * 0.5;
		var mz = (zMax + zMin) * 0.5;
		xMin = mx - dx;
		yMin = my - dy;
		zMin = mz - dz;
		xMax = mx + dx;
		yMax = my + dy;
		zMax = mz + dz;
	}

	/**
		Returns the minimum coordinates.
	**/
	public inline function getMin() {
		return new Point(xMin, yMin, zMin);
	}

	/**
		Returns the center.
	**/
	public inline function getCenter() {
		return new Point((xMin + xMax) * 0.5, (yMin + yMax) * 0.5, (zMin + zMax) * 0.5);
	}

	/**
		Returns the size along each axis.
	**/
	public inline function getSize() {
		return new Point(xMax - xMin, yMax - yMin, zMax - zMin);
	}

	/**
		Returns the maximum coordinates.
	**/
	public inline function getMax() {
		return new Point(xMax, yMax, zMax);
	}

	/**
		Returns the volume.
	**/
	public inline function getVolume() {
		return xSize * ySize * zSize;
	}

	inline function get_xSize() return xMax - xMin;
	inline function get_ySize() return yMax - yMin;
	inline function get_zSize() return zMax - zMin;
	inline function set_xSize(v) { xMax = xMin + v; return v; }
	inline function set_ySize(v) { yMax = yMin + v; return v; }
	inline function set_zSize(v) { zMax = zMin + v; return v; }

	/**
		Tells if the bounds are empty (a minimum is greater than its maximum).
	**/
	public inline function isEmpty() {
		return xMax < xMin || yMax < yMin || zMax < zMin;
	}

	/**
		Empties the bounds, so that adding a point makes them contain only this point.
	**/
	public inline function empty() {
		xMin = 1e20;
		xMax = -1e20;
		yMin = 1e20;
		yMax = -1e20;
		zMin = 1e20;
		zMax = -1e20;
	}

	/**
		Makes the bounds cover the whole space.
	**/
	public inline function all() {
		xMin = -1e20;
		xMax = 1e20;
		yMin = -1e20;
		yMax = 1e20;
		zMin = -1e20;
		zMax = 1e20;
	}

	/**
		Returns a copy.
	**/
	public inline function clone() {
		var b = new Bounds();
		b.xMin = xMin;
		b.xMax = xMax;
		b.yMin = yMin;
		b.yMax = yMax;
		b.zMin = zMin;
		b.zMax = zMax;
		return b;
	}

	/**
		Returns a string representation.
	**/
	public function toString() {
		return "Bounds{" + getMin() + "," + getSize() + "}";
	}

	/**
		Returns the sphere containing the bounds.
	**/
	public inline function toSphere() {
		return new Sphere((xMin + xMax) * 0.5, (yMin + yMax) * 0.5, (zMin + zMax) * 0.5, getBoundingSphereRadius());
	}

	/**
		Returns the largest size of the shape, used to compare collider sizes.
	**/
	public inline function dimension() {
		return Math.max(xSize, Math.max(ySize, zSize));
	}

	/**
		Returns the radius of the sphere containing the bounds (half of the diagonal).
	**/
	public inline function getBoundingSphereRadius() {
		if(isEmpty()) return 0.0;
		var dx = xMax - xMin;
		var dy = yMax - yMin;
		var dz = zMax - zMin;
		return hxd.Math.sqrt(dx * dx + dy * dy + dz * dz) * 0.5;
	}

	/**
		Returns the radius, around the origin, of the sphere containing the bounds.
	**/
	public inline function getBoundingRadius() {
		var s = toSphere();
		var offsetMagnitude = hxd.Math.sqrt(s.x * s.x + s.y * s.y + s.z * s.z);
		return s.r + offsetMagnitude;
	}

	/**
		Returns the point of the shape closest to `p`.
	**/
	public inline function closestPoint( p : h3d.col.Point ) {
		var inx = hxd.Math.clamp(p.x, xMin, xMax);
		var iny = hxd.Math.clamp(p.y, yMin, yMax);
		var inz = hxd.Math.clamp(p.z, zMin, zMax);
		return new Point(inx, iny, inz);
	}

	/**
		Returns the distance from `p` to the bounds (`0` if inside).
	**/
	public inline function distanceTo( p : h3d.col.Point ) : Float {
		return closestPoint(p).distance(p);
	}

	/**
		Creates bounds from their minimum and maximum points.
	**/
	public static inline function fromPoints( min : Point, max : Point ) {
		var b = new Bounds();
		b.setMin(min);
		b.setMax(max);
		return b;
	}

	/**
		Creates bounds from a minimum position and a size.
	**/
	public static inline function fromValues( x : Float, y : Float, z : Float, dx : Float, dy : Float, dz : Float ) {
		var b = new Bounds();
		b.xMin = x;
		b.yMin = y;
		b.zMin = z;
		b.xMax = x + dx;
		b.yMax = y + dy;
		b.zMax = z + dz;
		return b;
	}

	#if !macro
	/**
		Creates an object displaying the shape (debug), or `null` if not supported.
	**/
	public function makeDebugObj() : h3d.scene.Object {
		var prim = new h3d.prim.Cube(xMax - xMin, yMax - yMin, zMax - zMin);
		prim.translate(xMin, yMin, zMin);
		prim.addNormals();
		return new h3d.scene.Mesh(prim);
	}
	#end

}