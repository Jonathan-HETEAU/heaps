package hxd.poly2tri;

/**
	The advancing front of the sweep line triangulation: a linked list of nodes along the upper boundary of the triangulated area.
**/
class AdvancingFront
{
	/**
		The first node.
	**/
	public var head:Node;
	/**
		The last node.
	**/
	public var tail:Node;
	/**
		The node where the last search ended, to start the next one.
	**/
	public var search_node:Node;

	/**
		Creates the front from its first and last nodes.
	**/
	public function new(head:Node, tail:Node)
	{
		this.search_node = this.head = head;
		this.tail = tail;
	}

	/**
		Returns the node of the front at or before the X coordinate.
	**/
	public function locateNode(x:Constants.Unit):Node
	{
		var node:Node = this.search_node;

		if (x < node.value)
		{
			while ((node = node.prev) != null)
			{
				if (x >= node.value)
				{
					this.search_node = node;
					return node;
				}
			}
		}
		else
		{
			while ((node = node.next) != null)
			{
				if (x < node.value)
				{
					this.search_node = node.prev;
					return node.prev;
				}
			}
		}

		return null;
	}

	/**
		Returns the node of the front at the point, or `null`.
	**/
	public function locatePoint(point:Point):Node
	{
		var px = point.x;
		//var node:* = this.FindSearchNode(px);
		var node:Node = this.search_node;
		var nx = node.point.x;

		if (px == nx)
		{
			if (!point.equals(node.point))
			{
				// We might have two nodes with same x value for a short time
				if (point.equals(node.prev.point))
				{
					node = node.prev;
				}
				else if (point.equals(node.next.point))
				{
					node = node.next;
				}
				else
				{
					throw 'Invalid AdvancingFront.locatePoint call!';
				}
			}
		}
		else if (px < nx)
		{
			while ((node = node.prev) != null)
				if (point.equals(node.point)) break;
		}
		else
		{
			while ((node = node.next) != null)
				if (point.equals(node.point)) break;
		}

		if (node != null) this.search_node = node;
		return node;

	}
}