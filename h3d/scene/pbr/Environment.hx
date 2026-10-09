package h3d.scene.pbr;

/**
	Base shader of the environment lighting precomputations (importance sampling helpers).
**/
class IrradBase extends h3d.shader.ScreenShader {

	static var SRC = {

		@const var samplesBits : Int;

		function _reversebits( i : Int ) : Int {
			var r = (i << 16) | (i >>> 16);
			r = ((r & 0x00ff00ff) << 8) | ((r & 0xff00ff00) >>> 8);
			r = ((r & 0x0f0f0f0f) << 4) | ((r & 0xf0f0f0f0) >>> 4);
			r = ((r & 0x33333333) << 2) | ((r & 0xcccccccc) >>> 2);
			r = ((r & 0x55555555) << 1) | ((r & 0xaaaaaaaa) >>> 1);
			return r;
		}

		function hammersley( i : Int, max : Int ) : Vec2 {
			var ri = _reversebits(i) * 2.3283064365386963e-10;
			return vec2(float(i) / float(max), ri);
		}

		function importanceSampleGGX( roughness : Float, p : Vec2, n : Vec3 ) : Vec3 {
			var a = roughness * roughness;
			var phi = 2 * PI * p.x;
			var cosT = sqrt((1 - p.y) / (1 + (a * a - 1) * p.y)).min(1.);
			var sinT = sqrt(1 - cosT * cosT);
			var ltan = vec3(sinT * cos(phi), sinT * sin(phi), cosT);

			var up = abs(n.z) < 0.999 ? vec3(0, 0, 1) : vec3(1, 0, 0);
			var tanX = normalize(cross(up, n));
			var tanY = normalize(cross(n, tanX));
			return (tanX * ltan.x + tanY * ltan.y + n * ltan.z).normalize();
		}


	};

}

/**
	Computes the diffuse irradiance and the prefiltered specular cube maps of an `Environment`.
**/
class IrradShader extends IrradBase {

	static var SRC = {

		@param var faceMatrix : Mat3;
		@param var envMap : SamplerCube;

		@const var isSpecular : Bool;
		@const var isSRGB : Bool;
		@param var roughness : Float;

		@param var cubeSize : Float;
		@param var cubeScaleFactor : Float;

		@param var hdrMax : Float;

		@:import h3d.shader.ColorSpaces;

		function cosineWeightedSampling( p : Vec2, n : Vec3 ) : Vec3 {
			var sq = sqrt(1 - p.x);
			var alpha = 2 * PI * p.y;
			var ltan = vec3( sq * cos(alpha),  sq * sin(alpha), sqrt(p.x));

			var up = abs(n.z) < 0.999 ? vec3(0, 0, 1) : vec3(1, 0, 0);
			var tanX = normalize(cross(up, n));
			var tanY = normalize(cross(n, tanX));
			return (tanX * ltan.x + tanY * ltan.y + n * ltan.z).normalize();
		}

		function getNormal() : Vec3 {
			var d = input.uv * 2. - 1.;
			if( isSpecular ) {
				// WRAP edge fixup
				// https://seblagarde.wordpress.com/2012/06/10/amd-cubemapgen-for-physically-based-rendering/
				d += cubeScaleFactor * (d * d * d);
			}
			return (vec3(d,1.) * faceMatrix).normalize();
		}

		function gammaCorrect( color : Vec3 ) : Vec3 {
			return isSRGB ? color : srgb2linear(color);
		}

		function fragment() {
			var color = vec3(0.);
			var n = getNormal();
			var totalWeight = 1e-10;
			var numSamples = 1 << samplesBits;
			for( i in 0...numSamples ) {
				var p = hammersley(i, numSamples);
				var l : Vec3;
				if( isSpecular ) {
					var h = importanceSampleGGX(roughness, p, n);
					var v = n; // approx
					l = reflect(-v, h).normalize();
				} else {
					l = cosineWeightedSampling(p, n);
				}
				var amount = n.dot(l).saturate();
				if( amount > 0 ) {
					var envColor = gammaCorrect(min(envMap.get(l).rgb, hdrMax));
					if ( !isSpecular )
						amount = 1.0;
					color += envColor * amount;
					totalWeight += amount;
				}
			}
			// store the envMap in linear space (don't revert gamma correction)
			output.color = vec4(color / totalWeight, 1.);
		}

	}

}

