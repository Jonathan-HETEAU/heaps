package h3d.scene.fwd;

/**
	Base class of the lights of the forward renderer (`h3d.scene.fwd.Renderer`, the default renderer).
	See `DirLight` and `PointLight`.
**/
class Light extends h3d.scene.Light {

	var objectDistance : Float; // used internaly
	var cullingDistance : Float = -1;
	/**
		When an object is lit by more lights than `LightSystem.maxLightsPerObject`, lights with a higher priority are
		kept first, then the nearest ones.
	**/
	public var priority : Int = 0;
	/**
		Enables the specular highlights of this light. Not supported by all lights (throws when enabled on those).
	**/
	public var enableSpecular(get, set) : Bool;

	function get_enableSpecular() {
		return false;
	}

	function set_enableSpecular(b) {
		if( b ) throw "Not implemented for this light";
		return false;
	}

}