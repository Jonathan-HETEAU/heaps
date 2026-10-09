package h3d.scene;

/**
	The list of draw passes emitted for one pass name (such as `"default"`, `"alpha"` or `"shadow"`) during a frame,
	handed to the `Renderer` by the `Scene`.
**/
class PassObjects {
	/**
		The pass name, matching `h3d.mat.Pass.name`.
	**/
	public var name : String;
	/**
		The object passes to draw for this pass name.
	**/
	public var passes : h3d.pass.PassList;
	/**
		Set to `true` when the renderer retrieved these passes. In debug builds, the scene traces a warning for passes left unrendered (see `Scene.checkPasses`).
	**/
	public var rendered : Bool;
	/**
		Creates an empty pass list.
	**/
	public function new() {
		passes = new h3d.pass.PassList();
	}
}

/**
	The rendering mode of a `Renderer`.
**/
enum RenderMode{
	/**
		Regular rendering.
	**/
	Default;
	/**
		Rendering for light probe baking: only diffuse lighting is computed and the environment is used as sky.
	**/
	LightProbe;
}

/**
	Base class of the scene renderers.

	Each frame, the `Scene` syncs its objects, sorts the emitted draw passes by pass name into `PassObjects` and calls
	`process`. The renderer then decides in which order and to which render targets each pass name is drawn, and
	applies the post-processing `effects`.
	This class only provides the helpers: the concrete renderers are `h3d.scene.fwd.Renderer` (forward, the default)
	and `h3d.scene.pbr.Renderer` (physically based). The active renderer is created by `h3d.mat.MaterialSetup.current`.
**/
@:allow(hrt.prefab.rfx.RendererFX)
@:allow(h3d.pass.Shadows)
class Renderer extends hxd.impl.AnyProps {

	var defaultPass : h3d.pass.Output;
	var passObjects : Map<String,PassObjects>;
	var allPasses : Array<h3d.pass.Output>;
	var emptyPasses = new h3d.pass.PassList();
	var ctx : RenderContext;
	var hasSetTarget = false;
	var frontToBack : h3d.pass.PassList -> Void;
	var backToFront : h3d.pass.PassList -> Void;
	var debugging = false;

	#if (editor || editor_hl)
	/**
		Editor only (`-D editor`): when enabled, the PBR renderer draws the editor debug geometry passes (`debuggeom` and `debuggeom_alpha`).
	**/
	public var showEditorGuides = false;
	#end

	/**
		The renderer effects (post processes and render hooks) applied in order during the frame.
		See `h3d.impl.RendererFX`.
	**/
	public var effects : Array<h3d.impl.RendererFX> = [];

	/**
		The rendering mode. `LightProbe` is used while baking light probes: the PBR renderer then only renders the
		diffuse lighting and uses the environment map as sky.
	**/
	public var renderMode : RenderMode = Default;

	/**
		Enables shadow casting. When `false`, the shadow passes are not drawn.
	**/
	public var shadows : Bool = true;

	/**
		Creates the renderer and initializes its properties with `getDefaultProps()`.
	**/
	public function new() {
		allPasses = [];
		passObjects = new Map();
		props = getDefaultProps();
		// pre allocate closures
		frontToBack = depthSort.bind(true);
		backToFront = depthSort.bind(false);
	}

	/**
		Returns the first effect of `effects` which is an instance of `cl`, or `null` if there is none.
	**/
	public function getEffect<T:h3d.impl.RendererFX>( cl : Class<T> ) : T {
		for( f in effects ) {
			var f = Std.downcast(f, cl);
			if( f != null ) return f;
		}
		return null;
	}

	/**
		Disposes the render passes, effects and light system resources of this renderer.
	**/
	public function dispose() {
		for( p in allPasses )
			p.dispose();
		for( f in effects )
			f.dispose();
		if ( ctx.lightSystem != null )
			ctx.lightSystem.dispose();
		passObjects = new Map();
	}

	function mark(id: String) {
	}

	/**
		Inject a post process shader for the current frame. Shaders are reset after each render.
	**/
	public function addShader( s : hxsl.Shader ) {
	}

	/**
		Returns the first render pass which is an instance of `c`, or `null` if there is none.
	**/
	public function getPass<T:h3d.pass.Output>( c : Class<T> ) : T {
		for( p in allPasses )
			if( Std.isOfType(p, c) )
				return cast p;
		return null;
	}

	/**
		Returns the render pass named `name`, or `null` if there is none.
	**/
	public function getPassByName( name : String ) {
		for( p in allPasses )
			if( p.name == name )
				return p;
		return null;
	}

	function hasFeature(f) {
		return h3d.Engine.getCurrent().driver.hasFeature(f);
	}

