package hxd.clipper;

/**
	An integer rectangle.
**/
class Rect {
	/**
		The left coordinate.
	**/
	public var left : Int;
	/**
		The top coordinate.
	**/
	public var top : Int;
	/**
		The right coordinate.
	**/
	public var right : Int;
	/**
		The bottom coordinate.
	**/
	public var bottom : Int;

	/**
		Creates a rectangle.
	**/
	public function new(l=0,t=0,r=0,b=0) {
		this.left = l; this.top = t;
		this.right = r; this.bottom = b;
	}
}
