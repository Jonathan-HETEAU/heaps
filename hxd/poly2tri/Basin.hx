package hxd.poly2tri;

/**
	A basin of the advancing front: a concave part that is filled with triangles.
**/
class Basin
{
	/**
		The left node of the basin.
	**/
	public var left_node:Node;
	/**
		The bottom node of the basin.
	**/
	public var bottom_node:Node;
	/**
		The right node of the basin.
	**/
	public var right_node:Node;
	/**
		The width of the basin.
	**/
	public var width:Float;
	/**
		Tells if the left side of the basin is the highest.
	**/
	public var left_highest:Bool;

	/**
		Creates an empty basin.
	**/
	public function new()
	{
		width = 0;
	}

	/**
		Resets the basin.
	**/
	public function clear()
	{

		this.left_node    = null ;
		this.bottom_node  = null ;
		this.right_node   = null ;
		this.width        = 0.0  ;
		this.left_highest = false;
	}

}