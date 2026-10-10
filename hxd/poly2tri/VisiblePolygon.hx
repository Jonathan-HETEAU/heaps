package hxd.poly2tri;

/**
	Triangulates polygons with holes (constrained Delaunay triangulation with poly2tri). Add the outline and the holes with `addPolyline`, then call `performTriangulationOnce`.
**/
class VisiblePolygon
{

	var sweepContext:SweepContext;
	var sweep:Sweep;
	var triangulated:Bool;

	/**
		Creates an empty triangulation.
	**/
	public function new()
	{
		reset();
	}


	/**
		Adds a closed polyline: the outline, or a hole.
	**/
	public function addPolyline(polyline:Array<Point>)
	{
		sweepContext.addPolyline(polyline);
	}

	/**
		Removes the polylines and the result.
	**/
	public function reset()
	{
		sweepContext = new SweepContext();
		sweep = new Sweep(sweepContext);
		triangulated = false;
	}

	/**
		Triangulates the polylines, if not done yet.
	**/
	public function performTriangulationOnce()
	{
		if (this.triangulated) return;
		triangulated = true;
		sweep.triangulate();
	}

	/**
		Returns the vertices (X, Y and a `0` Z for each point) and the triangle indexes, or `null` before the triangulation.
	**/
	public function getVerticesAndTriangles()
	{
		if (!this.triangulated) return null;

		var vertices = new Array();
		var ids = new Map();

		for (i in 0...sweepContext.points.length)
		{
			var p = sweepContext.points[i];
			vertices.push(p.x);
			vertices.push(p.y);
			vertices.push(0);
			ids[p.id] = i;
		}

		var tris = new Array();
		for (t in sweepContext.triangles)
		{
			for (i in 0...3)
			{
				tris.push( ids[ t.points[i].id ] );
			}
		}

		return { vertices: vertices, triangles:tris };
	}

	/**
		Returns the number of triangles.
	**/
	public function getNumTriangles()
	{
		return sweepContext.triangles.length;
	}

}
