package hxd.poly2tri;

#if fastPoly2tri
/**
	The type of the point coordinates (`Int` with `-D fastPoly2tri`, `Float` otherwise).
**/
typedef Unit = Int;
#else
/**
	The type of the point coordinates (`Int` with `-D fastPoly2tri`, `Float` otherwise).
**/
typedef Unit = Float;
#end

/**
	The constants of the triangulation.
**/
class Constants {
	/**
		The initial triangle factor: the seed triangle extends 30% of the width of the point set to the left and the right.
	**/
	static public var kAlpha:Float   = 0.3;
	#if fastPoly2tri
	/**
		The tolerance of the geometric tests.
	**/
	static public var EPSILON = 0;
	#else
	/**
		The tolerance of the geometric tests.
	**/
	static public var EPSILON:Float  = 1e-24;
	#end
	/**
		Pi divided by 2.
	**/
	static public var PI_2:Float     = Math.PI / 2;
	/**
		3 Pi divided by 4.
	**/
	static public var PI_3div4:Float = 3 * Math.PI / 4;
}
