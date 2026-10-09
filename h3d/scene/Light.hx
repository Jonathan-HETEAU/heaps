package h3d.scene;

/**
	Base class for all 3D lights.

	A light is a regular scene `Object`: it is positioned and oriented through its transform and emits itself
	to the `RenderContext` at render time so that the renderer's `LightSystem` can apply it to the lit objects.
	Do not instantiate it directly: use the implementations of the active renderer, such as
	`h3d.scene.fwd.PointLight` / `h3d.scene.fwd.DirLight` (forward renderer) or
	`h3d.scene.pbr.PointLight` / `h3d.scene.pbr.SpotLight` / `h3d.scene.pbr.DirLight` (PBR renderer).
**/
class Light extends Object {

	var shader : hxsl.Shader;
	@:noCompletion public var next : Light; // used internaly (public to allow sorting)

	/**
		The color of the light. The base implementation returns a new zero vector and ignores assignments:
		subclasses map it to their shader parameter.
	**/
	public var color(get, set) : h3d.Vector;

	function new(shader,?parent) {
		super(parent);
		this.shader = shader;
	}

	// dummy implementation
	function get_color() {
		return new h3d.Vector();
	}

	function set_color(v:h3d.Vector) {
		return v;
	}

	override function emit(ctx:RenderContext) {
		ctx.emitLight(this);
	}

	/**
		Returns the direction used to cast shadows, or `null` if this light does not cast directional shadows.
		Used by `LightSystem.initLights` to select the scene shadow light.
		@param v An optional vector to store the result in, avoiding an allocation.
	**/
	public function getShadowDirection( ?v: h3d.Vector ) : h3d.Vector {
		return null;
	}

}