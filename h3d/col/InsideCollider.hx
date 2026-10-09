package h3d.col;

/**
	Wraps a collider so that a ray starting inside it hits it at distance 0, instead of missing it.
**/
class InsideCollider extends Collider {

	/**
		The wrapped collider.
	**/
	public var collider : Collider;

	/**
		Wraps `collider`.
	**/
	public function new(collider) {
		this.collider = collider;
	}

	/**
		Returns the distance along the ray `r` to the first intersection with the shape, or a negative value if there is none.
		If `bestMatch` is `false`, any intersection can be returned (faster).
	**/
	public function rayIntersection( r : Ray, bestMatch : Bool ) : Float {
		var d = collider.rayIntersection(r, bestMatch);
		if( d < 0 && collider.contains(r.getPoint(0)) )
			return 0;
		return d;
	}

	/**
		Tells if the point `p` is inside the shape.
	**/
	public function contains( p : Point ) {
		return collider.contains(p);
	}

	/**
		Tells if the shape intersects the frustum `f`, optionally transformed by `localMatrix`.
	**/
	public function inFrustum( f : Frustum, ?m : h3d.Matrix ) {
		return collider.inFrustum(f, m);
	}

	/**
		Tells if the shape intersects the sphere `s`.
	**/
	public function inSphere( s : Sphere ) {
		return collider.inSphere(s);
	}

	/**
		Returns the largest size of the shape, used to compare collider sizes.
	**/
	public function dimension() {
		return collider.dimension();
	}

	/**
		Returns the point of the shape closest to `p`.
	**/
	public function closestPoint( p : Point ) {
		return collider.closestPoint(p);
	}

	#if !macro
	/**
		Creates an object displaying the shape (debug), or `null` if not supported.
	**/
	public function makeDebugObj() : h3d.scene.Object {
		return collider.makeDebugObj();
	}
	#end

}