	function getLightSystem() : h3d.scene.LightSystem {
		return ctx.scene.lightSystem;
	}

	function getDepthClearValue() {
		return ctx.getDepthClearValue();
	}

	@:access(h3d.scene.Object)
	function depthSort( frontToBack, passes : h3d.pass.PassList ) {
		var cam = ctx.camera.m;
		for( p in passes ) {
			var z = p.obj.absPos._41 * cam._13 + p.obj.absPos._42 * cam._23 + p.obj.absPos._43 * cam._33 + cam._43;
			var w = p.obj.absPos._41 * cam._14 + p.obj.absPos._42 * cam._24 + p.obj.absPos._43 * cam._34 + cam._44;
			p.depth = w > 0.0 ? z / w : - z / w;
		}
		if( frontToBack && !ctx.camera.reverseDepth || !frontToBack && ctx.camera.reverseDepth )
			passes.sort(
				function(p1, p2) {
					if ( p1.pass.layer != p2.pass.layer )
						return p1.pass.layer - p2.pass.layer;
					if ( p1.depth == p2.depth )
						return 0;
					return p1.depth > p2.depth ? 1 : -1;
				}
			);
		else
			passes.sort(
				function(p1, p2) {
					if ( p1.pass.layer != p2.pass.layer )
						return p1.pass.layer - p2.pass.layer;
					if ( p1.depth == p2.depth )
						return 0;
					return p1.depth < p2.depth ? 1 : -1;
				}
			);
	}

	inline function clear( ?color, ?depth, ?stencil ) {
		ctx.engine.clear(color, depth, stencil);
	}

	inline function allocTarget( name : String, depth = true, size = 1., ?format, ?flags : Array<h3d.mat.Data.TextureFlags>, layers = 1 ) {
		return ctx.textures.allocTarget(name, Math.round(ctx.renderResolutionWidth * size), Math.round(ctx.renderResolutionHeight * size), depth, format, flags, layers);
	}

	function copy( from, to, ?blend ) {
		h3d.pass.Copy.run(from, to, blend);
	}

	function setTarget( tex, depthBinding : h3d.Engine.DepthBinding = ReadWrite ) {
		if( hasSetTarget ) ctx.engine.popTarget();
		ctx.engine.pushTarget(tex, depthBinding);
		hasSetTarget = true;
	}

	function setTargets<T:h3d.mat.Texture>( textures : Array<T>, depthBinding : h3d.Engine.DepthBinding = ReadWrite ) {
		if( hasSetTarget ) ctx.engine.popTarget();
		ctx.engine.pushTargets(cast textures, depthBinding);
		hasSetTarget = true;
	}

	function setDepth( depthBuffer : h3d.mat.Texture ) {
		if( hasSetTarget ) ctx.engine.popTarget();
		ctx.engine.pushDepth(depthBuffer);
		hasSetTarget = true;
	}

	function resetTarget() {
		if( hasSetTarget ) {
			ctx.engine.popTarget();
			hasSetTarget = false;
		}
	}

	function has( name : String ) {
		return passObjects.get(name) != null;
	}

	@:access(h3d.pass.PassList)
	function get( name : String ) {
		var p = passObjects.get(name);
		if( p == null ) return emptyPasses;
		p.rendered = true;
		return p.passes;
	}

	function draw( name : String ) {
		defaultPass.draw(get(name));
	}

	function render() {
		throw "Not implemented";
	}

	function computeStatic() {
		throw "Not implemented";
	}

	/**
		Called by the `Scene` at the beginning of the frame, before objects are synchronized and emitted.
	**/
	public function start() {
	}

	/**
		Calls `RendererFX.start` on each enabled effect. Called by the `Scene` right after `start`.
	**/
	public function startEffects() {
		for ( e in effects )
			if ( e.enabled )
				e.start(this);
	}

	/**
		Renders the frame from the draw passes emitted by the scene objects. Called by `Scene.render`.
		Calls `computeStatic` instead of `render` when `RenderContext.computingStatic` is set (see `Scene.computeStatic`).
	**/
	public function process( passes : Array<PassObjects> ) {
		hasSetTarget = false;
		for( p in allPasses )
			p.setContext(ctx);
		for( p in passes )
			passObjects.set(p.name, p);
		ctx.textures.begin();
		if( ctx.computingStatic )
			computeStatic();
		else
			render();
		resetTarget();
		for( p in passes )
			passObjects.set(p.name, null);
	}

	/**
		Dispatches a compute shader with the given number of work groups. Requires a driver supporting compute shaders.
	**/
	public function computeDispatch( shader, x = 1, y = 1, z = 1 ) {
		ctx.computeDispatch(shader, x, y, z);
	}
}