package h3d.pass;

/**
	How the shadow map of a light is computed.
**/
enum RenderMode {
	/**
		No shadows.
	**/
	None;
	/**
		The shadows are computed once (see `h3d.scene.Scene.computeStatic`) or loaded from baked data: only static objects cast shadows.
	**/
	Static;
	/**
		The shadows are rendered every frame.
	**/
	Dynamic;
	/**
		The static shadows are combined with shadows rendered every frame for dynamic objects.
	**/
	Mixed;
}

// Keep in sync with h3d.shader.ShadowSampling
/**
	How the shadow map is sampled when drawing the lit objects.
**/
enum abstract ShadowSamplingKind(Int) to Int {
	/**
		A single depth comparison (hard shadows).
	**/
	var None = 0;
	/**
		Exponential shadow maps: soft shadows controlled by `Shadows.power`.
	**/
	var ESM = 1;
	/**
		Percentage closer filtering: soft shadows averaging several samples, with a radius of `Shadows.pcfScale` pixels.
	**/
	var PCF = 2;
}

/**
	The shadow map of a light: renders the `"shadow"` pass of the shadow casters from the light point of view, and provides
	the shader applying the shadows to the lit objects. Each light owns one (see `h3d.scene.pbr.Light.shadows`).

	Shadows are disabled until `mode` is set:

	```haxe
	light.shadows.mode = Dynamic;
	light.shadows.size = 2048;
	light.shadows.samplingKind = PCF;
	```
**/
class Shadows extends Output {

	var lightCamera : h3d.Camera;
	var format : hxd.PixelFormat;
	var staticTexture : h3d.mat.Texture;
	var light : h3d.scene.Light;
	var updateStatic : Bool = false;
	/**
		Enables the shadows of the light.
	**/
	public var enabled(default,set) : Bool = true;
	/**
		How the shadows are computed (`None` by default). Not all lights support all modes.
	**/
	public var mode(default,set) : RenderMode = None;
	/**
		The size of the shadow map texture, in pixels.
	**/
	public var size(default,set) : Int = 1024;
	/**
		The shader applying the shadows to the lit objects.
	**/
	public var shader(default,null) : hxsl.Shader;
	/**
		The blur applied to the shadow map (used by soft shadow techniques).
	**/
	public var blur : Blur;

	/**
		How the shadow map is sampled.
	**/
	public var samplingKind : ShadowSamplingKind = None;
	/**
		The sharpness of the exponential shadows (`ESM`).
	**/
	public var power = 30.0;
	/**
		The depth bias subtracted when comparing depths, to avoid shadow acne.
	**/
	public var bias = 0.01;
	/**
		The radius of the `PCF` sampling, in pixels.
	**/
	public var pcfScale = 1.0;

	/**
		Creates the shadow map of `light`.
	**/
	public function new(light) {
		if( format == null ) format = R16F;
		if( !h3d.Engine.getCurrent().driver.isSupportedFormat(format) ) format = h3d.mat.Texture.nativeFormat;
		super("shadow", format == h3d.mat.Texture.nativeFormat ? [PackFloat(Value("output.depth"))] : [Swiz(Value("output.depth",1),[X,X,X,X])]);
		this.light = light;
		blur = new Blur(5);
		blur.quality = 0.5;
		blur.shader.isDepth = format == h3d.mat.Texture.nativeFormat;
	}

	function set_mode(m:RenderMode) {
		if( m != None ) throw "Shadow mode "+m+" not supported for "+light;
		return mode = m;
	}

	function set_enabled(b:Bool) {
		return enabled = b;
	}

	function set_size(s) {
		if( s != size && staticTexture != null ) {
			staticTexture.dispose();
			staticTexture = null;
		}
		return size = s;
	}

	override function dispose() {
		super.dispose();
		blur.dispose();
		// don't set to null
		if( staticTexture != null ) staticTexture.dispose();
	}

	/**
		Returns the view matrix of the shadow camera.
	**/
	public function getShadowView() {
		return lightCamera.mcam;
	}

	/**
		Returns the projection matrix of the shadow camera.
	**/
	public function getShadowProj() {
		return lightCamera.mproj;
	}

	/**
		Returns the view-projection matrix of the shadow camera.
	**/
	public function getShadowViewProj() {
		return lightCamera.m;
	}

