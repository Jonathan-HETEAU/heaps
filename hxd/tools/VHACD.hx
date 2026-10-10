package hxd.tools;

#if (hl && hl_ver >= version("1.15.0"))
/**
	How V-HACD fills the interior of the voxelized mesh.
**/
enum abstract FillMode(Int) {
	/**
		Flood fill from the outside.
	**/
	var FLOOD_FILL	= 0;
	/**
		Only the surface voxels.
	**/
	var SURFACE_ONLY = 1;
	/**
		Fill with raycasts, for meshes that are not closed.
	**/
	var RAYCAST_FILL = 2;
}

/**
	The native V-HACD instance.
**/
@:hlNative("heaps", "vhacd_")
abstract Instance(hl.Abstract<"vhacd">) {
	/**
		Releases the results.
	**/
	public function clean() {}

	/**
		Releases the instance.
	**/
	public function release() {}

	/**
		Computes the convex decomposition.
	**/
	public function compute(points:hl.Bytes, countPoints:Int, triangles:hl.Bytes, countTriangle:Int, params:Parameters) : Bool {
		return false;
	}

	public function get_n_convex_hulls() : Int {
		return 0;
	}

	public function get_convex_hull(index:Int, convexHullOut:ConvexHull) : Bool {
		return false;
	}
}

/**
	A native pointer.
**/
abstract Pointer(haxe.Int64) from haxe.Int64 to haxe.Int64 {}

/**
	The parameters of the V-HACD decomposition.
**/
@:struct class Parameters {
	var _unused0 : Pointer = haxe.Int64.make(0, 0);
	var _unused1 : Pointer = haxe.Int64.make(0, 0);
	var _unused2 : Pointer = haxe.Int64.make(0, 0);
	/** The maximum number of convex hulls to produce. **/
	public var maxConvexHulls : Int = 64;
	/** The voxel resolution to use. **/
	public var maxResolution : Int = 400000;
	/** If the voxels are within 1% of the volume of the hull, we consider this a close enough approximation. **/
	public var minimumVolumePercentErrorAllowed : Float = 1;
	/** The maximum recursion depth. **/
	public var maxRecursionDepth : Int = 10;
	/** Whether or not to shrinkwrap the voxel positions to the source mesh on output. **/
	public var shrinkWrap : Bool = true;
	/** How to fill the interior of the voxelized mesh. **/
	public var fillMode : FillMode = FLOOD_FILL;
	/** The maximum number of vertices allowed in any output convex hull. **/
	public var maxNumVerticesPerCH : Int = 64;
	/** Whether or not to run asynchronously, taking advantage of additional cores. **/
	public var asyncACD : Bool = false;
	/** Once a voxel patch has an edge length of less than 4 on all 3 sides, we don't keep recursing. **/
	public var minEdgeLength : Int = 2;
	/** Whether or not to attempt to split planes along the best location. Experimental feature. False by default. **/
	public var findBestPlane : Bool = false;
	/**
		Creates the default parameters.
	**/
	public function new() {
	}
}

/**
	A convex hull computed by V-HACD.
**/
@:struct class ConvexHull {
	/**
		The points (3 doubles each).
	**/
	public var points : hl.Bytes;
	/**
		The triangle indexes (3 ints each).
	**/
	public var triangles : hl.Bytes;
	/**
		The number of points.
	**/
	public var pointCount : Int;
	/**
		The number of triangles.
	**/
	public var triangleCount : Int;
	/**
		The volume of the hull.
	**/
	public var volume : Float;
	/**
		The X coordinate of the center of the hull.
	**/
	public var centerX : Float;
	/**
		The Y coordinate of the center of the hull.
	**/
	public var centerY : Float;
	/**
		The Z coordinate of the center of the hull.
	**/
	public var centerZ : Float;
	/**
		The identifier of the hull.
	**/
	public var meshId : Int;
	/**
		The minimum X of the bounds.
	**/
	public var boundsMinX : Float;
	/**
		The minimum Y of the bounds.
	**/
	public var boundsMinY : Float;
	/**
		The minimum Z of the bounds.
	**/
	public var boundsMinZ : Float;
	/**
		The maximum X of the bounds.
	**/
	public var boundsMaxX : Float;
	/**
		The maximum Y of the bounds.
	**/
	public var boundsMaxY : Float;
	/**
		The maximum Z of the bounds.
	**/
	public var boundsMaxZ : Float;
	/**
		Creates an empty hull.
	**/
	public function new(){
	}
}

/**
	Approximate convex decomposition of a mesh with the V-HACD library (HashLink 1.15+), to build collision shapes.
**/
class VHACD {

	var instance : Instance;

	/**
		Creates a V-HACD instance.
	**/
	public function new() {
		instance = createVhacd();
	}

	/**
		Computes the convex hulls of the mesh. `points` contains 3 floats (32 bits) per point, `triangles` 3 ints per triangle.
	**/
	public function compute(points : hl.Bytes, countPoints : Int, triangles : hl.Bytes, countTriangle : Int, params : Parameters) {
		return instance.compute(points, countPoints, triangles, countTriangle, params);
	}

	/**
		Returns the number of convex hulls computed.
	**/
	public function getConvexHullCount() : Int {
		return instance.get_n_convex_hulls();
	}

	/**
		Fills `convexHull` with the hull of the given index.
	**/
	public function getConvexHull(index : Int, convexHull: ConvexHull) : Bool {
		return instance.get_convex_hull(index, convexHull);
	}

	/**
		Releases the results.
	**/
	public function clean() {
		instance.clean();
	}

	/**
		Releases the instance.
	**/
	public function release() {
		instance.release();
		instance = null;
	}

	@:hlNative("heaps", "create_vhacd")
	static function createVhacd() : Instance {
		return null;
	}
}
#end
