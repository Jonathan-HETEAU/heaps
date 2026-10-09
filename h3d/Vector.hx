package h3d;
using hxd.Math;

/**
	A 3 floats vector. Everytime a Vector is returned, it means a copy is created.
**/
class VectorImpl #if apicheck implements h2d.impl.PointApi<Vector,Matrix> #end {

	/**
		The X component.
	**/
	public var x : Float;
	/**
		The Y component.
	**/
	public var y : Float;
	/**
		The Z component.
	**/
	public var z : Float;

	// -- gen api

	/**
		Creates a vector with the given components.
	**/
	public inline function new( x = 0., y = 0., z = 0. ) {
		this.x = x;
		this.y = y;
		this.z = z;
	}

	/**
		Returns the distance to `v`.
	**/
	public inline function distance( v : Vector ) {
		return Math.sqrt(distanceSq(v));
	}

	/**
		Returns the squared distance to `v` (faster than `distance`).
	**/
	public inline function distanceSq( v : Vector ) {
		var dx = v.x - x;
		var dy = v.y - y;
		var dz = v.z - z;
		return dx * dx + dy * dy + dz * dz;
	}

	/**
		Returns `this - v` as a new vector.
	**/
	public inline function sub( v : Vector ) {
		return new Vector(x - v.x, y - v.y, z - v.z);
	}

	/**
		Returns `this + v` as a new vector.
	**/
	public inline function add( v : Vector ) {
		return new Vector(x + v.x, y + v.y, z + v.z);
	}

	/**
		Returns a copy of the vector multiplied by `v`.
	**/
	public inline function scaled( v : Float ) {
		return new Vector(x * v, y * v, z * v);
	}

	/**
		Tells if all the components are equal to those of `v`.
	**/
	public inline function equals( v : Vector ) {
		return x == v.x && y == v.y && z == v.z;
	}

	/**
		Returns the cross product `this x v`: a vector perpendicular to both.
	**/
	public inline function cross( v : Vector ) {
		// note : cross product is left-handed
		return new Vector(y * v.z - z * v.y, z * v.x - x * v.z,  x * v.y - y * v.x);
	}

	/**
		Returns the dot product with `v`.
	**/
	public inline function dot( v : Vector ) {
		return x * v.x + y * v.y + z * v.z;
	}

	/**
		Returns the squared length (faster than `length`).
	**/
	public inline function lengthSq() {
		return x * x + y * y + z * z;
	}

	/**
		Returns the length.
	**/
	public inline function length() {
		return lengthSq().sqrt();
	}

	/**
		Scales the vector to a length of 1 (unchanged if its length is 0).
	**/
	public inline function normalize() {
		var k = lengthSq();
		if( k < hxd.Math.EPSILON2 ) k = 0 else k = k.invSqrt();
		x *= k;
		y *= k;
		z *= k;
	}

	/**
		Returns a copy of the vector scaled to a length of 1.
	**/
	public inline function normalized() {
		var k = lengthSq();
		if( k < hxd.Math.EPSILON2 ) k = 0 else k = k.invSqrt();
		return new Vector(x * k, y * k, z * k);
	}

	/**
		Converts a normal from the `[-1, 1]` range to the `[0, 1]` range, to store it in a texture.
	**/
	public inline function packNormal() {
		x = x * 0.5 + 0.5;
		y = y * 0.5 + 0.5;
		z = z * 0.5 + 0.5;
	}

	/**
		Converts a normal stored in a texture from the `[0, 1]` range back to `[-1, 1]`.
	**/
	public inline function unpackNormal() {
		x = x * 2.0 - 1.0;
		y = y * 2.0 - 1.0;
		z = z * 2.0 - 1.0;
	}

	/**
		Scales the X and Y components of a tangent space normal by `1 / strength` and normalizes it.
	**/
	public inline function normalStrength(strength : Float) {
		var k = 1.0 / strength;
		x *= k;
		y *= k;
		normalize();
	}

	/**
		Sets the components.
	**/
	public inline function set(x=0.,y=0.,z=0.) {
		this.x = x;
		this.y = y;
		this.z = z;
	}

	/**
		Copies the components of `v`.
	**/
	public inline function load(v : Vector) {
		this.x = v.x;
		this.y = v.y;
		this.z = v.z;
	}

	/**
		Multiplies the components by `f`.
	**/
	public inline function scale( f : Float ) {
		x *= f;
		y *= f;
		z *= f;
	}

	/**
		Sets the vector to the linear interpolation between `v1` and `v2` (`k` from `0` to `1`).
	**/
	public inline function lerp( v1 : Vector, v2 : Vector, k : Float ) {
		this.x = Math.lerp(v1.x, v2.x, k);
		this.y = Math.lerp(v1.y, v2.y, k);
		this.z = Math.lerp(v1.z, v2.z, k);
	}

	/**
		Sets each component to the minimum of itself and the component of `v`.
	**/
	public inline function min( v : Vector ) {
		this.x = Math.min(this.x, v.x);
		this.y = Math.min(this.y, v.y);
		this.z = Math.min(this.z, v.z);
	}

	/**
		Sets each component to the maximum of itself and the component of `v`.
	**/
	public inline function max( v : Vector ) {
		this.x = Math.max(this.x, v.x);
		this.y = Math.max(this.y, v.y);
		this.z = Math.max(this.z, v.z);
	}

	/**
		Transforms the vector by the matrix `m` (as a point: the translation is applied).
	**/
	public inline function transform( m : Matrix ) {
		var px = x * m._11 + y * m._21 + z * m._31 + m._41;
		var py = x * m._12 + y * m._22 + z * m._32 + m._42;
		var pz = x * m._13 + y * m._23 + z * m._33 + m._43;
		x = px;
		y = py;
		z = pz;
	}

	/**
		Returns a copy of the vector transformed by `m` (as a point).
	**/
	public inline function transformed( m : Matrix ) {
		var px = x * m._11 + y * m._21 + z * m._31 + m._41;
		var py = x * m._12 + y * m._22 + z * m._32 + m._42;
		var pz = x * m._13 + y * m._23 + z * m._33 + m._43;
		return new Vector(px,py,pz);
	}

	/**
		Transforms the vector by the rotation and scale of `m` (as a direction: the translation is ignored).
	**/
	public inline function transform3x3( m : Matrix ) {
		var px = x * m._11 + y * m._21 + z * m._31;
		var py = x * m._12 + y * m._22 + z * m._32;
		var pz = x * m._13 + y * m._23 + z * m._33;
		x = px;
		y = py;
		z = pz;
	}

	/**
		Returns a copy of the vector transformed by the rotation and scale of `m`.
	**/
	public inline function transformed3x3( m : Matrix ) {
		var px = x * m._11 + y * m._21 + z * m._31;
		var py = x * m._12 + y * m._22 + z * m._32;
		var pz = x * m._13 + y * m._23 + z * m._33;
		return new Vector(px,py,pz);
	}

	/**
		Returns a copy of the vector.
	**/
	public inline function clone() {
		return new Vector(x,y,z);
	}

	/**
		Returns a `Vector4` with the same components.
	**/
	public inline function toVector4() {
		return new h3d.Vector4(x,y,z);
	}

	/**
		Returns a 2D point with the X and Y components.
	**/
	public inline function to2D() {
		return new h2d.col.Point(x,y);
	}

	/**
		Returns a string representation of the components.
	**/
	public function toString() {
		return '{${x.fmt()},${y.fmt()},${z.fmt()}}';
	}

	// --- end

	/**
		Returns the reflection of the vector on a surface of normal `n` (normalized).
	**/
	public inline function reflect( n : Vector ) {
		var k = 2 * this.dot(n);
		return new Vector(x - k * n.x, y - k * n.y, z - k * n.z);
	}

	/**
		Transforms the vector by the projection matrix `m` and divides by the resulting W (perspective division).
	**/
	public inline function project( m : Matrix ) {
		var px = x * m._11 + y * m._21 + z * m._31 + m._41;
		var py = x * m._12 + y * m._22 + z * m._32 + m._42;
		var pz = x * m._13 + y * m._23 + z * m._33 + m._43;
		var iw = 1 / (x * m._14 + y * m._24 + z * m._34 + m._44);
		x = px * iw;
		y = py * iw;
		z = pz * iw;
	}

	/// ----- COLOR FUNCTIONS

	/**
		The red component, alias for `x`.
	**/
	public var r(get, set) : Float;
	/**
		The green component, alias for `y`.
	**/
	public var g(get, set) : Float;
	/**
		The blue component, alias for `z`.
	**/
	public var b(get, set) : Float;

	inline function get_r() return x;
	inline function get_g() return y;
	inline function get_b() return z;
	inline function set_r(v) return x = v;
	inline function set_g(v) return y = v;
	inline function set_b(v) return z = v;

	/**
		Sets the color from an integer in `0xRRGGBB` format (components from `0` to `1`).
	**/
	public inline function setColor( c : Int ) {
		r = ((c >> 16) & 0xFF) / 255;
		g = ((c >> 8) & 0xFF) / 255;
		b = (c & 0xFF) / 255;
	}

	/**
		Sets the color from a hue (in radians), a saturation and a brightness (HSL), from `0` to `1`.
	**/
	public function makeColor( hue : Float, saturation : Float = 1., brightness : Float = 0.5 ) {
		hue = Math.ufmod(hue, Math.PI * 2);
		var c = (1 - Math.abs(2 * brightness - 1)) * saturation;
		var x = c * (1 - Math.abs((hue * 3 / Math.PI) % 2. - 1));
		var m = brightness - c / 2;
		if( hue < Math.PI / 3 ) {
			r = c;
			g = x;
			b = 0;
		} else if( hue < Math.PI * 2 / 3 ) {
			r = x;
			g = c;
			b = 0;
		} else if( hue < Math.PI ) {
			r = 0;
			g = c;
			b = x;
		} else if( hue < Math.PI * 4 / 3 ) {
			r = 0;
			g = x;
			b = c;
		} else if( hue < Math.PI * 5 / 3 ) {
			r = x;
			g = 0;
			b = c;
		} else {
			r = c;
			g = 0;
			b = x;
		}
		r += m;
		g += m;
		b += m;
	}

	/**
		Returns the color as an integer in `0xAARRGGBB` format (alpha is `0xFF` for a `Vector`).
	**/
	public inline function toColor() {
		return 0xFF000000 | (Std.int(r.clamp() * 255 + 0.499) << 16) | (Std.int(g.clamp() * 255 + 0.499) << 8) | Std.int(b.clamp() * 255 + 0.499);
	}

	/**
		Returns the hue (`0` to `1`), saturation and lightness of the color.
	**/
	public function toColorHSL() {
	    var max = hxd.Math.max(hxd.Math.max(r, g), b);
		var min = hxd.Math.min(hxd.Math.min(r, g), b);
		var h, s, l = (max + min) / 2.0;

		if(max == min)
			h = s = 0.0; // achromatic
		else {
			var d = max - min;
			s = l > 0.5 ? d / (2 - max - min) : d / (max + min);
			if(max == r)
				h = (g - b) / d + (g < b ? 6.0 : 0.0);
			else if(max == g)
				h = (b - r) / d + 2.0;
			else
				h = (r - g) / d + 4.0;
			h *= Math.PI / 3.0;
		}

		return new h3d.Vector(h, s, l);
	}

	/**
		Returns the hue (`0` to `1`), saturation and value of the color.
	**/
	public function toColorHSV() {
	    var max = hxd.Math.max(hxd.Math.max(r, g), b);
		var min = hxd.Math.min(hxd.Math.min(r, g), b);
		var h, s, v = max;

		if(max == min)
			h = s = 0.0; // achromatic
		else {
			var d = max - min;
			s = d / v;
			if(max == r)
				h = (g - b) / d + (g < b ? 6.0 : 0.0);
			else if(max == g)
				h = (b - r) / d + 2.0;
			else
				h = (r - g) / d + 4.0;
			h *= Math.PI / 3.0;
		}

		return new h3d.Vector(h, s, v);
	}

}



