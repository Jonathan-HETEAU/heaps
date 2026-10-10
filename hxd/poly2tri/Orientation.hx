package hxd.poly2tri;

/**
	The orientation of three points.
**/
class Orientation
{
	/**
		Clockwise.
	**/
	inline public static var CW = 1;
	/**
		Counter clockwise.
	**/
	inline public static var CCW = -1;
	/**
		Collinear.
	**/
	inline public static var COLLINEAR = 0;

	/**
		Returns the orientation of the three points.
	**/
	public static function orient2d(pa:Point, pb:Point, pc:Point):Int
	{
		var detleft  = (pa.x - pc.x) * (pb.y - pc.y);
		var detright = (pa.y - pc.y) * (pb.x - pc.x);
		var val = detleft - detright;

		#if fastPoly2tri
		if( val == 0 ) return COLLINEAR;
		#else
		if ((val > -Constants.EPSILON) && (val < Constants.EPSILON)) return Orientation.COLLINEAR;
		#end
		if (val > 0) return Orientation.CCW;
		return Orientation.CW;
	}
}