package hxd.poly2tri;

/**
	The constrained edge being inserted by the sweep.
**/
class EdgeEvent
{
	/**
		The edge.
	**/
	public var constrained_edge:Edge;
	/**
		Tells if the edge goes to the right.
	**/
	public var right:Bool;

	/**
		Creates the event.
	**/
	public function new()
	{

	}
}