/**
	Computes the BRDF lookup texture shared by all environments (see `Environment.getDefaultLUT`).
**/
class IrradLut extends IrradBase {

	static var SRC = {

		function GGX( NdotV : Float, roughness : Float ) : Float {
			var k = (roughness * roughness) * 0.5; // only in IBL, use (r + 1)² / 8 for lighting
			return NdotV / (NdotV * (1.0 - k) + k);
		}

		function G_Smith(roughness : Float, nDotV : Float, nDotL : Float) : Float {
			return GGX(nDotL, roughness) * GGX(nDotV, roughness);
		}

		function fragment() {
			var roughness = input.uv.x;
			var NoV = input.uv.y;
			var v = vec3( sqrt( 1.0 - NoV * NoV ), 0., NoV );
			var n = vec3(0, 0, 1.);
			var numSamples = 1 << samplesBits;
			var a = 0., b = 0.;
			for( i in 0...numSamples ) {
				var xi = hammersley(i, numSamples);
				var h = importanceSampleGGX( roughness, xi, n );
				var l = reflect(-v, h);
				var NoL = saturate( dot(n, l) );
				var NoH = saturate( dot(n, h) );
				var VoH = saturate( dot(v, h) );
				if( NoL > 0 ) {
					var g = G_Smith( roughness, NoV, NoL );
					var gvis = g * VoH / (NoH * NoV);
					var fresnel = pow( 1 - VoH, 5. );
					a += (1 - fresnel) * gvis;
					b += fresnel * gvis;
				}
			}
			output.color = vec4(a / numSamples, b / numSamples, 0, 1);
		}
	}
}

/**
	Converts an equirectangular (panorama) texture into the faces of a cube map.
**/
class PanoramaToCube extends h3d.shader.ScreenShader {

	static var SRC = {

		@param var texture : Sampler2D;
		@param var faceMatrix : Mat3;

		// Fake HDR
		@param var threshold : Float;
		@param var aboveThresholdScale : Float;

		function getNormal() : Vec3 {
			var d = input.uv * 2. - 1.;
			return (vec3(d,1.) * faceMatrix).normalize();
		}

		function fragment() {
			var n = getNormal();
			var uv = vec2(atan(n.y, n.x), asin(-n.z));
    		uv *= vec2(0.1591, 0.3183);
    		uv += 0.5;
			pixelColor = texture.get(uv);

			// Fake HDR
			if( max(max(pixelColor.r, pixelColor.g), pixelColor.b) > threshold )
				pixelColor *= aboveThresholdScale;
		}

	};
}

/**
	Converts a cube map into an equirectangular (panorama) texture.
**/
class CubeToPanorama extends h3d.shader.ScreenShader {

	static var SRC = {

		@param var source : SamplerCube;

		function fragment() {
			var fovX = PI * 2;
			var fovY = PI;
			var hOffset = (2.0 * PI - fovX) * 0.5;
			var vOffset = (PI - fovY) * 0.5;
			var hAngle = hOffset + calculatedUV.x * fovX;
			var vAngle = vOffset + calculatedUV.y * fovY;
			var n = vec3(0);
			n.x = sin(vAngle) * sin(hAngle);
			n.y = cos(vAngle);
			n.z = sin(vAngle) * cos(hAngle);
			n = n.normalize();
			pixelColor = vec4(source.get(n).rgb, 1.0);
			pixelColor = vec4(1,0,0,1);
		}

	};
}

/**
	The environment lighting of the PBR renderer (image based lighting): the sky texture and the diffuse and specular
	lighting textures computed from it, used for the indirect lighting and the reflections.

	```haxe
	var env = new h3d.scene.pbr.Environment(hxd.Res.sky.toTexture());
	env.compute();
	cast(s3d.renderer, h3d.scene.pbr.Renderer).env = env;
	```
**/
class Environment {

	static var DEFAULT_FORMAT : hxd.PixelFormat = RGBA32F;

	/**
		The number of samples used by `compute` is `2^sampleBits`.
	**/
	public var sampleBits : Int;
	/**
		The size of the diffuse irradiance cube map faces.
	**/
	public var diffSize : Int;
	/**
		The size of the specular cube map faces.
	**/
	public var specSize : Int;
	/**
		The number of mip levels of the specular cube map used for the roughness levels. Computed by `compute`.
	**/
	public var specLevels : Int;
	/**
		The number of smallest mip levels of the specular cube map not used for roughness levels.
	**/
	public var ignoredSpecLevels : Int = 1;
	/**
		The maximum color value of the source texture used by `compute`, which limits the fireflies caused by very bright pixels.
	**/
	public var hdrMax : Float = 10.0;

