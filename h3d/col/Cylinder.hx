package h3d.col;

/**
	A cylinder collider of radius `r` between the centers of its two caps `a` and `b`.
**/
class Cylinder extends Collider {

	/**
		The center of the first cap.
	**/
	public var a : Point;
	/**
		The center of the second cap.
	**/
	public var b : Point;
	/**
		The radius.
	**/
	public var r : Float;
	static var tmpSphere = new Sphere(0., 0., 0., 0.);

	/**
		Creates a cylinder.
	**/
	public inline function new( a : Point, b : Point, r : Float ) {
		this.a = a;
		this.b = b;
		this.r = r;
	}

	/**
		Returns the distance along the ray `r` to the first intersection with the shape, or a negative value if there is none.
		If `bestMatch` is `false`, any intersection can be returned (faster).
	**/
	public function rayIntersection( r : Ray, bestMatch : Bool ) : Float {
		var ro = r.getPos();
		var rd = r.getDir();
		var ra = this.r;
		var pa = a;
		var pb = b;
		var ba = pb - pa;
		var oa = ro - pa;
		var baba = ba.dot(ba);
		var bard = ba.dot(rd);
		var baoa = ba.dot(oa);
		var rdoa = rd.dot(oa);
		var oaoa = oa.dot(oa);
		var a = baba - bard * bard;
		var b = baba * rdoa - baoa * bard;
		var c = baba * oaoa - baoa * baoa - ra * ra * baba;
		var h = b * b - a * c;
		if ( h >= 0.0 ) {
			var hs = hxd.Math.sqrt(h);
			var t = (-b - hs)/a;
			var y = baoa + t * bard;
			if ( y > 0.0 && y < baba )
				return t;
			t = ((y < 0.0 ? 0.0 : baba) - baoa) / bard;
			if( hxd.Math.abs(b + a * t) < hs )
				return t;
		}
		return -1;
	}

	/**
		Tells if the point `p` is inside the shape.
	**/
	public inline function contains( p : Point ) : Bool {
		var t = p.sub(a).dot(b.sub(a)) / a.distanceSq(b);
		if( t < 0 || t > 1 )
			return false;
		return p.distanceSq(new Point(a.x + t * (b.x - a.x), a.y + t * (b.y - a.y), a.z + t * (b.z - a.z))) < r * r;
	}

	/**
		Tells if the shape intersects the frustum `f`, optionally transformed by `localMatrix`.
	**/
	public function inFrustum( f : Frustum, ?m : h3d.Matrix ) : Bool {
		if( m != null )
			throw "Not implemented";
		tmpSphere.load(a.x + (b.x-a.x), a.y + (b.y-a.y), a.z + (b.z-a.z), dimension() * 0.5);
		return tmpSphere.inFrustum(f);
	}

	/**
		Tells if the shape intersects the sphere `s`.
	**/
	public function inSphere( s : Sphere ) : Bool {
		tmpSphere.load(a.x + (b.x-a.x), a.y + (b.y-a.y), a.z + (b.z-a.z), dimension() * 0.5);
		return tmpSphere.inSphere(s);
	}

	/**
		Returns a string representation.
	**/
	public function toString() {
		return "Cylinder{" + a + "," + b + "," + hxd.Math.fmt(r) + "}";
	}

	/**
		Returns the largest size of the shape, used to compare collider sizes.
	**/
	public inline function dimension() : Float {
		var h2 = a.distance(b) * 0.5;
		return 2 * hxd.Math.sqrt(h2 * h2 + r * r);
	}

	/**
		Returns the point of the shape closest to `p`.
	**/
	public function closestPoint( p : Point ) : Point {
		throw "not implemented";
	}

	#if !macro
	/**
		Creates an object displaying the shape (debug), or `null` if not supported.
	**/
	public function makeDebugObj() : h3d.scene.Object {
		var obj = new h3d.scene.Object();

		var segW = 12;
		var segH = 6;

		var dir = a.sub(b);
		var full = a.add(b);
		var dist = a.distance(b);
		var midPoint = new Point(full.x / 2, full.y / 2, full.z / 2);

		var prim = new h3d.prim.Disc(r, segW);
		prim.translate(0, 0, dist / 2);
		prim.addNormals();
		var disca = new h3d.scene.Mesh(prim);
		var discb = disca.clone();
		disca.rotate(0, Math.PI / 2, 0);
		obj.addChild(disca);
		discb.rotate(0, -1 * Math.PI / 2, 0);
		obj.addChild(discb);

		var cyl = new h3d.prim.Cylinder(segW, r, dist, true);
		cyl.addNormals();
		var cylMesh = new h3d.scene.Mesh(cyl);
		cylMesh.rotate(0, Math.PI / 2, 0);
		obj.addChild(cylMesh);

		obj.setDirection(dir.toVector());
		obj.setPosition(midPoint.x, midPoint.y, midPoint.z);
		return obj;
	}
	#end

}