/**
	A 3 floats vector. Everytime a Vector is returned, it means a copy is created.
**/
@:forward abstract Vector(VectorImpl) from VectorImpl to VectorImpl {

	/**
		Creates a vector with the given components.
	**/
	public inline function new( x = 0., y = 0., z = 0. ) {
		this = new VectorImpl(x,y,z);
	}

	/**
		Returns `this - v` as a new vector.
	**/
	@:op(a - b) public inline function sub(v:Vector) return this.sub(v);
	/**
		Returns `this + v` as a new vector.
	**/
	@:op(a + b) public inline function add(v:Vector) return this.add(v);
	/**
		Transforms the vector by the matrix `m` (as a point: the translation is applied).
	**/
	@:op(a *= b) public inline function transform(m:Matrix) this.transform(m);
	/**
		Returns a copy of the vector transformed by `m` (as a point).
	**/
	@:op(a * b) public inline function transformed(m:Matrix) return this.transformed(m);

	// to deprecate at final refactoring
	/**
		Returns a copy as a point.
	**/
	public inline function toPoint() return this.clone();
	/**
		Returns a `Vector` with the X, Y and Z components.
	**/
	public inline function toVector() return this.clone();

	/**
		Multiplies the components by `f`.
	**/
	@:op(a *= b) public inline function scale(v:Float) this.scale(v);
	/**
		Returns a copy of the vector multiplied by `v`.
	**/
	@:op(a * b) public inline function scaled(v:Float) return this.scaled(v);
	@:op(a * b) static inline function scaledInv( f : Float, v : Vector ) return v.scaled(f);

	/**
		Creates a color vector from an integer color, with components multiplied by `scale`.
	**/
	public static inline function fromColor( c : Int, scale : Float = 1.0 ) {
		var s = scale / 255;
		return new Vector(((c>>16)&0xFF)*s,((c>>8)&0xFF)*s,(c&0xFF)*s);
	}

	/**
		Creates a vector from the first components of an array.
	**/
	public static inline function fromArray(a : Array<Float>) {
		var r = new Vector();
		if(a.length > 0) r.x = a[0];
		if(a.length > 1) r.y = a[1];
		if(a.length > 2) r.z = a[2];
		return r;
	}

}