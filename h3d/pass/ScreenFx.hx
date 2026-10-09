package h3d.pass;

/**
	A full screen pass: renders a quad covering the current target with a screen shader (see `h3d.shader.ScreenShader`).
	It is the base of the post processes.

	```haxe
	var fx = new h3d.pass.ScreenFx(new MyScreenShader());
	fx.shader.texture = source;
	engine.pushTarget(output);
	fx.render();
	engine.popTarget();
	```
**/
class ScreenFx<T:h3d.shader.ScreenShader> {

	/**
		The main screen shader.
	**/
	public var shader : T;
	/**
		The material pass holding the render states (no culling, no depth test by default) and the shaders.
	**/
	public var pass : h3d.mat.Pass;
	/**
		The primitive drawn, the full screen quad by default.
	**/
	public var primitive : h3d.prim.Primitive;
	var output : OutputShader;
	var _engine : h3d.Engine;
	var engine(get,never) : h3d.Engine;

	/**
		Creates the pass.
		@param output The values written to the render targets (`output.color` by default).
	**/
	public function new(shader, ?output) {
		this.shader = shader;
		this.output = new OutputShader(output);
		pass = new h3d.mat.Pass("screenfx", new hxsl.ShaderList(shader));
		pass.culling = None;
		pass.depth(false, Always);
	}

	function get_engine() {
		if( _engine == null ) _engine = h3d.Engine.getCurrent();
		return _engine;
	}

	function copy( src, dst ) {
		h3d.pass.Copy.run(src,dst);
	}

	/**
		Adds a shader to the pass.
	**/
	public inline function addShader<T:hxsl.Shader>(s:T) {
		return pass.addShader(s);
	}

	/**
		Removes a shader from the pass.
	**/
	public inline function removeShader(s:hxsl.Shader) {
		return pass.removeShader(s);
	}

	/**
		Returns the first shader of class `cl`, or `null`.
	**/
	public inline function getShader<T:hxsl.Shader>(cl:Class<T>) : T {
		return pass.getShader(cl);
	}

	/**
		Renders the full screen quad to the current target.
	**/
	public function render() {
		if( primitive == null )
			primitive = h3d.prim.Plane2D.get();
		shader.flipY = engine.driver.hasFeature(BottomLeftCoords) && engine.getCurrentTarget() != null ? -1 : 1;
		var shaders = @:privateAccess pass.shaders;
		var ctx = h3d.impl.RenderContext.get();
		var isNewCtx = false;
		if( ctx == null ) {
			isNewCtx = true;
			ctx = @:privateAccess new h3d.impl.RenderContext();
			ctx.setCurrent();
		}
		var rts = output.compileShaders(ctx.globals, shaders);
		engine.selectMaterial(pass);
		engine.selectShader(rts);
		var buffers = ctx.shaderBuffers;
		buffers.grow(rts);
		ctx.fillGlobals(buffers, rts);
		ctx.fillParams(buffers, rts, shaders);
		engine.uploadShaderBuffers(buffers, Globals);
		engine.uploadInstanceShaderBuffers(buffers);
		primitive.render(engine);
		if( isNewCtx )
			ctx.clearCurrent();
	}

	/**
		Releases the resources of the pass.
	**/
	public function dispose() {
	}

	/**
		Renders a screen shader to `output` with a temporary pass.
	**/
	public static function run( shader : h3d.shader.ScreenShader, output : h3d.mat.Texture, ?layer : Int ) {
		var engine = h3d.Engine.getCurrent();
		engine.pushTarget(output,layer);
		new ScreenFx(shader).render();
		engine.popTarget();
	}

}