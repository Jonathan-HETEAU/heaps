package h3d.impl;

/**
	The steps of the rendering at which a `RendererFX` can render.
**/
enum Step {
	/**
		The main draw of the opaque objects.
	**/
	MainDraw;
	/**
		The decals.
	**/
	Decals;
	/**
		The shadow maps.
	**/
	Shadows;
	/**
		The lighting.
	**/
	Lighting;
	/**
		The forward (non deferred) objects.
	**/
	Forward;
	/**
		Before the tone mapping, in HDR.
	**/
	BeforeTonemapping;
	/**
		After the tone mapping.
	**/
	AfterTonemapping;
	/**
		After the upscaling, at the output resolution.
	**/
	AfterUpscaling;
	/**
		The overlay objects.
	**/
	Overlay;
	/**
		The debug display.
	**/
	Debug;
	/**
		A step specific to a renderer.
	**/
	Custom( name : String );
}

/**
	A transition between two effects, created by `RendererFX.transition`.
**/
typedef RFXTransition = {
	/**
		The effect rendered during the transition.
	**/
	var effect : RendererFX;
	/**
		Sets the progress of the transition, from `0` to `1`.
	**/
	var setFactor : (t : Float) -> Void;
	/**
		Releases the transition.
	**/
	var ?dispose : () -> Void;
}

/**
	A rendering effect added to a renderer (see `h3d.scene.Renderer.effects`): it is called at the start of the frame and around each rendering step.
**/
interface RendererFX {
	/**
		Tells if the effect is rendered.
	**/
	public var enabled : Bool;
	/**
		Called at the start of the frame.
	**/
	public function start( r : h3d.scene.Renderer ) : Void;
	/**
		Called before a rendering step.
	**/
	public function begin( r : h3d.scene.Renderer, step : Step ) : Void;
	/**
		Called after a rendering step.
	**/
	public function end( r : h3d.scene.Renderer, step : Step ) : Void;
	/**
		Releases the effect.
	**/
	public function dispose() : Void;

	/**
		Returns the effect with its intensity scaled by `t`, for the volumes that blend effects.
	**/
	public function modulate( t : Float ) : RendererFX;
	/**
		Returns a transition between two effects of this type.
	**/
	public function transition( r1 : RendererFX, r2 : RendererFX ) : RFXTransition;
}
