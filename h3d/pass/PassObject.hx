package h3d.pass;

/**
	A material pass of an object emitted for the current frame (see `h3d.scene.RenderContext.emitPass`).
**/
class PassObject {
	@:noCompletion public var next : PassObject;
	var nextAlloc : PassObject;
	/**
		The material pass.
	**/
	public var pass : h3d.mat.Pass;
	/**
		The object drawn.
	**/
	public var obj : h3d.scene.Object;
	/**
		A value given by the object, for instance the material index of a `MultiMaterial`.
	**/
	public var index : Int;

	// cache
	/**
		The shaders used to draw the object (computed when drawing).
	**/
	public var shaders : hxsl.ShaderList;
	/**
		The compiled shader (computed when drawing).
	**/
	public var shader : hxsl.RuntimeShader;
	/**
		The depth of the object from the camera, used for sorting.
	**/
	public var depth : Float;
	/**
		The identifier of the main texture, used to sort by texture.
	**/
	public var texture : Int = 0;

	function new() {
	}
}