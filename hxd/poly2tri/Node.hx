package hxd.poly2tri;

/**
	A node of the advancing front.
**/
class Node
{


	/**
		The point of the node.
	**/
	public var point:Point;
	/**
		The triangle below the front edge starting at this node.
	**/
	public var triangle:Triangle;
	/**
		The previous node.
	**/
	public var prev:Node;
	/**
		The next node.
	**/
	public var next:Node;
	/**
		The X coordinate of the point, used to search the front.
	**/
	public var value:Float;

	/**
		Creates a node for the point and triangle.
	**/
	public function new(point:Point = null, triangle:Triangle = null)
	{

		this.point = point;
		this.triangle = triangle;
		this.value = this.point.x;
	}

	/**
		Returns the angle between the previous and next nodes, seen from this node.
	**/
	public function getHoleAngle():Float
	{
		/* Complex plane
		 * ab = cosA +i*sinA
		 * ab = (ax + ay*i)(bx + by*i) = (ax*bx + ay*by) + i(ax*by-ay*bx)
		 * atan2(y,x) computes the principal value of the argument function
		 * applied to the complex number x+iy
		 * Where x = ax*bx + ay*by
		 *       y = ax*by - ay*bx
		 */
		var ax = this.next.point.x - this.point.x;
		var ay = this.next.point.y - this.point.y;
		var bx = this.prev.point.x - this.point.x;
		var by = this.prev.point.y - this.point.y;
		return Math.atan2(
			ax * by - ay * bx,
			ax * bx + ay * by
		);
	}

	/**
		Returns the angle used to detect a basin to the right of the node.
	**/
	public function getBasinAngle():Float
	{
		return Math.atan2(
			this.point.y - this.next.next.point.y, // ay
			this.point.x - this.next.next.point.x  // ax
		);
	}




}