	// 2D Texture - Panoramic
	/**
		The source texture: a cube map or an equirectangular (2:1) panorama.
	**/
	public var source : h3d.mat.Texture;

	// Cube Texture - Source converted
	/**
		The source as a cube map, converted from `source` on first access if needed.
	**/
	public var env(get,null) : h3d.mat.Texture;
	/**
		The BRDF lookup texture, shared by all environments.
	**/
	public var lut(get,never) : h3d.mat.Texture;
	/**
		The diffuse irradiance cube map, computed by `compute`.
	**/
	public var diffuse : h3d.mat.Texture;
	/**
		The prefiltered specular cube map, with one mip level per roughness level, computed by `compute`.
	**/
	public var specular : h3d.mat.Texture;

	/**
		The intensity of the environment lighting is `power * power`. With `0` the environment does not light the scene.
	**/
	public var power : Float = 1.;
	/**
		The rotation of the environment around the Z axis, in radians.
	**/
	public var rotation : Float = 0.;

	/**
		Creates an environment from `src`, which can be a cube map already prepared or a 2D equirectangular map that
		will be turned into a cube map. Call `compute` to build the lighting textures.
		@param diffSize The size of the diffuse irradiance cube map faces.
		@param specSize The size of the specular cube map faces.
		@param sampleBits The number of samples used to compute the textures is `2^sampleBits`.
	**/
	public function new( src : h3d.mat.Texture, ?diffSize = 64, ?specSize = 512, ?sampleBits = 12 ) {
		this.source = src;
		this.diffSize = diffSize;
		this.specSize = specSize;
		this.sampleBits = sampleBits;
	}

	function get_lut() return getDefaultLUT();

	function get_env() {
		if( (env == null || env.isDisposed()) && source != null) env = equiToCube(source);
		return env;
	}

	static var LUT_PIXELS = null;

	/**
		Returns the BRDF lookup texture, computing it the first time.
	**/
	public static function getDefaultLUT() {
		var engine = h3d.Engine.getCurrent();
		var t : h3d.mat.Texture = @:privateAccess engine.resCache.get(IrradLut);
		if( t != null )
			return t;
		t = new h3d.mat.Texture(128, 128, [Target], DEFAULT_FORMAT);
		if( LUT_PIXELS == null ) {
			computeIrradLut(t);
			LUT_PIXELS = t.capturePixels();
		} else
			t.uploadPixels(LUT_PIXELS);
		@:privateAccess engine.resCache.set(IrradLut, t);
		t.realloc = function() {
			t.uploadPixels(LUT_PIXELS);
		}
		return t;
	}

	/**
		Converts an equirectangular texture (twice as wide as high) to a cube map. Cube textures are returned unchanged.
		@param threshold The color value above which `scale` is applied.
		@param scale The multiplier applied to the colors above `threshold`.
	**/
	public static function equiToCube( source : h3d.mat.Texture, ?threshold = 1.0, ?scale = 1.0 ) {
		if( source.flags.has(Loading) )
			throw "Source is not ready";
		if( source.flags.has(Cube) )
			return source;

		if( source.width != source.height * 2 )
			throw "Unrecognized environment map format";
		var env = new h3d.mat.Texture(source.height, source.height, [Cube, Target], hxd.Pixels.isFloatFormat(source.format) ? DEFAULT_FORMAT : RGBA );
		var pass = new h3d.pass.ScreenFx(new PanoramaToCube());
		var engine = h3d.Engine.getCurrent();
		pass.shader.texture = source;
		pass.shader.aboveThresholdScale = scale;
		pass.shader.threshold = threshold;
		for( i in 0...6 ) {
			engine.pushTarget(env,i);
			pass.shader.faceMatrix = getCubeMatrix(i);
			pass.render();
			engine.popTarget();
		}
		return env;
	}

	/**
		Releases the textures of the environment.
	**/
	public function dispose() {
		if( @:bypassAccessor env != null ) env.dispose();
		if( diffuse != null ) diffuse.dispose();
		if( specular != null ) specular.dispose();
		// do not set to null as their might be candidate for realloc
	}

