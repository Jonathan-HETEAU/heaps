package h3d.col;

/**
	A collider whose shape is transformed by a fixed matrix.
**/
class TransformCollider extends Collider {

	/**
		The shape, before transformation.
	**/
	public var collider : Collider;
	/**
		The transform applied to the shape.
	**/
	public var mat(default, set) : h3d.Matrix;
	var invMat : h3d.Matrix;

	static var TMP_RAY = new Ray();
	static var TMP_MAT = new Matrix();

	/**
		Creates a collider transforming `collider` by `mat`.
	**/
	public function new(mat, collider) {
		this.invMat = new h3d.Matrix();
		this.mat = mat;
		this.collider = collider;
	}

	function set_mat(m) {
		this.mat = m;
		invMat.initInverse(m);
		return m;
	}

	/**
		Returns a new collider additionally transformed by `m`.
	**/
	public function transform( m : Matrix ) {
		var mt = new h3d.Matrix();
		mt.multiply3x4(m, mat);
		return new TransformCollider(mt, collider);
	}

	/**
		Returns the distance along the ray `r` to the first intersection with the shape, or a negative value if there is none.
		If `bestMatch` is `false`, any intersection can be returned (faster).
	**/
	public function rayIntersection( r : Ray, bestMatch : Bool ) : Float {
		var tmpRay = TMP_RAY;
		TMP_RAY = null;
		tmpRay.load(r);
		r.transform(invMat);
		var hit = collider.rayIntersection(r, bestMatch);
		if( hit < 0 ) {
			r.load(tmpRay);
			TMP_RAY = tmpRay;
			return hit;
		}
		var pt = r.getPoint(hit);
		pt.transform(mat);
		r.load(tmpRay);
		TMP_RAY = tmpRay;
		return hxd.Math.distance(pt.x - r.px, pt.y - r.py, pt.z - r.pz);
	}

	/**
		Tells if the point `p` is inside the shape.
	**/
	public function contains( p : Point ) {
		var ptmp = p.clone();
		p.transform(invMat);
		var b = collider.contains(p);
		p.load(ptmp);
		return b;
	}

	/**
		Tells if the shape intersects the frustum `f`, optionally transformed by `localMatrix`.
	**/
	public function inFrustum( f : Frustum, ?m : h3d.Matrix ) {
		if( m == null )
			return collider.inFrustum(f, mat);
		var mat = TMP_MAT;
		mat.multiply3x4inline(m, this.mat);
		return collider.inFrustum(f, mat);
	}

	/**
		Tells if the shape intersects the sphere `s`.
	**/
	public function inSphere( s : Sphere ) {
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
	public function dimension() {
		var scale = mat.getScale();
		var scaleMax = Math.max(scale.x, Math.max(scale.y, scale.z));
		return collider.dimension() * scaleMax;
	}

	/**
		Returns the point of the shape closest to `p`.
	**/
	public function closestPoint(p : Point) {
		var localp = p.clone();
		localp.transform(invMat);
		var c = collider.closestPoint(localp);
		c.transform(mat);
		return c;
	}

	#if !macro
	/**
		Creates an object displaying the shape (debug), or `null` if not supported.
	**/
	public function makeDebugObj() : h3d.scene.Object {
		var obj = collider.makeDebugObj();
		obj.defaultTransform = mat;
		return obj;
	}
	#end

	/**
		Returns `col` transformed by `mat`, or `col` itself if `mat` is the identity.
	**/
	public static function make( mat : h3d.Matrix, col ) {
		if( mat.isIdentityEpsilon(1e-10) )
			return col;
		return new TransformCollider(mat, col);
	}

}