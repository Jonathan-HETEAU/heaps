package hxd.poly2tri;

/**
	A point of the polygon to triangulate.
**/
class Point
{
	/**
		The unique identifier of the point.
	**/
	public var id:Int;

	#if fastPoly2tri
	/**
		The X coordinate.
	**/
	public var x:Int;
	/**
		The Y coordinate.
	**/
	public var y:Int;
	#else
	/**
		The X coordinate.
	**/
	public var x:Float;
	/**
		The Y coordinate.
	**/
	public var y:Float;
	#end

	#if haxe3
	/**
		The constrained edges whose upper point is this one.
	**/
	public var edge_list(get, null):Array<Edge>;
	#else
	/**
		The constrained edges whose upper point is this one.
	**/
	public var edge_list(get_edge_list, null):Array<Edge>;
	#end

	/**
		Creates a point.
	**/
	public function new(x,y)
	{
		this.x = x;
		this.y = y;

		id = C_ID;
		C_ID++;

	}


	function get_edge_list()
	{
		if (edge_list==null) edge_list = new Array();
		return edge_list;
	}



	/**
		Tells if the points have the same coordinates.
	**/
	public inline function equals(that:Point):Bool
	{
		#if fastPoly2Tri
		return this == that;
		#else
		return (this.x == that.x) && (this.y == that.y);
		#end
	}

	/**
		Sorts the points by Y, then X.
	**/
	public static function sortPoints(points:Array<Point>)
	{
		points.sort( cmpPoints );
	}

	/**
		Compares two points by Y, then X.
	**/
	public static function cmpPoints(l:Point,r:Point)
	{
		var ret = l.y - r.y;
		if (ret == 0) ret = l.x - r.x;
		if (ret <  0) return -1;
		if (ret >  0) return 1;
		return 0;
	}

	/**
		Returns a description of the point.
	**/
	public function toString()
	{
		return "Point(" + x + ", " + y + ")";
	}

	/**
		The identifier of the next point.
	**/
	public static var C_ID = 0;




}