	/**
		Returns the shadow map texture of the last frame.
	**/
	public function getShadowTex() : h3d.mat.Texture {
		return null;
	}

	/**
		Loads baked static shadow data. Returns `false` if not supported or invalid.
	**/
	public function loadStaticData( bytes : haxe.io.Bytes ) {
		return false;
	}

	/**
		Returns the static shadow data to bake, or `null`.
	**/
	public function saveStaticData() : haxe.io.Bytes {
		return null;
	}

	/**
		Renders the static shadows with the given shadow casters.
	**/
	public function computeStatic( passes : h3d.pass.PassList ) {
		throw "Not implemented";
	}

	/**
		Tells if the mode uses static shadows (`Static` or `Mixed`).
	**/
	public function hasStaticShadow() {
		switch ( mode ) {
		case Mixed, Static:
			return true;
		case None, Dynamic:
			return false;
		}
	}

	/**
	 * Triggers update of static part of shadows (if any).
	**/
	public function needStaticUpdate() {
		updateStatic = hasStaticShadow();
	}

	function createDefaultShadowMap() {
		var tex = h3d.mat.Texture.fromColor(0xFFFFFF);
		tex.name = "defaultShadowMap";
		return tex;
	}

	var g : h3d.scene.Graphics;
	/**
		Draws the shadow camera bounds (debug).
	**/
	public var debug : Bool;

	function drawBounds(invViewModel : h3d.Matrix, color : Int) {

		inline function unproject(screenX, screenY, camZ) {
			var p = new h3d.Vector(screenX, screenY, camZ);
			p.project(invViewModel);
			return p;
		}

		var nearPlaneCorner = [unproject(-1, 1, 0), unproject(1, 1, 0), unproject(1, -1, 0), unproject(-1, -1, 0)];
		var farPlaneCorner = [unproject(-1, 1, 1), unproject(1, 1, 1), unproject(1, -1, 1), unproject(-1, -1, 1)];

		g.lineStyle(1, color);

		// Near Plane
		var last = nearPlaneCorner[nearPlaneCorner.length - 1];
		inline function moveTo(x : Float, y : Float, z : Float) {
			g.moveTo(x - ctx.scene.x, y - ctx.scene.y, z - ctx.scene.z);
		}
		inline function lineTo(x : Float, y : Float, z : Float) {
			g.lineTo(x - ctx.scene.x, y - ctx.scene.y, z - ctx.scene.z);
		}
		moveTo(last.x,last.y,last.z);
		for( fc in nearPlaneCorner ) {
			lineTo(fc.x, fc.y, fc.z);
		}

		// Far Plane
		var last = farPlaneCorner[farPlaneCorner.length - 1];
		moveTo(last.x,last.y,last.z);
		for( fc in farPlaneCorner ) {
			lineTo(fc.x, fc.y, fc.z);
		}

		// Connections
		for( i in 0 ... 4 ) {
			var np = nearPlaneCorner[i];
			var fp = farPlaneCorner[i];
			moveTo(np.x, np.y, np.z);
			lineTo(fp.x, fp.y, fp.z);
		}
	}

	function syncEarlyExit() {
		syncShader(staticTexture == null ? createDefaultShadowMap() : staticTexture);
	}

	function syncShader( texture : h3d.mat.Texture ) {
	}

	function filterPasses( passes : h3d.pass.PassList ) {
		if ( ctx.computingStatic || updateStatic ) {
			switch( mode ) {
			case None:
				return false;
			case Dynamic:
				return false;
			case Mixed:
				passes.filter(function(p) return p.pass.isStatic == true);
				return true;
			case Static:
				passes.filter(function(p) return p.pass.isStatic == true);
				return true;
			}
		} else {
			switch( mode ) {
			case None:
				return false;
			case Dynamic:
				return true;
			case Mixed:
				passes.filter(function(p) return p.pass.isStatic == false);
				return true;
			case Static:
				syncEarlyExit();
				return false;
			}
		}
	}

	inline function cullPasses( passes : h3d.pass.PassList, f : h3d.col.Collider -> Bool ) {
		var prevCollider = null;
		var prevResult = true;
		passes.filter(function(p) {
			var col = p.obj.cullingCollider;
			if( col == null )
				return true;
			if( col != prevCollider ) {
				prevCollider = col;
				prevResult = f(col);
			}
			return prevResult;
		});
	}
}
