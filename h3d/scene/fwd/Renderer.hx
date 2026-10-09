package h3d.scene.fwd;

/**
	Renders the objects having a `"depth"` pass into the `depthMap` shader global (a packed depth texture).
**/
class DepthPass extends h3d.pass.Output {

	var depthMapId : Int;
	/**
		If `true`, the depth texture is cleared to zero instead of the maximum depth.
	**/
	public var enableSky : Bool = false;

	/**
		Creates the depth pass.
	**/
	public function new() {
		super("depth",  [PackFloat(Value("output.depth"))]);
		depthMapId = hxsl.Globals.allocID("depthMap");
	}

	override function draw( passes, ?sort ) {
		var texture = ctx.textures.allocTarget("depthMap", ctx.engine.width, ctx.engine.height, true);
		ctx.engine.pushTarget(texture);
		ctx.engine.clear(enableSky ? 0 : 0xFF0000, 1);
		super.draw(passes, sort);
		ctx.engine.popTarget();
		ctx.globals.fastSet(depthMapId, { texture : texture });
	}

}

/**
	Renders the objects having a `"normal"` pass into the `normalMap` shader global (a packed normal texture).
**/
class NormalPass extends h3d.pass.Output {

	var normalMapId : Int;

	/**
		Creates the normal pass.
	**/
	public function new() {
		super("normal", [PackNormal(Value("output.normal"))]);
		normalMapId = hxsl.Globals.allocID("normalMap");
	}

	override function draw( passes, ?sort ) {
		var texture = ctx.textures.allocTarget("normalMap", ctx.engine.width, ctx.engine.height);
		ctx.engine.pushTarget(texture);
		ctx.engine.clear(0x808080, 1);
		super.draw(passes, sort);
		ctx.engine.popTarget();
		ctx.globals.fastSet(normalMapId, texture);
	}

}

/**
	The forward renderer, used by default (see `h3d.mat.MaterialSetup`).

	Objects are drawn directly to the output with their lights (see `LightSystem`), in this order:
	the `"shadow"`, `"depth"` and `"normal"` passes to their textures if used, then the `"default"`, `"alpha"`
	(sorted back to front) and `"additive"` passes.
**/
class Renderer extends h3d.scene.Renderer {

	var def(get, never) : h3d.pass.Output;
	/**
		The pass rendering the `"depth"` objects.
	**/
	public var depth : h3d.pass.Output = new DepthPass();
	/**
		The pass rendering the `"normal"` objects.
	**/
	public var normal : h3d.pass.Output = new NormalPass();
	/**
		The shadow map of the shadow light (1024x1024 pixels).
	**/
	public var shadow = new h3d.pass.DefaultShadowMap(1024);

	/**
		Creates the renderer.
	**/
	public function new() {
		super();
		defaultPass = new h3d.pass.Output("default");
		allPasses = [defaultPass, depth, normal, shadow];
	}

	inline function get_def() return defaultPass;

	// can be overriden for benchmark purposes
	function renderPass(p:h3d.pass.Output, passes, ?sort) {
		p.draw(passes, sort);
	}

	override function getPassByName(name:String):h3d.pass.Output {
		if( name == "alpha" || name == "additive" )
			return defaultPass;
		return super.getPassByName(name);
	}

	override function render() {
		if( has("shadow") )
			renderPass(shadow,get("shadow"));

		if( has("depth") )
			renderPass(depth,get("depth"));

		if( has("normal") )
			renderPass(normal,get("normal"));

		renderPass(defaultPass, get("default") );
		renderPass(defaultPass, get("alpha"), backToFront );
		renderPass(defaultPass, get("additive") );
	}

}