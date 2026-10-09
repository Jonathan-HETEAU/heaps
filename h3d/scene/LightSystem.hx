package h3d.scene;

/**
	Base class of the lighting setup used by a `Renderer`.

	Every frame, the renderer calls `initLights` with the lights emitted during the scene sync, then
	`computeLight` for each drawn object to add the light shaders it needs.
	This base implementation does no lighting: see `h3d.scene.fwd.LightSystem` and `h3d.scene.pbr.LightSystem`.
**/
class LightSystem {

	/**
		Number of additional draw passes performed by the light system during the last frame (used for statistics).
	**/
	public var drawPasses : Int = 0;
	/**
		The light used to cast the main shadow. If `null` (or disposed), `initLights` selects the first
		light which returns a non-null `Light.getShadowDirection`.
	**/
	public var shadowLight : h3d.scene.Light;

	var ctx : RenderContext;

	/**
		Creates an empty light system.
	**/
	public function new() {
	}

	/**
		Called by the renderer to declare the shader globals required by this light system.
	**/
	public function initGlobals( globals : hxsl.Globals ) {
	}

	/**
		Called once per frame by the renderer before drawing, with the list of lights emitted in `ctx.lights`.
		Selects the `shadowLight` if needed.
	**/
	public function initLights( ctx : h3d.scene.RenderContext ) @:privateAccess {
		this.ctx = ctx;
		if( shadowLight == null || !shadowLight.allocated) {
			var l = ctx.lights;
			while( l != null ) {
				var dir = l.getShadowDirection();
				if( dir != null ) {
					shadowLight = l;
					break;
				}
				l = l.next;
			}
		}
	}

	/**
		Returns the shader list used to draw `obj`, with the light shaders affecting it prepended.
		The base implementation returns `shaders` unchanged.
	**/
	public function computeLight( obj : h3d.scene.Object, shaders : hxsl.ShaderList ) : hxsl.ShaderList {
		return shaders;
	}

	/**
		Releases the GPU resources allocated by this light system.
	**/
	public function dispose(){
	}

}