	function createDiffuseTexture() : h3d.mat.Texture {
		var diffuse = new h3d.mat.Texture(diffSize, diffSize, [Cube, Target], DEFAULT_FORMAT);
		diffuse.setName("irradDiffuse");
		diffuse.preventAutoDispose();
		return diffuse;
	}

	function createSpecularTexture() : h3d.mat.Texture {
		var specular = new h3d.mat.Texture(specSize, specSize, [Cube, Target, MipMapped, ManualMipMapGen], DEFAULT_FORMAT);
		specular.setName("irradSpecular");
		specular.mipMap = Linear;
		specular.preventAutoDispose();
		return specular;
	}

	function createTextures() {
		if( diffuse == null )
			diffuse = createDiffuseTexture();
		if( specular == null )
			specular = createSpecularTexture();
	}

	/**
		Computes the `diffuse` and `specular` lighting textures from the source. This is expensive: do it once, at load time.
	**/
	public function compute() {
		createTextures();
		computeIrradiance(diffuse, specular, env);
	}

	static function getCubeMatrix( face : Int ) {
		return h3d.Matrix.L(switch( face ) {
			case 0: [0,0,-1,0,
					 0,-1,0,0,
					 1,0,0,0];
			case 1: [0,0,1,0,
					 0,-1,0,0,
					-1,0,0,0];
			case 2: [1,0,0,0,
					 0,0,1,0,
					 0,1,0,0];
			case 3: [1,0,0,0,
					 0,0,-1,0,
					 0,-1,0,0];
			case 4: [1,0,0,0,
					 0,-1,0,0,
					 0,0,1,0];
			default: [-1,0,0,0,
					   0,-1,0,0,
					   0,0,-1,0];
		});
	}

	static function computeIrradLut( t : h3d.mat.Texture ) {
		var screen = new h3d.pass.ScreenFx(new IrradLut());
		screen.shader.samplesBits = 12;

		var engine = h3d.Engine.getCurrent();
		engine.pushTarget(t);
		screen.render();
		engine.popTarget();
		screen.dispose();
	}

	function getMipLevels() : Int {
		var mipLevels = 1;
		while( specular.width > 1 << (mipLevels - 1) )
			mipLevels++;
		return mipLevels;
	}

	function computeIrradiance(diffuse : h3d.mat.Texture, specular : h3d.mat.Texture, env : h3d.mat.Texture) {

		var screen = new h3d.pass.ScreenFx(new IrradShader());
		screen.shader.samplesBits = sampleBits;
		screen.shader.envMap = env;
		screen.shader.isSRGB = env.isSRGB();
		screen.shader.hdrMax = hdrMax;

		var engine = h3d.Engine.getCurrent();

		for( i in 0...6 ) {
			screen.shader.faceMatrix = getCubeMatrix(i);
			engine.pushTarget(diffuse, i);
			screen.render();
			engine.popTarget();
		}

		screen.shader.isSpecular = true;

		var mipLevels = getMipLevels();
		specLevels = mipLevels - ignoredSpecLevels;

		for( i in 0...6 ) {
			screen.shader.faceMatrix = getCubeMatrix(i);
			for( j in 0... mipLevels ) {
				var size = specular.width >> j;
				screen.shader.cubeSize = size;
				screen.shader.cubeScaleFactor = size == 1 ? 0 : (size * size) / Math.pow(size - 1, 3);
				screen.shader.roughness = j / specLevels;
				engine.pushTarget(specular, i, j);
				screen.render();
				engine.popTarget();
			}
		}
	}

	/**
		Returns the default environment embedded in Heaps, with precomputed textures.
	**/
	public static function getDefault() {
		var engine = h3d.Engine.getCurrent();
		var e : Environment = @:privateAccess engine.resCache.get(Environment);
		if( e != null ) return e;

		var SRC = hxd.res.Embed.getResource("h3d/scene/pbr/envDefault.dds");
		var DIF = hxd.res.Embed.getResource("h3d/scene/pbr/envDefault.envd.dds");
		var SPEC = hxd.res.Embed.getResource("h3d/scene/pbr/envDefault.envs.dds");

		e = new Environment(SRC.toImage().toTexture());
		e.diffuse = DIF.toImage().toTexture();
		e.specular = SPEC.toImage().toTexture();
		e.diffSize = e.diffuse.width;
		e.specSize = e.specular.width;
		e.specLevels = e.getMipLevels() - e.ignoredSpecLevels;
		e.sampleBits = 5;
		@:privateAccess engine.resCache.set(Environment,e);
		return e;
	}

}