package hxd.poly2tri;

/**
	A constrained edge of the polygon to triangulate, oriented so that `q` is the upper point.
**/
class Edge
{
	/**
		The lower point.
	**/
	public var p:Point;
	/**
		The upper point.
	**/
	public var q:Point;

	/**
		Creates the edge between two points, and registers it on its upper point. Throws if they are equal.
	**/
	public function new(p1:Point, p2:Point)
	{
		if (p1==null || p2==null) throw "Edge::new p1 or p2 is null";

		var swap = false;

		if (p1.y > p2.y)
		{
			swap = true;
		}
		else if (p1.y == p2.y)
		{
			if (p1.x == p2.x) throw "Edge::repeat points " + p1;

			swap = (p1.x > p2.x);
		}


		if (swap)
		{
			q = p1;
			p = p2;
		}
		else
		{
			p = p1;
			q = p2;
		}

		q.edge_list.push( this );
	}



	/**
		Returns a description of the edge.
	**/
	public function toString()
	{
		return "Edge(" + this.p + ", " + this.q + ")";
	}

}