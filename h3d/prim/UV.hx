package h3d.prim;

/**
	A texture coordinate, used by `Polygon`.
**/
class UV {

	/**
		The horizontal coordinate.
	**/
	public var u : Float;
	/**
		The vertical coordinate.
	**/
	public var v : Float;

	/**
		Creates a texture coordinate.
	**/
	public function new(u,v) {
		this.u = u;
		this.v = v;
	}

	/**
		Returns a copy.
	**/
	public function clone() {
		return new UV(u, v);
	}

	function toString() {
		return "{" + hxd.Math.fmt(u) + "," + hxd.Math.fmt(v) + "}";
	}

}