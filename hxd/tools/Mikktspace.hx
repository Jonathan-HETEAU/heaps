package hxd.tools;

#if hl
/**
	Computes the tangents of a mesh with the MikkTSpace algorithm (HashLink only), the standard used by normal map bakers.
	Set the input buffers and positions, then call `compute`.
**/
class Mikktspace {
	/**
		The vertex data.
	**/
	public var buffer:hl.BytesAccess<Single>;
	/**
		The number of floats per vertex in `buffer`.
	**/
	public var stride:Int;
	/**
		The position of the vertex position in a vertex.
	**/
	public var xPos:Int;
	/**
		The position of the normal in a vertex.
	**/
	public var normalPos:Int;
	/**
		The position of the UV in a vertex.
	**/
	public var uvPos:Int;
	/**
		The output tangents.
	**/
	public var tangents:hl.BytesAccess<Single>;
	/**
		The number of floats per vertex in `tangents`.
	**/
	public var tangentStride:Int;
	/**
		The position of the tangent in a vertex of `tangents`.
	**/
	public var tangentPos:Int;
	/**
		The triangle indexes.
	**/
	public var indexes:hl.BytesAccess<Int>;
	/**
		The number of indexes.
	**/
	public var indices:Int;

	/**
		Creates an empty computation.
	**/
	public function new() {}

	/**
		Computes the tangents. `threshold` is the angle (in degrees) under which the tangents of adjacent faces are merged.
	**/
	public function compute(threshold = 180.) {
		if (!_compute(this, threshold))
			throw "assert";
	}

	#if (hl_ver >= version("1.15.0"))
	@:hlNative("heaps", "compute_mikkt_tangents")
	#else
	@:hlNative("fmt", "compute_mikkt_tangents")
	#end
	static function _compute(m:Dynamic, threshold:Float):Bool {
		return false;
	}
}
#end
