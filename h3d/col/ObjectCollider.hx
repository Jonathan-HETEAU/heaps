package h3d.col;

/**
	A collider following an object: the shape `collider`, in the object local space, is transformed by the current
	absolute transform of `obj` for each test.
**/
class ObjectCollider extends Collider {

	/**
		The object whose transform is applied.
	**/
	public var obj : h3d.scene.Object;
	/**
		The shape, in the object local space.
	**/
	public var collider : Collider;
	static var TMP_RAY = new Ray();
	static var TMP_MAT = new Matrix();

	/**
		Creates a collider following `obj`.
	**/
	public function new(obj, collider) {
		this.obj = obj;
		this.collider = collider;
	}

	/**
		Returns the distance along the ray `r` to the first intersection with the shape, or a negative value if there is none.
		If `bestMatch` is `false`, any intersection can be returned (faster).
	**/
	public function rayIntersection( r : Ray, bestMatch : Bool ) : Float {
		var tmpRay = TMP_RAY;
		TMP_RAY = null;
		tmpRay.load(r);
		r.transform(obj.getInvPos());
		var hit = collider.rayIntersection(r, bestMatch);
		if( hit < 0 ) {
			r.load(tmpRay);
			TMP_RAY = tmpRay;
			return hit;
		}
		var pt = r.getPoint(hit);
		pt.transform(@:privateAccess obj.absPos);
		r.load(tmpRay);
		TMP_RAY = tmpRay;
		return hxd.Math.distance(pt.x - r.px, pt.y - r.py, pt.z - r.pz);
	}

	/**
		Tells if the point `p` is inside the shape.
	**/
	public function contains( p : Point ) {
		var ptmp = p.clone();
		p.transform(obj.getInvPos());
		var b = collider.contains(p);
		p.load(ptmp);
		return b;
	}

	/**
		Tells if the shape intersects the frustum `f`, optionally transformed by `localMatrix`.
	**/
	public function inFrustum( f : Frustum, ?m : h3d.Matrix ) {
		if( m == null )
			return collider.inFrustum(f, obj.getAbsPos());
		var mat = TMP_MAT;
		mat.multiply3x4inline(m, obj.getAbsPos());
		return collider.inFrustum(f, mat);
	}

	/**
		Tells if the shape intersects the sphere `s`.
	**/
	public function inSphere( s : Sphere ) {
		var invMat = obj.getInvPos();
		var oldX = s.x, oldY = s.y, oldZ = s.z, oldR = s.r;
		var center = s.getCenter();
		center.transform(invMat);
		var scale = invMat.getScale();
		s.x = center.x;
		s.y = center.y;
		s.z = center.z;
		s.r *= Math.max(Math.max(scale.x, scale.y), scale.z);
		var res = collider.inSphere(s);
		s.x = oldX;
		s.y = oldY;
		s.z = oldZ;
		s.r = oldR;
		return res;
	}

	/**
		Returns the largest size of the shape, used to compare collider sizes.
	**/
	inline public function dimension() {
		var scale = obj.getAbsPos().getScale();
		return collider.dimension() * Math.max(Math.max(scale.x, scale.y), scale.z);
	}

	/**
		Returns the point of the shape closest to `p`.
	**/
	public function closestPoint( p : h3d.col.Point ) {
		throw "Not implemented";
		return new h3d.col.Point();
	}

	#if !macro
	/**
		Creates an object displaying the shape (debug), or `null` if not supported.
	**/
	public function makeDebugObj() : h3d.scene.Object {
		var ret = collider.makeDebugObj();
		if( ret != null )
			ret.follow = obj;
		return ret;
	}
	#end

}