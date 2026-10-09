package h3d.col;

/**
	Base class of the collision shapes, used for picking (see `h3d.scene.Interactive`), culling and simple collision tests.
	Use `h3d.scene.Object.getCollider()` to get the collider of an object.
**/
abstract class Collider {

	/**
		Returns the distance of intersection between the ray and the collider, or negative if no collision.
		If bestMatch is false, only negative/positive value needs to be returned, with no additional precision.
	**/
	public abstract function rayIntersection( r : Ray, bestMatch : Bool ) : Float;
	/**
		Tells if the point `p` is inside the shape.
	**/
	public abstract function contains( p : Point ) : Bool;
	/**
		Tells if the shape intersects the frustum `f`, optionally transformed by `localMatrix`.
	**/
	public abstract function inFrustum( f : Frustum, ?localMatrix : h3d.Matrix ) : Bool;
	/**
		Tells if the shape intersects the sphere `s`.
	**/
	public abstract function inSphere( s : Sphere ) : Bool;
	/**
		Returns the largest size of the shape, used to compare collider sizes.
	**/
	public abstract function dimension() : Float;
	/**
		Returns the point of the shape closest to `p`.
	**/
	public abstract function closestPoint( p : Point) : Point;

	#if !macro
	/**
		Creates an object displaying the shape (debug), or `null` if not supported.
	**/
	public abstract function makeDebugObj() : h3d.scene.Object;
	#end
}


/**
	A collider tested in two steps: the fast shape `a` (usually bounds) first, then the precise shape `b` only if `a` is hit.
**/
class OptimizedCollider extends Collider {

	/**
		The fast, approximate shape.
	**/
	public var a : Collider;
	/**
		The precise shape.
	**/
	public var b : Collider;
	/**
		If `true`, a ray starting inside `a` is also tested against `b`.
	**/
	public var checkInside : Bool;

	/**
		Creates the collider.
	**/
	public function new(a, b) {
		this.a = a;
		this.b = b;
	}

	/**
		Returns the distance along the ray `r` to the first intersection with the shape, or a negative value if there is none.
		If `bestMatch` is `false`, any intersection can be returned (faster).
	**/
	public function rayIntersection( r : Ray, bestMatch : Bool ) : Float {
		if( a.rayIntersection(r, false) < 0 ) {
			if( !checkInside )
				return -1;
			if( !a.contains(r.getPoint(0)) )
				return -1;
		}
		return b.rayIntersection(r, bestMatch);
	}

	/**
		Tells if the point `p` is inside the shape.
	**/
	public function contains( p : Point ) {
		return a.contains(p) && b.contains(p);
	}

	/**
		Tells if the shape intersects the frustum `f`, optionally transformed by `localMatrix`.
	**/
	public function inFrustum( f : Frustum, ?m : h3d.Matrix ) {
		return a.inFrustum(f, m) && b.inFrustum(f, m);
	}

	/**
		Tells if the shape intersects the sphere `s`.
	**/
	public function inSphere( s : Sphere ) {
		return a.inSphere(s) && b.inSphere(s);
	}

	/**
		Returns the largest size of the shape, used to compare collider sizes.
	**/
	public function dimension() {
		return Math.max(a.dimension(), b.dimension());
	}

	/**
		Returns the point of the shape closest to `p`.
	**/
	public function closestPoint( p : h3d.col.Point ) {
		return b.closestPoint(p);
	}

	#if !macro
	/**
		Creates an object displaying the shape (debug), or `null` if not supported.
	**/
	public function makeDebugObj() : h3d.scene.Object {
		var bobj = b.makeDebugObj();
		var aobj = a.makeDebugObj();
		if( aobj == null && bobj == null )
			return null;
		var ret = new h3d.scene.Object();
		if( aobj != null )
			ret.addChild(aobj);
		if( bobj != null )
			ret.addChild(bobj);
		return ret;
	}
	#end

}

/**
	A collider made of several colliders: it is hit if any of them is hit.
**/
class GroupCollider extends Collider {

	/**
		The colliders of the group.
	**/
	public var colliders : Array<Collider>;

	/**
		Creates the collider.
	**/
	public function new(colliders) {
		this.colliders = colliders;
	}

	/**
		Returns the distance along the ray `r` to the first intersection with the shape, or a negative value if there is none.
		If `bestMatch` is `false`, any intersection can be returned (faster).
	**/
	public function rayIntersection( r : Ray, bestMatch : Bool ) : Float {
		var best = -1.;
		for( c in colliders ) {
			var d = c.rayIntersection(r, bestMatch);
			if( d >= 0 ) {
				if( !bestMatch ) return d;
				if( best < 0 || d < best ) best = d;
			}
		}
		return best;
	}

	/**
		Tells if the point `p` is inside the shape.
	**/
	public function contains( p : Point ) {
		for( c in colliders )
			if( c.contains(p) )
				return true;
		return false;
	}

	/**
		Tells if the shape intersects the frustum `f`, optionally transformed by `localMatrix`.
	**/
	public function inFrustum( f : Frustum, ?m : h3d.Matrix) {
		for( c in colliders )
			if( c.inFrustum(f, m) )
				return true;
		return false;
	}

	/**
		Tells if the shape intersects the sphere `s`.
	**/
	public function inSphere( s : Sphere ) {
		for( c in colliders )
			if( c.inSphere(s) )
				return true;
		return false;
	}

	/**
		Returns the largest size of the shape, used to compare collider sizes.
	**/
	public function dimension() {
		var d = Math.NEGATIVE_INFINITY;
		for ( c in colliders ) {
			d = Math.max(d, c.dimension());
		}
		return d;
	}

	/**
		Returns the point of the shape closest to `p`.
	**/
	public function closestPoint( p : h3d.col.Point ) {
		var result = null;
		var lengthSq = Math.POSITIVE_INFINITY;
		for ( c in colliders ) {
			var closest = c.closestPoint(p);
			var lSq = closest.distanceSq(p);
			if ( lSq < lengthSq ) {
				result = closest;
				lengthSq = lSq;
			}
		}
		return result;
	}

	#if !macro
	/**
		Creates an object displaying the shape (debug), or `null` if not supported.
	**/
	public function makeDebugObj() : h3d.scene.Object {
		var ret : h3d.scene.Object = null;
		for( c in colliders ) {
			var toAdd = c.makeDebugObj();
			if( toAdd == null )
				continue;
			if( ret == null )
				ret = new h3d.scene.Object();
			ret.addChild(toAdd);
		}
		return ret;
	}
	#end


}